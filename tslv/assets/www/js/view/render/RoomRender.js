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
    var render;
    (function (render) {
        var RoomRender = (function (_super) {
            __extends(RoomRender, _super);
            function RoomRender() {
                var _this = _super.call(this) || this;
                _this.doResize();
                return _this;
            }
            RoomRender.prototype.setData = function (value) {
                this._data = value;
                this.t_users.text = "在线：" + this._data['userNums'] + "人";
                this.t_nickname.text = this._data['anchorName'];
                this.t_users.right = 0;
                this.t_tip.text = '房间号：' + this._data['anchorId'];
                if (this._data['currentType'] == 'onPrivate') {
                    this.t_tip_1.text = '10金币 / 分钟';
                    this.t_tip_1.color = '#b73937';
                }
                else {
                    this.t_tip_1.text = '免费房间';
                    this.t_tip_1.color = '#7f7f7f';
                }
                this._data['avatar'] = this._data['avatar'] || '';
                this._data['cover'] = this._data['cover'] || '';
                if (this._data['avatar'] != '')
                    this.img_avatar.path = this._data['avatar'];
                if (this._data['cover'] != '')
                    this.img_cover.skin = this._data['cover'];
                this.t_tip_1.right = 0;
                this.doResize();
            };
            RoomRender.prototype.doMouse = function (type) {
                switch (type) {
                    case Laya.Event.MOUSE_DOWN:
                        this.alpha = .7;
                        break;
                    case Laya.Event.CLICK:
                        this.goinRoom();
                        break;
                    case Laya.Event.MOUSE_UP:
                    case Laya.Event.MOUSE_OUT:
                        this.alpha = 1;
                    default:
                        break;
                }
            };
            RoomRender.prototype.goinRoom = function () {
                if (this._data == undefined) {
                    TipDialog.getInstance().showDialog('温馨提示', '房间正在准备中', null, null);
                    return;
                }
                // if(UserData.baseData['coinBalance'] == 0 && this._data['currentType'] == 'onPrivate'){
                // 	TipDialog.getInstance().showDialog('温馨提示','您的余额不足，不能进入收费房间',null,null);
                // 	return;
                // }
                UserData.roomData.anchorId = this._data['anchorId'];
                UserData.roomData.anchorName = this._data['anchorName'];
                UserData.roomData.userNums = this._data['userNums'];
                UserData.roomData.diamondBalance = this._data['diamondBalance'];
                ViewManager.getInstance().showView(ViewManager.ROOM_VIEW, view.RoomView);
            };
            RoomRender.prototype.doResize = function () {
                this.size(Laya.stage.width, 400 * App.scale);
                this.pic_box.size(595 * App.scale, 297 * App.scale);
                this.pic_box.centerX = 0;
                this.pic_box.bottom = 15 * App.scale;
                this.box_head.scale(App.scale, App.scale);
                this.box_head.centerX = 0;
                this.box_head.top = 8 * App.scale;
            };
            return RoomRender;
        }(ui.page.render.RoomRenderUI));
        render.RoomRender = RoomRender;
    })(render = view.render || (view.render = {}));
})(view || (view = {}));
//# sourceMappingURL=RoomRender.js.map