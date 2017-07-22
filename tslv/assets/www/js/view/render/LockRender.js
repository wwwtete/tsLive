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
        var LockRender = (function (_super) {
            __extends(LockRender, _super);
            function LockRender() {
                var _this = _super.call(this) || this;
                _this.createHandler();
                return _this;
            }
            LockRender.prototype.createHandler = function () {
                FocusManage.getInstance().addTextInput([this.textinput_0], ViewManager.LOGIN_VIEW, [this.clip_0], [this.clip_1]);
                this.btn_0.clickHandler = new Handler(this, this.doClick, [this.btn_0], false);
            };
            LockRender.prototype.doClick = function (target) {
                if (App.keybordHeight > 0)
                    return;
                if (target == this.btn_0) {
                    this.doSubMit();
                }
            };
            LockRender.prototype.doSubMit = function () {
                var opt = this.checkInput();
                if (opt['code']) {
                    WebSocketService.getInstance().request_unlock(UserData.baseData['email'], this.textinput_0.text, Handler.create(this, this.unLockSuccess));
                }
                else {
                    view.ErrorTipView.getInstance().show('解锁失败');
                }
            };
            LockRender.prototype.unLockSuccess = function (data) {
                ViewManager.getInstance().hideLoak();
                view.ErrorTipView.getInstance().show("解锁成功");
            };
            LockRender.prototype.checkInput = function () {
                var opt = { code: true, error: "" };
                if (this.textinput_0.text == "") {
                    opt.code = false;
                    opt.error = '登录密码不能为空';
                    return opt;
                }
                if (this.textinput_0.text.length < 6) {
                    opt.code = false;
                    opt.error = '登录密码最少为6位';
                    return opt;
                }
                return opt;
            };
            LockRender.prototype.infoView = function () {
                this.textinput_0.text = '';
            };
            LockRender.prototype.hideView = function () {
                this.mouseEnabled = false;
            };
            Object.defineProperty(LockRender.prototype, "handler", {
                set: function (value) {
                    this._handler = value;
                },
                enumerable: true,
                configurable: true
            });
            return LockRender;
        }(ui.page.render.LockRenderUI));
        render.LockRender = LockRender;
    })(render = view.render || (view.render = {}));
})(view || (view = {}));
//# sourceMappingURL=LockRender.js.map