/**
* name
*/
var manage;
(function (manage) {
    var SWFLiveManage = (function () {
        function SWFLiveManage() {
            this._isWork = false;
            this._playType = '';
        }
        SWFLiveManage.prototype.initSWF = function () {
            if (Laya.Browser.onPC && window && window['swfobject']) {
                var params = { wmode: "transparent" };
                window['swfobject']['embedSWF']("swf/VideoView.swf", "videoElement", "1px", "1px", "10.0.0", "expressInstall.swf", null, params, null);
            }
        };
        SWFLiveManage.prototype.startRecord = function () {
            if (!this.checkobject())
                return;
            MEventDispatcher.getInstance().event(MEvent.START_RECORD_SUCCESS);
        };
        //开始播放
        SWFLiveManage.prototype.play = function (server, sid) {
            if (!this.checkobject())
                return;
            App.print('准备播放视频:' + server + sid);
            if (!this._player)
                return;
            this._isWork = true;
            this._player.play(server, sid);
            MEventDispatcher.getInstance().event(MEvent.PLAY_SUCCESS);
        };
        SWFLiveManage.prototype.push = function (server, sid) {
            if (!this.checkobject())
                return;
            App.print('准备播放视频:' + server + sid);
            if (!this._player)
                return;
            this._isWork = true;
            this._player.push(server, sid, UserData.camera, UserData.mic);
            MEventDispatcher.getInstance().event(MEvent.PUSH_LIVE_SUCCESS);
        };
        //停止播放
        SWFLiveManage.prototype.pause = function (address) {
            App.print('暂停播放');
        };
        //恢复播放
        SWFLiveManage.prototype.resume = function () {
            App.print('恢复播放');
        };
        //停止播放器工作
        SWFLiveManage.prototype.destory = function () {
            if (!this._player && !this._player['play'])
                return;
            if (this._isWork) {
                this._isWork = false;
                this._player.destory();
            }
        };
        SWFLiveManage.prototype.toTop = function () {
            this._player.style['z-index'] = '999999999';
        };
        SWFLiveManage.prototype.toBottom = function () {
            this._player.style['width'] = '1px';
            this._player.style['height'] = '1px';
            this._player.style['z-index'] = '0';
        };
        SWFLiveManage.prototype.checkobject = function () {
            var b = false;
            if (!this._player)
                this._player = document.getElementById('videoElement');
            this._player.style['position'] = 'absolute';
            this._player.style['left'] = '0px';
            this._player.style['top'] = '0px';
            this._player.style['width'] = '100%';
            this._player.style['height'] = '100%';
            this._player.style['z-index'] = '0';
            console.log(this._player);
            if (this._player && this._player['play'])
                b = true;
            if (!b) {
                TipDialog.getInstance().showDialog('温馨提示', '当前浏览器环境不支持swf', null, null);
                ErrorTipView.getInstance().show('当前浏览器环境不支持swf');
                this.goHome();
            }
            return b;
        };
        SWFLiveManage.prototype.goHome = function () {
            this.toBottom();
            var roomView = manage.ViewManager.getInstance().getView(manage.ViewManager.ROOM_VIEW);
            roomView.doClose();
        };
        SWFLiveManage.getInstance = function () {
            if (null == this._instance)
                this._instance = new SWFLiveManage();
            return this._instance;
        };
        return SWFLiveManage;
    }());
    manage.SWFLiveManage = SWFLiveManage;
})(manage || (manage = {}));
//# sourceMappingURL=SWFLiveManage.js.map