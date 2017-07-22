var Stage = Laya.Stage;
var WebGL = Laya.WebGL;
var Handler = laya.utils.Handler;
var Loader = laya.net.Loader;
var Tween = Laya.Tween;
var UserData = data.UserData;
var MEventDispatcher = until.MEventDispatcher;
var MEvent = until.MEvent;
var HttpConfig = net.HttpConfig;
var HttpControl = net.HttpControl;
var WebSocketService = net.WebSocketService;
var StringUntil = until.StringUntil;
var FocusManage = manage.FocusManage;
var ViewManager = manage.ViewManager;
var GiftManager = manage.GiftManage;
var HTMLLiveManage = manage.HTMLLiveManage;
var PushLiveManage = manage.PushLiveManage;
var PlayLiveManage = manage.PlayLiveManage;
var SWFLiveManage = manage.SWFLiveManage;
var LocalStrongManage = manage.LocalStrongManage;
var QuiteTipRender = view.render.QuiteTipRender;
var LoginRender = view.render.LoginRender;
var SingUpRender = view.render.SingUpRender;
var ResetRender = view.render.ResetRender;
var ChangePsdRender = view.render.ChangePsdRender;
var LockRender = view.render.LockRender;
var ChatListRender = view.render.ChatListRender;
var RoomGiftRender = view.render.RoomGiftRender;
var LoadingView = view.LoadingView;
var UpdataView = view.UpdataView;
var WeiHuView = view.WeiHuView;
var LoadingMaskView = view.LoadingMaskView;
var TipDialog = view.dialog.TipDialog;
var ErrorTipView = view.ErrorTipView;
var GongGaoView = view.GongGaoView;
var LayoutBox = laya.ui.LayoutBox;
// 程序入口
var LayaLive = (function () {
    function LayaLive() {
        // 不支持WebGL时自动切换至Canvas
        Laya.init(640, 1136);
        Laya.stage.bgColor = null;
        FocusManage.getInstance().canvas = document.getElementById("layaCanvas");
        //设置适配模式
        Laya.stage.scaleMode = "full";
        //设置横竖屏
        Laya.stage.screenMode = Stage.SCREEN_VERTICAL;
        App.print("layalive is create");
        App.bodyNode = document.getElementsByTagName('body')[0];
        this.startLoadLoadingRES();
    }
    LayaLive.prototype.startLoadLoadingRES = function () {
        App.print("start load loading RES");
        App.scale = Laya.Browser.width / 640;
        App.createDevice();
        Laya.loader.load([{ url: "res/atlas/loadSkin.json", type: Loader.ATLAS }], Handler.create(this, this.startCheck));
    };
    LayaLive.prototype.startCheck = function () {
        setTimeout(function () {
            window && window["StatusBar"] && window["StatusBar"]["hide"]();
        }, 0);
        setTimeout(function () {
            window && window["navigator"] && window["navigator"]["splashscreen"] && window["navigator"]["splashscreen"]["hide"]();
        }, 200);
        Laya.timer.once(200, this, this.checkUpdata);
        // Laya.timer.once(200, this, this.weihu, ['早上07:00']);
    };
    LayaLive.prototype.weihu = function (time) {
        App.scale = Laya.Browser.width / 640;
        WeiHuView.getInstance().show(time);
    };
    LayaLive.prototype.checkUpdata = function () {
        if (window['localFile']) {
            UpdataView.getInstance().check('正在检测更新', Handler.create(this, this.startLoadAll));
            return;
        }
        else
            this.startLoadAll();
    };
    LayaLive.prototype.startLoadAll = function () {
        App.scale = Laya.Browser.width / 640;
        LoadingView.getInstance().show();
        Laya.loader.load([{ url: "res/atlas/gameSkin.json", type: Loader.ATLAS }, { url: "res/atlas/gift.json", type: Loader.ATLAS }], Handler.create(this, this.onLoadingLoaded), Handler.create(this, this.loadPross, null, false));
    };
    LayaLive.prototype.loadPross = function (value) {
        LoadingView.getInstance().updata(value);
    };
    LayaLive.prototype.onLoadingLoaded = function () {
        LoadingView.getInstance().hide();
        App.print("RES IS OK");
        QuiteTipRender.getInstance();
        ViewManager.getInstance().showView(ViewManager.LOGIN_VIEW, view.LoginView);
        this.doResie();
        Laya.stage.on("resize", this, this.doResie);
        LoadingMaskView.getInstance();
    };
    LayaLive.prototype.doResie = function () {
        App.scale = Laya.Browser.width / 640;
        ViewManager.getInstance().doResize();
        if (LoadingMaskView.getInstance().parent)
            LoadingMaskView.getInstance().doResize();
    };
    return LayaLive;
}());
console.log('开始：' + window['device']);
if (window['device'])
    new LayaLive();
