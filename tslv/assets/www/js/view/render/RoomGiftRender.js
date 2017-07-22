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
        var RoomGiftRender = (function (_super) {
            __extends(RoomGiftRender, _super);
            function RoomGiftRender() {
                var _this = _super.call(this) || this;
                _this._isShow = false;
                _this._listData = [
                    {
                        "giftId": 10001,
                        "price": 10,
                        "giftName": '玫瑰花'
                    },
                    {
                        "giftId": 10002,
                        "price": 20,
                        "giftName": '亲亲'
                    },
                    {
                        "giftId": 10003,
                        "price": 50,
                        "giftName": '猪头'
                    },
                    {
                        "giftId": 10004,
                        "price": 100,
                        "giftName": '六九式',
                        'ani': 16
                    },
                    {
                        "giftId": 10005,
                        "price": 200,
                        "giftName": '男口',
                        'ani': 18
                    },
                    {
                        "giftId": 10006,
                        "price": 200,
                        "giftName": '女口',
                        'ani': 17
                    },
                    {
                        "giftId": 10007,
                        "price": 500,
                        "giftName": '啪啪啪',
                        'ani': 14
                    },
                    {
                        "giftId": 10008,
                        "price": 500,
                        "giftName": '啪啪啪',
                        'ani': 15
                    }
                ];
                _this.doResize();
                _this.createHandler();
                return _this;
            }
            RoomGiftRender.prototype.createHandler = function () {
                MEventDispatcher.getInstance().on(MEvent.CHANGE_USER_DATA, this, this.changeUserAmount);
                this.list.itemRender = view.render.GiftItemRender;
                this.list.renderHandler = Handler.create(this, this.renderList, null, false);
                this.list.mouseHandler = Handler.create(this, this.mouseList, null, false);
                this.list.spaceX = 1;
                this.list.spaceY = 1;
                this.btn_0.clickHandler = Handler.create(this, this.toRecharge, null, false);
                this.list.array = this._listData;
            };
            RoomGiftRender.prototype.toRecharge = function () {
                ViewManager.getInstance().showView(ViewManager.RECHARGE_AMOUNT_VIEW, view.RechargeAmountView, true);
                this.hide();
            };
            RoomGiftRender.prototype.mouseList = function (e, index) {
                var cell = this.list.getCell(index);
                if (cell)
                    cell["doMouse"](e.type);
            };
            RoomGiftRender.prototype.renderList = function (cell, index) {
                if (index < this._listData.length) {
                    cell["setData"](index, this._listData[index]);
                }
            };
            RoomGiftRender.prototype.changeUserAmount = function () {
                this.tip_0.text = '余额：' + UserData.baseData['coinBalance'] + '金币';
            };
            RoomGiftRender.prototype.show = function () {
                if (this._isShow)
                    return;
                this._isShow = true;
                this.tip_0.text = '余额：' + UserData.baseData['coinBalance'] + '金币';
                Laya.stage.addChild(this);
                this.bottom = -this.height * App.scale;
                Tween.to(this, { bottom: 0 }, 100, null, null, .3);
            };
            RoomGiftRender.prototype.hide = function () {
                if (!this._isShow)
                    return;
                this._isShow = false;
                this.bottom = 0;
                Tween.to(this, { bottom: -this.height * App.scale }, 100);
            };
            RoomGiftRender.prototype.doResize = function () {
                this.size(640 * App.scale, 400 * App.scale);
                this.list.left = this.list.right = 0;
                this.recharge_box.height = 80 * App.scale;
                this.list.bottom = this.recharge_box.height + 1;
                this.recharge_box.bottom = 0;
                this.btn_0.width = 180 * App.scale;
                this.btn_0.labelSize = 30 * App.scale;
                this.btn_0.top = this.btn_0.bottom = this.btn_0.right = 0;
                this.tip_0.fontSize = 26 * App.scale;
                this.tip_0.left = 20 * App.scale;
            };
            RoomGiftRender.getInstance = function () {
                if (null == this._instance)
                    this._instance = new RoomGiftRender();
                return this._instance;
            };
            return RoomGiftRender;
        }(ui.page.render.RoomGiftRenderUI));
        render.RoomGiftRender = RoomGiftRender;
    })(render = view.render || (view.render = {}));
})(view || (view = {}));
//# sourceMappingURL=RoomGiftRender.js.map