/**
* name
*/
var manage;
(function (manage) {
    var PlayLiveManage = (function () {
        function PlayLiveManage() {
            this._isWork = false;
            this._playType = '';
            this._player = window["LivePlayer"];
        }
        //开始播放
        PlayLiveManage.prototype.play = function (address) {
            App.print('准备播放视频:' + address);
            if (!this._player)
                return;
            this._isWork = true;
            this._player.play(address, this.playSuccess, this.playError);
        };
        PlayLiveManage.prototype.playSuccess = function (state) {
            if (state == 'playing' && this._playType != 'playing') {
                App.print('播放成功');
                this._playType = 'playing';
                MEventDispatcher.getInstance().event(MEvent.PLAY_SUCCESS);
            }
            else if (state == 'playing') {
                MEventDispatcher.getInstance().event(MEvent.PLAY_ING);
            }
        };
        PlayLiveManage.prototype.playError = function () {
            App.print('播放失败');
            MEventDispatcher.getInstance().event(MEvent.PLAY_ERROR);
        };
        //停止播放
        PlayLiveManage.prototype.pause = function (address) {
            App.print('暂停播放');
            if (!this._player)
                return;
            this._player.pause();
        };
        //恢复播放
        PlayLiveManage.prototype.resume = function () {
            App.print('恢复播放');
            if (!this._player)
                return;
            this._player.resume();
        };
        //停止播放器工作
        PlayLiveManage.prototype.destory = function () {
            if (!this._player)
                return;
            if (this._isWork) {
                this._isWork = false;
                this._player.stop();
            }
        };
        PlayLiveManage.getInstance = function () {
            if (null == this._instance)
                this._instance = new PlayLiveManage();
            return this._instance;
        };
        return PlayLiveManage;
    }());
    manage.PlayLiveManage = PlayLiveManage;
})(manage || (manage = {}));
//# sourceMappingURL=PlayLiveManage.js.map