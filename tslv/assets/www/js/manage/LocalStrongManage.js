/**
* name
*/
var manage;
(function (manage) {
    var LocalStrongManage = (function () {
        function LocalStrongManage() {
        }
        LocalStrongManage.prototype.setData = function (key, value) {
            localStorage.setItem(key, value);
        };
        LocalStrongManage.prototype.getData = function (key) {
            var value = localStorage.getItem(key);
            return value || '';
        };
        LocalStrongManage.getInstance = function () {
            if (null == this._instance)
                this._instance = new LocalStrongManage();
            return this._instance;
        };
        return LocalStrongManage;
    }());
    manage.LocalStrongManage = LocalStrongManage;
})(manage || (manage = {}));
//# sourceMappingURL=LocalStrongManage.js.map