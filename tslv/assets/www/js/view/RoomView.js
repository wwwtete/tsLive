var __extends = (this && this.__extends) || (function () {
    var extendStatics = Object.setPrototypeOf ||
        ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
        function (d, b) { for (var p in b) if (b.hasOwnProperty(p)) d[p] = b[p]; };
    return function (d, b) {
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
/**
* name
*/
var view;
(function (view) {
    var RoomView = (function (_super) {
        __extends(RoomView, _super);
        function RoomView() {
            var _this = _super.call(this) || this;
            _this.infoRoom();
            _this.createHandler();
            return _this;
        }
        RoomView.prototype.infoRoom = function () {
            this._chatRender = new view.render.RoomChatRender();
            this._chatRender.scale(App.scale, App.scale);
            this._chatRender.handler = Handler.create(this, this.doSomethingBottom, null, false);
            this.addChild(this._chatRender);
            this._chatRender.bottom = 0;
            this._currentRender = this._chatRender;
            this.topView.handler = Handler.create(this, this.doSomethingTitle, null, false);
        };
        RoomView.prototype.createHandler = function () {
            MEventDispatcher.getInstance().on(MEvent.DEVICE_PAUSE, this, this.doDevicePause);
            MEventDispatcher.getInstance().on(MEvent.DEVICE_RESUME, this, this.doDeviceResume);
            MEventDispatcher.getInstance().on(MEvent.DEVICE_KEYBORD_SIZE, this, this.upSizeChat);
            MEventDispatcher.getInstance().on(MEvent.CHANGE_ANCHOR_TYPE, this, this.changeRoomType);
            MEventDispatcher.getInstance().on(MEvent.START_RECORD_SUCCESS, this, this.startRecord, [true]);
            MEventDispatcher.getInstance().on(MEvent.START_RECORD_ERROR, this, this.startRecord, [false]);
            MEventDispatcher.getInstance().on(MEvent.PLAY_SUCCESS, this, this.startPlay, [true]);
            MEventDispatcher.getInstance().on(MEvent.PLAY_ING, this, this.playIng);
            MEventDispatcher.getInstance().on(MEvent.PLAY_ERROR, this, this.startPlay, [false]);
            MEventDispatcher.getInstance().on(MEvent.NO_AMOUNT, this, this.killMeInFrom);
            view.RoomSetView.getInstance().handler = Handler.create(this, this.anchorSet, null, false);
            MEventDispatcher.getInstance().on(MEvent.DEVICE_PAUSE, this, this.doDeviceChange, ['pause']);
            MEventDispatcher.getInstance().on(MEvent.DEVICE_RESUME, this, this.doDeviceChange, ['resume']);
        };
        //============================================
        RoomView.prototype.startRecord = function (success) {
            if (success) {
                this.background.visible = false;
                view.RoomSetView.getInstance().show('startLive');
                WebSocketService.getInstance().notify_enterRoom(UserData.roomData.anchorId);
                App.bodyNode.style.width = '100%';
            }
            else {
                this.background.visible = true;
                TipDialog.getInstance().showDialog('温馨提示', '打开预览失败，请确认是否有摄像头权限', Handler.create(this, this.goOutRoom), Handler.create(this, this.goOutRoom));
            }
        };
        RoomView.prototype.doDeviceChange = function (type) {
            if (UserData.roomData.anchorId == UserData.baseData['userId']) {
                console.log('我是主播');
            }
            else {
                console.log('我是用户');
            }
        };
        RoomView.prototype.startPlay = function (success) {
            if (success) {
                this.background.visible = false;
                App.bodyNode.style.width = '100%';
            }
            else {
                this.background.visible = true;
                TipDialog.getInstance().showDialog('温馨提示', '播放失败', Handler.create(this, this.goOutRoom), Handler.create(this, this.goOutRoom));
            }
        };
        RoomView.prototype.playIng = function () {
            if (this.background.visible)
                this.background.visible = false;
        };
        //============================================
        RoomView.prototype.doDevicePause = function () {
            if (ViewManager.getInstance().currentViewName == ViewManager.ROOM_VIEW) {
                // LiveVideoManage.getInstance().pause();
            }
        };
        RoomView.prototype.doDeviceResume = function () {
            if (ViewManager.getInstance().currentViewName == ViewManager.ROOM_VIEW) {
            }
        };
        RoomView.prototype.upSizeChat = function () {
            if (ViewManager.getInstance().currentViewName != ViewManager.ROOM_VIEW)
                return;
            if (view.RoomSetView.getInstance().parent)
                return;
            if (this._chatRender && this._chatRender.visible) {
                if (App.keybordHeight > 0) {
                    this._chatRender.state = "chat";
                }
                else {
                    this._chatRender.state = "default";
                }
                if (Laya.Browser.onIOS) {
                    window["scrollTo"](0, App.keybordHeight);
                }
                else {
                    this.y = -App.keybordHeight;
                    var input_dom = document.getElementsByTagName('input')[0];
                    if (input_dom) {
                        var div = input_dom.parentElement;
                        div.style.top = (Laya.stage.height - App.keybordHeight - this._chatRender.height * App.scale) / Laya.Browser.pixelRatio + 'px';
                    }
                }
            }
        };
        RoomView.prototype.doSomethingTitle = function (type) {
            switch (type) {
                case 0:
                    this.doClose();
                    break;
                default:
                    break;
            }
        };
        RoomView.prototype.doClose = function () {
            if (UserData.roomData.anchorId == UserData.baseData['userId'] && UserData.roomData.streamId != "") {
                WebSocketService.getInstance().request_micOff(UserData.roomData.streamId, Handler.create(this, this.micOffSuccess));
            }
            this.goOutRoom();
        };
        RoomView.prototype.doSomethingBottom = function (type) {
            switch (type) {
                case 0:
                    this.changeBottomView(RoomView.CHAT);
                    break;
                default:
                    break;
            }
        };
        RoomView.prototype.changeBottomView = function (type) {
            switch (type) {
                case RoomView.CHAT:
                    if (this._currentRender) {
                        this._currentRender.bottom = 0;
                        Tween.to(this._currentRender, { bottom: -this._currentRender.height * App.scale * 2 }, 200, null, Handler.create(this, this.changeOver, [this._chatRender]));
                    }
                    break;
                case RoomView.GIFT:
                    break;
                default:
                    break;
            }
        };
        RoomView.prototype.changeOver = function (toBox) {
            this._currentRender.visible = false;
            this._currentRender = toBox;
            this._currentRender.bottom = -this._currentRender.height * App.scale * 2;
            this._currentRender.visible = true;
            Tween.to(this._currentRender, { bottom: 0 }, 200);
        };
        //==================================================
        RoomView.prototype.show = function (anitype) {
            this.buildPlugins();
            if (this._chatRender) {
                this._chatRender.state = 'default';
            }
            this.topView.infoView();
            this.topView.updataRoomType();
            ChatListRender.getInstance().infoView();
            if (!ChatListRender.getInstance().parent)
                this.addChild(ChatListRender.getInstance());
            this.doResize();
            this.visible = true;
            if (anitype == "rightIn") {
                this.x = Laya.stage.width;
                Laya.stage.addChild(this);
                Tween.to(this, { x: 0 }, 200, null, Handler.create(this, this.showOver));
            }
            else if (anitype == "leftIn") {
                this.x = -Laya.stage.width * .5;
                Tween.to(this, { x: 0 }, 100, null, null, 60);
            }
        };
        RoomView.prototype.buildPlugins = function () {
            window["plugins"] && window["plugins"].insomnia.keepAwake();
        };
        RoomView.prototype.disPlugins = function () {
            window["plugins"] && window["plugins"].insomnia.allowSleepAgain();
            if (Laya.Browser.onPC) {
                SWFLiveManage.getInstance().destory();
            }
            else {
                if (window['cordova']) {
                    PushLiveManage.getInstance().destory();
                    PlayLiveManage.getInstance().destory();
                }
                else {
                    HTMLLiveManage.getInstance().destory();
                }
            }
        };
        RoomView.prototype.hide = function (anitype) {
            this.disPlugins();
            this.x = 0;
            this.background.visible = true;
            App.bodyNode.style.width = '0px';
            if (anitype == "rightOut") {
                Tween.to(this, { x: Laya.stage.width }, 200, null, Handler.create(this, this.hideOver));
            }
            else if (anitype == "leftOut") {
                Tween.to(this, { x: -Laya.stage.width * .5 }, 200, null, Handler.create(this, this.hideOver), 100);
            }
        };
        RoomView.prototype.showOver = function () {
            WebSocketService.getInstance().request_checkAnchor(UserData.roomData.anchorId, Handler.create(this, this.getAnchorSuccess));
        };
        RoomView.prototype.getAnchorSuccess = function (data) {
            var body = data['body'];
            if (body['roomId'] == UserData.baseData["userId"]) {
                if (Laya.Browser.onPC) {
                    SWFLiveManage.getInstance().startRecord();
                }
                else {
                    if (Laya.Browser.onIOS)
                        PushLiveManage.getInstance().startRecord();
                    else {
                        this.startRecord(true);
                    }
                }
            }
            else {
                UserData.roomData.streamId = body['streamId'];
                UserData.roomData.streamUrl = body['streamUrl'];
                UserData.roomData.currentType = body['currentType'];
                if (body['lookTest'])
                    UserData.roomData.lookTest = body['lookTest'];
                if (body['currentType'] == 'onLine' || body['currentType'] == 'offLine') {
                    TipDialog.getInstance().showDialog('温馨提示', '主播没有开播，去其他房间看看吧', Handler.create(this, this.goOutRoom), Handler.create(this, this.goOutRoom));
                }
                else if (body['currentType'] == 'onPrivate') {
                    TipDialog.getInstance().showDialog('温馨提示', '当前房间是收费房间，可以试看' + UserData.roomData.lookTest + '秒，是否确认观看', Handler.create(this, this.goInRoom), Handler.create(this, this.goOutRoom));
                }
                else {
                    //进入房间
                    this.goInRoom();
                }
                this.topView.updataRoomType();
            }
        };
        RoomView.prototype.anchorSet = function (type, data) {
            if (type == "startLive") {
                WebSocketService.getInstance().request_micOn(data, Handler.create(this, this.micOnSuccess));
            }
            else if (type == "setLive") {
                WebSocketService.getInstance().request_changePrivate(data, Handler.create(this, this.changePrivateSuccess));
            }
        };
        RoomView.prototype.adminSet = function (type, data) {
            if (type == 'private') {
                WebSocketService.getInstance().request_changePrivate(data, Handler.create(this, this.changePrivateSuccess));
            }
        };
        RoomView.prototype.changeRoomType = function () {
            this.topView.updataRoomType();
            if (UserData.baseData['userId'] == UserData.roomData.anchorId)
                return;
            if (UserData.roomData.streamId == '') {
                this.goOutRoom();
                TipDialog.getInstance().showDialog('温馨提示', '主播离开了', null, null);
            }
            else if (UserData.roomData.currentType == 'onPrivate') {
                TipDialog.getInstance().showDialog('温馨提示', '主播开启私密,是否继续观看,可以试看' + UserData.roomData.lookTest + '秒', null, Handler.create(this, this.goOutRoom));
            }
        };
        RoomView.prototype.killMeInFrom = function (msg) {
            var data = JSON.parse(msg);
            if (data.type == 2) {
                TipDialog.getInstance().showDialog('温馨提示', '试看结束，已经进入付费观看，每分钟10金币', null, null, '知道了');
                return;
            }
            this.goOutRoom();
            if (data.type == 0)
                TipDialog.getInstance().showDialog('温馨提示', '本次试看已结束，您没有余额继续观看。', Handler.create(this, this.goRecharge), null, '去充值');
            else if (data.type == 1)
                TipDialog.getInstance().showDialog('温馨提示', '本次试看已结束，您没有余额继续观看。', Handler.create(this, this.goRecharge), null, '去充值');
        };
        RoomView.prototype.goRecharge = function () {
            ViewManager.getInstance().showView(ViewManager.RECHARGE_AMOUNT_VIEW, view.RechargeAmountView);
        };
        RoomView.prototype.goInRoom = function () {
            view.ErrorTipView.getInstance().y = -view.ErrorTipView.getInstance().height * App.scale;
            WebSocketService.getInstance().notify_enterRoom(UserData.roomData.anchorId);
            if (UserData.roomData.streamUrl == '' || UserData.roomData.streamId == '') {
                TipDialog.getInstance().showDialog('温馨提示', '获取主播信息失败，请重新进入房间', null, null);
                return;
            }
            //播放视频
            if (Laya.Browser.onPC) {
                SWFLiveManage.getInstance().play("rtmp://" + UserData.roomData.streamUrl + UserData.pushNode, UserData.roomData.streamId);
            }
            else {
                if (window['cordova']) {
                    PlayLiveManage.getInstance().play("rtmp://" + UserData.roomData.streamUrl + UserData.pushNode + UserData.roomData.streamId);
                }
                else {
                    HTMLLiveManage.getInstance().play("rtmp://" + UserData.roomData.streamUrl + UserData.pushNode + UserData.roomData.streamId);
                }
            }
        };
        RoomView.prototype.goOutRoom = function () {
            ViewManager.getInstance().backToRoom();
            RoomGiftRender.getInstance().hide();
            WebSocketService.getInstance().notify_leaveRoom(UserData.roomData.anchorId);
            UserData.infoRoom();
            ViewManager.getInstance().doBack();
        };
        RoomView.prototype.enterRoomSuccess = function (data) {
            TipDialog.getInstance().showDialog('温馨提示', '进入房间失败', Handler.create(this, this.goOutRoom), Handler.create(this, this.goOutRoom));
        };
        RoomView.prototype.micOnSuccess = function (data) {
            view.RoomSetView.getInstance().hide();
            UserData.roomData.streamId = data['streamId'];
            UserData.roomData.streamUrl = data['streamUrl'];
            WebSocketService.getInstance().notify_mic(UserData.roomData.streamId);
            if (Laya.Browser.onPC) {
                SWFLiveManage.getInstance().push("rtmp://" + UserData.roomData.streamUrl + UserData.pushNode, UserData.roomData.streamId);
            }
            else {
                if (window['cordova']) {
                    PushLiveManage.getInstance().startLive("rtmp://" + UserData.roomData.streamUrl + UserData.pushNode + UserData.roomData.streamId);
                }
                else {
                    HTMLLiveManage.getInstance().push("rtmp://" + UserData.roomData.streamUrl + UserData.pushNode + UserData.roomData.streamId);
                }
            }
        };
        RoomView.prototype.changePrivateSuccess = function (data) {
            view.RoomSetView.getInstance().hide();
        };
        RoomView.prototype.micOffSuccess = function (data) {
            //成功下麦
            console.log('下麦成功');
        };
        RoomView.prototype.hideOver = function () {
            this.x = -Laya.stage.width;
            this.visible = false;
        };
        RoomView.prototype.doResize = function () {
            this.size(Laya.stage.width, Laya.stage.height);
            this.topView.scale(App.scale, App.scale);
            this._chatRender.scale(App.scale, App.scale);
            this._chatRender.bottom = 0;
        };
        return RoomView;
    }(ui.page.RoomViewUI));
    RoomView.CHAT = "chat";
    RoomView.GIFT = "gift";
    view.RoomView = RoomView;
})(view || (view = {}));
//# sourceMappingURL=RoomView.js.map