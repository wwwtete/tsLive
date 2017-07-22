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
        var LoginRender = (function (_super) {
            __extends(LoginRender, _super);
            function LoginRender() {
                var _this = _super.call(this) || this;
                _this.createHandler();
                return _this;
            }
            LoginRender.prototype.createHandler = function () {
                FocusManage.getInstance().addTextInput([this.textinput_0, this.textinput_1], ViewManager.LOGIN_VIEW, [this.clip_0, this.clip_2], [this.clip_1, this.clip_3]);
                this.btn_0.clickHandler = new Handler(this, this.doClick, [this.btn_0], false);
                this.btn_1.clickHandler = new Handler(this, this.doClick, [this.btn_1], false);
                this.btn_2.clickHandler = new Handler(this, this.doClick, [this.btn_2], false);
            };
            LoginRender.prototype.doClick = function (target) {
                if (App.keybordHeight > 0)
                    return;
                if (target == this.btn_0) {
                    this.doSubMit();
                }
                else if (target == this.btn_1) {
                    if (this._handler)
                        this._handler.runWith(["changeView", "singup"]);
                }
                else if (target == this.btn_2) {
                    if (this._handler)
                        this._handler.runWith(["changeView", "sendEmail"]);
                }
            };
            LoginRender.prototype.doSubMit = function () {
                var opt = this.checkInput();
                if (opt['code']) {
                    view.LoadingMaskView.getInstance().show('正在登陆');
                    HttpControl.creat().getData({
                        url: HttpConfig.apimain + HttpConfig.login,
                        type: 'POST',
                        data: ['email', this.textinput_0.text, 'passwd', this.textinput_1.text, 'uuid', App.createUUid(), 'vremark', JSON.stringify(App.deviceinfo)],
                        success: Handler.create(this, this.webloginSuccess),
                        error: Handler.create(this, this.webloginError)
                    });
                    // WebSocketService.getInstance().request_login(this.textinput_0.text,this.textinput_1.text,Handler.create(this,this.loginSuccess))
                }
                else {
                    view.ErrorTipView.getInstance().show(opt['error']);
                }
            };
            LoginRender.prototype.webloginSuccess = function (data) {
                if (typeof (data) == 'string')
                    data = JSON.parse(data);
                if (data['code'] == -1) {
                    view.LoadingMaskView.getInstance().hide();
                    view.ErrorTipView.getInstance().show("登录失败");
                    return;
                }
                var userId = data['id'];
                var passtoken = data['pt']['passtoken'];
                WebSocketService.getInstance().request_login(userId, passtoken, Handler.create(this, this.loginSuccess));
            };
            LoginRender.prototype.webloginError = function () {
                view.LoadingMaskView.getInstance().hide();
                view.ErrorTipView.getInstance().show("登录失败");
            };
            LoginRender.prototype.loginSuccess = function (data) {
                UserData.baseData = data.player;
                UserData.baseData['avatarPath'] = UserData.baseData['avatarPath'] || '';
                UserData.avatar = UserData.cover = '';
                if (UserData.baseData['avatarPath'] != '') {
                    var arr = UserData.baseData['avatarPath'].split('::');
                    UserData.avatar = 'http://web.taoselive.com/s3?' + encodeURIComponent(arr[0]);
                    UserData.cover = 'http://web.taoselive.com/s3?' + encodeURIComponent(arr[1]);
                }
                ViewManager.getInstance().showView(ViewManager.HOME_VIEW, view.HomeView);
                view.ErrorTipView.getInstance().show("登录成功");
                LocalStrongManage.getInstance().setData("email", this.textinput_0.text);
            };
            LoginRender.prototype.checkInput = function () {
                var opt = { code: true, error: "" };
                if (!StringUntil.checkEmail(this.textinput_0.text)) {
                    opt.code = false;
                    opt.error = '邮箱格式不正确';
                    return opt;
                }
                if (this.textinput_0.text == "" || this.textinput_1.text == "") {
                    opt.code = false;
                    opt.error = '邮箱或者密码不能为空';
                    return opt;
                }
                if (this.textinput_1.text.length < 6) {
                    opt.code = false;
                    opt.error = '密码长度最少为6位';
                    return opt;
                }
                return opt;
            };
            LoginRender.prototype.infoView = function () {
                this.textinput_0.text = LocalStrongManage.getInstance().getData("email");
                this.textinput_1.text = '';
            };
            Object.defineProperty(LoginRender.prototype, "handler", {
                set: function (value) {
                    this._handler = value;
                },
                enumerable: true,
                configurable: true
            });
            return LoginRender;
        }(ui.page.render.LoginRenderUI));
        render.LoginRender = LoginRender;
    })(render = view.render || (view.render = {}));
})(view || (view = {}));
//# sourceMappingURL=LoginRender.js.map