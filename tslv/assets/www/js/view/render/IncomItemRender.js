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
        var IncomItemRender = (function (_super) {
            __extends(IncomItemRender, _super);
            function IncomItemRender() {
                var _this = _super.call(this) || this;
                _this.doResize();
                return _this;
            }
            IncomItemRender.prototype.setData = function (value) {
                this._data = value;
                if (this._data) {
                    this.tip_1.text = this._data["tip"];
                    this.tip_2.text = "直播时长：" + this._data["duration"] + "分钟";
                    this.tip_3.text = "房间收益：" + StringUntil.moneyTOString(this._data["room"], 2, "钻石");
                    this.tip_4.text = "礼物收益：" + StringUntil.moneyTOString(this._data["gift"], 2, "钻石");
                    this.tip_5.text = StringUntil.moneyTOString(this._data["gift"] + this._data["room"], 2, "钻石");
                    this.tip_6.text = this._data["date"];
                }
                this.doResize();
            };
            IncomItemRender.prototype.doResize = function () {
                this.size(Laya.stage.width, 120 * App.scale);
                this.tip_1.scale(App.scale, App.scale);
                this.tip_1.x = 40 * App.scale;
                this.tip_1.y = 26 * App.scale;
                this.tip_2.scale(App.scale, App.scale);
                this.tip_2.right = 40 * App.scale;
                this.tip_2.y = 11 * App.scale;
                this.tip_3.scale(App.scale, App.scale);
                this.tip_3.right = 40 * App.scale;
                this.tip_3.y = 48 * App.scale;
                this.tip_4.scale(App.scale, App.scale);
                this.tip_4.right = 40 * App.scale;
                this.tip_4.y = 86 * App.scale;
                this.tip_5.scale(App.scale, App.scale);
                this.tip_5.x = 155 * App.scale;
                this.tip_5.y = 26 * App.scale;
                this.tip_6.scale(App.scale, App.scale);
                this.tip_6.x = 40 * App.scale;
                this.tip_6.y = 71 * App.scale;
            };
            return IncomItemRender;
        }(ui.page.render.IncomeItemRenderUI));
        render.IncomItemRender = IncomItemRender;
    })(render = view.render || (view.render = {}));
})(view || (view = {}));
//# sourceMappingURL=IncomItemRender.js.map