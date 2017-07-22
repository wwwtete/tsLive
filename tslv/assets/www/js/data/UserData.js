/**
* name
*/
var data;
(function (data) {
    var UserData = (function () {
        function UserData() {
        }
        UserData.infoRoom = function () {
            var anchorId = this.roomData.anchorId;
            this.roomData = {
                anchorId: 0,
                anchorName: "",
                userNums: 0,
                vipNums: 0,
                diamondBalance: 0,
                currentType: 'offLine',
                lookTest: 60,
                streamId: '',
                title: '',
                streamUrl: ''
            };
            this.roomData.anchorId = anchorId;
        };
        return UserData;
    }());
    // {"id":149,"nickName":"anchor10","email":"anchor10@gmail.com","avatarPath":null,"coinBalance":0,"diamondBalance":0,"accountState":"normal","createTime":"2017-02-12T12:55:54.000Z","lastUpdateTime":"2017-02-12T15:14:29.000Z","inviteCode":null,"inviterId":null,"appId":"gameserverapp","roles":",","agentId":100,"roomPercent":0.25,"giftPercent":0.25,"roomPercentByAgent":0.5,"giftPercentByAgent":0.5,"agentRoomPercent":null,"agentGiftPercent":null,"userId":149,"s":""}
    UserData.baseData = {};
    UserData.avatar = '';
    UserData.cover = '';
    UserData.updataInSetView = false;
    UserData.roomId = 0;
    UserData.streamId = '';
    UserData.uidByEmail = '';
    UserData.camera = 0;
    UserData.mic = 0;
    UserData.pushNode = '/live/';
    UserData.roomData = {
        anchorId: 0,
        anchorName: "",
        userNums: 0,
        vipNums: 0,
        diamondBalance: 0,
        currentType: 'offLine',
        lookTest: 60,
        streamId: '',
        title: '',
        streamUrl: ''
    };
    data.UserData = UserData;
})(data || (data = {}));
//# sourceMappingURL=UserData.js.map