/**
* name
*/
var manage;
(function (manage) {
    var HTMLLiveManage = (function () {
        function HTMLLiveManage() {
            this._isWork = false;
            this._playType = '';
        }
        HTMLLiveManage.prototype.startRecord = function () {
            if (!this.checkobject())
                return;
            MEventDispatcher.getInstance().event(MEvent.START_RECORD_SUCCESS);
        };
        //开始播放
        HTMLLiveManage.prototype.play = function (address) {
            TipDialog.getInstance().showDialog('温馨提示', '暂不支持浏览器直接观看，请下载客户端', null, null);
            ErrorTipView.getInstance().show('暂不支持浏览器直接观看，请下载客户端', 2000);
            // this.goHome();
            // var self = this;
            // this._streamUrl = address.replace("rtmp","http").replace("1995","8080");
            // if(Laya.Browser.onAndriod||Laya.Browser.onPC) this._streamUrl += ".flv";
            // else if(Laya.Browser.onIOS) this._streamUrl += ".hls";
            // else if(Laya.Browser.onMobile) this._streamUrl += ".flv";
            // App.print('准备播放视频:'+this._streamUrl);
            // this._element = document.getElementById('htmlVideoElement');
            // if (typeof this._player !== "undefined" && this._player != null) {
            // 		this._player.unload();
            // 		this._player.detachMediaElement();
            // 		this._player.destroy();
            // 		this._player = null;
            // }
            // this._player = window['flvjs']['createPlayer']({
            //     type: 'flv',
            //     url: self._streamUrl
            // });
            // this._player.attachMediaElement(this._element);
            // this._player.load();
            // MEventDispatcher.getInstance().event(MEvent.PLAY_SUCCESS);
        };
        HTMLLiveManage.prototype.push = function (address) {
            TipDialog.getInstance().showDialog('温馨提示', '暂不支持浏览器直接观看，请下载客户端', null, null);
            ErrorTipView.getInstance().show('暂不支持浏览器直接观看，请下载客户端', 2000);
            // this.goHome();
        };
        //停止播放
        HTMLLiveManage.prototype.pause = function (address) {
            App.print('暂停播放');
        };
        //恢复播放
        HTMLLiveManage.prototype.resume = function () {
            App.print('恢复播放');
        };
        //停止播放器工作
        HTMLLiveManage.prototype.destory = function () {
            if (typeof this._player !== "undefined" && this._player != null) {
                this._player.pause();
                this._player.unload();
                this._player.detachMediaElement();
                this._player.destroy();
                this._player = null;
            }
        };
        HTMLLiveManage.prototype.checkobject = function () {
            var b = false;
            if (Laya.Browser.onAndriod)
                b = true;
            if (!b) {
                TipDialog.getInstance().showDialog('温馨提示', '暂不支持浏览器直接观看，请下载客户端', null, null);
                ErrorTipView.getInstance().show('暂不支持浏览器直接观看，请下载客户端', 2000);
                // this.goHome();
            }
            return b;
        };
        HTMLLiveManage.prototype.goHome = function () {
            var roomView = manage.ViewManager.getInstance().getView(manage.ViewManager.ROOM_VIEW);
            roomView.doClose();
        };
        HTMLLiveManage.getInstance = function () {
            if (null == this._instance)
                this._instance = new HTMLLiveManage();
            return this._instance;
        };
        return HTMLLiveManage;
    }());
    manage.HTMLLiveManage = HTMLLiveManage;
})(manage || (manage = {}));
//# sourceMappingURL=HTMLLiveManage.js.map