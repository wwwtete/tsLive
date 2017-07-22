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
    var IncomeView = (function (_super) {
        __extends(IncomeView, _super);
        function IncomeView() {
            var _this = _super.call(this) || this;
            _this._listData = [
                {
                    "tip": "本日收益:",
                    "room": 0,
                    "gift": 0,
                    "date": 'N月N日',
                    "duration": 0
                },
                {
                    "tip": "本周收益:",
                    "room": 0,
                    "gift": 0,
                    "date": 'N月N日',
                    "duration": 0
                },
                {
                    "tip": "本月收益",
                    "room": 0,
                    "gift": 0,
                    "date": 'N月N日',
                    "duration": 0
                }
            ];
            _this.createHandler();
            return _this;
        }
        IncomeView.prototype.createHandler = function () {
            this.topView.handler = new Handler(this, this.doSomthing);
            this.list.repeatY = this._listData.length;
            this.list.itemRender = view.render.IncomItemRender;
            this.list.renderHandler = Handler.create(this, this.renderList, null, false);
            this.list.array = this._listData;
            this.topView.setTitle("我的收益", "暂时不提供详细收益数据");
        };
        IncomeView.prototype.buildList = function (data) {
            var body = data['body'];
            this._listData[0]['room'] = body['day']['roomAmount'];
            this._listData[0]['gift'] = body['day']['giftAmount'];
            this._listData[0]['duration'] = body['day']['duration'];
            this._listData[0]['date'] = body['day']['mintime'].split(" ")[0];
            this._listData[1]['room'] = body['week']['roomAmount'];
            this._listData[1]['gift'] = body['week']['giftAmount'];
            this._listData[1]['duration'] = body['week']['duration'];
            this._listData[1]['date'] = body['week']['mintime'].split(" ")[0] + "   到现在";
            this._listData[2]['room'] = body['month']['roomAmount'];
            this._listData[2]['gift'] = body['month']['giftAmount'];
            this._listData[2]['duration'] = body['month']['duration'];
            this._listData[2]['date'] = body['month']['mintime'].split(" ")[0] + "   到现在";
            this.list.array = this._listData;
        };
        IncomeView.prototype.renderList = function (cell, index) {
            if (index < this._listData.length) {
                cell["setData"](this._listData[index]);
            }
        };
        IncomeView.prototype.doSomthing = function (type) {
            switch (type) {
                case 0:
                    ViewManager.getInstance().doBack();
                    break;
                default:
                    break;
            }
        };
        //==================================================
        IncomeView.prototype.show = function (anitype) {
            this.doResize();
            this.visible = true;
            if (anitype == "rightIn") {
                this.x = Laya.stage.width;
                Laya.stage.addChild(this);
                Tween.to(this, { x: 0 }, 200, null, Handler.create(this, this.showOver));
            }
            else if (anitype == "leftIn") {
                this.x = -Laya.stage.width * .5;
                Tween.to(this, { x: 0 }, 100, null, Handler.create(this, this.showOver), 60);
            }
        };
        IncomeView.prototype.showOver = function () {
            WebSocketService.getInstance().request_getAnchorIncome(Handler.create(this, this.buildList));
        };
        IncomeView.prototype.hide = function (anitype) {
            this.x = 0;
            if (anitype == "rightOut") {
                Tween.to(this, { x: Laya.stage.width }, 200, null, Handler.create(this, this.hideOver));
            }
            else if (anitype == "leftOut") {
                Tween.to(this, { x: -Laya.stage.width * .5 }, 200, null, Handler.create(this, this.hideOver), 100);
            }
        };
        IncomeView.prototype.hideOver = function () {
            this.x = -Laya.stage.width;
            this.visible = false;
        };
        IncomeView.prototype.doResize = function () {
            this.size(Laya.stage.width, Laya.stage.height);
            this.topView.scale(App.scale, App.scale);
            this.list.spaceY = 10 * App.scale;
            this.list.top = 140 * App.scale;
        };
        return IncomeView;
    }(ui.page.IncomeViewUI));
    view.IncomeView = IncomeView;
})(view || (view = {}));
//# sourceMappingURL=IncomeView.js.map