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
        var RoomTitleRender = (function (_super) {
            __extends(RoomTitleRender, _super);
            function RoomTitleRender() {
                var _this = _super.call(this) || this;
                _this.createHandler();
                return _this;
            }
            RoomTitleRender.prototype.createHandler = function () {
                this.btn_close.clickHandler = new Handler(this, this.doClick, [this.btn_close]);
                MEventDispatcher.getInstance().on(MEvent.CHANGE_ROOM_DATA, this, this.updataRoomData);
            };
            RoomTitleRender.prototype.updataRoomData = function (msg) {
                if (ViewManager.getInstance().currentViewName != ViewManager.ROOM_VIEW)
                    return;
                this.infoView();
            };
            RoomTitleRender.prototype.infoView = function () {
                this.roomid_text.text = "房间号：" + UserData.roomData.anchorId;
                this.roomid_shadow.text = "房间号：" + UserData.roomData.anchorId;
                this.roomid_text.right = 20;
                this.roomid_shadow.right = 19;
                this.anchor_name.text = UserData.roomData.anchorName;
                this.clip_1.width = this.anchor_name.x + this.anchor_name.width + 15;
                this.anchor_users.text = "在线：" + UserData.roomData.userNums + " 人";
                if (UserData.baseData['roles'].indexOf(',jiankong,') != -1) {
                    this.anchor_users.text = this.anchor_users.text + " / " + UserData.roomData.vipNums + " 人";
                }
                this.box_users.width = this.anchor_users.width + 30;
                this.anchor_zuanshi.text = "收益：" + UserData.roomData.diamondBalance.toFixed(1) + " 钻";
                this.box_zuanshi.width = this.anchor_zuanshi.width + 30;
            };
            RoomTitleRender.prototype.updataRoomType = function () {
                var type = UserData.roomData.currentType;
                this.clip_1.index = this.clip_2.index = this.clip_3.index = this.clip_4.index = (type == 'onPrivate') ? 1 : 0;
            };
            RoomTitleRender.prototype.doClick = function (target) {
                if (target == this.btn_close) {
                    if (this._handler)
                        this._handler.runWith([0]);
                }
            };
            Object.defineProperty(RoomTitleRender.prototype, "handler", {
                set: function (value) {
                    this._handler = value;
                },
                enumerable: true,
                configurable: true
            });
            return RoomTitleRender;
        }(ui.page.render.RoomTitleRenderUI));
        render.RoomTitleRender = RoomTitleRender;
    })(render = view.render || (view.render = {}));
})(view || (view = {}));
//# sourceMappingURL=RoomTitleRender.js.map