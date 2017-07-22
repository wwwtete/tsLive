var __extends = (this && this.__extends) || (function () {
    var extendStatics = Object.setPrototypeOf ||
        ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
        function (d, b) { for (var p in b) if (b.hasOwnProperty(p)) d[p] = b[p]; };
    return function (d, b) {
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
/**
* name
*/
var view;
(function (view) {
    var render;
    (function (render) {
        var Box = laya.ui.Box;
        var ChatItemRender = (function (_super) {
            __extends(ChatItemRender, _super);
            function ChatItemRender() {
                return _super.call(this) || this;
            }
            ChatItemRender.create = function () {
                return this._pool.length == 0 ? new ChatItemRender() : this._pool.shift();
            };
            ChatItemRender.destroy = function (item) {
                this._pool.push(item);
            };
            ChatItemRender.bulidChat = function (data) {
                var arr = ['', ''];
                arr[0] += "<span style='text-weight:bold;color:#aaaaaa;valign:top;'> " + data["nickname"] + " ：</span>";
                arr[0] += "<span style='color:#aaaaaa;valign:top;'>" + data["message"] + "</span>";
                arr[1] += "<span style='text-weight:bold;color:#e3d26a;valign:top;'> " + data["nickname"] + " ：</span>";
                arr[1] += "<span style='color:#FFFFFF;valign:top;'>" + data["message"] + "</span>";
                return arr;
            };
            ChatItemRender.bulidGift = function (data) {
                var arr = ['', ''];
                arr[0] += "<span style='text-weight:bold;color:#aaaaaa;valign:top;'> " + data["nickname"] + " </span>";
                arr[0] += "<span style='color:#aaaaaa;valign:top;'> 送给主播一个 </span>";
                arr[0] += "<span style='text-weight:bold;color:#aaaaaa;valign:top;'> " + data["giftname"] + " </span>";
                arr[1] += "<span style='text-weight:bold;color:#e3d26a;valign:top;'> " + data["nickname"] + " </span>";
                arr[1] += "<span style='color:#FFFFFF;valign:top;'> 送给主播一个 </span>";
                arr[1] += "<span style='text-weight:bold;color:#e3d26a;valign:top;'> " + data["giftname"] + " </span>";
                return arr;
            };
            ChatItemRender.prototype.setWelcomData = function (msg) {
                this._data = msg;
                this.bulidWelcom();
                return this;
            };
            ChatItemRender.prototype.bulidWelcom = function () {
                var html = '';
                if (!this._label) {
                    this._shadow = new Laya.HTMLDivElement();
                    this._shadow.style.fontSize = 25 * App.scale;
                    this._shadow.width = Laya.stage.width * 500 / 640;
                    this.addChild(this._shadow);
                    this._shadow.x = 1 * App.scale;
                    this._shadow.y = 1 * App.scale;
                    this._label = new Laya.HTMLDivElement();
                    this._label.style.fontSize = 25 * App.scale;
                    this._label.width = Laya.stage.width * 500 / 640;
                    this.addChild(this._label);
                }
                html += "<span style='color:#aaaaaa;valign:top;'>欢迎</span>";
                html += "<span style='text-weight:bold;color:#aaaaaa;valign:top;'>" + this._data["nickname"] + "</span>";
                html += "<span style='color:#aaaaaa;valign:top;'>进入房间</span>";
                this._shadow.innerHTML = html;
                html = '';
                html += "<span style='color:#ffffff;valign:top;'>欢迎 </span>";
                html += "<span style='text-weight:bold;color:#ff0000;valign:top;'> " + this._data["nickname"] + " </span>";
                html += "<span style='color:#ffffff;valign:top;'> 进入房间</span>";
                this._label.innerHTML = html;
                this.height = this._label.contextHeight;
            };
            return ChatItemRender;
        }(Box));
        ChatItemRender._pool = [];
        render.ChatItemRender = ChatItemRender;
    })(render = view.render || (view.render = {}));
})(view || (view = {}));
//# sourceMappingURL=ChatItemRender.js.map