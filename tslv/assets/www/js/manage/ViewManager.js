/**
* 管理器
*/
var manage;
(function (manage) {
    /**
    * 界面管理
    */
    var ViewManager = (function () {
        function ViewManager() {
            this._lastNames = [];
            this._lastCovers = [];
            this._viewdic = {};
        }
        ViewManager.prototype.showView = function (viewname, viewclas, cover) {
            if (cover === void 0) { cover = false; }
            if (viewname == this._currentViewName)
                return;
            QuiteTipRender.getInstance().hide();
            if (this._lastNames.indexOf(viewname) != -1) {
                var index = this._lastNames.indexOf(viewname);
                this._lastNames.splice(index, 1);
                this._lastCovers.splice(index, 1);
            }
            if (!this._viewdic[viewname])
                this._viewdic[viewname] = new viewclas();
            if (this._currentView) {
                this._lastNames.push(this._currentViewName);
                this._lastCovers.push(this._currentCover);
                if (!cover)
                    this._currentView.hide("leftOut");
            }
            this._currentView = this._viewdic[viewname];
            this._currentCover = cover;
            this._currentViewName = viewname;
            this._currentView.show("rightIn");
        };
        ViewManager.prototype.getView = function (viewname) {
            return this._viewdic[viewname];
        };
        ViewManager.prototype.doBack = function () {
            if (this._lastNames.length > 1) {
                var viewname = this._lastNames.pop();
                var cover = this._lastCovers.pop();
                if (this._currentView)
                    this._currentView.hide("rightOut");
                this._currentView = this.getView(viewname);
                if (this._currentView) {
                    this._currentViewName = viewname;
                    if (!this._currentCover)
                        this._currentView.show("leftIn");
                    this._currentCover = cover;
                }
            }
        };
        ViewManager.prototype.backToRoom = function () {
            if (ViewManager.getInstance().currentViewName != ViewManager.ROOM_VIEW) {
                this.doBack();
                this.backToRoom();
            }
        };
        ViewManager.prototype.showLock = function () {
            QuiteTipRender.getInstance().hide();
            if (this._currentViewName == ViewManager.LOGIN_VIEW)
                return;
            var view = this.getView(ViewManager.LOGIN_VIEW);
            view.showLock();
        };
        ViewManager.prototype.hideLoak = function () {
            if (this._currentViewName == ViewManager.LOGIN_VIEW)
                return;
            var view = this.getView(ViewManager.LOGIN_VIEW);
            view.hideLock();
        };
        ViewManager.prototype.doResize = function () {
            if (this._currentView && this._currentView["doResize"])
                this._currentView["doResize"]();
        };
        Object.defineProperty(ViewManager.prototype, "currentViewName", {
            get: function () {
                return this._currentViewName;
            },
            enumerable: true,
            configurable: true
        });
        ViewManager.getInstance = function () {
            if (!this._instance)
                this._instance = new ViewManager();
            return this._instance;
        };
        return ViewManager;
    }());
    ViewManager.LOGIN_VIEW = "loginView";
    ViewManager.HOME_VIEW = "homeView";
    ViewManager.ROOM_VIEW = "roomView";
    ViewManager.SET_VIEW = "setView";
    ViewManager.RECHARGE_AMOUNT_VIEW = "rechargeAmountView";
    ViewManager.RECHARGE_PAY_VIEW = "rechargePayView";
    ViewManager.IN_COME_VIEW = "inComeView";
    ViewManager.CHANGE_NICK_NAME_VIEW = "changeNickNameView";
    ViewManager.CHANGE_HEAD_VIEW = "changeHeadView";
    ViewManager.CHANGE_PASSWORD_VIEW = "changePasswordView";
    ViewManager.CONTAC_CUSTOMER = "contactCustomer";
    manage.ViewManager = ViewManager;
})(manage || (manage = {}));
//# sourceMappingURL=ViewManager.js.map