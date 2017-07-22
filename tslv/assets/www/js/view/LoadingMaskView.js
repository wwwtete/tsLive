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
    var LoadingMaskView = (function (_super) {
        __extends(LoadingMaskView, _super);
        function LoadingMaskView() {
            var _this = _super.call(this) || this;
            _this.mouseEnabled = true;
            return _this;
        }
        LoadingMaskView.prototype.show = function (msg) {
            this.tip.text = msg || '数据加载中';
            this.tip.centerX = 0;
            Laya.stage.addChild(this);
            this.doResize();
            this.ani.play(0, true);
        };
        LoadingMaskView.prototype.hide = function () {
            this.ani.stop();
            this.removeSelf();
        };
        LoadingMaskView.prototype.doResize = function () {
            this.size(Laya.stage.width, Laya.stage.height);
            this.tip.scale(App.scale, App.scale);
            this.tip.centerX = this.tip.centerY = 0;
            this.ani.scale(App.scale, App.scale);
            this.ani.pos(Laya.stage.width * .5, Laya.stage.height * .5 - 80 * App.scale);
        };
        LoadingMaskView.getInstance = function () {
            if (null == this._instance)
                this._instance = new LoadingMaskView();
            return this._instance;
        };
        return LoadingMaskView;
    }(ui.page.LoadingMaskViewUI));
    view.LoadingMaskView = LoadingMaskView;
})(view || (view = {}));
//# sourceMappingURL=LoadingMaskView.js.map