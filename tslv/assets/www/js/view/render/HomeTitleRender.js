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
        var HomeTitleRender = (function (_super) {
            __extends(HomeTitleRender, _super);
            function HomeTitleRender() {
                var _this = _super.call(this) || this;
                _this.createHandler();
                return _this;
            }
            HomeTitleRender.prototype.createHandler = function () {
                this.btn_live.clickHandler = new Handler(this, this.doClick, [this.btn_live]);
                this.btn_set.clickHandler = new Handler(this, this.doClick, [this.btn_set]);
            };
            HomeTitleRender.prototype.checkLive = function () {
                if (UserData.baseData['isAnchor'] == 'Y') {
                    this.btn_live.label = '开播了';
                    this.btn_live.width = 140;
                }
                else {
                    this.btn_live.label = '成为主播';
                    this.btn_live.width = 165;
                }
            };
            HomeTitleRender.prototype.doClick = function (target) {
                if (target == this.btn_live) {
                    if (this._handler) {
                        if (this.btn_live.label == '开播了')
                            this._handler.runWith([0]);
                        else if (this.btn_live.label == '成为主播')
                            TipDialog.getInstance().showDialog('温馨提示', '请联系QQ：1931954175进行主播审核');
                    }
                }
                else if (target == this.btn_set) {
                    UserData.updataInSetView = true;
                    if (this._handler)
                        this._handler.runWith([1]);
                }
            };
            Object.defineProperty(HomeTitleRender.prototype, "handler", {
                set: function (value) {
                    this._handler = value;
                },
                enumerable: true,
                configurable: true
            });
            return HomeTitleRender;
        }(ui.page.render.HomeTitleRenderUI));
        render.HomeTitleRender = HomeTitleRender;
    })(render = view.render || (view.render = {}));
})(view || (view = {}));
//# sourceMappingURL=HomeTitleRender.js.map