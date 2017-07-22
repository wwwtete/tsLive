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
        var RechargeTitleRender = (function (_super) {
            __extends(RechargeTitleRender, _super);
            function RechargeTitleRender() {
                var _this = _super.call(this) || this;
                _this.createHandler();
                return _this;
            }
            RechargeTitleRender.prototype.setTitle = function (s1, s2) {
                if (s1 != "") {
                    this.tip_1.text = s1;
                    this.tip_1.centerX = 0;
                }
                if (s2 != "") {
                    this.tip_2.text = s2;
                    this.tip_2.centerX = 0;
                }
            };
            RechargeTitleRender.prototype.createHandler = function () {
                this.btn_return.clickHandler = new Handler(this, this.doClick, [this.btn_return]);
            };
            RechargeTitleRender.prototype.doClick = function (target) {
                if (target == this.btn_return) {
                    if (this._handler)
                        this._handler.runWith([0]);
                }
            };
            Object.defineProperty(RechargeTitleRender.prototype, "handler", {
                set: function (value) {
                    this._handler = value;
                },
                enumerable: true,
                configurable: true
            });
            return RechargeTitleRender;
        }(ui.page.render.RechargeTitleRenderUI));
        render.RechargeTitleRender = RechargeTitleRender;
    })(render = view.render || (view.render = {}));
})(view || (view = {}));
//# sourceMappingURL=RechargeTitleRender.js.map