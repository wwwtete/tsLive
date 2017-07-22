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
    var RechargePayView = (function (_super) {
        __extends(RechargePayView, _super);
        function RechargePayView() {
            var _this = _super.call(this) || this;
            _this._listData = [
                {
                    "tip0": "支付宝充值",
                    "tip1": "充值金额：",
                    "amount": 0,
                    "to": "alipay"
                },
                {
                    "tip0": "微信充值",
                    "tip1": "充值金额：",
                    "amount": 0,
                    "to": "weixinpay"
                }
            ];
            _this.createHandler();
            return _this;
        }
        RechargePayView.prototype.createHandler = function () {
            this.doResize();
            this.topView.handler = new Handler(this, this.doSomthing);
            this.list.repeatY = this._listData.length;
            this.list.itemRender = view.render.RechargeListRender;
            this.list.renderHandler = Handler.create(this, this.renderList, null, false);
            this.list.mouseHandler = Handler.create(this, this.mouseList, null, false);
            this.list.array = this._listData;
        };
        RechargePayView.prototype.infoView = function (amount) {
            this._amount = amount;
            this.topView.setTitle("", "请选择充值方式");
            this._listData[0]["amount"] = this._amount;
            this._listData[1]["amount"] = this._amount;
            this.list.array = this._listData;
        };
        RechargePayView.prototype.mouseList = function (e, index) {
            var cell = this.list.getCell(index);
            if (cell)
                cell["doMouse"](e.type);
        };
        RechargePayView.prototype.renderList = function (cell, index) {
            if (index < this._listData.length) {
                cell["setData"](this._listData[index]);
            }
        };
        RechargePayView.prototype.doSomthing = function (type) {
            switch (type) {
                case 0:
                    ViewManager.getInstance().doBack();
                    break;
                default:
                    break;
            }
        };
        //==================================================
        RechargePayView.prototype.show = function (anitype) {
            this.doResize();
            this.visible = true;
            if (anitype == "rightIn") {
                this.x = Laya.stage.width;
                Laya.stage.addChild(this);
                Tween.to(this, { x: 0 }, 200);
            }
            else if (anitype == "leftIn") {
                this.x = -Laya.stage.width * .5;
                Tween.to(this, { x: 0 }, 100, null, null, 60);
            }
        };
        RechargePayView.prototype.hide = function (anitype) {
            this.x = 0;
            if (anitype == "rightOut") {
                Tween.to(this, { x: Laya.stage.width }, 200, null, Handler.create(this, this.hideOver));
            }
            else if (anitype == "leftOut") {
                Tween.to(this, { x: -Laya.stage.width * .5 }, 200, null, Handler.create(this, this.hideOver), 100);
            }
        };
        RechargePayView.prototype.hideOver = function () {
            this.x = -Laya.stage.width;
            this.visible = false;
        };
        RechargePayView.prototype.doResize = function () {
            this.size(Laya.stage.width, Laya.stage.height);
            this.topView.scale(App.scale, App.scale);
            this.list.top = 140 * App.scale;
            this.list.spaceY = 2 * App.scale;
            this.tip.fontSize = 20 * App.scale;
            this.tip.bottom = 20 * App.scale;
            this.tip.left = this.tip.right = 40 * App.scale;
        };
        return RechargePayView;
    }(ui.page.RechargePayAmountUI));
    view.RechargePayView = RechargePayView;
})(view || (view = {}));
//# sourceMappingURL=RechargePayView.js.map