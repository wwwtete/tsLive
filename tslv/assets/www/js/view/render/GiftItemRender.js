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
        var GiftItemRender = (function (_super) {
            __extends(GiftItemRender, _super);
            function GiftItemRender() {
                var _this = _super.call(this) || this;
                _this.doResize();
                return _this;
            }
            GiftItemRender.prototype.setData = function (index, value) {
                this._data = value;
                if (index < 4)
                    this.back.alpha = index % 2 == 0 ? .8 : .85;
                else
                    this.back.alpha = index % 2 == 0 ? .85 : .8;
                this.gift_pic.skin = 'gift/gift_' + this._data['giftId'] + '.png';
                this.tip_0.text = this._data['giftName'];
                this.tip_1.text = this._data['price'] + "金币 / 个";
                this.tip_0.centerX = this.tip_1.centerX = 0;
            };
            GiftItemRender.prototype.doMouse = function (type) {
                switch (type) {
                    case Laya.Event.MOUSE_DOWN:
                        this.back.skin = 'gameSkin/back_06.png';
                        break;
                    case Laya.Event.CLICK:
                        this.sendGift();
                        break;
                    case Laya.Event.MOUSE_UP:
                    case Laya.Event.MOUSE_OUT:
                        this.back.skin = 'gameSkin/back_09.png';
                    default:
                        break;
                }
            };
            GiftItemRender.prototype.sendGift = function () {
                WebSocketService.getInstance().request_gift(this._data['giftId'], '', Handler.create(this, this.sendGiftSuccess, null, false));
            };
            GiftItemRender.prototype.sendGiftSuccess = function (data) {
                UserData.baseData['coinBalance'] = data['amount'];
                MEventDispatcher.getInstance().event(MEvent.CHANGE_USER_DATA);
            };
            GiftItemRender.prototype.doResize = function () {
                this.size(Math.floor(160 * App.scale), Math.floor(160 * App.scale));
                this.gift_pic.scale(App.scale, App.scale);
                this.tip_0.scale(App.scale, App.scale);
                this.tip_1.scale(App.scale, App.scale);
                this.gift_pic.centerX = this.tip_0.centerX = this.tip_1.centerX = 0;
                this.gift_pic.y = 6 * App.scale;
                this.tip_0.y = 92 * App.scale;
                this.tip_1.y = 127 * App.scale;
            };
            return GiftItemRender;
        }(ui.page.render.GiftItemRenderUI));
        render.GiftItemRender = GiftItemRender;
    })(render = view.render || (view.render = {}));
})(view || (view = {}));
//# sourceMappingURL=GiftItemRender.js.map