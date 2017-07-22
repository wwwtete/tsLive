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
    var ChangeNickNameView = (function (_super) {
        __extends(ChangeNickNameView, _super);
        function ChangeNickNameView() {
            var _this = _super.call(this) || this;
            _this.nicknameReg = new RegExp('^[\u4e00-\u9fa5A-Za-z0-9-_]*$', 'g');
            _this.createHandler();
            return _this;
        }
        ChangeNickNameView.prototype.createHandler = function () {
            this.topView.handler = new Handler(this, this.doSomthing);
            this.topView.setTitle("用户昵称", "请输入您要修改的昵称");
            this.btn_0.clickHandler = Handler.create(this, this.changeName, null, false);
        };
        ChangeNickNameView.prototype.doSomthing = function (type) {
            switch (type) {
                case 0:
                    ViewManager.getInstance().doBack();
                    break;
                default:
                    break;
            }
        };
        ChangeNickNameView.prototype.changeName = function () {
            App.keybordHeight = 0;
            var opt = this.checkInput();
            if (opt['code']) {
                WebSocketService.getInstance().request_changeNickName(this.textinput_0.text, Handler.create(this, this.changeNameSuccess));
            }
            else {
                view.ErrorTipView.getInstance().show(opt['error']);
            }
        };
        ChangeNickNameView.prototype.changeNameSuccess = function (data) {
            view.ErrorTipView.getInstance().show("操作成功");
            UserData.baseData['nickName'] = data['body']['nickName'];
            MEventDispatcher.getInstance().event(MEvent.CHANGE_USER_DATA);
            ViewManager.getInstance().doBack();
        };
        ChangeNickNameView.prototype.checkInput = function () {
            var opt = { code: true, error: "" };
            if (this.textinput_0.text == '') {
                opt.code = false;
                opt.error = '昵称不能为空';
                return opt;
            }
            if (App.getBlen(this.textinput_0.text) < 4) {
                opt.code = false;
                opt.error = '昵称长度不够';
                return opt;
            }
            if (!this.nicknameReg.test(this.textinput_0.text)) {
                opt.code = false;
                opt.error = '昵称格式不正确';
                return opt;
            }
            return opt;
        };
        ChangeNickNameView.prototype.infoView = function () {
            this.textinput_0.text = UserData.baseData['nickName'];
        };
        //==================================================
        ChangeNickNameView.prototype.show = function (anitype) {
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
        ChangeNickNameView.prototype.hide = function (anitype) {
            this.x = 0;
            if (anitype == "rightOut") {
                Tween.to(this, { x: Laya.stage.width }, 200, null, Handler.create(this, this.hideOver));
            }
            else if (anitype == "leftOut") {
                Tween.to(this, { x: -Laya.stage.width * .5 }, 200, null, Handler.create(this, this.hideOver), 100);
            }
        };
        ChangeNickNameView.prototype.hideOver = function () {
            this.x = -Laya.stage.width;
            this.visible = false;
        };
        ChangeNickNameView.prototype.doResize = function () {
            this.size(Laya.stage.width, Laya.stage.height);
            this.topView.scale(App.scale, App.scale);
            this.box.scale(App.scale, App.scale);
            this.box.top = 140 * App.scale;
            this.btn_0.scale(App.scale, App.scale);
            this.btn_0.centerX = 0;
            this.btn_0.top = 247 * App.scale;
        };
        return ChangeNickNameView;
    }(ui.page.ChangeNickNameViewUI));
    view.ChangeNickNameView = ChangeNickNameView;
})(view || (view = {}));
//# sourceMappingURL=ChangeNickNameView.js.map