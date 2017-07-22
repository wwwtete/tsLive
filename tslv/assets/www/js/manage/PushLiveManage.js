/**
* name
*/
var manage;
(function (manage) {
    var PushLiveManage = (function () {
        function PushLiveManage() {
            this._isWork = false;
            this._debug = false;
            this._camerType = "front";
            if (!this._debug)
                this._player = window["LiveSDKPlugin"];
        }
        PushLiveManage.prototype.switchCamer = function () {
            if (this._debug)
                return;
            if (!this._isWork) {
                return;
            }
            this._camerType = this._camerType == 'front' ? "back" : 'front';
            this._player.setDevicePosition(this._camerType);
        };
        //开始预览界面
        PushLiveManage.prototype.startRecord = function () {
            App.print('准备打开预览');
            if (!this._player)
                return;
            if (this._isWork) {
                MEventDispatcher.getInstance().event(MEvent.CAMER_WORKING);
                return;
            }
            this._isWork = true;
            if (this._debug) {
                MEventDispatcher.getInstance().event(MEvent.START_RECORD_SUCCESS);
                return;
            }
            this._player.startRecord(this._camerType, this.recordSuccess, this.recordError);
        };
        PushLiveManage.prototype.recordSuccess = function () {
            this._isWork = true;
            App.print('打开预览成功');
            MEventDispatcher.getInstance().event(MEvent.START_RECORD_SUCCESS);
        };
        PushLiveManage.prototype.recordError = function () {
            App.print('打开预览失败');
            MEventDispatcher.getInstance().event(MEvent.START_RECORD_ERROR);
        };
        //开始推流
        PushLiveManage.prototype.startLive = function (address) {
            App.print('准备推流');
            if (!this._player)
                return;
            this._isWork = true;
            if (this._debug) {
                MEventDispatcher.getInstance().event(MEvent.PUSH_LIVE_SUCCESS);
                return;
            }
            this._player.startLive(address, this.startLiveSuccess, this.startLiveError);
        };
        PushLiveManage.prototype.startLiveSuccess = function () {
            App.print('推流成功');
            MEventDispatcher.getInstance().event(MEvent.PUSH_LIVE_SUCCESS);
        };
        PushLiveManage.prototype.startLiveError = function () {
            App.print('推流失败');
            MEventDispatcher.getInstance().event(MEvent.PUSH_LIVE_ERROR);
        };
        //销毁 并停止推流
        PushLiveManage.prototype.destory = function () {
            if (!this._player)
                return;
            if (this._isWork) {
                this._isWork = false;
                if (this._debug) {
                    MEventDispatcher.getInstance().event(MEvent.START_DESTORY_SUCCESS);
                    return;
                }
                this._player.stopLive(this.destorySuccess, this.destoryError);
            }
        };
        PushLiveManage.prototype.destorySuccess = function () {
            this._isWork = false;
            App.print('销毁成功');
            PushLiveManage.getInstance().clear();
        };
        PushLiveManage.prototype.clear = function () {
            if (!this._player)
                return;
            this._player.destory(null, null);
        };
        PushLiveManage.prototype.destoryError = function () {
            this._isWork = true;
            App.print('销毁失败');
            MEventDispatcher.getInstance().event(MEvent.START_DESTORY_ERROR);
        };
        PushLiveManage.getInstance = function () {
            if (null == this._instance)
                this._instance = new PushLiveManage();
            return this._instance;
        };
        return PushLiveManage;
    }());
    manage.PushLiveManage = PushLiveManage;
})(manage || (manage = {}));
//# sourceMappingURL=PushLiveManage.js.map