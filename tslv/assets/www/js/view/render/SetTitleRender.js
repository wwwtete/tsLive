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
        var SetTitleRender = (function (_super) {
            __extends(SetTitleRender, _super);
            function SetTitleRender() {
                var _this = _super.call(this) || this;
                _this.createHandler();
                return _this;
            }
            SetTitleRender.prototype.infoView = function () {
                this.updataInfo();
                if (UserData.updataInSetView)
                    WebSocketService.getInstance().request_getUserInfo(Handler.create(this, this.getUserCallBack));
            };
            SetTitleRender.prototype.getUserCallBack = function (data) {
                UserData.updataInSetView = false;
                if (data['error'] || data['code'] == 500) {
                    view.ErrorTipView.getInstance().show("获取信息失败");
                }
                else {
                    UserData.baseData = data.body;
                }
                MEventDispatcher.getInstance().event(MEvent.CHANGE_USER_DATA);
            };
            SetTitleRender.prototype.updataInfo = function () {
                this.t_nickname.text = UserData.baseData['nickName'];
                this.t_amount.text = UserData.baseData['coinBalance'];
                this.t_zuan.text = UserData.baseData['diamondBalance'];
                this.t_userid.text = "ID:" + UserData.baseData['userId'];
                if (UserData.avatar != '')
                    this.avatar.path = UserData.avatar;
                if (UserData.cover != '')
                    this.img_cover.skin = UserData.cover;
                this.t_nickname.centerX = 0;
                this.t_userid.right = 15;
                this.hbox.refresh();
                Laya.timer.once(50, this, this.updata);
            };
            SetTitleRender.prototype.updata = function () {
                this.hbox.centerX = 0;
            };
            SetTitleRender.prototype.createHandler = function () {
                this.btn_return.clickHandler = new Handler(this, this.doClick, [this.btn_return]);
                MEventDispatcher.getInstance().on(MEvent.CHANGE_USER_DATA, this, this.updataInfo);
            };
            SetTitleRender.prototype.doClick = function (target) {
                if (target == this.btn_return) {
                    if (this._handler)
                        this._handler.runWith([0]);
                }
            };
            Object.defineProperty(SetTitleRender.prototype, "handler", {
                set: function (value) {
                    this._handler = value;
                },
                enumerable: true,
                configurable: true
            });
            return SetTitleRender;
        }(ui.page.render.SetTitleRenderUI));
        render.SetTitleRender = SetTitleRender;
    })(render = view.render || (view.render = {}));
})(view || (view = {}));
//# sourceMappingURL=SetTitleRender.js.map