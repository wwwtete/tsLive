/**
* name
*/
var net;
(function (net) {
    var WebSocketService = (function () {
        function WebSocketService() {
            this.host = 'gate.taoselive.com';
            this.port = 6011;
            this._closeMask = true;
            var self = this;
            this.pomelo = window['pomelo'];
            this.pomelo.on('disconnect', function (reason) {
                if (self._closeMask) {
                    LoadingMaskView.getInstance().hide();
                    ViewManager.getInstance().showView(ViewManager.LOGIN_VIEW, view.LoginView);
                    var login = ViewManager.getInstance().getView(ViewManager.LOGIN_VIEW);
                    login.changeViewType(view.LoginView.LOGIN);
                    // TipDialog.getInstance().showDialog('温馨提示', '与服务器断开连接', null, null);
                }
                self._closeMask = true;
            });
            this.pomelo.on('onEntery', function (data) {
                App.print('onEntery : ' + JSON.stringify(data));
                ChatListRender.getInstance().addMessage('welcome', { nickname: data['nickname'] });
                if (data['userId'] != UserData.roomData.anchorId) {
                    UserData.roomData.userNums++;
                    MEventDispatcher.getInstance().event(MEvent.CHANGE_ROOM_DATA);
                }
            });
            this.pomelo.on('onLeave', function (data) {
                App.print('onLeave : ' + JSON.stringify(data));
                if (UserData.roomData.anchorId != data['userId']) {
                    UserData.roomData.streamId = '';
                    UserData.roomData.currentType = 'onLine';
                    MEventDispatcher.getInstance().event(MEvent.CHANGE_ANCHOR_TYPE, JSON.stringify(data));
                }
            });
            this.pomelo.on('onChat', function (data) {
                App.print('onChat : ' + JSON.stringify(data));
                if (data['userId'] != UserData.baseData['userId']) {
                    if (UserData.baseData['roles'].indexOf(',jiankong,') != -1)
                        ChatListRender.getInstance().addMessage('chat', { nickname: data['userId'], message: data['msg'] });
                    else
                        ChatListRender.getInstance().addMessage('chat', { nickname: data['nickName'], message: data['msg'] });
                }
            });
            this.pomelo.on('onGift', function (data) {
                App.print('onGift : ' + JSON.stringify(data));
                data['ani'] = data['ani'] || 0;
                if (data['ani'] > 0)
                    GiftManager.getInstance().play(data['giftId'], data['ani']);
                if (UserData.baseData['roles'].indexOf(',jiankong,') != -1)
                    ChatListRender.getInstance().addMessage('gift', { nickname: data['userId'], giftmessage: data['giftMessage'], giftname: data['giftName'] });
                else
                    ChatListRender.getInstance().addMessage('gift', { nickname: data['nickName'], giftmessage: data['giftMessage'], giftname: data['giftName'] });
            });
            this.pomelo.on('onMic', function (data) {
                App.print('onMic : ' + JSON.stringify(data));
                if (data['micType'] == 'on') {
                    UserData.roomData.streamId = data['streamId'];
                    UserData.roomData.currentType = data['onLive'];
                }
                else if (data['micType'] == 'off') {
                    UserData.roomData.streamId = '';
                    UserData.roomData.currentType = data['onLine'];
                }
                MEventDispatcher.getInstance().event(MEvent.CHANGE_ANCHOR_TYPE, JSON.stringify(data));
            });
            this.pomelo.on('onUpRoomUsers', function (data) {
                console.log('onUpRoomUsers' + JSON.stringify(data));
                UserData.roomData.userNums = data['userNums'];
                UserData.roomData.vipNums = data['vipNums'] || 0;
                UserData.roomData.diamondBalance = data['diamondBalance'];
                MEventDispatcher.getInstance().event(MEvent.CHANGE_ROOM_DATA, JSON.stringify(data));
            });
            this.pomelo.on('onUpRooms', function (data) {
                // console.log('onUpRooms'+JSON.stringify(data));
                MEventDispatcher.getInstance().event(MEvent.CHANGE_ANCHORS_DATA, JSON.stringify(data['anchorList']));
            });
            this.pomelo.on('onUpUserAmount', function (data) {
                console.log('onUpUserAmount' + JSON.stringify(data));
                if (data['userId'] == UserData.baseData['userId']) {
                    UserData.baseData['coinBalance'] = data['amount'];
                    MEventDispatcher.getInstance().event(MEvent.CHANGE_USER_DATA);
                }
            });
            this.pomelo.on('onNoAmount', function (data) {
                console.log('onNoAmount' + JSON.stringify(data));
                UserData.baseData['coinBalance'] = 0;
                MEventDispatcher.getInstance().event(MEvent.NO_AMOUNT, JSON.stringify(data));
            });
            this.pomelo.on('onUpRoomInfo', function (data) {
                App.print('onUpRoomInfo : ' + JSON.stringify(data));
                if (UserData.roomData.anchorId == data['roomId'] && UserData.roomData.currentType != data['currentType']) {
                    UserData.roomData.currentType = data['currentType'];
                    MEventDispatcher.getInstance().event(MEvent.CHANGE_ANCHOR_TYPE);
                }
            });
            this.pomelo.on('onUpUserRecharge', function (data) {
                App.print('onUpUserRecharge : ' + JSON.stringify(data));
                ErrorTipView.getInstance().show('您的充值订单到账了');
                if (data['type'] == 'add')
                    UserData.baseData['coinBalance'] += data['amount'];
                else if (data['type'] == 'updata')
                    UserData.baseData['coinBalance'] = data['amount'];
                MEventDispatcher.getInstance().event(MEvent.CHANGE_USER_DATA);
            });
            this.pomelo.on('onSetBulletin', function (data) {
                App.print('onSetBulletin : ' + JSON.stringify(data));
                GongGaoView.getInstance().show(data['message']);
            });
            this.pomelo.on('onAdminChat', function (data) {
                App.print('onAdminChat : ' + JSON.stringify(data));
                TipDialog.getInstance().showDialog('系统提示', data.message, null, null);
            });
            this.pomelo.on('onAdminRoomType', function (data) {
                App.print('onAdminRoomType : ' + JSON.stringify(data));
                var roomView = ViewManager.getInstance().getView(ViewManager.ROOM_VIEW);
                roomView.adminSet('private', data['value']);
            });
        }
        //发送解锁请求
        WebSocketService.prototype.request_unlock = function (email, password, handler) {
            LoadingMaskView.getInstance().show('应用解锁中');
            this.pomelo.request(WebSocketService.unlockRoute, {
                email: email,
                password: password
            }, function (data) {
                LoadingMaskView.getInstance().hide();
                if (data.error || data.code == 500) {
                    ErrorTipView.getInstance().show('解锁失败');
                    return;
                }
                if (handler)
                    handler.runWith([data]);
            });
        };
        //发送登录请求
        WebSocketService.prototype.request_login = function (userId, passtoken, handler) {
            this._closeMask = false;
            LoadingMaskView.getInstance().show('正在获取个人信息');
            this.queryEntry(userId, function (host, port) {
                this.pomelo.init({
                    host: host,
                    port: port,
                    reconnect: true,
                    maxReconnectAttempts: 20,
                }, function () {
                    this.pomelo.request(WebSocketService.loginRoute, {
                        userId: userId,
                        passtoken: passtoken
                    }, function (data) {
                        LoadingMaskView.getInstance().hide();
                        if (data.error || data.code == 500) {
                            this.pomelo.disconnect();
                            ErrorTipView.getInstance().show(data['message']);
                            return;
                        }
                        if (handler)
                            handler.runWith([data]);
                        WebSocketService.getInstance().request_infoChat();
                    });
                });
            });
        };
        //发送上麦请求
        WebSocketService.prototype.request_micOn = function (title, handler) {
            this.pomelo.request(WebSocketService.micOnRoute, {
                title: title
            }, function (data) {
                App.print('request_micOn : ' + JSON.stringify(data));
                if (data.error || data.code == 500) {
                    ErrorTipView.getInstance().show('上麦失败');
                    return;
                }
                if (handler)
                    handler.runWith([data]);
            });
        };
        WebSocketService.prototype.request_changePrivate = function (isprivate, handler) {
            this.pomelo.request(WebSocketService.privateRoute, {
                isPrivate: isprivate
            }, function (data) {
                App.print('request_changePrivate : ' + JSON.stringify(data));
                if (data.error || data.code == 500) {
                    ErrorTipView.getInstance().show('更新私密状态');
                    return;
                }
                if (handler)
                    handler.runWith([data]);
            });
        };
        //发送下麦请求
        WebSocketService.prototype.request_micOff = function (streamId, handler) {
            this.pomelo.request(WebSocketService.micOffRoute, {
                streamId: streamId
            }, function (data) {
                App.print('request_micOff : ' + JSON.stringify(data));
                if (data.error || data.code == 500) {
                    ErrorTipView.getInstance().show('下麦失败');
                    return;
                }
                if (handler)
                    handler.runWith([data]);
            });
        };
        //发送检查主播信息请求
        WebSocketService.prototype.request_checkAnchor = function (roomId, handler) {
            LoadingMaskView.getInstance().show('正在获取房间信息');
            this.pomelo.request(WebSocketService.checkAnchor, {
                roomId: roomId
            }, function (data) {
                App.print('request_checkAnchor : ' + JSON.stringify(data));
                LoadingMaskView.getInstance().hide();
                if (handler)
                    handler.runWith([data]);
            });
        };
        //发送获取用户信息请求
        WebSocketService.prototype.request_getUserInfo = function (handler) {
            this.pomelo.request(WebSocketService.getUserInfo, null, function (data) {
                if (handler)
                    handler.runWith([data]);
            });
        };
        WebSocketService.prototype.request_getAnchorIncome = function (handler) {
            LoadingMaskView.getInstance().show('正在获取收益统计');
            this.pomelo.request(WebSocketService.getAnchorIncome, null, function (data) {
                LoadingMaskView.getInstance().hide();
                if (handler)
                    handler.runWith([data]);
            });
        };
        //发送修改用户昵称请求
        WebSocketService.prototype.request_changeNickName = function (nickName, handler) {
            LoadingMaskView.getInstance().show('昵称修改中');
            this.pomelo.request(WebSocketService.changeUserInfo, {
                nickName: nickName
            }, function (data) {
                App.print('request_changeNickName : ' + JSON.stringify(data));
                LoadingMaskView.getInstance().hide();
                if (data.error || data.code == 500) {
                    ErrorTipView.getInstance().show('操作失败');
                    return;
                }
                if (handler)
                    handler.runWith([data]);
            });
        };
        //发送修改用户密码请求
        WebSocketService.prototype.request_changePassWord = function (passwd, newpasswd, handler) {
            LoadingMaskView.getInstance().show('密码修改中');
            this.pomelo.request(WebSocketService.changeUserPass, {
                passwd: passwd,
                newpasswd: newpasswd
            }, function (data) {
                App.print('request_changePassWord : ' + JSON.stringify(data));
                LoadingMaskView.getInstance().hide();
                if (data.error || data.code == 500) {
                    ErrorTipView.getInstance().show('操作失败');
                    return;
                }
                if (handler)
                    handler.runWith([data]);
            });
        };
        //请求充值订单
        WebSocketService.prototype.request_createPayOrder = function (payType, amount, handler) {
            LoadingMaskView.getInstance().show('订单生成中');
            this.pomelo.request(WebSocketService.createPayOrder, {
                payType: payType,
                amount: amount
            }, function (data) {
                App.print('request_createPayOrder : ' + JSON.stringify(data));
                LoadingMaskView.getInstance().hide();
                if (data.error || data.code == 500) {
                    ErrorTipView.getInstance().show('生成订单失败');
                    return;
                }
                if (handler)
                    handler.runWith([data]);
            });
        };
        //发送礼物消息
        WebSocketService.prototype.request_gift = function (giftId, msg, handler) {
            this.pomelo.request(WebSocketService.giftRoute, {
                giftId: giftId,
                message: msg
            }, function (data) {
                App.print('request_gift : ' + JSON.stringify(data));
                LoadingMaskView.getInstance().hide();
                if (data.error || data.code == 500) {
                    ErrorTipView.getInstance().show('礼物赠送失败');
                    return;
                }
                if (handler)
                    handler.runWith([data]);
            });
        };
        WebSocketService.prototype.request_infoChat = function () {
            this.pomelo.request(WebSocketService.infoChat, function (data) {
                App.print('request_infoChat : ' + JSON.stringify(data));
                LoadingMaskView.getInstance().hide();
                if (data.error || data.code == 500) {
                    ErrorTipView.getInstance().show('数据错误，请重新登录');
                    return;
                }
            });
        };
        //发送聊天消息
        WebSocketService.prototype.request_chat = function (msg) {
            this.pomelo.request(WebSocketService.chatRoute, {
                roomId: UserData.roomData.anchorId,
                message: msg
            }, function (data) {
                if (data && data.code == 500) {
                    ErrorTipView.getInstance().show(data['message']);
                }
            });
        };
        WebSocketService.prototype.notify_pause = function (msg) {
            this.pomelo.notify(WebSocketService.pause, {
                value: msg
            });
        };
        //发送进入房间消息
        WebSocketService.prototype.notify_enterRoom = function (roomId) {
            this.pomelo.notify(WebSocketService.enteryRoute, {
                roomId: roomId
            });
        };
        //发送离开房间消息
        WebSocketService.prototype.notify_leaveRoom = function (roomId) {
            this.pomelo.notify(WebSocketService.leaveRoute, {
                roomId: roomId
            });
        };
        //发送上麦消息
        WebSocketService.prototype.notify_mic = function (streamId) {
            this.pomelo.notify(WebSocketService.micRoute, {
                streamId: streamId
            });
        };
        // query connector
        WebSocketService.prototype.queryEntry = function (userId, callback) {
            this.pomelo.init({
                host: this.host,
                port: this.port,
                log: true
            }, function () {
                this.pomelo.request(WebSocketService.gateRoute, {
                    userId: userId
                }, function (data) {
                    this.pomelo.disconnect();
                    if (data.code === 500) {
                        ErrorTipView.getInstance().show('网关登录失败');
                        return;
                    }
                    callback(data.host, data.port);
                });
            });
        };
        ;
        WebSocketService.getInstance = function () {
            if (null == this._instance)
                this._instance = new WebSocketService();
            return this._instance;
        };
        return WebSocketService;
    }());
    WebSocketService.gateRoute = 'gate.gateHandler.queryEntry';
    WebSocketService.loginRoute = 'connector.entryHandler.login';
    WebSocketService.regRoute = 'connector.entryHandler.reg';
    WebSocketService.sendEmailRemote = 'connector.entryHandler.sendEmail';
    WebSocketService.changePsdRemote = 'connector.entryHandler.changePas';
    WebSocketService.infoChat = 'chat.chatHandler.infoChat';
    WebSocketService.pause = 'chat.chatHandler.pause';
    WebSocketService.enteryRoute = 'chat.chatHandler.entery';
    WebSocketService.leaveRoute = 'chat.chatHandler.leave';
    WebSocketService.checkAnchor = 'chat.chatHandler.checkAnchor';
    WebSocketService.micOnRoute = 'chat.chatHandler.micOn';
    WebSocketService.privateRoute = 'chat.chatHandler.changePrivate';
    WebSocketService.micOffRoute = 'chat.chatHandler.micOff';
    WebSocketService.micRoute = 'chat.chatHandler.mic';
    WebSocketService.chatRoute = 'chat.chatHandler.chat';
    WebSocketService.giftRoute = 'chat.chatHandler.gift';
    WebSocketService.unlockRoute = 'chat.chatHandler.unlock';
    WebSocketService.changeUserInfo = 'chat.chatHandler.changeUserInfo';
    WebSocketService.changeUserPass = 'chat.chatHandler.changeUserPass';
    WebSocketService.getUserInfo = 'chat.chatHandler.getUserInfo';
    WebSocketService.getAnchorIncome = 'chat.chatHandler.getAnchorIncom';
    WebSocketService.createPayOrder = 'chat.chatHandler.createPayOrder';
    net.WebSocketService = WebSocketService;
})(net || (net = {}));
//# sourceMappingURL=WebSocketService.js.map