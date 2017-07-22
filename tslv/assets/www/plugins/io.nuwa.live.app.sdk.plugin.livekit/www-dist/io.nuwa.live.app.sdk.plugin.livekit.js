cordova.define("io.nuwa.live.app.sdk.plugin.livekit.LiveSDKPlugin", function(require, exports, module) {
'use strict';

var _exec = require('cordova/exec');

var _exec2 = _interopRequireDefault(_exec);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

/**
开始录像 */
exports.startRecord = function (position, onsuccess, onfail) {
    (0, _exec2.default)(onsuccess, onfail, 'LiveSDKPlugin', 'startRecord', [position]);
};

/**
开始推流
@param {string} address:RMTPADDRESS */
exports.startLive = function (address, onsuccess, onfail) {
    (0, _exec2.default)(onsuccess, onfail, 'LiveSDKPlugin', 'startLive', [address]);
};

/**
停止推流 */
exports.stopLive = function (onsuccess, onfail) {
    (0, _exec2.default)(onsuccess, onfail, 'LiveSDKPlugin', 'stopLive');
};

/**
设置美颜级别 */
exports.setBeautyLevel = function (level, onsuccess, onfail) {
    (0, _exec2.default)(onsuccess, onfail, 'LiveSDKPlugin', 'setBeautyLevel', [level]);
};

/**
设置前置摄像头或者后置摄像头 */
exports.setDevicePosition = function (position, onsuccess, onfail) {
    (0, _exec2.default)(onsuccess, onfail, 'LiveSDKPlugin', 'setDevicePosition', [position]);
};

/**
销毁，停止录像 */
exports.destory = function (onsuccess, onfail) {
    (0, _exec2.default)(onsuccess, onfail, 'LiveSDKPlugin', 'destory', []);
};
});
