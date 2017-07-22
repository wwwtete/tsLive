var __extends = (this && this.__extends) || function (d, b) {
    for (var p in b) if (b.hasOwnProperty(p)) d[p] = b[p];
    function __() { this.constructor = d; }
    d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
};
/**
* name
*/
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
            this.btn_live.clickHandler = new Handler(this, this.doClick, [this.btn_live]);
        };
        HomeTitleRender.prototype.doClick = function (target) {
            if (target == this.btn_live) {
                if (this._handler)
                    this._handler.runWith(["changeView", ViewManager.ROOM_VIEW]);
            }
            else if (target == this.btn_set) {
                if (this._handler)
                    this._handler.runWith(["changeView", ViewManager.SET_VIEW]);
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
    }(ui.render.HomeTitleRenderUI));
    render.HomeTitleRender = HomeTitleRender;
})(render || (render = {}));
//# sourceMappingURL=HomeTitleRender.js.map