/**
* name
*/
var until;
(function (until) {
    var StringUntil = (function () {
        function StringUntil() {
        }
        StringUntil.moneyTOString = function (n, len, unit, useAdd) {
            if (len === void 0) { len = 2; }
            if (unit === void 0) { unit = ""; }
            if (useAdd === void 0) { useAdd = false; }
            if (isNaN(Number(n)))
                n = 0;
            var type = n < 0 ? "-" : "";
            if (useAdd && type == "")
                type = "+";
            n = Math.abs(n);
            var d = "0";
            var arr = n.toString().split(".");
            if (arr.length > 1) {
                d = String(arr.pop());
            }
            d = Number("." + d).toFixed(len);
            d = d.split(".")[1];
            var s = String(arr.shift());
            var l = s.length;
            while (l > 3) {
                l -= 3;
                arr.unshift(s.substr(l, 3));
            }
            if (l > 0)
                arr.unshift(s.substr(0, l));
            s = type + arr.join(",") + "." + d + unit;
            return s;
        };
        StringUntil.checkEmail = function (str) {
            var emailReg = /^([\w-_]+(?:\.[\w-_]+)*)@((?:[a-z0-9]+(?:-[a-zA-Z0-9]+)*)+\.[a-z]{2,6})$/i;
            return emailReg.test(str);
        };
        return StringUntil;
    }());
    until.StringUntil = StringUntil;
})(until || (until = {}));
//# sourceMappingURL=StringUntil.js.map