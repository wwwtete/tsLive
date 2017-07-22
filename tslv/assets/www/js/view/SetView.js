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
    var SetView = (function (_super) {
        __extends(SetView, _super);
        // {
        // 	"skin":"gameSkin/icon_04.png",
        // 	"tip":"修改封面",
        // 	"to":ViewManager.CHANGE_HEAD_VIEW
        // }
        function SetView() {
            var _this = _super.call(this) || this;
            _this._listData_1 = [
                {
                    "skin": "gameSkin/icon_01.png",
                    "tip": "立即充值",
                    "to": ViewManager.RECHARGE_AMOUNT_VIEW
                }
                // {
                // 	"skin":"gameSkin/icon_02.png",
                // 	"tip":"我的收益",
                // 	"to":ViewManager.IN_COME_VIEW
                // }
            ];
            _this._listData_2 = [
                {
                    "skin": "gameSkin/icon_03.png",
                    "tip": "修改昵称",
                    "to": ViewManager.CHANGE_NICK_NAME_VIEW
                },
                {
                    "skin": "gameSkin/icon_05.png",
                    "tip": "修改密码",
                    "to": ViewManager.CHANGE_PASSWORD_VIEW
                }
            ];
            _this._listData_3 = [
                {
                    "skin": "gameSkin/icon_03.png",
                    "tip": "联系客服",
                    "to": ViewManager.CONTAC_CUSTOMER
                }
            ];
            _this.createHandler();
            return _this;
        }
        SetView.prototype.createHandler = function () {
            this.doResize();
            this.topView.handler = new Handler(this, this.doSomthing);
            this.list_1.itemRender = view.render.SetListItemRender;
            this.list_1.renderHandler = Handler.create(this, this.renderList1, null, false);
            this.list_1.mouseHandler = Handler.create(this, this.mouseList1, null, false);
            this.list_1.array = this._listData_1;
            this.list_2.itemRender = view.render.SetListItemRender;
            this.list_2.renderHandler = Handler.create(this, this.renderList2, null, false);
            this.list_2.mouseHandler = Handler.create(this, this.mouseList2, null, false);
            this.list_2.array = this._listData_2;
            this.list_3.itemRender = view.render.SetListItemRender;
            this.list_3.renderHandler = Handler.create(this, this.renderList3, null, false);
            this.list_3.mouseHandler = Handler.create(this, this.mouseList3, null, false);
            this.list_3.array = this._listData_3;
        };
        SetView.prototype.mouseList1 = function (e, index) {
            var cell = this.list_1.getCell(index);
            if (cell)
                cell["doMouse"](e.type);
        };
        SetView.prototype.mouseList2 = function (e, index) {
            var cell = this.list_2.getCell(index);
            if (cell)
                cell["doMouse"](e.type);
        };
        SetView.prototype.mouseList3 = function (e, index) {
            var cell = this.list_3.getCell(index);
            if (cell)
                cell["doMouse"](e.type);
        };
        SetView.prototype.renderList1 = function (cell, index) {
            if (index < this._listData_1.length) {
                cell["setData"](this._listData_1[index]);
            }
        };
        SetView.prototype.renderList2 = function (cell, index) {
            if (index < this._listData_2.length) {
                cell["setData"](this._listData_2[index]);
            }
        };
        SetView.prototype.renderList3 = function (cell, index) {
            if (index < this._listData_3.length) {
                cell["setData"](this._listData_3[index]);
            }
        };
        SetView.prototype.doSomthing = function (type) {
            switch (type) {
                case 0:
                    ViewManager.getInstance().doBack();
                    break;
                default:
                    break;
            }
        };
        SetView.prototype.infoView = function () {
            this.topView.infoView();
        };
        //==================================================
        SetView.prototype.show = function (anitype) {
            this.infoView();
            this.doResize();
            this.visible = true;
            if (anitype == "rightIn") {
                this.x = Laya.stage.width;
                Laya.stage.addChild(this);
                Tween.to(this, { x: 0 }, 200);
            }
            else if (anitype == "leftIn") {
                this.x = -Laya.stage.width * .5;
                Tween.to(this, { x: 0 }, 100, null, null, 60);
            }
        };
        SetView.prototype.hide = function (anitype) {
            this.x = 0;
            if (anitype == "rightOut") {
                Tween.to(this, { x: Laya.stage.width }, 200, null, Handler.create(this, this.hideOver));
            }
            else if (anitype == "leftOut") {
                Tween.to(this, { x: -Laya.stage.width * .5 }, 200, null, Handler.create(this, this.hideOver), 100);
            }
        };
        SetView.prototype.hideOver = function () {
            this.x = -Laya.stage.width;
            this.visible = false;
        };
        SetView.prototype.doResize = function () {
            this.size(Laya.stage.width, Laya.stage.height);
            this.topView.scale(App.scale, App.scale);
            this.list_1.top = 340 * App.scale;
            this.list_2.top = this.list_1.top + this.list_1.height + 20 * App.scale;
            this.list_3.top = this.list_2.top + this.list_2.height + 20 * App.scale;
            this.list_1.spaceY = 2 * App.scale;
            this.list_2.spaceY = 2 * App.scale;
            this.list_3.spaceY = 2 * App.scale;
        };
        return SetView;
    }(ui.page.SetViewUI));
    view.SetView = SetView;
})(view || (view = {}));
//# sourceMappingURL=SetView.js.map