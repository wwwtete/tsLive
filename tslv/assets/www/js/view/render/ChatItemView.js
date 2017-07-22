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
        var HTMLDivElement = laya.html.dom.HTMLDivElement;
        var ChatItemView = (function (_super) {
            __extends(ChatItemView, _super);
            function ChatItemView() {
                var _this = _super.call(this) || this;
                _this._chatCount = 0;
                _this.createChildren();
                return _this;
            }
            ChatItemView.prototype.createChildren = function () {
                this._shadow = new HTMLDivElement();
                this._text = new HTMLDivElement();
                this._shadow.style.fontSize = 25 * App.scale;
                this._shadow.width = Laya.stage.width * 500 / 640;
                this._text.style.fontSize = 25 * App.scale;
                this._text.width = Laya.stage.width * 500 / 640;
                this.addChild(this._shadow);
                this.addChild(this._text);
                this._shadow.x = this._shadow.y = 1 * App.scale;
                this._text.x = this._text.y = 0;
            };
            ChatItemView.prototype.addChat = function (arr) {
                this._chatCount++;
                this._shadow.appendHTML(arr[0] + "<br/>");
                this._text.appendHTML(arr[1] + "<br/>");
                this._text.height = this._text.contextHeight;
                this._shadow.height = this._shadow.contextHeight;
                if (this._chatCount >= 30) {
                    this._text.removeChildren(0, 20);
                    this._shadow.removeChildren(0, 20);
                    this._chatCount -= 20;
                }
                this.size(this._text.contextWidth, this._text.contextHeight);
            };
            ChatItemView.prototype.clear = function () {
                this._text.innerHTML = '';
                this._shadow.innerHTML = '';
                this._text.height = this._text.contextHeight;
                this._shadow.height = this._shadow.contextHeight;
                this._chatCount = 0;
            };
            return ChatItemView;
        }(Laya.Sprite));
        render.ChatItemView = ChatItemView;
    })(render = view.render || (view.render = {}));
})(view || (view = {}));
//# sourceMappingURL=ChatItemView.js.map