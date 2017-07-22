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
    var WeiHuView = (function (_super) {
        __extends(WeiHuView, _super);
        function WeiHuView() {
            var _this = _super.call(this) || this;
            _this._time = '';
            return _this;
        }
        WeiHuView.prototype.show = function (time) {
            this._time = time;
            Laya.stage.addChild(this);
            this.infoView();
            this.doResize();
        };
        WeiHuView.prototype.hide = function () {
            this.removeSelf();
        };
        WeiHuView.prototype.infoView = function () {
            this.label_time.text = this.label_shadow.text = '预计维护完成时间：' + this._time;
            this.box_label_1.centerX = 0;
        };
        WeiHuView.prototype.doResize = function () {
            this.size(Laya.Browser.width, Laya.Browser.height);
            this.box_label_1.centerX = 0;
            this.box.scale(App.scale, App.scale);
            this.box.centerX = 0;
            this.box.centerY = -100 * App.scale;
        };
        WeiHuView.getInstance = function () {
            if (null == this._instance)
                this._instance = new WeiHuView();
            return this._instance;
        };
        return WeiHuView;
    }(ui.page.WeiHuViewUI));
    view.WeiHuView = WeiHuView;
})(view || (view = {}));
//# sourceMappingURL=WeiHuView.js.map