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
        var Event = Laya.Event;
        var RoomChatRender = (function (_super) {
            __extends(RoomChatRender, _super);
            function RoomChatRender() {
                var _this = _super.call(this) || this;
                _this._giftShow = false;
                _this._lastDate = 0;
                _this.state = "default";
                _this.createHandler();
                return _this;
            }
            Object.defineProperty(RoomChatRender.prototype, "state", {
                set: function (value) {
                    this.anchor_default.visible = this.user_default.visible = false;
                    this._currentState = value;
                    if (this._currentState == "default") {
                        this.textinput_0.textField['keepFocusIn'] = false;
                        this.textinput_0.text = '';
                        if (UserData.baseData['userId'] == UserData.roomData.anchorId) {
                            this.user_default.visible = false;
                            this.anchor_default.visible = true;
                            if (Laya.Browser.onPC)
                                this.btn_6.visible = false;
                            else
                                this.btn_6.visible = true;
                        }
                        else {
                            this.user_default.visible = true;
                            this.anchor_default.visible = false;
                        }
                        this.box_chat.visible = false;
                    }
                    else if (this._currentState == "chat") {
                        if (UserData.baseData['userId'] == UserData.roomData.anchorId)
                            this.anchor_default.visible = false;
                        else
                            this.user_default.visible = false;
                        this.box_chat.visible = true;
                        this.textinput_0.text = '';
                    }
                },
                enumerable: true,
                configurable: true
            });
            RoomChatRender.prototype.createHandler = function () {
                this.textinput_0.on(Event.FOCUS, this, this.doFocus);
                if (Laya.Browser.onIOS)
                    Laya.stage.on(Event.CLICK, this, this.doClickInIOS);
                else if (Laya.Browser.onAndriod)
                    Laya.stage.on(Event.CLICK, this, this.doClickInAndriod);
                else if (Laya.Browser.onPC)
                    Laya.stage.on(Event.CLICK, this, this.doClickInPC);
            };
            RoomChatRender.prototype.doFocus = function (e) {
                this.state = 'chat';
                this.textinput_0.textField['keepFocusIn'] = true;
            };
            RoomChatRender.prototype.doClickInIOS = function (e) {
                if (UserData.roomData.anchorId == 0)
                    return;
                if (this._giftShow) {
                    if (Laya.stage.mouseY < Laya.stage.height - render.RoomGiftRender.getInstance().height) {
                        this.hideGift();
                    }
                    return;
                }
                if (Laya.stage.mouseY + App.keybordHeight < Laya.stage.height - this.height * App.scale) {
                    App.keybordHeight = 0;
                    view.ErrorTipView.getInstance().hide();
                    this.textinput_0.textField['keepFocusIn'] = false;
                    this.textinput_0.focus = false;
                    this.state = "default";
                    return;
                }
                if (e.target == this.btn_3) {
                    this.showZhi();
                    return;
                }
                if (e.target == this.btn_4) {
                    this.showGift();
                    return;
                }
                if (e.target == this.btn_5) {
                    this.showAnchorSet();
                    return;
                }
                if (e.target == this.btn_6) {
                    PushLiveManage.getInstance().switchCamer();
                    return;
                }
                if (!this.textinput_0.focus)
                    return;
                // if(this.mouseX > (this.box_chat.x+this.box_chat.width*.5)) this.sendGift(10000);
                // else if(this.mouseX > this.box_chat.x) this.sendMessage();
                if (this.mouseX > this.box_chat.x)
                    this.sendMessage();
            };
            RoomChatRender.prototype.doClickInAndriod = function (e) {
                if (UserData.roomData.anchorId == 0)
                    return;
                if (this._giftShow) {
                    if (Laya.stage.mouseY < Laya.stage.height - render.RoomGiftRender.getInstance().height) {
                        this.hideGift();
                    }
                    return;
                }
                if (Laya.stage.mouseY + App.keybordHeight < Laya.stage.height - this.height * App.scale) {
                    App.keybordHeight = 0;
                    view.ErrorTipView.getInstance().hide();
                    this.textinput_0.textField['keepFocusIn'] = false;
                    this.textinput_0.focus = false;
                    this.state = "default";
                    return;
                }
                if (e.target == this.btn_3) {
                    this.showZhi();
                    return;
                }
                if (e.target == this.btn_4) {
                    this.showGift();
                    return;
                }
                if (e.target == this.btn_5) {
                    this.showAnchorSet();
                    return;
                }
                if (e.target == this.btn_6) {
                    PushLiveManage.getInstance().switchCamer();
                    return;
                }
                if (!this.textinput_0.focus)
                    return;
                // if(this.mouseX > (this.box_chat.x+this.box_chat.width*.5)) this.sendGift(10000);
                // else if(this.mouseX > this.box_chat.x) this.sendMessage();
                if (this.mouseX > this.box_chat.x)
                    this.sendMessage();
            };
            RoomChatRender.prototype.doClickInPC = function (e) {
                if (UserData.roomData.anchorId == 0)
                    return;
                if (this._giftShow) {
                    this.hideGift();
                    return;
                }
                if (e.target == this.btn_3) {
                    this.showZhi();
                    return;
                }
                if (e.target == this.btn_4) {
                    this.showGift();
                    return;
                }
                if (e.target == this.btn_5) {
                    this.showAnchorSet();
                    return;
                }
                if (e.target == this.btn_6) {
                    PushLiveManage.getInstance().switchCamer();
                    return;
                }
                if (!this.textinput_0.focus)
                    return;
                if (this.mouseX > this.box_chat.x)
                    this.sendMessage();
            };
            RoomChatRender.prototype.showAnchorSet = function () {
                view.RoomSetView.getInstance().show('setLive');
            };
            RoomChatRender.prototype.showGift = function () {
                this._giftShow = true;
                Tween.to(this, { y: Laya.stage.height }, 100);
                render.RoomGiftRender.getInstance().show();
            };
            RoomChatRender.prototype.hideGift = function () {
                this._giftShow = false;
                Tween.to(this, { y: Laya.stage.height - this.height * App.scale }, 100);
                render.RoomGiftRender.getInstance().hide();
            };
            RoomChatRender.prototype.showZhi = function () {
                view.ErrorTipView.getInstance().show("打开智能设备列表");
            };
            RoomChatRender.prototype.sendMessage = function () {
                if (this.textinput_0.text == '') {
                    view.ErrorTipView.getInstance().show("发言内容不能为空");
                    return;
                }
                if (App.getBlen(this.textinput_0.text) > 40) {
                    view.ErrorTipView.getInstance().show("发言内容长度过长");
                    return;
                }
                if (Date.now() - this._lastDate < 11000) {
                    view.ErrorTipView.getInstance().show("发言间隔必须大于10秒");
                    return;
                }
                this._lastDate = Date.now();
                render.ChatListRender.getInstance().addMessage("chat", { nickname: UserData.baseData['nickName'], message: this.textinput_0.text });
                WebSocketService.getInstance().request_chat(this.textinput_0.text);
                this.textinput_0.text = '';
            };
            RoomChatRender.prototype.sendGift = function (giftId, msg) {
                if (msg === void 0) { msg = ''; }
                if (this.textinput_0.text == '' && giftId == 10000) {
                    view.ErrorTipView.getInstance().show("弹幕内容不能为空");
                    return;
                }
                WebSocketService.getInstance().request_gift(giftId, msg, null);
                this.textinput_0.text = '';
            };
            RoomChatRender.prototype.focusIn = function () {
                this.textinput_0.focus = true;
            };
            Object.defineProperty(RoomChatRender.prototype, "handler", {
                set: function (value) {
                    this._handler = value;
                },
                enumerable: true,
                configurable: true
            });
            return RoomChatRender;
        }(ui.page.render.RoomChatRenderUI));
        render.RoomChatRender = RoomChatRender;
    })(render = view.render || (view.render = {}));
})(view || (view = {}));
//# sourceMappingURL=RoomChatRender.js.map