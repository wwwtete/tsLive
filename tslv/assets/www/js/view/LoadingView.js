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
    var LoadingView = (function (_super) {
        __extends(LoadingView, _super);
        function LoadingView() {
            return _super.call(this) || this;
        }
        LoadingView.prototype.show = function () {
            Laya.stage.addChild(this);
            this.infoView();
            this.doResize();
        };
        LoadingView.prototype.hide = function () {
            this.removeSelf();
        };
        LoadingView.prototype.infoView = function () {
            this.anchor_name.text = this.anchor_shadow.text = '数据加载中：' + 0 + ' / 100';
            this.box_label.centerX = 0;
        };
        LoadingView.prototype.updata = function (value) {
            var pross = Math.floor(value * 100);
            this.anchor_name.text = this.anchor_shadow.text = '数据加载中：' + pross + ' / 100';
            this.box_label.centerX = 0;
        };
        LoadingView.prototype.doResize = function () {
            this.size(Laya.Browser.width, Laya.Browser.height);
            this.box.scale(App.scale, App.scale);
            this.box.centerY = -100 * App.scale;
        };
        LoadingView.getInstance = function () {
            if (null == this._instance)
                this._instance = new LoadingView();
            return this._instance;
        };
        return LoadingView;
    }(ui.page.LoadingViewUI));
    view.LoadingView = LoadingView;
})(view || (view = {}));
//# sourceMappingURL=LoadingView.js.map