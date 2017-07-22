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
    var RechargeAmountView = (function (_super) {
        __extends(RechargeAmountView, _super);
        function RechargeAmountView() {
            var _this = _super.call(this) || this;
            _this._listData = [
                {
                    "tip0": "490金币",
                    "tip1": "",
                    "amount": 49,
                    "to": ViewManager.RECHARGE_PAY_VIEW
                },
                {
                    "tip0": "990金币",
                    "tip1": "",
                    "amount": 99,
                    "to": ViewManager.RECHARGE_PAY_VIEW
                },
                {
                    "tip0": "1990金币",
                    "tip1": "",
                    "amount": 199,
                    "to": ViewManager.RECHARGE_PAY_VIEW
                },
                {
                    "tip0": "3990金币",
                    "tip1": "",
                    "amount": 399,
                    "to": ViewManager.RECHARGE_PAY_VIEW
                },
                {
                    "tip0": "5990金币",
                    "tip1": "",
                    "amount": 599,
                    "to": ViewManager.RECHARGE_PAY_VIEW
                },
                {
                    "tip0": "9990金币",
                    "tip1": "",
                    "amount": 999,
                    "to": ViewManager.RECHARGE_PAY_VIEW
                }
            ];
            _this.createHandler();
            return _this;
        }
        RechargeAmountView.prototype.createHandler = function () {
            this.doResize();
            this.topView.handler = new Handler(this, this.doSomthing);
            this.list.repeatY = this._listData.length;
            this.list.itemRender = view.render.RechargeListRender;
            this.list.renderHandler = Handler.create(this, this.renderList, null, false);
            this.list.mouseHandler = Handler.create(this, this.mouseList, null, false);
            this.btn.clickHandler = Handler.create(this, this.toPay, null, false);
            if (UserData.baseData['userId'] < 1000) {
                this._listData.unshift({
                    "tip0": "测试金额",
                    "tip1": "",
                    "amount": 0.1,
                    "to": ViewManager.RECHARGE_PAY_VIEW
                });
            }
            this.list.array = this._listData;
        };
        RechargeAmountView.prototype.toPay = function () {
            App.openUrl('http://web.taoselive.com/recharge/wx.html?userId=' + UserData.baseData['userId']);
        };
        RechargeAmountView.prototype.mouseList = function (e, index) {
            var cell = this.list.getCell(index);
            if (cell)
                cell["doMouse"](e.type);
        };
        RechargeAmountView.prototype.renderList = function (cell, index) {
            if (index < this._listData.length) {
                cell["setData"](this._listData[index]);
            }
        };
        RechargeAmountView.prototype.doSomthing = function (type) {
            switch (type) {
                case 0:
                    ViewManager.getInstance().doBack();
                    break;
                default:
                    break;
            }
        };
        //==================================================
        RechargeAmountView.prototype.show = function (anitype) {
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
        RechargeAmountView.prototype.hide = function (anitype) {
            this.x = 0;
            if (anitype == "rightOut") {
                Tween.to(this, { x: Laya.stage.width }, 200, null, Handler.create(this, this.hideOver));
            }
            else if (anitype == "leftOut") {
                Tween.to(this, { x: -Laya.stage.width * .5 }, 200, null, Handler.create(this, this.hideOver), 100);
            }
        };
        RechargeAmountView.prototype.hideOver = function () {
            this.x = -Laya.stage.width;
            this.visible = false;
        };
        RechargeAmountView.prototype.doResize = function () {
            this.size(Laya.stage.width, Laya.stage.height);
            this.topView.scale(App.scale, App.scale);
            this.list.top = 140 * App.scale;
            this.list.spaceY = 2 * App.scale;
            this.tip.fontSize = 20 * App.scale;
            this.tip.bottom = 120 * App.scale;
            this.tip.left = this.tip.right = 40 * App.scale;
            this.tip1.fontSize = 20 * App.scale;
            this.tip1.bottom = 85 * App.scale;
            this.tip1.left = this.tip.right = 40 * App.scale;
            this.btn.scale(App.scale, App.scale);
            this.btn.bottom = 15 * App.scale;
            this.btn.centerX = 0;
        };
        return RechargeAmountView;
    }(ui.page.RechargeAmountViewUI));
    view.RechargeAmountView = RechargeAmountView;
})(view || (view = {}));
//# sourceMappingURL=RechargeAmountView.js.map