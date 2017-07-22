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
        var QuiteTipRender = (function (_super) {
            __extends(QuiteTipRender, _super);
            function QuiteTipRender() {
                var _this = _super.call(this) || this;
                _this._isShow = false;
                _this.infoView();
                return _this;
            }
            QuiteTipRender.prototype.infoView = function () {
                this.doResize();
                this.y = -this.height * App.scale;
                Laya.stage.addChild(this);
            };
            QuiteTipRender.prototype.show = function () {
                if (!this._isShow) {
                    this._isShow = true;
                    Laya.stage.addChild(this);
                    Tween.to(this, { y: 150 * App.scale }, 200);
                    Laya.timer.once(3000, this, this.doResum);
                }
                else {
                    window["navigator"] && window["navigator"]["app"].exitApp();
                }
            };
            QuiteTipRender.prototype.doResum = function () {
                this._isShow = false;
                Tween.to(this, { y: -this.height * App.scale }, 200);
            };
            QuiteTipRender.prototype.hide = function () {
                Tween.clearTween(this);
                this.y = -this.height * App.scale;
            };
            QuiteTipRender.prototype.doResize = function () {
                this.scale(App.scale, App.scale);
                this.centerX = 0;
            };
            QuiteTipRender.getInstance = function () {
                if (null == this._instance)
                    this._instance = new QuiteTipRender();
                return this._instance;
            };
            return QuiteTipRender;
        }(ui.page.render.QuiteTipRenderUI));
        render.QuiteTipRender = QuiteTipRender;
    })(render = view.render || (view.render = {}));
})(view || (view = {}));
//# sourceMappingURL=QuiteTipRender.js.map