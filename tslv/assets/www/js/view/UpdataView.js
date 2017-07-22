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
    var UpdataView = (function (_super) {
        __extends(UpdataView, _super);
        function UpdataView() {
            var _this = _super.call(this) || this;
            _this.btn.clickHandler = Handler.create(_this, _this.doClick, null, false);
            return _this;
        }
        UpdataView.prototype.doClick = function () {
            switch (this.btn.label) {
                case '重新检测':
                    this.btn.visible = false;
                    this.message = '正在检测更新';
                    window['chcp']['fetchUpdate'](this.updateCallback.bind(this));
                    break;
                case '下载新版本':
                    App.openUrl(App.downLoadUrl);
                    break;
                default:
                    break;
            }
        };
        UpdataView.prototype.check = function (msg, handler) {
            this.btn.visible = false;
            this.message = '正在检测更新';
            this._handler = handler;
            Laya.stage.addChild(this);
            window['chcp']['fetchUpdate'](this.updateCallback.bind(this));
            this.doResize();
        };
        Object.defineProperty(UpdataView.prototype, "message", {
            set: function (value) {
                this.anchor_name.text = value;
                this.anchor_shadow.text = value;
                this.box_label.centerX = 0;
            },
            enumerable: true,
            configurable: true
        });
        UpdataView.prototype.updateCallback = function (err, data) {
            if (err == null) {
                this._handler.run();
                this.hide();
                return;
            }
            if (err.code == window['chcp']['error']['FAILED_TO_DOWNLOAD_APPLICATION_CONFIG']) {
                this.message = '版本检测失败，请检查网络并重新检测';
                this.btn.visible = true;
                this.btn.label = '重新检测';
            }
            else if (err.code == window['chcp']['error']['NOTHING_TO_UPDATE']) {
                this._handler.run();
                this.hide();
            }
            else if (err.code == window['chcp']['error']['APPLICATION_BUILD_VERSION_TOO_LOW']) {
                this.message = '版本过低，请更新版本';
                this.btn.visible = true;
                this.btn.label = '下载新版本';
            }
            else {
                this._handler.run();
                this.hide();
            }
        };
        UpdataView.prototype.hide = function () {
            this.removeSelf();
        };
        UpdataView.prototype.doResize = function () {
            this.size(Laya.Browser.width, Laya.Browser.height);
            this.box.scale(App.scale, App.scale);
            this.box.centerY = -100 * App.scale;
            this.box.centerX = 0;
        };
        UpdataView.getInstance = function () {
            if (null == this._instance)
                this._instance = new UpdataView();
            return this._instance;
        };
        return UpdataView;
    }(ui.page.UpDataViewUI));
    view.UpdataView = UpdataView;
})(view || (view = {}));
//# sourceMappingURL=UpdataView.js.map