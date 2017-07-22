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
    var GongGaoView = (function (_super) {
        __extends(GongGaoView, _super);
        function GongGaoView() {
            var _this = _super.call(this) || this;
            _this.doResize();
            return _this;
        }
        GongGaoView.prototype.show = function (msg) {
            this.visible = true;
            this.x = 0;
            this.y = 80 * App.scale;
            this.tip.text = msg;
            Laya.stage.addChild(this);
            this.tip.centerY = 0;
            if (this.tip.width < this.width - 120) {
                this.tip.x = 100;
                this.playOver();
            }
            else {
                this.tip.x = 100;
                Tween.to(this.tip, { x: this.width - this.tip.width - 120 }, (this.tip.width - this.width + 120) / (this.width - 120) * 5000, null, Handler.create(this, this.playOver), 1000);
            }
        };
        GongGaoView.prototype.playOver = function () {
            Laya.timer.once(3000, this, this.hide);
        };
        GongGaoView.prototype.hide = function () {
            this.removeSelf();
        };
        GongGaoView.prototype.doResize = function () {
            this.scale(App.scale, App.scale);
        };
        GongGaoView.getInstance = function () {
            if (null == this._instance)
                this._instance = new GongGaoView();
            return this._instance;
        };
        return GongGaoView;
    }(ui.page.GongGaoViewUI));
    view.GongGaoView = GongGaoView;
})(view || (view = {}));
//# sourceMappingURL=GongGaoView.js.map