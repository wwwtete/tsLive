/**
* HTTP接口配置
*/
var net;
(function (net) {
    var HttpConfig = (function () {
        function HttpConfig() {
        }
        return HttpConfig;
    }());
    //main
    HttpConfig.apimain = "http://web.taoselive.com";
    HttpConfig.login = '/api/login';
    HttpConfig.reg = '/api/register';
    HttpConfig.sendEmail = '/api/send_verify_mail';
    HttpConfig.changePwd = '/api/reset_passwd';
    net.HttpConfig = HttpConfig;
})(net || (net = {}));
//# sourceMappingURL=HttpConfig.js.map