/**
* name
*/
var view;
(function (view) {
    var render;
    (function (render) {
        var GiftRender = (function () {
            function GiftRender(delay) {
                this._delay = 3000;
                this._delay = delay || 3000;
                this._clip = new Laya.Clip();
                this._clip.interval = 20;
                this._clip.scale(App.scale, App.scale);
                this._clip.pivotX = this._clip.width * .5;
                this._clip.pivotY = this._clip.height * .5;
                this._clip.clipY = 16;
                this._clip.autoPlay = true;
            }
            Object.defineProperty(GiftRender.prototype, "skin", {
                set: function (value) {
                    this._clip.skin = value;
                    this._clip.index = 0;
                    this._clip.x = Laya.stage.width * .5 - (100 - Math.random() * 200) * App.scale;
                    this._clip.y = Laya.stage.height * .5 - (200 - Math.random() * 400) * App.scale;
                    Laya.timer.once(this._delay, this, this.remove);
                    Laya.stage.addChild(this._clip);
                },
                enumerable: true,
                configurable: true
            });
            Object.defineProperty(GiftRender.prototype, "clipY", {
                set: function (value) {
                    this._clip.clipY = value;
                },
                enumerable: true,
                configurable: true
            });
            GiftRender.prototype.remove = function () {
                this._clip.removeSelf();
            };
            return GiftRender;
        }());
        render.GiftRender = GiftRender;
    })(render = view.render || (view.render = {}));
})(view || (view = {}));
//# sourceMappingURL=GiftRender.js.map