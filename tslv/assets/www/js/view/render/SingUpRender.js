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
        var SingUpRender = (function (_super) {
            __extends(SingUpRender, _super);
            function SingUpRender() {
                var _this = _super.call(this) || this;
                _this.createHandler();
                return _this;
            }
            SingUpRender.prototype.createHandler = function () {
                FocusManage.getInstance().addTextInput([this.textinput_0, this.textinput_1, this.textinput_2], ViewManager.LOGIN_VIEW, [this.clip_0, this.clip_2, this.clip_4], [this.clip_1, this.clip_3, this.clip_5]);
                this.btn_0.clickHandler = new Handler(this, this.doClick, [this.btn_0], false);
                this.btn_1.clickHandler = new Handler(this, this.doClick, [this.btn_1], false);
                this.btn_2.clickHandler = new Handler(this, this.doClick, [this.btn_2], false);
            };
            SingUpRender.prototype.doClick = function (target) {
                if (target == this.btn_0) {
                    this.doSubMit();
                }
                else if (target == this.btn_1) {
                    if (this._handler)
                        this._handler.runWith(["changeView", "login"]);
                }
                else if (target == this.btn_2) {
                    if (this._handler)
                        this._handler.runWith(["changeView", "sendEmail"]);
                }
            };
            SingUpRender.prototype.doSubMit = function () {
                if (App.keybordHeight > 0)
                    return;
                var opt = this.checkInput();
                if (opt['code']) {
                    view.LoadingMaskView.getInstance().show('正在注册');
                    HttpControl.creat().getData({
                        url: HttpConfig.apimain + HttpConfig.reg,
                        type: 'POST',
                        data: ['email', this.textinput_0.text, 'passwd', this.textinput_1.text, 'confirmPasswd', this.textinput_1.text, 'uuid', App.createUUid(), 'vremark', JSON.stringify(App.deviceinfo)],
                        success: Handler.create(this, this.webRegSuccess),
                        error: Handler.create(this, this.webRegError)
                    });
                }
                else {
                    view.ErrorTipView.getInstance().show(opt['error']);
                }
            };
            SingUpRender.prototype.webRegSuccess = function (data) {
                if (typeof (data) == 'string')
                    data = JSON.parse(data);
                if (data['code'] == -1) {
                    view.LoadingMaskView.getInstance().hide();
                    view.ErrorTipView.getInstance().show("注册失败");
                    return;
                }
                var userId = data['id'];
                var passtoken = data['pt']['passtoken'];
                WebSocketService.getInstance().request_login(userId, passtoken, Handler.create(this, this.regSuccess));
            };
            SingUpRender.prototype.webRegError = function (data) {
                view.LoadingMaskView.getInstance().hide();
                view.ErrorTipView.getInstance().show("注册失败");
            };
            SingUpRender.prototype.regSuccess = function (data) {
                UserData.baseData = data.player;
                ViewManager.getInstance().showView(ViewManager.HOME_VIEW, view.HomeView);
                view.ErrorTipView.getInstance().show("注册成功");
                LocalStrongManage.getInstance().setData("email", this.textinput_0.text);
            };
            SingUpRender.prototype.checkInput = function () {
                var opt = { code: true, error: "" };
                if (!StringUntil.checkEmail(this.textinput_0.text)) {
                    opt.code = false;
                    opt.error = '邮箱格式不正确';
                    return opt;
                }
                if (this.textinput_0.text == "" || this.textinput_1.text == "" || this.textinput_2.text == "") {
                    opt.code = false;
                    opt.error = '邮箱或者密码不能为空';
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
            SingUpRender.prototype.infoView = function () {
                this.textinput_0.text = this.textinput_1.text = this.textinput_2.text = '';
            };
            Object.defineProperty(SingUpRender.prototype, "handler", {
                set: function (value) {
                    this._handler = value;
                },
                enumerable: true,
                configurable: true
            });
            return SingUpRender;
        }(ui.page.render.SingUpRenderUI));
        render.SingUpRender = SingUpRender;
    })(render = view.render || (view.render = {}));
})(view || (view = {}));
//# sourceMappingURL=SingUpRender.js.map