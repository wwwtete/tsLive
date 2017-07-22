/**
* name
*/
var manage;
(function (manage) {
    var GiftRender = view.render.GiftRender;
    var GiftManage = (function () {
        function GiftManage() {
            this._giftList = [];
        }
        GiftManage.getInstance = function () {
            if (null == this._instance)
                this._instance = new GiftManage();
            return this._instance;
        };
        GiftManage.prototype.play = function (giftId, ani) {
            var gift = this.creatGift();
            gift.clipY = ani;
            gift.skin = 'gift/clip_' + giftId + '.png';
        };
        GiftManage.prototype.creatGift = function () {
            var gift;
            if (this._giftList.length < 2) {
                gift = new GiftRender(3000);
                this._giftList.push(gift);
                return gift;
            }
            gift = this._giftList.shift();
            this._giftList.push(gift);
            return gift;
        };
        return GiftManage;
    }());
    manage.GiftManage = GiftManage;
})(manage || (manage = {}));
//# sourceMappingURL=GiftManage.js.map