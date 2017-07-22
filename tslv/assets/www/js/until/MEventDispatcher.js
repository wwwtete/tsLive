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
var until;
(function (until) {
    var MEventDispatcher = (function (_super) {
        __extends(MEventDispatcher, _super);
        function MEventDispatcher() {
            return _super.call(this) || this;
        }
        MEventDispatcher.getInstance = function () {
            if (null == this._instance)
                this._instance = new MEventDispatcher();
            return this._instance;
        };
        return MEventDispatcher;
    }(Laya.EventDispatcher));
    until.MEventDispatcher = MEventDispatcher;
})(until || (until = {}));
//# sourceMappingURL=MEventDispatcher.js.map