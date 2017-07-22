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
        var PullDownRender = (function (_super) {
            __extends(PullDownRender, _super);
            function PullDownRender() {
                var _this = _super.call(this) || this;
                _this.showView("default");
                return _this;
            }
            PullDownRender.prototype.showView = function (t) {
                switch (t) {
                    case "default":
                        this.ani_0.visible = true;
                        this.ani_1.visible = false;
                        this.ani_1.stop();
                        this.tip.text = "下拉刷新...";
                        break;
                    case "ready":
                        this.ani_0.visible = false;
                        this.ani_1.visible = true;
                        this.ani_1.stop();
                        this.tip.text = "准备加载...";
                        break;
                    case "load":
                        this.ani_0.visible = false;
                        this.ani_1.visible = true;
                        this.ani_1.play(0, true);
                        this.tip.text = "加载中...";
                        break;
                    default:
                        break;
                }
                this.box.centerX = 0;
            };
            return PullDownRender;
        }(ui.page.render.PullDownRenderUI));
        render.PullDownRender = PullDownRender;
    })(render = view.render || (view.render = {}));
})(view || (view = {}));
//# sourceMappingURL=PullDownRender.js.map