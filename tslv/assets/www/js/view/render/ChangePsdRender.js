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
        var ChangePsdRender = (function (_super) {
            __extends(ChangePsdRender, _super);
            function ChangePsdRender() {
                var _this = _super.call(this) || this;
                _this.createHandler();
                return _this;
            }
            ChangePsdRender.prototype.createHandler = function () {
                FocusManage.getInstance().addTextInput([this.textinput_0], ViewManager.LOGIN_VIEW, [this.clip_0], [this.clip_1]);
                this.btn_0.clickHandler = new Handler(this, this.doClick, [this.btn_0], false);
                this.btn_1.clickHandler = new Handler(this, this.doClick, [this.btn_1], false);
            };
            ChangePsdRender.prototype.doClick = function (target) {
                if (App.keybordHeight > 0)
                    return;
                if (target == this.btn_0) {
                    this.doSubMit();
                }
                else if (target == this.btn_1) {
                    if (this._handler)
                        this._handler.runWith(["changeView", "sendEmail"]);
                }
            };
            ChangePsdRender.prototype.doSubMit = function () {
                var opt = this.checkInput();
                if (opt['code']) {
                    view.LoadingMaskView.getInstance().show('正在修改密码');
                    HttpControl.creat().getData({
                        url: HttpConfig.apimain + HttpConfig.changePwd,
                        type: 'POST',
                        data: ['id', UserData.uidByEmail, 'code', this.textinput_0.text, 'newpasswd', this.textinput_1.text],
                        success: Handler.create(this, this.webChangePwdSuccess),
                        error: Handler.create(this, this.webChangePwdError)
                    });
                }
                else {
                    view.ErrorTipView.getInstance().show(opt['error']);
                }
            };
            ChangePsdRender.prototype.webChangePwdSuccess = function (data) {
                view.LoadingMaskView.getInstance().hide();
                if (typeof (data) == 'string')
                    data = JSON.parse(data);
                if (data['code'] == -1) {
                    view.ErrorTipView.getInstance().show("密码修改失败");
                    return;
                }
                if (this._handler)
                    this._handler.runWith(["changeView", "login"]);
                view.ErrorTipView.getInstance().show("密码修改成功");
            };
            ChangePsdRender.prototype.webChangePwdError = function (data) {
                view.LoadingMaskView.getInstance().hide();
                view.ErrorTipView.getInstance().show("密码修改失败");
            };
            ChangePsdRender.prototype.checkInput = function () {
                var opt = { code: true, error: "" };
                if (this.textinput_0.text.length != 5) {
                    opt.code = false;
                    opt.error = '验证码必须为5位数字';
                    return opt;
                }
                if (this.textinput_0.text == "" || this.textinput_1.text == "" || this.textinput_2.text == "") {
                    opt.code = false;
                    opt.error = '验证码或者密码不能为空';
                    return opt;
                }
                if (this.textinput_1.text.length < 6) {
                    opt.code = false;
                    opt.error = '密码长度最少为6位';
                    return opt;
                }
                if (this.textinput_1.text != this.textinput_2.text) {
                    opt.code = false;
                    opt.error = '两次输入的密码不一致';
                    return opt;
                }
                return opt;
            };
            ChangePsdRender.prototype.infoView = function () {
                this.textinput_0.text = this.textinput_1.text = this.textinput_2.text = '';
            };
            Object.defineProperty(ChangePsdRender.prototype, "handler", {
                set: function (value) {
                    this._handler = value;
                },
                enumerable: true,
                configurable: true
            });
            return ChangePsdRender;
        }(ui.page.render.ChangePsdRenderUI));
        render.ChangePsdRender = ChangePsdRender;
    })(render = view.render || (view.render = {}));
})(view || (view = {}));
//# sourceMappingURL=ChangePsdRender.js.map