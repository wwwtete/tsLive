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
        var NoAnchorRender = (function (_super) {
            __extends(NoAnchorRender, _super);
            function NoAnchorRender() {
                var _this = _super.call(this) || this;
                _this.doResize();
                return _this;
            }
            NoAnchorRender.prototype.show = function () {
                Laya.stage.addChild(this);
                this.centerX = this.centerY = 0;
            };
            NoAnchorRender.prototype.hide = function () {
                this.removeSelf();
            };
            NoAnchorRender.prototype.doResize = function () {
                this.scale(App.scale, App.scale);
            };
            NoAnchorRender.getInstance = function () {
                if (null == this._instance)
                    this._instance = new NoAnchorRender();
                return this._instance;
            };
            return NoAnchorRender;
        }(ui.page.render.NoAnchorRenderUI));
        render.NoAnchorRender = NoAnchorRender;
    })(render = view.render || (view.render = {}));
})(view || (view = {}));
//# sourceMappingURL=NoAnchorRender.js.map