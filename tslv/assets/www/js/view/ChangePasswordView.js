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
    var ChangePasswordView = (function (_super) {
        __extends(ChangePasswordView, _super);
        function ChangePasswordView() {
            var _this = _super.call(this) || this;
            _this.createHandler();
            return _this;
        }
        ChangePasswordView.prototype.createHandler = function () {
            this.topView.handler = new Handler(this, this.doSomthing);
            this.topView.setTitle("用户登录密码", "请输入您要修改的登录密码");
            this.btn_0.clickHandler = Handler.create(this, this.changePasswd, null, false);
        };
        ChangePasswordView.prototype.doSomthing = function (type) {
            switch (type) {
                case 0:
                    ViewManager.getInstance().doBack();
                    break;
                default:
                    break;
            }
        };
        ChangePasswordView.prototype.changePasswd = function () {
            App.keybordHeight = 0;
            var opt = this.checkInput();
            if (opt['code']) {
                WebSocketService.getInstance().request_changePassWord(this.textinput_0.text, this.textinput_1.text, Handler.create(this, this.changePasswdSuccess));
            }
            else {
                view.ErrorTipView.getInstance().show(opt['error']);
            }
        };
        ChangePasswordView.prototype.changePasswdSuccess = function (body) {
            view.ErrorTipView.getInstance().show("密码修改成功");
            ViewManager.getInstance().doBack();
        };
        ChangePasswordView.prototype.checkInput = function () {
            var opt = { code: true, error: "" };
            if (this.textinput_0.text == '') {
                opt.code = false;
                opt.error = '旧密码不能为空';
                return opt;
            }
            if (this.textinput_1.text == '' || this.textinput_2.text == '') {
                opt.code = false;
                opt.error = '新密码不能为空';
                return opt;
            }
            if (this.textinput_0.text.length < 6 || this.textinput_1.text.length < 6 || this.textinput_2.text.length < 6) {
                opt.code = false;
                opt.error = '输入长度最少为6位字符';
                return opt;
            }
            if (this.textinput_1.text != this.textinput_2.text) {
                opt.code = false;
                opt.error = '两次输入的新密码不一致';
                return opt;
            }
            return opt;
        };
        ChangePasswordView.prototype.infoView = function () {
            this.textinput_0.text = this.textinput_1.text = this.textinput_2.text = '';
        };
        //==================================================
        ChangePasswordView.prototype.show = function (anitype) {
            this.infoView();
            this.doResize();
            this.visible = true;
            if (anitype == "rightIn") {
                this.x = Laya.stage.width;
                Laya.stage.addChild(this);
                Tween.to(this, { x: 0 }, 200);
            }
            else if (anitype == "leftIn") {
                this.x = -Laya.stage.width * .5;
                Tween.to(this, { x: 0 }, 100, null, null, 60);
            }
        };
        ChangePasswordView.prototype.hide = function (anitype) {
            this.x = 0;
            if (anitype == "rightOut") {
                Tween.to(this, { x: Laya.stage.width }, 200, null, Handler.create(this, this.hideOver));
            }
            else if (anitype == "leftOut") {
                Tween.to(this, { x: -Laya.stage.width * .5 }, 200, null, Handler.create(this, this.hideOver), 100);
            }
        };
        ChangePasswordView.prototype.hideOver = function () {
            this.x = -Laya.stage.width;
            this.visible = false;
        };
        ChangePasswordView.prototype.doResize = function () {
            this.size(Laya.stage.width, Laya.stage.height);
            this.topView.scale(App.scale, App.scale);
            this.box_1.scale(App.scale, App.scale);
            this.box_1.top = 140 * App.scale;
            this.box_2.scale(App.scale, App.scale);
            this.box_2.top = 207 * App.scale;
            this.box_3.scale(App.scale, App.scale);
            this.box_3.top = 274 * App.scale;
            this.btn_0.scale(App.scale, App.scale);
            this.btn_0.centerX = 0;
            this.btn_0.top = 380 * App.scale;
        };
        return ChangePasswordView;
    }(ui.page.ChangePassWordViewUI));
    view.ChangePasswordView = ChangePasswordView;
})(view || (view = {}));
//# sourceMappingURL=ChangePasswordView.js.map