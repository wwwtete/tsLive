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
    var RoomSetView = (function (_super) {
        __extends(RoomSetView, _super);
        function RoomSetView() {
            var _this = _super.call(this) || this;
            _this._private = false;
            _this.btn_0.clickHandler = Handler.create(_this, _this.doClick, [_this.btn_0], false);
            _this.btn_close.clickHandler = Handler.create(_this, _this.doClick, [_this.btn_close], false);
            _this.btn_02.clickHandler = Handler.create(_this, _this.doClick, [_this.btn_02], false);
            _this.btn_03.clickHandler = Handler.create(_this, _this.doClick, [_this.btn_03], false);
            _this.btn_04.clickHandler = Handler.create(_this, _this.doClick, [_this.btn_04], false);
            _this.doResize();
            return _this;
        }
        RoomSetView.prototype.doClick = function (target) {
            switch (target) {
                case this.btn_close:
                    this.closeRoom();
                    break;
                case this.btn_0:
                    if (this._handler) {
                        this._handler.runWith(['startLive', this.textinput_0.text]);
                    }
                    break;
                case this.btn_02:
                    if (this._handler) {
                        this._handler.runWith(['setLive', this._private]);
                    }
                    break;
                case this.btn_03:
                    this.select(this.btn_03);
                    break;
                case this.btn_04:
                    this.select(this.btn_04);
                    break;
                default:
                    break;
            }
        };
        RoomSetView.prototype.doResize = function () {
            this.size(Laya.stage.width, Laya.stage.height);
            this.title_box.scale(App.scale, App.scale);
            this.title_box.centerX = 0;
            this.title_box.centerY = -50 * App.scale;
            this.set_box.scale(App.scale, App.scale);
            this.set_box.centerX = 0;
            this.set_box.centerY = -50 * App.scale;
            this.btn_close.scale(App.scale, App.scale);
            this.btn_close.pos(557 * App.scale, 13 * App.scale);
        };
        Object.defineProperty(RoomSetView.prototype, "handler", {
            set: function (value) {
                if (!this._handler)
                    this._handler = value;
            },
            enumerable: true,
            configurable: true
        });
        RoomSetView.prototype.infoView = function () {
            this.textinput_0.text = '';
        };
        RoomSetView.prototype.infoBtns = function () {
            if (UserData.roomData.currentType == 'onPrivate') {
                this.select(this.btn_03);
            }
            else {
                this.select(this.btn_04);
            }
        };
        RoomSetView.prototype.select = function (btn) {
            if (this.btn_03 == btn) {
                this.btn_03.skin = 'loadSkin/btn_01.png';
                this.btn_04.skin = 'loadSkin/btn_02.png';
                this.btn_03.mouseEnabled = false;
                this.btn_04.mouseEnabled = true;
                this._private = true;
            }
            else if (this.btn_04 == btn) {
                this.btn_03.skin = 'loadSkin/btn_02.png';
                this.btn_04.skin = 'loadSkin/btn_01.png';
                this.btn_03.mouseEnabled = true;
                this.btn_04.mouseEnabled = false;
                this._private = false;
            }
            this.btn_02.label = '将房间设置为' + btn.label;
        };
        RoomSetView.prototype.closeRoom = function () {
            this.hide();
            if (!this.title_box.visible)
                return;
            WebSocketService.getInstance().notify_leaveRoom(UserData.roomData.anchorId);
            UserData.infoRoom();
            ViewManager.getInstance().doBack();
        };
        RoomSetView.prototype.show = function (type) {
            Laya.stage.addChild(this);
            this.x = this.y = 0;
            if (type == 'startLive') {
                this.title_box.visible = true;
                this.set_box.visible = false;
                this.infoView();
            }
            else if (type == 'setLive') {
                this.title_box.visible = false;
                this.set_box.visible = true;
                this.infoBtns();
            }
        };
        RoomSetView.prototype.hide = function () {
            this.removeSelf();
        };
        RoomSetView.getInstance = function () {
            if (null == this._instance)
                this._instance = new RoomSetView();
            return this._instance;
        };
        return RoomSetView;
    }(ui.page.RoomSetViewUI));
    view.RoomSetView = RoomSetView;
})(view || (view = {}));
//# sourceMappingURL=RoomSetView.js.map