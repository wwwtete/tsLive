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
    var ErrorTipView = (function (_super) {
        __extends(ErrorTipView, _super);
        function ErrorTipView() {
            var _this = _super.call(this) || this;
            _this.doResize();
            _this.x = _this.y = 0;
            return _this;
        }
        ErrorTipView.prototype.show = function (msg, delay) {
            if (delay === void 0) { delay = null; }
            delay = delay || 700;
            this._message = (msg == undefined) ? '' : msg;
            if (this._message == '')
                return;
            this.visible = true;
            Laya.timer.clear(this, this.hide);
            this.y = -this.height * App.scale + App.keybordHeight;
            this.tip.text = msg;
            this.tip.centerX = 0;
            Laya.stage.addChild(this);
            this.y = -this.height * App.scale + App.keybordHeight;
            Tween.to(this, { y: App.keybordHeight }, 200);
            Laya.timer.once(delay, this, this.hide);
        };
        ErrorTipView.prototype.hide = function () {
            if (this._message == '')
                return;
            Tween.to(this, { y: -this.height * App.scale + App.keybordHeight }, 200, null, Handler.create(this, this.hideOver));
        };
        ErrorTipView.prototype.hideOver = function () {
            this.visible = false;
        };
        ErrorTipView.prototype.doResize = function () {
            this.scale(App.scale, App.scale);
        };
        ErrorTipView.getInstance = function () {
            if (null == this._instance)
                this._instance = new ErrorTipView();
            return this._instance;
        };
        return ErrorTipView;
    }(ui.page.ErrorTipViewUI));
    view.ErrorTipView = ErrorTipView;
})(view || (view = {}));
//# sourceMappingURL=ErrorTipView.js.map