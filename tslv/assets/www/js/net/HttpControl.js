/**
* HTTP请求器
*/
var net;
(function (net) {
    var HttpRequest = Laya.HttpRequest;
    var Event = Laya.Event;
    var HttpControl = (function () {
        function HttpControl() {
        }
        HttpControl.creat = function () {
            return this._pool.length == 0 ? new HttpControl() : this._pool.shift();
        };
        /**
        * 通过HTTP方式获取数据
        * option 配置文件
        *{
        *	url:"",//请求的url
        *	type:"get",//请求方式
        *   data:[],//请求参数
        *   success:null,//请求成功回调
        *	error:null,//请求失败回调
        *   reconnect:3//失败以后重新请求次数
        *}
        */
        HttpControl.prototype.getData = function (option) {
            if (this._hr == null) {
                this._option = option;
                this._option["reconnect"] = 1;
                this._hr = new HttpRequest();
                App.print("调用API：" + option["url"]);
            }
            this._hr.once(Event.PROGRESS, this, this.onHttpRequestProgress);
            this._hr.once(Event.COMPLETE, this, this.onHttpRequestComplete);
            this._hr.once(Event.ERROR, this, this.onHttpRequestError);
            var str = "";
            var data = {};
            if (option["type"] == "get") {
                if (option["data"].length > 0) {
                    for (var i = 0; i < option["data"].length / 2; i++) {
                        if (str != "")
                            str += '&';
                        str += (option["data"][i * 2] + "=" + option["data"][i * 2 + 1]);
                    }
                }
                this._hr.send(str == "" ? option["url"] : option["url"] + "?" + str, null, option["type"], 'text', ["Content-Type", "application/json"]);
            }
            else {
                if (option["data"].length > 0) {
                    for (var i = 0; i < option["data"].length / 2; i++) {
                        data[option["data"][i * 2]] = option["data"][i * 2 + 1];
                    }
                }
                this._hr.send(option["url"], JSON.stringify(data), option["type"], 'text', ["Content-Type", "application/json"]);
            }
        };
        //请求错误
        HttpControl.prototype.onHttpRequestError = function (e) {
            console.log(this._hr['_http']['response']);
            if (this._option["reconnect"] == 1) {
                if (this._option["success"])
                    this._option["success"].runWith([{ "code": -1, "message": "请求失败，稍后再试" }]);
                this._hr = null;
                HttpControl._pool.push(this);
            }
            else {
                this._option["reconnect"] -= 1;
                this.getData(this._option);
            }
        };
        //请求进度
        HttpControl.prototype.onHttpRequestProgress = function (e) { };
        //请求成功
        HttpControl.prototype.onHttpRequestComplete = function (e) {
            var str = this._hr.data;
            if (this._option["success"])
                this._option["success"].runWith([str]);
            this._hr = null;
            HttpControl._pool.push(this);
        };
        return HttpControl;
    }());
    HttpControl._pool = [];
    net.HttpControl = HttpControl;
})(net || (net = {}));
//# sourceMappingURL=HttpControl.js.map