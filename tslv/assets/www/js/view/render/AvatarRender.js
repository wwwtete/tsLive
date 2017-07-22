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
        var AvatarRender = (function (_super) {
            __extends(AvatarRender, _super);
            function AvatarRender() {
                return _super.call(this) || this;
            }
            Object.defineProperty(AvatarRender.prototype, "path", {
                set: function (value) {
                    if (this._mask == null) {
                        this._mask = new Laya.Sprite();
                        this._mask.graphics.drawCircle(this.width * .5, this.width * .5, this.width * .5, '#ffffff', null, 0);
                    }
                    this.back.skin = value;
                    this.back.mask = this._mask;
                },
                enumerable: true,
                configurable: true
            });
            return AvatarRender;
        }(ui.page.render.AvatarRenderUI));
        render.AvatarRender = AvatarRender;
    })(render = view.render || (view.render = {}));
})(view || (view = {}));
//# sourceMappingURL=AvatarRender.js.map