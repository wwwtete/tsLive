var DialogManager = laya.ui.DialogManager;
/*
* name;
*/
var App = (function () {
    function App() {
    }
    App.createDevice = function () {
        App.deviceinfo = {};
        App.deviceinfo["uuid"] = App.createUUid();
        if (window && window["cordova"])
            App.deviceinfo["platform"] = window["cordova"]["platformId"];
        else
            App.deviceinfo["platform"] = "window";
        App.oldVersion = this.getQueryString('version') || '1.0.0';
        console.log(App.oldVersion);
    };
    App.createUUid = function () {
        var s = localStorage.getItem("uuid");
        if (!s || s == "") {
            s = App.s4() + App.s4() + '-' + App.s4() + '-' + App.s4() + '-' + App.s4() + '-' + App.s4() + App.s4() + App.s4();
        }
        localStorage.setItem('uuid', s);
        return s;
    };
    App.getQueryString = function (name) {
        var reg = new RegExp('(^|&)' + name + '=([^&]*)(&|$)', 'i');
        var r = window.location.search.substr(1).match(reg);
        if (r != null) {
            return r[2];
        }
        return null;
    };
    App.getPadding = function (str) {
        App.print(App.scale);
        var arr = str.split(",");
        var i = 0;
        var l = arr.length;
        for (i = 0; i < l; i++) {
            arr[i] = parseInt(parseInt(arr[i]) * App.scale + "");
        }
        return arr.join(",");
    };
    App.getBlen = function (str) {
        if (str == null || str == undefined)
            return 0;
        return str.replace(/[^\x00-\xff]/g, "01").length;
    };
    App.openUrl = function (url) {
        if (!window['cordova']) {
            console.log('pc 无法跳转:' + url);
            return;
        }
        if (window['cordova']['platformId'] === 'ios') {
            window.open(url, '_system');
        }
        else {
            window['navigator']['app']['loadUrl'](url, { openExternal: true });
        }
    };
    App.s4 = function () {
        return Math.floor((1 + Math.random()) * 0x10000)
            .toString(16)
            .substring(1);
    };
    App.print = function (str) {
        console.log(str);
    };
    return App;
}());
App.scale = 1;
App.deviceinfo = null;
App.keybordHeight = 0;
App.disHeight = 0;
App.version = '1.0.5';
App.oldVersion = '';
App.downLoadUrl = 'http://web.taoselive.com/download';
//# sourceMappingURL=App.js.map