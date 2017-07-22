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
        var RechargeListRender = (function (_super) {
            __extends(RechargeListRender, _super);
            function RechargeListRender() {
                var _this = _super.call(this) || this;
                _this.doResize();
                return _this;
            }
            RechargeListRender.prototype.setData = function (value) {
                this._data = value;
                if (this._data) {
                    this.tip_0.text = this._data["tip0"];
                    this.tip_1.text = this._data["tip1"] + StringUntil.moneyTOString(this._data["amount"], 2, "元");
                }
                this.doResize();
            };
            RechargeListRender.prototype.doMouse = function (type) {
                switch (type) {
                    case Laya.Event.MOUSE_DOWN:
                        this.back_0.alpha = .6;
                        Tween.to(this.icon_0, { right: 20 * App.scale }, 100);
                        break;
                    case Laya.Event.CLICK:
                        App.print("我点击了：" + this._data["tip0"]);
                        if (this._data["to"]) {
                            this.changeView();
                        }
                        break;
                    case Laya.Event.MOUSE_UP:
                    case Laya.Event.MOUSE_OUT:
                        this.back_0.alpha = 1;
                        Tween.to(this.icon_0, { right: 0 }, 200);
                    default:
                        break;
                }
            };
            RechargeListRender.prototype.changeView = function () {
                switch (this._data["to"]) {
                    case ViewManager.RECHARGE_PAY_VIEW:
                        ViewManager.getInstance().showView(ViewManager.RECHARGE_PAY_VIEW, view.RechargePayView);
                        ViewManager.getInstance().getView(ViewManager.RECHARGE_PAY_VIEW)["infoView"](this._data["amount"]);
                        break;
                    case "alipay":
                        this.createOrder(this._data["to"], this._data["amount"]);
                        break;
                    case "weixinpay":
                        this.createOrder(this._data["to"], this._data["amount"]);
                        break;
                    default:
                        break;
                }
            };
            RechargeListRender.prototype.createOrder = function (payType, amount) {
                var opt = this.checkInput(amount);
                if (opt['code']) {
                    WebSocketService.getInstance().request_createPayOrder(payType, amount, Handler.create(this, this.createOrderSuccess));
                }
                else {
                    view.ErrorTipView.getInstance().show(opt['error']);
                }
                this._url = 'http://web.taoselive.com/pay/huione/XXXXXX/redirect?type=' + (payType == 'alipay' ? "1008" : '1005');
            };
            RechargeListRender.prototype.createOrderSuccess = function (data) {
                view.ErrorTipView.getInstance().show("订单生成成功，正在为您跳转充值页面");
                var body = data['body'];
                this._url = this._url.replace('XXXXXX', body['order']);
                App.openUrl(this._url);
                ViewManager.getInstance().doBack();
                ViewManager.getInstance().doBack();
            };
            RechargeListRender.prototype.checkInput = function (amount) {
                var opt = { code: true, error: "" };
                if (amount > UserData.baseData["amount"]) {
                    opt.code = false;
                    opt.error = '邮箱格式不正确';
                    return opt;
                }
                return opt;
            };
            RechargeListRender.prototype.doResize = function () {
                this.size(Laya.stage.width, 70 * App.scale);
                this.icon_0.scale(App.scale, App.scale);
                this.icon_0.right = 0;
                this.tip_0.scale(App.scale, App.scale);
                this.tip_0.x = 25 * App.scale;
                this.tip_1.scale(App.scale, App.scale);
                this.tip_1.right = 60 * App.scale;
            };
            return RechargeListRender;
        }(ui.page.render.RechargeListRenderUI));
        render.RechargeListRender = RechargeListRender;
    })(render = view.render || (view.render = {}));
})(view || (view = {}));
//# sourceMappingURL=RechargeListRender.js.map