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
        var SetListItemRender = (function (_super) {
            __extends(SetListItemRender, _super);
            function SetListItemRender() {
                var _this = _super.call(this) || this;
                _this._defaultH = 66;
                _this.doResize();
                return _this;
            }
            SetListItemRender.prototype.setData = function (value) {
                this._data = value;
                this.back_0.visible = this.icon_0.visible = this.icon_1.visible = this.tip_0.visible = false;
                if (this._data) {
                    this.back_0.visible = this.icon_1.visible = this.tip_0.visible = true;
                    if (this._data["skin"]) {
                        this.icon_0.visible = true;
                        this.icon_0.skin = this._data["skin"];
                    }
                    this.tip_0.text = this._data["tip"];
                }
            };
            SetListItemRender.prototype.doMouse = function (type) {
                switch (type) {
                    case Laya.Event.MOUSE_DOWN:
                        this.back_0.alpha = .6;
                        Tween.to(this.icon_1, { right: 20 * App.scale }, 100);
                        break;
                    case Laya.Event.CLICK:
                        App.print("我点击了：" + this._data["tip"]);
                        this.changeView();
                        break;
                    case Laya.Event.MOUSE_UP:
                    case Laya.Event.MOUSE_OUT:
                        this.back_0.alpha = 1;
                        Tween.to(this.icon_1, { right: 0 }, 200);
                    default:
                        break;
                }
            };
            SetListItemRender.prototype.changeView = function () {
                var toUrl = this._data["to"];
                if (toUrl.indexOf("http:") != -1) {
                    App.openUrl(toUrl + "?userId=" + UserData.baseData['userId']);
                    return;
                }
                switch (toUrl) {
                    case ViewManager.RECHARGE_AMOUNT_VIEW:
                        ViewManager.getInstance().showView(ViewManager.RECHARGE_AMOUNT_VIEW, view.RechargeAmountView);
                        break;
                    case ViewManager.IN_COME_VIEW:
                        if (UserData.baseData['roomPercent'] == null || UserData.baseData['roomPercent'] == undefined)
                            view.ErrorTipView.getInstance().show("该功能仅对主播开放");
                        else
                            ViewManager.getInstance().showView(ViewManager.IN_COME_VIEW, view.IncomeView);
                        break;
                    case ViewManager.CONTAC_CUSTOMER:
                        view.ErrorTipView.getInstance().show("即将开放");
                        // ViewManager.getInstance().showView(ViewManager.CHANGE_HEAD_VIEW,view.ChangeHeadView);
                        break;
                    case ViewManager.CHANGE_NICK_NAME_VIEW:
                        ViewManager.getInstance().showView(ViewManager.CHANGE_NICK_NAME_VIEW, view.ChangeNickNameView);
                        break;
                    case ViewManager.CHANGE_PASSWORD_VIEW:
                        ViewManager.getInstance().showView(ViewManager.CHANGE_PASSWORD_VIEW, view.ChangePasswordView);
                        break;
                    default:
                        break;
                }
            };
            SetListItemRender.prototype.doResize = function () {
                this.size(Laya.stage.width, 70 * App.scale);
                this.icon_0.scale(App.scale, App.scale);
                this.tip_0.scale(App.scale, App.scale);
                this.icon_1.scale(App.scale, App.scale);
                this.icon_0.left = 20 * App.scale;
                this.tip_0.x = 95 * App.scale;
                this.icon_1.right = 0;
            };
            return SetListItemRender;
        }(ui.page.render.SetListItemRenderUI));
        render.SetListItemRender = SetListItemRender;
    })(render = view.render || (view.render = {}));
})(view || (view = {}));
//# sourceMappingURL=SetListItemRender.js.map