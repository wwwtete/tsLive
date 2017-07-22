/**
* name
*/
var manage;
(function (manage) {
    var FocusManage = (function () {
        function FocusManage() {
        }
        FocusManage.prototype.addTextInput = function (arr, viewname, carr, carr1) {
            var i = 0;
            var j = arr.length;
            var t;
            for (i = 0; i < j; i++) {
                t = arr[i];
                t.on(Laya.Event.FOCUS, this, this.doFocus, [t, viewname, carr[i], carr1[i]]);
                t.on(Laya.Event.BLUR, this, this.doBlur, [t, viewname, carr[i], carr1[i]]);
            }
        };
        FocusManage.prototype.doFocus = function (t, viewname, c, c1) {
            // var container = PopViewManager.getInstance().getView(viewname);
            // var dis:number = (t.y - container.height*.5) + t.height*2;
            // if(viewname==PopViewManager.USER_VIEW||viewname==PopViewManager.BAOXIAN_VIEW||viewname==PopViewManager.KEFU_VIEW) dis+=100*LotteryApp.scale;
            // if(dis<t.height) dis = 0
            // container.y =  Laya.stage.height*.5-dis;
            t.color = "#d41157";
            c.index = c1.index = 1;
        };
        FocusManage.prototype.doBlur = function (t, viewname, c, c1) {
            // var container = PopViewManager.getInstance().getView(viewname);
            // container.y =  Laya.stage.height*.5
            t.color = "#666666";
            c.index = c1.index = 0;
        };
        FocusManage.prototype.keepFocus = function (input) {
            var self = this;
            this.canvas.addEventListener("touchstart", function (e) {
                Laya.timer.loop(50, self, self.changeFocus, [input]);
            });
        };
        FocusManage.prototype.changeFocus = function (input) {
            var self = this;
            if (input.focus = false) {
                input.focus = true;
                this.canvas.addEventListener("touchend", function (e) {
                    Laya.timer.clear(self, self.changeFocus);
                });
            }
        };
        FocusManage.getInstance = function () {
            if (null == this._instance)
                this._instance = new FocusManage();
            return this._instance;
        };
        return FocusManage;
    }());
    manage.FocusManage = FocusManage;
})(manage || (manage = {}));
//# sourceMappingURL=FocusManage.js.map