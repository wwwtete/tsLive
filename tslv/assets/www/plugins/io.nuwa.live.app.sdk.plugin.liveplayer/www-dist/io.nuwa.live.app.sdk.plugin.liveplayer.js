cordova.define("io.nuwa.live.app.sdk.plugin.liveplayer.LivePlayer", function(require, exports, module) {
'use strict';

var _exec = require('cordova/exec');

var _exec2 = _interopRequireDefault(_exec);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

/**
开始播放
@onsuccess {function} : (state) => {...}
@onfail {function} (err:{message:errorcode}) => {} */
exports.play = function (address, onsuccess, onfail) {
    (0, _exec2.default)(onsuccess, onfail, 'LivePlayer', 'play', [address]);
};

/**
暂停 */
exports.pause = function (onsuccess, onfail) {
    (0, _exec2.default)(onsuccess, onfail, 'LivePlayer', 'pause', []);
};

/**
恢复 */
exports.resume = function (onsuccess, onfail) {
    (0, _exec2.default)(onsuccess, onfail, 'LivePlayer', 'resume', []);
};

/**
停止播放 */
exports.stop = function (onsuccess, onfail) {
    (0, _exec2.default)(onsuccess, onfail, 'LivePlayer', 'stop');
};

/**
重连
@onsuccess {function} : (state) => {...}
@onfail {function} (err:{message:errorcode}) => {} */
exports.reconnect = function (onsuccess, onfail) {
    (0, _exec2.default)(onsuccess, onfail, 'LivePlayer', 'reconnect', []);
};
});
