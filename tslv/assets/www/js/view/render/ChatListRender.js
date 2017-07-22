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
        var Panle = laya.ui.Panel;
        var ChatItemRender = view.render.ChatItemRender;
        var ChatListRender = (function (_super) {
            __extends(ChatListRender, _super);
            function ChatListRender() {
                var _this = _super.call(this) || this;
                _this._chatPanle = null;
                _this._chatVbox = null;
                _this.doResize();
                return _this;
            }
            ChatListRender.prototype.infoView = function () {
                if (!this._chatPanle) {
                    this._chatPanle = new Panle();
                    this._chatPanle.size(this.width - 15 * App.scale, this.height - 100 * App.scale);
                    this._chatPanle.x = 15 * App.scale;
                    this._chatPanle.y = 60 * App.scale;
                    this._chatPanle.vScrollBarSkin = '';
                    this.addChild(this._chatPanle);
                    this._chatItemView = new render.ChatItemView();
                    this._chatPanle.addChild(this._chatItemView);
                    this.btn_hide.clickHandler = Handler.create(this, this.changeChatPanle, null, false);
                }
                else {
                    this._chatItemView.clear();
                }
                this.bottom = 90 * App.scale;
            };
            ChatListRender.prototype.changeChatPanle = function () {
                if (this.btn_hide.label == "隐藏聊天") {
                    this.btn_hide.label = "显示聊天";
                    this._chatPanle.visible = false;
                }
                else {
                    this.btn_hide.label = "隐藏聊天";
                    this._chatPanle.visible = true;
                    this._chatPanle.scrollTo(0, this._chatPanle.vScrollBar.max);
                }
            };
            ChatListRender.prototype.addMessage = function (type, msg) {
                if (!this._chatItemView)
                    return;
                if (type == "welcome") {
                    if (!this._welcome) {
                        this._welcome = ChatItemRender.create();
                        this.addChild(this._welcome);
                        this._welcome.x = 15;
                    }
                    this._welcome.bottom = 0;
                    this._welcome.setWelcomData(msg);
                    return;
                }
                if (type == 'chat')
                    this._chatItemView.addChat(ChatItemRender.bulidChat(msg));
                else if (type == 'gift')
                    this._chatItemView.addChat(ChatItemRender.bulidGift(msg));
                this._chatPanle.addChild(this._chatItemView);
                this._chatPanle.refresh();
                Laya.timer.once(100, this, this.updataScroll);
            };
            ChatListRender.prototype.updataScroll = function () {
                this._chatPanle.scrollTo(0, this._chatPanle.vScrollBar.max);
            };
            ChatListRender.prototype.doClick = function () {
            };
            ChatListRender.prototype.doResize = function () {
                this.size(this.width * App.scale, this.height * App.scale);
                this.btn_hide.scale(App.scale, App.scale);
                this.btn_hide.bottom = 10 * App.scale;
                this.btn_hide.right = 15 * App.scale;
            };
            ChatListRender.getInstance = function () {
                if (null == this._instance)
                    this._instance = new ChatListRender();
                return this._instance;
            };
            return ChatListRender;
        }(ui.page.render.ChatListRenderUI));
        render.ChatListRender = ChatListRender;
    })(render = view.render || (view.render = {}));
})(view || (view = {}));
//# sourceMappingURL=ChatListRender.js.map