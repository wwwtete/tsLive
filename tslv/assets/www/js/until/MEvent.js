/**
* name
*/
var until;
(function (until) {
    var MEvent = (function () {
        function MEvent() {
        }
        return MEvent;
    }());
    //更改用户数据
    MEvent.CHANGE_USER_DATA = "changeUserData";
    //更改当前房间内数据
    MEvent.CHANGE_ROOM_DATA = "changeRoomData";
    //更改主播列表
    MEvent.CHANGE_ANCHORS_DATA = "changeAnchorsData";
    //更改主播状态
    MEvent.CHANGE_ANCHOR_TYPE = 'changeAnchorType';
    //用户余额不足
    MEvent.NO_AMOUNT = 'noAmount';
    //设备休眠
    MEvent.DEVICE_PAUSE = "devicePause";
    //设备恢复
    MEvent.DEVICE_RESUME = "deviceResume";
    //虚拟键盘高度改变
    MEvent.DEVICE_KEYBORD_SIZE = "deviceKeyBordSize";
    //设备正在使用 无法继续使用
    MEvent.CAMER_WORKING = 'camerWorking';
    //预览成功
    MEvent.START_RECORD_SUCCESS = 'startRecordSuccess';
    //预览失败
    MEvent.START_RECORD_ERROR = 'startRecordError';
    //推流成功
    MEvent.PUSH_LIVE_SUCCESS = 'pushLiveSuccess';
    //推流失败
    MEvent.PUSH_LIVE_ERROR = 'pushLiveError';
    //停止推流成功
    MEvent.STOP_PUSH_LIVE_SUCCESS = 'stopPushLiveSuccess';
    //停止推流失败
    MEvent.STOP_PUSH_LIVE_ERROR = 'stopPushLiveError';
    //销毁成功
    MEvent.START_DESTORY_SUCCESS = 'startDestorySuccess';
    //销毁失败
    MEvent.START_DESTORY_ERROR = 'startDestoryError';
    //播放器正在使用 无法继续使用
    MEvent.PLAYER_WORKING = 'playerWorking';
    //播放成功
    MEvent.PLAY_SUCCESS = 'playSuccess';
    //播放中
    MEvent.PLAY_ING = 'playIng';
    //播放失败
    MEvent.PLAY_ERROR = 'playError';
    until.MEvent = MEvent;
})(until || (until = {}));
//# sourceMappingURL=MEvent.js.map