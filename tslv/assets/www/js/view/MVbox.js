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
    var compont;
    (function (compont) {
        var MVbox = (function (_super) {
            __extends(MVbox, _super);
            function MVbox() {
                return _super.call(this) || this;
            }
            MVbox.prototype.sortItem = function (items) {
                if (items)
                    items.sort(function (a, b) {
                        return 1;
                    });
            };
            return MVbox;
        }(laya.ui.VBox));
        compont.MVbox = MVbox;
    })(compont = view.compont || (view.compont = {}));
})(view || (view = {}));
//# sourceMappingURL=MVbox.js.map