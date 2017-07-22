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
    var compont;
    (function (compont) {
        var MVbox = (function (_super) {
            __extends(MVbox, _super);
            function MVbox() {
                return _super.call(this) || this;
            }
            MVbox.prototype.changeItems = function () {
                this._itemChanged = false;
                var items = [];
                var maxWidth = 0;
                for (var i = 0, n = this.numChildren; i < n; i++) {
                    var item = this.getChildAt(i);
                    if (item) {
                        items.push(item);
                        maxWidth = Math.max(maxWidth, item['width'] * item['scaleX']);
                    }
                }
                var top = 0;
                for (i = 0, n = this.numChildren; i < n; i++) {
                    item = items[i];
                    item['y'] = top;
                    top += item['height'] * item['scaleY'] + this._space;
                    if (this._align == "left") {
                        item['x'] = 0;
                    }
                    else if (this._align == "center") {
                        item['x'] = (maxWidth - item['width'] * item['scaleX']) * 0.5;
                    }
                    else if (this._align == "right") {
                        item['x'] = maxWidth - item['width'] * item['scaleX'];
                    }
                }
                this.changeSize();
            };
            MVbox.prototype.sortItem = function (items) {
                if (items)
                    items.sort(function (a, b) {
                        return -1;
                    });
            };
            return MVbox;
        }(laya.ui.VBox));
        compont.MVbox = MVbox;
    })(compont = view.compont || (view.compont = {}));
})(view || (view = {}));
//# sourceMappingURL=MVbox.js.map