else {
    if (window['cordova']) {
        document.addEventListener("deviceready", function () {
            new LayaLive();
        }, false);
    }
    else {
        new LayaLive();
    }
}
document.addEventListener('pause', function () {
    if (ViewManager.getInstance().currentViewName != ViewManager.LOGIN_VIEW) {
        WebSocketService.getInstance().notify_pause(true);
    }
    App.print("休眠");
    MEventDispatcher.getInstance().event(MEvent.DEVICE_PAUSE);
    ViewManager.getInstance().showLock();
}, false);
document.addEventListener('resume', function () {
    if (ViewManager.getInstance().currentViewName != ViewManager.LOGIN_VIEW) {
        WebSocketService.getInstance().notify_pause(false);
    }
    App.print("取消休眠");
    MEventDispatcher.getInstance().event(MEvent.DEVICE_RESUME);
}, false);
document.addEventListener("backbutton", function (e) {
    if (ViewManager.getInstance().currentViewName == ViewManager.LOGIN_VIEW || ViewManager.getInstance().currentViewName == ViewManager.HOME_VIEW) {
        QuiteTipRender.getInstance().show();
        return;
    }
    if (TipDialog.getInstance().parent) {
        Dialog.manager.closeAll();
        return;
    }
    if (ViewManager.getInstance().currentViewName == ViewManager.ROOM_VIEW) {
        TipDialog.getInstance().showDialog("提示", "您确定要退出该房间？", Handler.create(this, function () {
            ViewManager.getInstance().getView(ViewManager.ROOM_VIEW)['doClose']();
        }));
        return;
    }
    ViewManager.getInstance().doBack();
}, false);
window.addEventListener('native.keyboardshow', function (e) {
    if (App.keybordHeight == e["keyboardHeight"] * Laya.Browser.pixelRatio)
        return;
    App.print("打开键盘");
    App.disHeight = Math.abs(e["keyboardHeight"] * Laya.Browser.pixelRatio - App.keybordHeight);
    App.keybordHeight = e["keyboardHeight"] * Laya.Browser.pixelRatio;
    ErrorTipView.getInstance().hide();
    Laya.timer.once(50, this, this.doShowKeyboard);
});
function doShowKeyboard() {
    MEventDispatcher.getInstance().event(MEvent.DEVICE_KEYBORD_SIZE);
}
window.addEventListener('native.keyboardhide', function (e) {
    App.print("关闭键盘");
    var input = Laya.stage.focus;
    if (input)
        input.focus = false;
    MEventDispatcher.getInstance().event(MEvent.DEVICE_KEYBORD_SIZE);
    Laya.timer.once(200, this, this.doHideKeyboard);
});
function doHideKeyboard() {
    App.keybordHeight = 0;
    App.disHeight = 0;
    MEventDispatcher.getInstance().event(MEvent.DEVICE_KEYBORD_SIZE);
}
function swftToTop() {
    SWFLiveManage.getInstance().toTop();
}
function swftToBottom() {
    SWFLiveManage.getInstance().toBottom();
}
//# sourceMappingURL=LayaLive.js.map