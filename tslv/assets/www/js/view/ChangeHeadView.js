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
    var ChangeHeadView = (function (_super) {
        __extends(ChangeHeadView, _super);
        function ChangeHeadView() {
            var _this = _super.call(this) || this;
            _this.createHandler();
            return _this;
        }
        ChangeHeadView.prototype.createHandler = function () {
            this.topView.handler = new Handler(this, this.doSomthing);
            this.topView.setTitle("上传封面", "请上传你的封面");
            this.btn_0.clickHandler = Handler.create(this, this.selectForCam, [0], false);
            this.btn_1.clickHandler = Handler.create(this, this.selectForCam, [1], false);
        };
        ChangeHeadView.prototype.doSomthing = function (type) {
            switch (type) {
                case 0:
                    ViewManager.getInstance().doBack();
                    break;
                default:
                    break;
            }
        };
        ChangeHeadView.prototype.selectForCam = function (type) {
            var self = this;
            if (window['navigator'] && window['navigator']['camera']) {
                window['navigator']['camera']['getPicture'](function (res) {
                    self.back.skin = 'data:image/png;base64,' + res;
                }, function (error) { }, {
                    sourceType: 1,
                    destinationType: type,
                    targetWidth: 640,
                    targetHeight: 1136,
                    correctOrientation: true
                });
            }
            else {
                view.ErrorTipView.getInstance().show('浏览器不支持上传封面');
            }
        };
        ChangeHeadView.prototype.changeHeadSuccess = function (data) {
            view.ErrorTipView.getInstance().show("操作成功");
            UserData.baseData['nickName'] = data['body']['nickName'];
            MEventDispatcher.getInstance().event(MEvent.CHANGE_USER_DATA);
            ViewManager.getInstance().doBack();
        };
        ChangeHeadView.prototype.infoView = function () {
        };
        //==================================================
        ChangeHeadView.prototype.show = function (anitype) {
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
        ChangeHeadView.prototype.hide = function (anitype) {
            this.x = 0;
            if (anitype == "rightOut") {
                Tween.to(this, { x: Laya.stage.width }, 200, null, Handler.create(this, this.hideOver));
            }
            else if (anitype == "leftOut") {
                Tween.to(this, { x: -Laya.stage.width * .5 }, 200, null, Handler.create(this, this.hideOver), 100);
            }
        };
        ChangeHeadView.prototype.hideOver = function () {
            this.x = -Laya.stage.width;
            this.visible = false;
        };
        ChangeHeadView.prototype.doResize = function () {
            this.size(Laya.stage.width, Laya.stage.height);
            this.topView.scale(App.scale, App.scale);
            this.btn_0.scale(App.scale, App.scale);
            this.btn_0.centerX = 0;
            this.btn_0.bottom = 90 * App.scale;
            this.btn_1.scale(App.scale, App.scale);
            this.btn_1.centerX = 0;
            this.btn_1.bottom = 10 * App.scale;
        };
        return ChangeHeadView;
    }(ui.page.ChangeHeadViewUI));
    view.ChangeHeadView = ChangeHeadView;
})(view || (view = {}));
//# sourceMappingURL=ChangeHeadView.js.map