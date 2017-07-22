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
    var dialog;
    (function (dialog) {
        var TipDialog = (function (_super) {
            __extends(TipDialog, _super);
            function TipDialog() {
                var _this = _super.call(this) || this;
                _this._useback = true;
                _this.btn.clickHandler = Handler.create(_this, _this.doClick, [_this.btn], false);
                _this.btn_close.clickHandler = Handler.create(_this, _this.doClick, [_this.btn_close], false);
                return _this;
            }
            TipDialog.prototype.doClick = function (target) {
                if (target == this.btn) {
                    if (this._handler)
                        this._handler.run();
                }
                else if (target == this.btn_close) {
                    if (this._handler1)
                        this._handler1.run();
                }
                this.close();
            };
            TipDialog.prototype.showDialog = function (title, message, handler, handler1, blabel) {
                if (handler === void 0) { handler = null; }
                if (handler1 === void 0) { handler1 = null; }
                if (blabel === void 0) { blabel = ''; }
                this.tip.text = title;
                this.message.text = message;
                this._handler = handler;
                this._handler1 = handler1;
                this.message.centerY = -20;
                if (blabel != '')
                    this.btn.label = blabel;
                else
                    this.btn.label = '确定';
                this.doResize();
                this.popup();
                Laya.stage.addChild(Dialog.manager);
            };
            TipDialog.prototype.doResize = function () {
                this.size(450 * App.scale, 225 * App.scale);
                this.tip.scale(App.scale, App.scale);
                this.tip.centerX = 0;
                this.tip.y = 19 * App.scale;
                this.btn_close.scale(App.scale, App.scale);
                this.btn_close.right = this.btn_close.top = 0;
                this.message.scale(App.scale, App.scale);
                this.message.centerX = 0;
                this.message.y = 86 * App.scale;
                this.line.scale(App.scale, App.scale);
                this.line.bottom = 70 * App.scale;
                this.btn.scale(App.scale, App.scale);
                this.btn.bottom = 0;
            };
            Object.defineProperty(TipDialog.prototype, "useback", {
                get: function () {
                    return this._useback;
                },
                //======
                set: function (value) {
                    this._useback = value;
                },
                enumerable: true,
                configurable: true
            });
            //======
            TipDialog.getInstance = function () {
                if (null == this._instance) {
                    this._instance = new TipDialog();
                }
                return this._instance;
            };
            return TipDialog;
        }(ui.dialog.TipDialogUI));
        dialog.TipDialog = TipDialog;
    })(dialog = view.dialog || (view.dialog = {}));
})(view || (view = {}));
//# sourceMappingURL=TipDialog.js.map