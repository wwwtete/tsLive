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
        var ResetRender = (function (_super) {
            __extends(ResetRender, _super);
            function ResetRender() {
                var _this = _super.call(this) || this;
                _this.createHandler();
                return _this;
            }
            ResetRender.prototype.createHandler = function () {
                FocusManage.getInstance().addTextInput([this.textinput_0], ViewManager.LOGIN_VIEW, [this.clip_0], [this.clip_1]);
                this.btn_0.clickHandler = new Handler(this, this.doClick, [this.btn_0], false);
                this.btn_1.clickHandler = new Handler(this, this.doClick, [this.btn_1], false);
            };
            ResetRender.prototype.doClick = function (target) {
                if (App.keybordHeight > 0)
                    return;
                if (target == this.btn_0) {
                    this.doSubMit();
                }
                else if (target == this.btn_1) {
                    if (this._handler)
                        this._handler.runWith(["changeView", "login"]);
                }
            };
            ResetRender.prototype.doSubMit = function () {
                var opt = this.checkInput();
                if (opt['code']) {
                    view.LoadingMaskView.getInstance().show('正在发送邮件');
                    HttpControl.creat().getData({
                        url: HttpConfig.apimain + HttpConfig.sendEmail,
                        type: 'POST',
                        data: ['email', this.textinput_0.text],
                        success: Handler.create(this, this.webSendEmailSuccess),
                        error: Handler.create(this, this.webSendEmailError)
                    });
                }
                else {
                    view.ErrorTipView.getInstance().show(opt['error']);
                }
            };
            ResetRender.prototype.webSendEmailSuccess = function (data) {
                view.LoadingMaskView.getInstance().hide();
                if (typeof (data) == 'string')
                    data = JSON.parse(data);
                if (data['code'] == -1) {
                    view.ErrorTipView.getInstance().show("邮件发送失败");
                    return;
                }
                UserData.uidByEmail = data['id'];
                if (this._handler)
                    this._handler.runWith(["changeView", "changePsd"]);
                view.ErrorTipView.getInstance().show("邮件发送成功");
            };
            ResetRender.prototype.webSendEmailError = function (data) {
                view.LoadingMaskView.getInstance().hide();
                view.ErrorTipView.getInstance().show("邮件发送失败");
            };
            ResetRender.prototype.checkInput = function () {
                var opt = { code: true, error: "" };
                if (!StringUntil.checkEmail(this.textinput_0.text)) {
                    opt.code = false;
                    opt.error = '邮箱格式不正确';
                    return opt;
                }
                if (this.textinput_0.text == "") {
                    opt.code = false;
                    opt.error = '邮箱或者密码不能为空';
                    return opt;
                }
                return opt;
            };
            ResetRender.prototype.infoView = function () {
                this.textinput_0.text = LocalStrongManage.getInstance().getData("email");
            };
            Object.defineProperty(ResetRender.prototype, "handler", {
                set: function (value) {
                    this._handler = value;
                },
                enumerable: true,
                configurable: true
            });
            return ResetRender;
        }(ui.page.render.ResetRenderUI));
        render.ResetRender = ResetRender;
    })(render = view.render || (view.render = {}));
})(view || (view = {}));
//# sourceMappingURL=ResetRender.js.map