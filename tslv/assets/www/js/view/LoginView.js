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
    var LoginView = (function (_super) {
        __extends(LoginView, _super);
        function LoginView() {
            var _this = _super.call(this) || this;
            _this._currentType = "login"; //当前状态
            return _this;
        }
        LoginView.prototype.changeViewType = function (type) {
            this._currentType = type;
            if (this._currentBox) {
                this._currentBox.visible = false;
            }
            if (this._currentType == LoginView.LOGIN) {
                if (!this.loginBox) {
                    this.loginBox = new LoginRender();
                    this.loginBox.scale(App.scale, App.scale);
                    this.loginBox.handler = Handler.create(this, this.doHandler, null, false);
                }
                if (this._currentBox)
                    this.loginBox.y = this._currentBox.y;
                else
                    this.loginBox.y = Laya.stage.height * .5 - this.loginBox.height * .5;
                this.addChild(this.loginBox);
                this._currentBox = this.loginBox;
            }
            else if (this._currentType == LoginView.SINGUP) {
                if (!this.singUpBox) {
                    this.singUpBox = new SingUpRender();
                    this.singUpBox.scale(App.scale, App.scale);
                    this.singUpBox.handler = Handler.create(this, this.doHandler, null, false);
                }
                this.singUpBox.y = this._currentBox.y;
                this.addChild(this.singUpBox);
                this._currentBox = this.singUpBox;
            }
            else if (this._currentType == LoginView.SENDEMAIL) {
                if (!this.sendEmailBox) {
                    this.sendEmailBox = new ResetRender();
                    this.sendEmailBox.scale(App.scale, App.scale);
                    this.sendEmailBox.handler = Handler.create(this, this.doHandler, null, false);
                }
                this.sendEmailBox.y = this._currentBox.y;
                this.addChild(this.sendEmailBox);
                this._currentBox = this.sendEmailBox;
            }
            else if (this._currentType == LoginView.CHANGEPSD) {
                if (!this.changePsdbox) {
                    this.changePsdbox = new ChangePsdRender();
                    this.changePsdbox.scale(App.scale, App.scale);
                    this.changePsdbox.handler = Handler.create(this, this.doHandler, null, false);
                }
                this.changePsdbox.y = this._currentBox.y;
                this.addChild(this.changePsdbox);
                this._currentBox = this.changePsdbox;
            }
            else if (this._currentType == LoginView.LOCK) {
                if (!this.lockBox) {
                    this.lockBox = new LockRender();
                    this.lockBox.scale(App.scale, App.scale);
                    this.lockBox.handler = Handler.create(this, this.doHandler, null, false);
                }
                this.lockBox.y = this._currentBox.y;
                this.addChild(this.lockBox);
                this._currentBox = this.lockBox;
            }
            this._currentBox.centerX = 0;
            this._currentBox.visible = true;
            this._currentBox['infoView']();
        };
        LoginView.prototype.doHandler = function (type, value) {
            if (type == "changeView") {
                this.changeViewType(value);
                this.doMovie();
            }
        };
        LoginView.prototype.doMovie = function () {
            var y1 = Laya.stage.height * .5 - (this.logo.height + 30 + this._currentBox.height + 200) * .5 * App.scale;
            var y2 = y1 + (this.logo.height + 30) * App.scale;
            Tween.to(this.logo, { y: y1 }, 200);
            Tween.to(this._currentBox, { y: y2 }, 200);
        };
        //==================================================
        LoginView.prototype.showLock = function () {
            this.changeViewType(LoginView.LOCK);
            this.x = this.y = 0;
            this.doResize();
            this.visible = true;
            Laya.stage.addChild(this);
        };
        LoginView.prototype.hideLock = function () {
            App.print("hide lock");
            Tween.to(this, { x: Laya.stage.width }, 200, null, Handler.create(this, this.hideOver));
        };
        LoginView.prototype.show = function (anitype) {
            this.changeViewType(LoginView.LOGIN);
            this.doResize();
            this.visible = true;
            if (anitype == "rightIn") {
                this.x = 0;
                Laya.stage.addChild(this);
                // Tween.to(this,{x:0},200);
            }
            else if (anitype == "leftIn") {
                this.x = -Laya.stage.width * .5;
                Tween.to(this, { x: 0 }, 100, null, null, 60);
            }
        };
        LoginView.prototype.hide = function (anitype) {
            this.x = 0;
            if (anitype == "rightOut") {
                Tween.to(this, { x: Laya.stage.width }, 200, null, Handler.create(this, this.hideOver));
            }
            else if (anitype == "leftOut") {
                Tween.to(this, { x: -Laya.stage.width * .5 }, 200, null, Handler.create(this, this.hideOver), 100);
            }
        };
        LoginView.prototype.hideOver = function () {
            this.x = -Laya.stage.width;
            Laya.stage.addChildAt(this, 0);
            this.visible = false;
        };
        LoginView.prototype.doResize = function () {
            this.size(Laya.stage.width, Laya.stage.height);
            this.logo.scale(App.scale, App.scale);
            this.logo.centerX = 0;
            this._currentBox.scale(App.scale, App.scale);
            this._currentBox.centerX = 0;
            var y1 = Laya.stage.height * .5 - (this.logo.height + 30 + this._currentBox.height + 200) * .5 * App.scale;
            var y2 = y1 + (this.logo.height + 30) * App.scale;
            this.logo.y = y1;
            this._currentBox.y = y2;
            this.version_label.fontSize = 16 * App.scale;
            this.version_label.right = this.version_label.bottom = 10 * App.scale;
        };
        return LoginView;
    }(ui.page.LoginViewUI));
    LoginView.LOGIN = "login"; //登录状态
    LoginView.SINGUP = "singup"; //注册状态
    LoginView.SENDEMAIL = "sendEmail"; //找回密码状态
    LoginView.CHANGEPSD = "changePsd"; //找回密码状态
    LoginView.LOCK = "lock"; //锁屏状态
    view.LoginView = LoginView;
})(view || (view = {}));
//# sourceMappingURL=LoginView.js.map