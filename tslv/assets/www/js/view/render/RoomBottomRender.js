var __extends = (this && this.__extends) || function (d, b) {
    for (var p in b) if (b.hasOwnProperty(p)) d[p] = b[p];
    function __() { this.constructor = d; }
    d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
};
/**
* name
*/
var view;
(function (view) {
    var render;
    (function (render) {
        var RoomBottomRender = (function (_super) {
            __extends(RoomBottomRender, _super);
            function RoomBottomRender() {
                var _this = _super.call(this) || this;
                _this.createHandler();
                return _this;
            }
            RoomBottomRender.prototype.createHandler = function () {
                this.btn_0.clickHandler = new Handler(this, this.doClick, [this.btn_0]);
                this.btn_1.clickHandler = new Handler(this, this.doClick, [this.btn_1]);
                this.btn_2.clickHandler = new Handler(this, this.doClick, [this.btn_2]);
            };
            RoomBottomRender.prototype.doClick = function (target) {
                if (target == this.btn_0) {
                    if (this._handler)
                        this._handler.runWith([0]);
                }
                else if (target == this.btn_1) {
                    if (this._handler)
                        this._handler.runWith([0]);
                }
                else if (target == this.btn_2) {
                    if (this._handler)
                        this._handler.runWith([2]);
                }
            };
            Object.defineProperty(RoomBottomRender.prototype, "handler", {
                set: function (value) {
                    this._handler = value;
                },
                enumerable: true,
                configurable: true
            });
            return RoomBottomRender;
        }(ui.page.render.RoomBottomRenderUI));
        render.RoomBottomRender = RoomBottomRender;
    })(render = view.render || (view.render = {}));
})(view || (view = {}));
//# sourceMappingURL=RoomBottomRender.js.map