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
    var Event = Laya.Event;
    var HomeView = (function (_super) {
        __extends(HomeView, _super);
        function HomeView() {
            var _this = _super.call(this) || this;
            _this._listData = [];
            _this.createHandler();
            return _this;
        }
        HomeView.prototype.createHandler = function () {
            if (!Laya.Browser.onPC) {
                this._ad1 = new laya.html.dom.HTMLIframeElement();
                this.addChild(this._ad1);
                this._ad1.href = Laya.Browser.onIOS ? 'res/html/ad1-ios.html' : 'res/html/ad1-android.html';
                this._ad1.mouseEnabled = true;
                this._ad1.on(Event.CLICK, this, this.onLink);
            }
            this.topView.handler = new Handler(this, this.doSomthing);
            this.noanchor.visible = true;
            this.list.visible = false;
            this.list.itemRender = view.render.RoomRender;
            this.list.renderHandler = Handler.create(this, this.renderList, null, false);
            this.list.mouseHandler = Handler.create(this, this.mouseList, null, false);
            this.list.vScrollBarSkin = null;
            MEventDispatcher.getInstance().on(MEvent.CHANGE_ANCHORS_DATA, this, this.updataRoomList);
        };
        HomeView.prototype.onLink = function () {
            var href = this._ad1._childs[0]['_href'];
            App.openUrl(href);
        };
        HomeView.prototype.updataRoomList = function (msg) {
            if (msg == JSON.stringify(this._listData))
                return;
            this._listData = JSON.parse(msg);
            this._listData = this._listData.sort(this.sortFun);
            this.list.array = this._listData;
            if (this._listData.length > 0) {
                this.list.visible = true;
                this.noanchor.visible = false;
            }
            else {
                this.list.visible = false;
                this.noanchor.visible = true;
            }
        };
        HomeView.prototype.sortFun = function (o1, o2) {
            if (o1['priority'] > o2['priority'])
                return -1;
            else if (o1['priority'] < o2['priority'])
                return 1;
            if (o1['currentType'] == 'onPrivate' && o2['currentType'] == 'onLive')
                return -1;
            else if (o1['currentType'] == 'onLive' && o2['currentType'] == 'onPrivate')
                return 1;
            return -1;
        };
        HomeView.prototype.mouseList = function (e, index) {
            var cell = this.list.getCell(index);
            if (cell)
                cell["doMouse"](e.type);
        };
        HomeView.prototype.renderList = function (cell, index) {
            if (index < this._listData.length) {
                cell["setData"](this._listData[index]);
            }
        };
        HomeView.prototype.doSomthing = function (type) {
            switch (type) {
                case 0:
                    UserData.roomData.anchorId = UserData.baseData['userId'];
                    UserData.roomData.anchorName = UserData.baseData['nickName'];
                    UserData.roomData.diamondBalance = UserData.baseData['diamondBalance'];
                    UserData.roomData.userNums = 0;
                    ViewManager.getInstance().showView(ViewManager.ROOM_VIEW, view.RoomView);
                    break;
                case 1:
                    ViewManager.getInstance().showView(ViewManager.SET_VIEW, view.SetView);
                    break;
                default:
                    break;
            }
        };
        //==================================================
        HomeView.prototype.show = function (anitype) {
            this.topView.checkLive();
            this.doResize();
            this.visible = true;
            if (anitype == "rightIn") {
                this.x = 0;
                Laya.stage.addChild(this);
                // Tween.to(this,{x:0},200);
            }
            else if (anitype == "leftIn") {
                this.x = -Laya.stage.width * .5;
                Tween.to(this, { x: 0 }, 100, null, null, 60);
            }
        };
        HomeView.prototype.hide = function (anitype) {
            this.x = 0;
            if (anitype == "rigthOut") {
                Tween.to(this, { x: Laya.stage.width }, 200, null, Handler.create(this, this.hideOver));
            }
            else if (anitype == "leftOut") {
                Tween.to(this, { x: -Laya.stage.width * .5 }, 200, null, Handler.create(this, this.hideOver), 100);
            }
        };
        HomeView.prototype.hideOver = function () {
            this.x = -Laya.stage.width;
            this.visible = false;
        };
        HomeView.prototype.doResize = function () {
            this.size(Laya.stage.width, Laya.stage.height);
            this.topView.scale(App.scale, App.scale);
            this.list.left = this.list.right = 0;
            this.list.top = 85 * App.scale;
            this.list.spaceY = 10 * App.scale;
            if (this._ad1) {
                this._ad1.scale(App.scale, App.scale);
                this._ad1.y = 85 * App.scale;
                this.list.top = 170 * App.scale;
            }
            this.noanchor.scale(App.scale, App.scale);
            this.noanchor.centerX = 0;
            this.noanchor.centerY = -60 * App.scale;
        };
        return HomeView;
    }(ui.page.HomeViewUI));
    view.HomeView = HomeView;
})(view || (view = {}));
//# sourceMappingURL=HomeView.js.map