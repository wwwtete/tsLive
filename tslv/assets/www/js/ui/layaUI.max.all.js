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
var View = laya.ui.View;
var Dialog = laya.ui.Dialog;
var ui;
(function (ui) {
    var dialog;
    (function (dialog) {
        var TipDialogUI = (function (_super) {
            __extends(TipDialogUI, _super);
            function TipDialogUI() {
                return _super.call(this) || this;
            }
            TipDialogUI.prototype.createChildren = function () {
                _super.prototype.createChildren.call(this);
                this.createView(ui.dialog.TipDialogUI.uiView);
            };
            return TipDialogUI;
        }(Dialog));
        TipDialogUI.uiView = { "type": "Dialog", "props": { "width": 450, "height": 225 }, "child": [{ "type": "Image", "props": { "top": -80, "skin": "gameSkin/back_05.png", "sizeGrid": "120,120,120,120", "right": -88, "left": -88, "bottom": -88 } }, { "type": "Label", "props": { "y": 19, "x": 201, "var": "tip", "text": "提示", "fontSize": 24, "color": "#666666", "centerX": 0 } }, { "type": "Button", "props": { "var": "btn_close", "top": 0, "stateNum": "1", "skin": "gameSkin/btn_16.png", "right": 0 } }, { "type": "Image", "props": { "width": 448, "var": "line", "skin": "gameSkin/back_10.png", "sizeGrid": "0,17,0,17", "centerX": 0, "bottom": 70 } }, { "type": "Button", "props": { "y": 175, "x": 0, "width": 450, "var": "btn", "skin": "loadSkin/btn_03.png", "labelSize": 24, "labelColors": "#666666,#666666,#666666", "label": "确定", "height": 70, "centerX": 0, "bottom": 0 } }, { "type": "Label", "props": { "x": 27, "wordWrap": true, "width": 396, "var": "message", "text": "提示信息", "fontSize": 20, "color": "#666666", "centerY": -20, "centerX": 0, "align": "left" } }] };
        dialog.TipDialogUI = TipDialogUI;
    })(dialog = ui.dialog || (ui.dialog = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var ChangeHeadViewUI = (function (_super) {
            __extends(ChangeHeadViewUI, _super);
            function ChangeHeadViewUI() {
                return _super.call(this) || this;
            }
            ChangeHeadViewUI.prototype.createChildren = function () {
                View.regComponent("view.render.RechargeTitleRender", view.render.RechargeTitleRender);
                _super.prototype.createChildren.call(this);
                this.createView(ui.page.ChangeHeadViewUI.uiView);
            };
            return ChangeHeadViewUI;
        }(View));
        ChangeHeadViewUI.uiView = { "type": "View", "props": { "width": 640, "height": 1136 }, "child": [{ "type": "Image", "props": { "y": 60, "x": 60, "var": "back", "top": 0, "skin": "loadSkin/back_01.jpg", "right": 0, "left": 0, "bottom": 0 } }, { "type": "RechargeTitleRender", "props": { "y": 0, "x": 0, "var": "topView", "runtime": "view.render.RechargeTitleRender" } }, { "type": "Button", "props": { "x": 27.5, "width": 585, "var": "btn_0", "stateNum": "1", "skin": "loadSkin/btn_01.png", "sizeGrid": "15,15,15,15", "labelSize": 24, "labelColors": "#ffffff,#ffffff,#ffffff", "label": "拍照", "height": 64, "centerX": 0, "bottom": 90 } }, { "type": "Button", "props": { "x": 27.5, "width": 585, "var": "btn_1", "stateNum": "1", "skin": "loadSkin/btn_01.png", "sizeGrid": "15,15,15,15", "labelSize": 24, "labelColors": "#ffffff,#ffffff,#ffffff", "label": "从相册中选取", "height": 64, "centerX": 0, "bottom": 10 } }] };
        page.ChangeHeadViewUI = ChangeHeadViewUI;
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var ChangeNickNameViewUI = (function (_super) {
            __extends(ChangeNickNameViewUI, _super);
            function ChangeNickNameViewUI() {
                return _super.call(this) || this;
            }
            ChangeNickNameViewUI.prototype.createChildren = function () {
                View.regComponent("view.render.RechargeTitleRender", view.render.RechargeTitleRender);
                _super.prototype.createChildren.call(this);
                this.createView(ui.page.ChangeNickNameViewUI.uiView);
            };
            return ChangeNickNameViewUI;
        }(View));
        ChangeNickNameViewUI.uiView = { "type": "View", "props": { "width": 640, "height": 1136 }, "child": [{ "type": "Image", "props": { "y": 50, "x": 50, "top": 0, "skin": "loadSkin/back_01.jpg", "right": 0, "left": 0, "bottom": 0 } }, { "type": "RechargeTitleRender", "props": { "var": "topView", "runtime": "view.render.RechargeTitleRender" } }, { "type": "Box", "props": { "var": "box", "top": 140, "right": 0, "left": 0, "height": 66 }, "child": [{ "type": "Image", "props": { "top": 0, "skin": "gameSkin/back_07.png", "sizeGrid": "5,5,5,5", "right": 0, "left": 0, "bottom": 0 } }, { "type": "TextInput", "props": { "y": 8, "var": "textinput_0", "skin": "loadSkin/textinput_01.png", "right": 20, "prompt": "请输入要修改的昵称", "left": 20, "height": 50, "fontSize": 24 } }] }, { "type": "Button", "props": { "y": 247, "x": 170.5, "width": 299, "var": "btn_0", "stateNum": "1", "skin": "loadSkin/btn_01.png", "sizeGrid": "15,15,15,15", "labelSize": 24, "labelColors": "#ffffff,#ffffff,#ffffff", "label": "确认修改", "height": 64, "centerX": 0 } }] };
        page.ChangeNickNameViewUI = ChangeNickNameViewUI;
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var ChangePassWordViewUI = (function (_super) {
            __extends(ChangePassWordViewUI, _super);
            function ChangePassWordViewUI() {
                return _super.call(this) || this;
            }
            ChangePassWordViewUI.prototype.createChildren = function () {
                View.regComponent("view.render.RechargeTitleRender", view.render.RechargeTitleRender);
                _super.prototype.createChildren.call(this);
                this.createView(ui.page.ChangePassWordViewUI.uiView);
            };
            return ChangePassWordViewUI;
        }(View));
        ChangePassWordViewUI.uiView = { "type": "View", "props": { "width": 640, "height": 1136 }, "child": [{ "type": "Image", "props": { "y": 60, "x": 60, "top": 0, "skin": "loadSkin/back_01.jpg", "right": 0, "left": 0, "bottom": 0 } }, { "type": "RechargeTitleRender", "props": { "var": "topView", "runtime": "view.render.RechargeTitleRender" } }, { "type": "Box", "props": { "y": 10, "x": 10, "var": "box_1", "top": 140, "right": 0, "left": 0, "height": 66 }, "child": [{ "type": "Image", "props": { "y": 0, "x": 0, "top": 0, "skin": "gameSkin/back_07.png", "sizeGrid": "5,5,5,5", "right": 0, "left": 0, "bottom": 0 } }, { "type": "TextInput", "props": { "y": 8, "var": "textinput_0", "type": "password", "skin": "loadSkin/textinput_01.png", "right": 20, "restrict": "0-9 a-z A-Z", "prompt": "请输入旧登录密码", "maxChars": 20, "left": 20, "height": 50, "fontSize": 24 } }] }, { "type": "Button", "props": { "y": 380, "x": 170.5, "width": 299, "var": "btn_0", "stateNum": "1", "skin": "loadSkin/btn_01.png", "sizeGrid": "15,15,15,15", "labelSize": 24, "labelColors": "#ffffff,#ffffff,#ffffff", "label": "确认修改", "height": 64, "centerX": 0 } }, { "type": "Box", "props": { "y": 207, "x": 0, "var": "box_2", "top": 207, "right": 0, "left": 0, "height": 66 }, "child": [{ "type": "Image", "props": { "y": 0, "x": 0, "top": 0, "skin": "gameSkin/back_07.png", "sizeGrid": "5,5,5,5", "right": 0, "left": 0, "bottom": 0 } }, { "type": "TextInput", "props": { "y": 8, "var": "textinput_1", "type": "password", "skin": "loadSkin/textinput_01.png", "right": 20, "restrict": "0-9 a-z A-Z", "prompt": "请输入新登录密码", "maxChars": 20, "left": 20, "height": 50, "fontSize": 24 } }] }, { "type": "Box", "props": { "y": 274, "x": 0, "var": "box_3", "top": 274, "right": 0, "left": 0, "height": 66 }, "child": [{ "type": "Image", "props": { "y": -274, "x": 0, "top": 0, "skin": "gameSkin/back_07.png", "sizeGrid": "5,5,5,5", "right": 0, "left": 0, "bottom": 0 } }, { "type": "TextInput", "props": { "y": 8, "var": "textinput_2", "type": "password", "skin": "loadSkin/textinput_01.png", "right": 20, "restrict": "0-9 a-z A-Z", "prompt": "请再次输入新登录密码", "maxChars": 20, "left": 20, "height": 50, "fontSize": 24 } }] }] };
        page.ChangePassWordViewUI = ChangePassWordViewUI;
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var ErrorTipViewUI = (function (_super) {
            __extends(ErrorTipViewUI, _super);
            function ErrorTipViewUI() {
                return _super.call(this) || this;
            }
            ErrorTipViewUI.prototype.createChildren = function () {
                _super.prototype.createChildren.call(this);
                this.createView(ui.page.ErrorTipViewUI.uiView);
            };
            return ErrorTipViewUI;
        }(View));
        ErrorTipViewUI.uiView = { "type": "View", "props": { "width": 640, "height": 80 }, "child": [{ "type": "Image", "props": { "top": 0, "skin": "gameSkin/back_09.png", "sizeGrid": "5,5,5,5", "right": 0, "left": 0, "bottom": 0 } }, { "type": "Label", "props": { "var": "tip", "text": "提示信息", "fontSize": 25, "color": "#f6f6f6", "centerY": 0, "centerX": 0 } }] };
        page.ErrorTipViewUI = ErrorTipViewUI;
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var GongGaoViewUI = (function (_super) {
            __extends(GongGaoViewUI, _super);
            function GongGaoViewUI() {
                return _super.call(this) || this;
            }
            GongGaoViewUI.prototype.createChildren = function () {
                _super.prototype.createChildren.call(this);
                this.createView(ui.page.GongGaoViewUI.uiView);
            };
            return GongGaoViewUI;
        }(View));
        GongGaoViewUI.uiView = { "type": "View", "props": { "width": 640, "height": 80 }, "child": [{ "type": "Image", "props": { "y": 0, "x": 0, "top": 0, "skin": "gameSkin/back_09.png", "sizeGrid": "5,5,5,5", "right": 0, "left": 0, "bottom": 0 } }, { "type": "Label", "props": { "y": 10, "x": 100, "var": "tip", "text": "公告内容", "fontSize": 25, "color": "#f6f6f6", "centerY": 0 } }, { "type": "Image", "props": { "y": 10, "width": 100, "top": 0, "skin": "gameSkin/back_09.png", "sizeGrid": "5,5,5,5", "bottom": 0 } }, { "type": "Image", "props": { "y": 20, "width": 30, "top": 0, "skin": "gameSkin/back_09.png", "sizeGrid": "5,5,5,5", "right": 0, "bottom": 0 } }, { "type": "Label", "props": { "y": 27.5, "x": 20, "text": "公告：", "fontSize": 25, "color": "#f6f6f6", "centerY": 0 } }] };
        page.GongGaoViewUI = GongGaoViewUI;
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var HomeViewUI = (function (_super) {
            __extends(HomeViewUI, _super);
            function HomeViewUI() {
                return _super.call(this) || this;
            }
            HomeViewUI.prototype.createChildren = function () {
                View.regComponent("view.render.HomeTitleRender", view.render.HomeTitleRender);
                View.regComponent("ui.page.render.RoomRenderUI", ui.page.render.RoomRenderUI);
                View.regComponent("ui.page.render.NoAnchorRenderUI", ui.page.render.NoAnchorRenderUI);
                _super.prototype.createChildren.call(this);
                this.createView(ui.page.HomeViewUI.uiView);
            };
            return HomeViewUI;
        }(View));
        HomeViewUI.uiView = { "type": "View", "props": { "width": 640, "height": 1136 }, "child": [{ "type": "Image", "props": { "y": 10, "x": 10, "top": 0, "skin": "loadSkin/back_01.jpg", "right": 0, "left": 0, "bottom": 0 } }, { "type": "HomeTitleRender", "props": { "y": 0, "x": 0, "var": "topView", "runtime": "view.render.HomeTitleRender" } }, { "type": "List", "props": { "x": 0, "width": 640, "var": "list", "top": 90, "spaceY": 10, "bottom": 0 }, "child": [{ "type": "RoomRender", "props": { "renderType": "render", "name": "render", "runtime": "ui.page.render.RoomRenderUI" } }] }, { "type": "NoAnchorRender", "props": { "var": "noanchor", "centerY": -60, "centerX": 0, "runtime": "ui.page.render.NoAnchorRenderUI" } }] };
        page.HomeViewUI = HomeViewUI;
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var IncomeViewUI = (function (_super) {
            __extends(IncomeViewUI, _super);
            function IncomeViewUI() {
                return _super.call(this) || this;
            }
            IncomeViewUI.prototype.createChildren = function () {
                View.regComponent("view.render.RechargeTitleRender", view.render.RechargeTitleRender);
                View.regComponent("ui.page.render.IncomeItemRenderUI", ui.page.render.IncomeItemRenderUI);
                _super.prototype.createChildren.call(this);
                this.createView(ui.page.IncomeViewUI.uiView);
            };
            return IncomeViewUI;
        }(View));
        IncomeViewUI.uiView = { "type": "View", "props": { "width": 640, "height": 1136 }, "child": [{ "type": "Image", "props": { "y": 60, "x": 60, "top": 0, "skin": "loadSkin/back_01.jpg", "right": 0, "left": 0, "bottom": 0 } }, { "type": "RechargeTitleRender", "props": { "var": "topView", "runtime": "view.render.RechargeTitleRender" } }, { "type": "List", "props": { "x": 0, "var": "list", "top": 140, "spaceY": 10 }, "child": [{ "type": "IncomeItemRender", "props": { "renderType": "render", "name": "render", "runtime": "ui.page.render.IncomeItemRenderUI" } }] }] };
        page.IncomeViewUI = IncomeViewUI;
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var LoadingMaskViewUI = (function (_super) {
            __extends(LoadingMaskViewUI, _super);
            function LoadingMaskViewUI() {
                return _super.call(this) || this;
            }
            LoadingMaskViewUI.prototype.createChildren = function () {
                _super.prototype.createChildren.call(this);
                this.createView(ui.page.LoadingMaskViewUI.uiView);
            };
            return LoadingMaskViewUI;
        }(View));
        LoadingMaskViewUI.uiView = { "type": "View", "props": { "width": 640, "height": 1136 }, "child": [{ "type": "Image", "props": { "top": 0, "skin": "gameSkin/back_09.png", "sizeGrid": "5,5,5,5", "right": 0, "left": 0, "bottom": 0, "alpha": 0.5 } }, { "type": "Animation", "props": { "y": 463, "x": 320, "var": "ani", "source": "animation/LoadAni.ani" } }, { "type": "Label", "props": { "y": 537, "x": 296, "var": "tip", "text": "数据加载中", "fontSize": 24, "color": "#ffffff", "centerX": 0 } }] };
        page.LoadingMaskViewUI = LoadingMaskViewUI;
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var LoadingViewUI = (function (_super) {
            __extends(LoadingViewUI, _super);
            function LoadingViewUI() {
                return _super.call(this) || this;
            }
            LoadingViewUI.prototype.createChildren = function () {
                _super.prototype.createChildren.call(this);
                this.createView(ui.page.LoadingViewUI.uiView);
            };
            return LoadingViewUI;
        }(View));
        LoadingViewUI.uiView = { "type": "View", "props": { "width": 640, "height": 1136 }, "child": [{ "type": "Image", "props": { "top": 0, "skin": "loadSkin/back_01.jpg", "right": 0, "left": 0, "bottom": 0 } }, { "type": "Box", "props": { "x": 72, "width": 503, "var": "box", "height": 283, "centerY": -100 }, "child": [{ "type": "Image", "props": { "x": 144, "skin": "loadSkin/logo_01.png" } }, { "type": "Box", "props": { "y": 236, "x": 75.5, "var": "box_label", "centerX": 0 }, "child": [{ "type": "Label", "props": { "y": 2, "x": 2, "var": "anchor_shadow", "text": "资源加载中", "fontSize": 35, "color": "#666666", "bold": true } }, { "type": "Label", "props": { "y": 0, "x": 0, "var": "anchor_name", "text": "资源加载中", "fontSize": 35, "color": "#ffffff", "bold": true } }] }] }] };
        page.LoadingViewUI = LoadingViewUI;
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var LoginViewUI = (function (_super) {
            __extends(LoginViewUI, _super);
            function LoginViewUI() {
                return _super.call(this) || this;
            }
            LoginViewUI.prototype.createChildren = function () {
                _super.prototype.createChildren.call(this);
                this.createView(ui.page.LoginViewUI.uiView);
            };
            return LoginViewUI;
        }(View));
        LoginViewUI.uiView = { "type": "View", "props": { "width": 640, "height": 1136 }, "child": [{ "type": "Image", "props": { "top": 0, "skin": "loadSkin/back_01.jpg", "right": 0, "left": 0, "bottom": 0 } }, { "type": "Image", "props": { "y": 150, "var": "logo", "skin": "loadSkin/logo_01.png", "centerX": 0 } }, { "type": "Label", "props": { "var": "version_label", "text": "v1.3.3", "right": 10, "fontSize": 16, "color": "#bbb4b4", "bottom": 10 } }] };
        page.LoginViewUI = LoginViewUI;
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var PullDownViewUI = (function (_super) {
            __extends(PullDownViewUI, _super);
            function PullDownViewUI() {
                return _super.call(this) || this;
            }
            PullDownViewUI.prototype.createChildren = function () {
                View.regComponent("ui.page.render.PullDownRenderUI", ui.page.render.PullDownRenderUI);
                _super.prototype.createChildren.call(this);
                this.createView(ui.page.PullDownViewUI.uiView);
            };
            return PullDownViewUI;
        }(View));
        PullDownViewUI.uiView = { "type": "View", "props": { "width": 640, "height": 1136 }, "child": [{ "type": "PullDownRender", "props": { "runtime": "ui.page.render.PullDownRenderUI" } }] };
        page.PullDownViewUI = PullDownViewUI;
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var RechargeAmountViewUI = (function (_super) {
            __extends(RechargeAmountViewUI, _super);
            function RechargeAmountViewUI() {
                return _super.call(this) || this;
            }
            RechargeAmountViewUI.prototype.createChildren = function () {
                View.regComponent("view.render.RechargeTitleRender", view.render.RechargeTitleRender);
                View.regComponent("ui.page.render.RechargeListRenderUI", ui.page.render.RechargeListRenderUI);
                _super.prototype.createChildren.call(this);
                this.createView(ui.page.RechargeAmountViewUI.uiView);
            };
            return RechargeAmountViewUI;
        }(View));
        RechargeAmountViewUI.uiView = { "type": "View", "props": { "width": 640, "height": 1136 }, "child": [{ "type": "Image", "props": { "y": 30, "x": 30, "top": 0, "skin": "loadSkin/back_01.jpg", "right": 0, "left": 0, "bottom": 0 } }, { "type": "RechargeTitleRender", "props": { "var": "topView", "runtime": "view.render.RechargeTitleRender" } }, { "type": "List", "props": { "x": 0, "var": "list", "top": 140 }, "child": [{ "type": "RechargeListRender", "props": { "renderType": "render", "name": "render", "runtime": "ui.page.render.RechargeListRenderUI" } }] }, { "type": "Label", "props": { "wordWrap": true, "var": "tip", "text": "充值渠道不稳定，有时会出现无法充值的情况", "right": 40, "left": 40, "leading": 8, "fontSize": 20, "color": "#f30400", "bottom": 120, "align": "center" } }, { "type": "Label", "props": { "x": 40, "wordWrap": true, "var": "tip1", "text": "如果无法充值，请点击人工充值按钮进行人工充值", "right": 40, "left": 40, "leading": 8, "fontSize": 20, "color": "#f30400", "bottom": 85, "align": "center" } }, { "type": "Button", "props": { "x": 102, "width": 444, "var": "btn", "stateNum": "1", "skin": "loadSkin/btn_01.png", "sizeGrid": "13,19,17,19", "labelSize": 25, "labelColors": "#ffffff,#ffffff,#ffffff", "label": "人工充值", "height": 64, "bottom": 15 } }] };
        page.RechargeAmountViewUI = RechargeAmountViewUI;
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var RechargePayAmountUI = (function (_super) {
            __extends(RechargePayAmountUI, _super);
            function RechargePayAmountUI() {
                return _super.call(this) || this;
            }
            RechargePayAmountUI.prototype.createChildren = function () {
                View.regComponent("view.render.RechargeTitleRender", view.render.RechargeTitleRender);
                View.regComponent("ui.page.render.RechargeListRenderUI", ui.page.render.RechargeListRenderUI);
                _super.prototype.createChildren.call(this);
                this.createView(ui.page.RechargePayAmountUI.uiView);
            };
            return RechargePayAmountUI;
        }(View));
        RechargePayAmountUI.uiView = { "type": "View", "props": { "width": 640, "height": 1136 }, "child": [{ "type": "Image", "props": { "y": 40, "x": 40, "top": 0, "skin": "loadSkin/back_01.jpg", "right": 0, "left": 0, "bottom": 0 } }, { "type": "RechargeTitleRender", "props": { "var": "topView", "runtime": "view.render.RechargeTitleRender" } }, { "type": "List", "props": { "x": 0, "var": "list", "top": 140 }, "child": [{ "type": "RechargeListRender", "props": { "renderType": "render", "name": "render", "runtime": "ui.page.render.RechargeListRenderUI" } }] }, { "type": "Label", "props": { "x": 10, "wordWrap": true, "var": "tip", "text": "支付宝充值可以直接跳转到支付宝付款，微信充值需要保存二维码到微信扫一扫内扫描支付，充值页面需要时间加载，加载时请耐心等待最晚延迟2分钟左右会出现二维码", "right": 40, "left": 40, "leading": 8, "fontSize": 20, "color": "#f30400", "bottom": 20, "align": "center" } }] };
        page.RechargePayAmountUI = RechargePayAmountUI;
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var RoomSetViewUI = (function (_super) {
            __extends(RoomSetViewUI, _super);
            function RoomSetViewUI() {
                return _super.call(this) || this;
            }
            RoomSetViewUI.prototype.createChildren = function () {
                _super.prototype.createChildren.call(this);
                this.createView(ui.page.RoomSetViewUI.uiView);
            };
            return RoomSetViewUI;
        }(View));
        RoomSetViewUI.uiView = { "type": "View", "props": { "width": 640, "height": 1136 }, "child": [{ "type": "Image", "props": { "y": 10, "x": 10, "top": 0, "skin": "gameSkin/back_09.png", "sizeGrid": "5,5,5,5", "right": 0, "left": 0, "bottom": 0, "alpha": 0.5 } }, { "type": "Box", "props": { "var": "title_box", "centerY": -50, "centerX": 0 }, "child": [{ "type": "Box", "props": { "width": 500, "height": 72 }, "child": [{ "type": "Clip", "props": { "var": "clip_1", "top": 0, "skin": "loadSkin/clip_03.png", "sizeGrid": "21,23,23,27", "right": 0, "left": 0, "clipY": 2, "bottom": 0 } }, { "type": "TextInput", "props": { "var": "textinput_0", "type": "text", "skin": "loadSkin/textinput_01.png", "sizeGrid": "30,30,30,30", "right": 0, "prompt": "请输入直播标题", "maxChars": 20, "left": 0, "height": 30, "fontSize": 24, "color": "#666666", "centerY": 0, "align": "center" } }] }, { "type": "Button", "props": { "y": 120, "x": 0, "width": 500, "var": "btn_0", "stateNum": "1", "skin": "loadSkin/btn_01.png", "sizeGrid": "15,15,13,15", "labelSize": 24, "labelColors": "#cccccc,#cccccc,#cccccc", "label": "开始直播", "height": 64 } }] }, { "type": "Button", "props": { "y": 13, "x": 557, "var": "btn_close", "stateNum": "1", "skin": "gameSkin/btn_09.png" } }, { "type": "Box", "props": { "y": 10, "x": 10, "var": "set_box", "centerY": -50, "centerX": 0 }, "child": [{ "type": "Button", "props": { "y": 120, "x": 0, "width": 500, "var": "btn_02", "stateNum": "1", "skin": "loadSkin/btn_01.png", "sizeGrid": "15,15,13,15", "labelSize": 24, "labelColors": "#cccccc,#cccccc,#cccccc", "label": "将房间设置为私密房间", "height": 64 } }, { "type": "Button", "props": { "y": 3, "x": 0, "width": 228, "var": "btn_03", "stateNum": "1", "skin": "loadSkin/btn_02.png", "sizeGrid": "15,15,13,15", "labelSize": 24, "labelColors": "#cccccc,#cccccc,#cccccc", "label": "私密房间", "height": 64 } }, { "type": "Button", "props": { "y": 3, "x": 271, "width": 228, "var": "btn_04", "stateNum": "1", "skin": "loadSkin/btn_01.png", "sizeGrid": "15,15,13,15", "labelSize": 24, "labelColors": "#cccccc,#cccccc,#cccccc", "label": "公开房间", "height": 64 } }] }] };
        page.RoomSetViewUI = RoomSetViewUI;
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var RoomViewUI = (function (_super) {
            __extends(RoomViewUI, _super);
            function RoomViewUI() {
                return _super.call(this) || this;
            }
            RoomViewUI.prototype.createChildren = function () {
                View.regComponent("view.render.RoomTitleRender", view.render.RoomTitleRender);
                _super.prototype.createChildren.call(this);
                this.createView(ui.page.RoomViewUI.uiView);
            };
            return RoomViewUI;
        }(View));
        RoomViewUI.uiView = { "type": "View", "props": { "width": 640, "height": 1136 }, "child": [{ "type": "Image", "props": { "y": 30, "x": 30, "var": "background", "top": 0, "skin": "loadSkin/back_01.jpg", "right": 0, "left": 0, "bottom": 0 } }, { "type": "RoomTitleRender", "props": { "y": 0, "x": 0, "var": "topView", "runtime": "view.render.RoomTitleRender" } }] };
        page.RoomViewUI = RoomViewUI;
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var SetViewUI = (function (_super) {
            __extends(SetViewUI, _super);
            function SetViewUI() {
                return _super.call(this) || this;
            }
            SetViewUI.prototype.createChildren = function () {
                View.regComponent("view.render.SetTitleRender", view.render.SetTitleRender);
                View.regComponent("ui.page.render.SetListItemRenderUI", ui.page.render.SetListItemRenderUI);
                _super.prototype.createChildren.call(this);
                this.createView(ui.page.SetViewUI.uiView);
            };
            return SetViewUI;
        }(View));
        SetViewUI.uiView = { "type": "View", "props": { "width": 640, "height": 1136 }, "child": [{ "type": "Image", "props": { "y": 20, "x": 20, "top": 0, "skin": "loadSkin/back_01.jpg", "right": 0, "left": 0, "bottom": 0 } }, { "type": "SetTitleRender", "props": { "var": "topView", "runtime": "view.render.SetTitleRender" } }, { "type": "List", "props": { "x": 0, "width": 640, "var": "list_1", "top": 340, "repeatY": 1 }, "child": [{ "type": "SetListItemRender", "props": { "renderType": "render", "name": "render", "runtime": "ui.page.render.SetListItemRenderUI" } }] }, { "type": "List", "props": { "y": 426, "x": 0, "width": 640, "var": "list_2", "top": 426, "repeatY": 2 }, "child": [{ "type": "SetListItemRender", "props": { "renderType": "render", "name": "render", "runtime": "ui.page.render.SetListItemRenderUI" } }] }, { "type": "List", "props": { "y": 578, "x": 0, "width": 640, "var": "list_3", "top": 578 }, "child": [{ "type": "SetListItemRender", "props": { "renderType": "render", "name": "render", "runtime": "ui.page.render.SetListItemRenderUI" } }] }] };
        page.SetViewUI = SetViewUI;
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var UpDataViewUI = (function (_super) {
            __extends(UpDataViewUI, _super);
            function UpDataViewUI() {
                return _super.call(this) || this;
            }
            UpDataViewUI.prototype.createChildren = function () {
                _super.prototype.createChildren.call(this);
                this.createView(ui.page.UpDataViewUI.uiView);
            };
            return UpDataViewUI;
        }(View));
        UpDataViewUI.uiView = { "type": "View", "props": { "width": 640, "height": 1136 }, "child": [{ "type": "Image", "props": { "y": 10, "x": 10, "top": 0, "skin": "loadSkin/back_01.jpg", "right": 0, "left": 0, "bottom": 0 } }, { "type": "Box", "props": { "y": 292, "x": 82, "width": 503, "var": "box", "height": 353, "centerY": -100 }, "child": [{ "type": "Image", "props": { "x": 144, "skin": "loadSkin/logo_01.png" } }, { "type": "Box", "props": { "y": 236, "x": 163, "var": "box_label", "centerX": 0 }, "child": [{ "type": "Label", "props": { "y": 2, "x": 2, "var": "anchor_shadow", "text": "版本检测中", "fontSize": 25, "color": "#666666", "bold": true } }, { "type": "Label", "props": { "y": 0, "x": 0, "var": "anchor_name", "text": "版本检测中", "fontSize": 25, "color": "#ffffff", "bold": true } }] }, { "type": "Button", "props": { "y": 285, "x": 110.5, "width": 282, "var": "btn", "stateNum": "1", "skin": "loadSkin/btn_01.png", "sizeGrid": "12,15,14,19", "labelSize": 30, "labelColors": "#ffffff,#ffffff,#ffffff", "label": "前往下载", "height": 64, "centerX": 0 } }] }] };
        page.UpDataViewUI = UpDataViewUI;
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var WeiHuViewUI = (function (_super) {
            __extends(WeiHuViewUI, _super);
            function WeiHuViewUI() {
                return _super.call(this) || this;
            }
            WeiHuViewUI.prototype.createChildren = function () {
                _super.prototype.createChildren.call(this);
                this.createView(ui.page.WeiHuViewUI.uiView);
            };
            return WeiHuViewUI;
        }(View));
        WeiHuViewUI.uiView = { "type": "View", "props": { "width": 640, "height": 1136 }, "child": [{ "type": "Image", "props": { "y": 10, "x": 10, "top": 0, "skin": "loadSkin/back_01.jpg", "right": 0, "left": 0, "bottom": 0 } }, { "type": "Box", "props": { "y": 309, "x": 82, "width": 503, "var": "box", "height": 318, "centerY": -100 }, "child": [{ "type": "Image", "props": { "x": 144, "skin": "loadSkin/logo_01.png" } }, { "type": "Box", "props": { "y": 236, "x": 75.5, "var": "box_label", "centerX": 0 }, "child": [{ "type": "Label", "props": { "y": 2, "x": 2, "text": "系统维护中", "fontSize": 35, "color": "#666666", "bold": true } }, { "type": "Label", "props": { "y": 0, "x": 0, "text": "系统维护中", "fontSize": 35, "color": "#ffffff", "bold": true } }] }, { "type": "Box", "props": { "y": 286, "x": 97.6923828125, "var": "box_label_1", "centerX": 0 }, "child": [{ "type": "Label", "props": { "y": 2, "x": 2, "var": "label_shadow", "text": "预计维护完成时间：13：00", "fontSize": 25, "color": "#666666", "bold": true } }, { "type": "Label", "props": { "y": 0, "x": 0, "var": "label_time", "text": "预计维护完成时间：13：00", "fontSize": 25, "color": "#ffffff", "bold": true } }] }] }] };
        page.WeiHuViewUI = WeiHuViewUI;
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var render;
        (function (render) {
            var AvatarRenderUI = (function (_super) {
                __extends(AvatarRenderUI, _super);
                function AvatarRenderUI() {
                    return _super.call(this) || this;
                }
                AvatarRenderUI.prototype.createChildren = function () {
                    _super.prototype.createChildren.call(this);
                    this.createView(ui.page.render.AvatarRenderUI.uiView);
                };
                return AvatarRenderUI;
            }(View));
            AvatarRenderUI.uiView = { "type": "View", "props": { "width": 120, "height": 120 }, "child": [{ "type": "Image", "props": { "var": "back", "top": 0, "skin": "anchorSource/avatar_01.png", "right": 0, "left": 0, "bottom": 0 } }] };
            render.AvatarRenderUI = AvatarRenderUI;
        })(render = page.render || (page.render = {}));
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var render;
        (function (render) {
            var ChangePsdRenderUI = (function (_super) {
                __extends(ChangePsdRenderUI, _super);
                function ChangePsdRenderUI() {
                    return _super.call(this) || this;
                }
                ChangePsdRenderUI.prototype.createChildren = function () {
                    _super.prototype.createChildren.call(this);
                    this.createView(ui.page.render.ChangePsdRenderUI.uiView);
                };
                return ChangePsdRenderUI;
            }(View));
            ChangePsdRenderUI.uiView = { "type": "View", "props": { "width": 360, "height": 420 }, "child": [{ "type": "Button", "props": { "y": 282, "x": 66, "width": 228, "var": "btn_0", "stateNum": "1", "skin": "loadSkin/btn_01.png", "sizeGrid": "15,15,13,15", "labelSize": 24, "labelColors": "#cccccc,#cccccc,#cccccc", "label": "修改密码", "height": 64, "centerX": 0 } }, { "type": "HBox", "props": { "y": 366, "x": 104.5, "space": 5, "centerX": 0, "align": "middle" }, "child": [{ "type": "Button", "props": { "y": 1, "width": 151, "var": "btn_1", "stateNum": "1", "skin": "loadSkin/btn_02.png", "sizeGrid": "14,12,16,11", "labelSize": 20, "label": "重新输入邮箱", "height": 47 } }] }, { "type": "Box", "props": { "y": 0, "x": 153, "right": 0, "left": 0, "height": 72 }, "child": [{ "type": "Clip", "props": { "var": "clip_1", "top": 0, "skin": "loadSkin/clip_03.png", "sizeGrid": "21,23,23,27", "right": 0, "left": 0, "clipY": 2, "bottom": 0 } }, { "type": "TextInput", "props": { "x": 62, "width": 278, "var": "textinput_0", "type": "email", "skin": "loadSkin/textinput_01.png", "sizeGrid": "30,30,30,30", "restrict": "0-9", "prompt": "请输入验证码", "maxChars": 5, "height": 45, "fontSize": 24, "color": "#666666", "centerY": 0 } }, { "type": "Clip", "props": { "var": "clip_0", "skin": "loadSkin/clip_02.png", "left": 10, "index": 0, "clipY": 2, "centerY": 0 } }] }, { "type": "Box", "props": { "y": 92, "x": 269, "right": 0, "left": 0, "height": 72 }, "child": [{ "type": "Clip", "props": { "var": "clip_3", "top": 0, "skin": "loadSkin/clip_03.png", "sizeGrid": "21,23,23,27", "right": 0, "left": 0, "clipY": 2, "bottom": 0 } }, { "type": "TextInput", "props": { "x": 62, "width": 278, "var": "textinput_1", "type": "password", "skin": "loadSkin/textinput_01.png", "sizeGrid": "30,30,30,30", "prompt": "请输入新密码", "maxChars": 20, "height": 45, "fontSize": 24, "color": "#666666", "centerY": 0 } }, { "type": "Clip", "props": { "var": "clip_2", "skin": "loadSkin/clip_02.png", "left": 10, "index": 0, "clipY": 2, "centerY": 0 } }] }, { "type": "Box", "props": { "y": 183, "x": 176, "right": 0, "left": 0, "height": 72 }, "child": [{ "type": "Clip", "props": { "var": "clip_5", "top": 0, "skin": "loadSkin/clip_03.png", "sizeGrid": "21,23,23,27", "right": 0, "left": 0, "clipY": 2, "bottom": 0 } }, { "type": "TextInput", "props": { "x": 62, "width": 278, "var": "textinput_2", "type": "password", "skin": "loadSkin/textinput_01.png", "sizeGrid": "30,30,30,30", "prompt": "请再次输入新密码", "maxChars": 20, "height": 45, "fontSize": 24, "color": "#666666", "centerY": 0 } }, { "type": "Clip", "props": { "var": "clip_4", "skin": "loadSkin/clip_02.png", "left": 10, "index": 0, "clipY": 2, "centerY": 0 } }] }] };
            render.ChangePsdRenderUI = ChangePsdRenderUI;
        })(render = page.render || (page.render = {}));
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var render;
        (function (render) {
            var ChatListRenderUI = (function (_super) {
                __extends(ChatListRenderUI, _super);
                function ChatListRenderUI() {
                    return _super.call(this) || this;
                }
                ChatListRenderUI.prototype.createChildren = function () {
                    _super.prototype.createChildren.call(this);
                    this.createView(ui.page.render.ChatListRenderUI.uiView);
                };
                return ChatListRenderUI;
            }(View));
            ChatListRenderUI.uiView = { "type": "View", "props": { "width": 640, "height": 350 }, "child": [{ "type": "Button", "props": { "width": 150, "var": "btn_hide", "stateNum": "1", "skin": "gameSkin/btn_08.png", "sizeGrid": "13,16,14,18", "right": 10, "labelSize": 25, "labelColors": "#ffffff,#ffffff,#ffffff", "label": "隐藏聊天", "height": 50, "bottom": 10 } }] };
            render.ChatListRenderUI = ChatListRenderUI;
        })(render = page.render || (page.render = {}));
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var render;
        (function (render) {
            var GiftItemRenderUI = (function (_super) {
                __extends(GiftItemRenderUI, _super);
                function GiftItemRenderUI() {
                    return _super.call(this) || this;
                }
                GiftItemRenderUI.prototype.createChildren = function () {
                    _super.prototype.createChildren.call(this);
                    this.createView(ui.page.render.GiftItemRenderUI.uiView);
                };
                return GiftItemRenderUI;
            }(View));
            GiftItemRenderUI.uiView = { "type": "View", "props": { "width": 160, "height": 160 }, "child": [{ "type": "Image", "props": { "var": "back", "top": 0, "skin": "gameSkin/back_09.png", "sizeGrid": "5,8,5,5", "right": 0, "left": 0, "bottom": 0, "alpha": 0.7 } }, { "type": "Image", "props": { "y": 6, "width": 80, "var": "gift_pic", "skin": "gift/gift_10001.png", "mouseEnabled": false, "height": 80, "centerX": 0 } }, { "type": "Label", "props": { "y": 92, "x": 41, "var": "tip_0", "text": "玫瑰花", "mouseEnabled": false, "fontSize": 26, "color": "#ffffff", "centerX": 0 } }, { "type": "Label", "props": { "y": 127, "x": 31, "var": "tip_1", "text": "10金币 / 个", "mouseEnabled": false, "fontSize": 20, "color": "#ffffff", "centerX": 0 } }] };
            render.GiftItemRenderUI = GiftItemRenderUI;
        })(render = page.render || (page.render = {}));
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var render;
        (function (render) {
            var HomeTitleRenderUI = (function (_super) {
                __extends(HomeTitleRenderUI, _super);
                function HomeTitleRenderUI() {
                    return _super.call(this) || this;
                }
                HomeTitleRenderUI.prototype.createChildren = function () {
                    _super.prototype.createChildren.call(this);
                    this.createView(ui.page.render.HomeTitleRenderUI.uiView);
                };
                return HomeTitleRenderUI;
            }(View));
            HomeTitleRenderUI.uiView = { "type": "View", "props": { "width": 640, "height": 80 }, "child": [{ "type": "Image", "props": { "top": 0, "skin": "gameSkin/back_06.png", "sizeGrid": "5,5,5,5", "right": 0, "left": 0, "bottom": 0 } }, { "type": "Button", "props": { "y": 0, "x": 0, "width": 143, "var": "btn_live", "stateNum": "1", "skin": "gameSkin/btn_01.png", "sizeGrid": "0,0,0,65", "labelSize": 24, "labelColors": "#ffffff,#ffffff,#ffffff", "labelAlign": "right", "label": "开秀了", "height": 80 } }, { "type": "Button", "props": { "y": 0, "x": 560, "var": "btn_set", "stateNum": "1", "skin": "gameSkin/btn_02.png" } }, { "type": "Button", "props": { "y": 7, "width": 130, "toggle": true, "stateNum": "1", "skin": "loadSkin/btn_03.png", "sizeGrid": "14,12,16,11", "selected": true, "labelSize": 24, "labelColors": "#dddddd,#dddddd,#ffffff", "label": "直播大厅", "height": 47, "centerY": 0, "centerX": 0 } }] };
            render.HomeTitleRenderUI = HomeTitleRenderUI;
        })(render = page.render || (page.render = {}));
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var render;
        (function (render) {
            var IncomeItemRenderUI = (function (_super) {
                __extends(IncomeItemRenderUI, _super);
                function IncomeItemRenderUI() {
                    return _super.call(this) || this;
                }
                IncomeItemRenderUI.prototype.createChildren = function () {
                    _super.prototype.createChildren.call(this);
                    this.createView(ui.page.render.IncomeItemRenderUI.uiView);
                };
                return IncomeItemRenderUI;
            }(View));
            IncomeItemRenderUI.uiView = { "type": "View", "props": { "width": 640, "height": 120 }, "child": [{ "type": "Image", "props": { "top": 0, "skin": "gameSkin/back_07.png", "sizeGrid": "5,5,5,5", "right": 0, "left": 0, "bottom": 1 } }, { "type": "Label", "props": { "y": 26, "x": 40, "var": "tip_1", "text": "本日收益：", "fontSize": 25, "color": "#4f4f4f" } }, { "type": "Label", "props": { "y": 48, "x": 500, "var": "tip_3", "text": "房间收益：", "right": 40, "fontSize": 20, "color": "#aaaaaa" } }, { "type": "Label", "props": { "y": 86, "x": 500, "var": "tip_4", "text": "礼物收益：", "right": 40, "fontSize": 20, "color": "#aaaaaa" } }, { "type": "Label", "props": { "y": 26, "x": 151, "var": "tip_5", "text": "1000钻石", "fontSize": 24, "color": "#ea5351" } }, { "type": "Label", "props": { "y": 71, "x": 40, "var": "tip_6", "text": "N月N日 - N月N日", "fontSize": 20, "color": "#aaaaaa" } }, { "type": "Label", "props": { "y": 11, "x": 500, "var": "tip_2", "text": "直播时长：", "right": 40, "fontSize": 20, "color": "#aaaaaa" } }] };
            render.IncomeItemRenderUI = IncomeItemRenderUI;
        })(render = page.render || (page.render = {}));
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var render;
        (function (render) {
            var LiveRoomRenderUI = (function (_super) {
                __extends(LiveRoomRenderUI, _super);
                function LiveRoomRenderUI() {
                    return _super.call(this) || this;
                }
                LiveRoomRenderUI.prototype.createChildren = function () {
                    _super.prototype.createChildren.call(this);
                    this.createView(ui.page.render.LiveRoomRenderUI.uiView);
                };
                return LiveRoomRenderUI;
            }(View));
            LiveRoomRenderUI.uiView = { "type": "View", "props": { "width": 640, "height": 430 }, "child": [{ "type": "Image", "props": { "top": 0, "skin": "gameSkin/back_07.png", "sizeGrid": "5,5,5,5", "right": 0, "left": 0, "bottom": 0 } }] };
            render.LiveRoomRenderUI = LiveRoomRenderUI;
        })(render = page.render || (page.render = {}));
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var render;
        (function (render) {
            var LockRenderUI = (function (_super) {
                __extends(LockRenderUI, _super);
                function LockRenderUI() {
                    return _super.call(this) || this;
                }
                LockRenderUI.prototype.createChildren = function () {
                    _super.prototype.createChildren.call(this);
                    this.createView(ui.page.render.LockRenderUI.uiView);
                };
                return LockRenderUI;
            }(View));
            LockRenderUI.uiView = { "type": "View", "props": { "width": 360, "height": 170 }, "child": [{ "type": "Button", "props": { "y": 103, "x": 222, "width": 228, "var": "btn_0", "stateNum": "1", "skin": "loadSkin/btn_01.png", "sizeGrid": "15,15,13,15", "labelSize": 24, "labelColors": "#cccccc,#cccccc,#cccccc", "label": "进入", "height": 64, "centerX": 0 } }, { "type": "Box", "props": { "y": 0, "x": 156, "right": 0, "left": 0, "height": 72 }, "child": [{ "type": "Clip", "props": { "var": "clip_1", "top": 0, "skin": "loadSkin/clip_03.png", "sizeGrid": "21,23,23,27", "right": 0, "left": 0, "clipY": 2, "bottom": 0 } }, { "type": "TextInput", "props": { "x": 62, "width": 278, "var": "textinput_0", "type": "password", "skin": "loadSkin/textinput_01.png", "sizeGrid": "30,30,30,30", "prompt": "请输入登录密码", "maxChars": 20, "height": 45, "fontSize": 24, "color": "#666666", "centerY": 0 } }, { "type": "Clip", "props": { "var": "clip_0", "skin": "loadSkin/clip_02.png", "left": 10, "index": 0, "clipY": 2, "centerY": 0 } }] }] };
            render.LockRenderUI = LockRenderUI;
        })(render = page.render || (page.render = {}));
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var render;
        (function (render) {
            var LoginRenderUI = (function (_super) {
                __extends(LoginRenderUI, _super);
                function LoginRenderUI() {
                    return _super.call(this) || this;
                }
                LoginRenderUI.prototype.createChildren = function () {
                    _super.prototype.createChildren.call(this);
                    this.createView(ui.page.render.LoginRenderUI.uiView);
                };
                return LoginRenderUI;
            }(View));
            LoginRenderUI.uiView = { "type": "View", "props": { "width": 360, "height": 330 }, "child": [{ "type": "Button", "props": { "y": 194, "x": 335, "width": 228, "var": "btn_0", "stateNum": "1", "skin": "loadSkin/btn_01.png", "sizeGrid": "15,15,13,15", "labelSize": 24, "labelColors": "#cccccc,#cccccc,#cccccc", "label": "登录", "height": 64, "centerX": 0 } }, { "type": "HBox", "props": { "y": 278, "x": 345, "space": 5, "centerX": 0, "align": "middle" }, "child": [{ "type": "Button", "props": { "y": 1, "width": 110, "var": "btn_1", "stateNum": "1", "skin": "loadSkin/btn_02.png", "sizeGrid": "14,12,16,11", "labelSize": 20, "label": "注册账户", "height": 47 } }, { "type": "Image", "props": { "y": 15, "x": 119, "skin": "loadSkin/back_02.png" } }, { "type": "Button", "props": { "x": 129, "width": 80, "var": "btn_2", "stateNum": "1", "skin": "loadSkin/btn_03.png", "sizeGrid": "14,12,16,11", "labelSize": 20, "label": "找回密码", "height": 47 } }] }, { "type": "Box", "props": { "y": 0, "x": 269, "right": 0, "left": 0, "height": 72 }, "child": [{ "type": "Clip", "props": { "var": "clip_1", "top": 0, "skin": "loadSkin/clip_03.png", "sizeGrid": "21,23,23,27", "right": 0, "left": 0, "clipY": 2, "bottom": 0 } }, { "type": "TextInput", "props": { "x": 62, "width": 278, "var": "textinput_0", "type": "email", "skin": "loadSkin/textinput_01.png", "sizeGrid": "30,30,30,30", "prompt": "请输入邮箱地址", "maxChars": 30, "height": 45, "fontSize": 24, "color": "#666666", "centerY": 0 } }, { "type": "Clip", "props": { "var": "clip_0", "skin": "loadSkin/clip_01.png", "left": 10, "index": 0, "clipY": 2, "centerY": 0 } }] }, { "type": "Box", "props": { "y": 92, "x": 269, "right": 0, "left": 0, "height": 72 }, "child": [{ "type": "Clip", "props": { "var": "clip_3", "top": 0, "skin": "loadSkin/clip_03.png", "sizeGrid": "21,23,23,27", "right": 0, "left": 0, "clipY": 2, "bottom": 0 } }, { "type": "TextInput", "props": { "x": 62, "width": 278, "var": "textinput_1", "type": "password", "skin": "loadSkin/textinput_01.png", "sizeGrid": "30,30,30,30", "prompt": "请输入登录密码", "maxChars": 20, "height": 45, "fontSize": 24, "color": "#666666", "centerY": 0 } }, { "type": "Clip", "props": { "var": "clip_2", "skin": "loadSkin/clip_02.png", "left": 10, "index": 0, "clipY": 2, "centerY": 0 } }] }] };
            render.LoginRenderUI = LoginRenderUI;
        })(render = page.render || (page.render = {}));
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var render;
        (function (render) {
            var NoAnchorRenderUI = (function (_super) {
                __extends(NoAnchorRenderUI, _super);
                function NoAnchorRenderUI() {
                    return _super.call(this) || this;
                }
                NoAnchorRenderUI.prototype.createChildren = function () {
                    _super.prototype.createChildren.call(this);
                    this.createView(ui.page.render.NoAnchorRenderUI.uiView);
                };
                return NoAnchorRenderUI;
            }(View));
            NoAnchorRenderUI.uiView = { "type": "View", "props": { "width": 640, "height": 350 }, "child": [{ "type": "Image", "props": { "y": 0, "x": 206, "skin": "loadSkin/logo_01.png" } }, { "type": "Box", "props": { "y": 246, "centerX": 0 }, "child": [{ "type": "Label", "props": { "y": 2, "x": 2, "var": "anchor_shadow", "text": "当前没有在线主播", "fontSize": 30, "color": "#666666", "bold": true } }, { "type": "Label", "props": { "y": 0, "x": 0, "var": "anchor_name", "text": "当前没有在线主播", "fontSize": 30, "color": "#ffffff", "bold": true } }] }, { "type": "Box", "props": { "y": 286, "x": 179.0078125, "centerX": 0 }, "child": [{ "type": "Label", "props": { "y": 2, "x": 2, "text": "(每天早上8点-次日凌晨5点，敬请期待)", "fontSize": 24, "color": "#666666", "bold": true } }, { "type": "Label", "props": { "y": 0, "x": 0, "text": "(每天早上8点-次日凌晨5点，敬请期待)", "fontSize": 24, "color": "#ffffff", "bold": true } }] }, { "type": "Box", "props": { "y": 324, "x": 151.216796875, "centerX": 0 }, "child": [{ "type": "Label", "props": { "y": 2, "x": 2, "text": "(如有特殊情况，会临时延后开播时间)", "fontSize": 20, "color": "#666666", "bold": true } }, { "type": "Label", "props": { "y": 0, "x": 0, "text": "(如有特殊情况，会临时延后开播时间)", "fontSize": 20, "color": "#ffffff", "bold": true } }] }] };
            render.NoAnchorRenderUI = NoAnchorRenderUI;
        })(render = page.render || (page.render = {}));
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var render;
        (function (render) {
            var PullDownRenderUI = (function (_super) {
                __extends(PullDownRenderUI, _super);
                function PullDownRenderUI() {
                    return _super.call(this) || this;
                }
                PullDownRenderUI.prototype.createChildren = function () {
                    _super.prototype.createChildren.call(this);
                    this.createView(ui.page.render.PullDownRenderUI.uiView);
                };
                return PullDownRenderUI;
            }(View));
            PullDownRenderUI.uiView = { "type": "View", "props": { "width": 640, "height": 80 }, "child": [{ "type": "Box", "props": { "var": "box", "centerY": 0, "centerX": 0 }, "child": [{ "type": "Animation", "props": { "y": 12.20760121561434, "x": 12.207601215614318, "var": "ani_1", "source": "animation/PullLoadAni.ani" } }, { "type": "Label", "props": { "y": 4.207601215614339, "x": 35.20760121561432, "var": "tip", "text": "下拉刷新", "fontSize": 16, "color": "#999999" } }, { "type": "Image", "props": { "y": 8.20760121561434, "x": 2.207601215614318, "var": "ani_0", "skin": "gameSkin/back_03.png" } }] }] };
            render.PullDownRenderUI = PullDownRenderUI;
        })(render = page.render || (page.render = {}));
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var render;
        (function (render) {
            var PullUpRenderUI = (function (_super) {
                __extends(PullUpRenderUI, _super);
                function PullUpRenderUI() {
                    return _super.call(this) || this;
                }
                PullUpRenderUI.prototype.createChildren = function () {
                    _super.prototype.createChildren.call(this);
                    this.createView(ui.page.render.PullUpRenderUI.uiView);
                };
                return PullUpRenderUI;
            }(View));
            PullUpRenderUI.uiView = { "type": "View", "props": { "width": 640, "height": 50 }, "child": [{ "type": "Box", "props": { "x": 10, "centerY": 0, "centerX": 0 }, "child": [{ "type": "Label", "props": { "var": "tip", "text": "点击加载更多...", "fontSize": 16, "color": "#999999" } }] }] };
            render.PullUpRenderUI = PullUpRenderUI;
        })(render = page.render || (page.render = {}));
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var render;
        (function (render) {
            var QuiteTipRenderUI = (function (_super) {
                __extends(QuiteTipRenderUI, _super);
                function QuiteTipRenderUI() {
                    return _super.call(this) || this;
                }
                QuiteTipRenderUI.prototype.createChildren = function () {
                    _super.prototype.createChildren.call(this);
                    this.createView(ui.page.render.QuiteTipRenderUI.uiView);
                };
                return QuiteTipRenderUI;
            }(View));
            QuiteTipRenderUI.uiView = { "type": "View", "props": { "width": 300, "height": 300 }, "child": [{ "type": "Image", "props": { "top": 0, "skin": "gameSkin/back_11.png", "sizeGrid": "45,45,45,45", "right": 0, "left": 0, "bottom": 0, "alpha": 0.8 } }, { "type": "Label", "props": { "x": 54, "text": "再按一次返回桌面", "fontSize": 24, "color": "#ffffff", "centerY": 0, "centerX": 0 } }] };
            render.QuiteTipRenderUI = QuiteTipRenderUI;
        })(render = page.render || (page.render = {}));
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var render;
        (function (render) {
            var RechargeListRenderUI = (function (_super) {
                __extends(RechargeListRenderUI, _super);
                function RechargeListRenderUI() {
                    return _super.call(this) || this;
                }
                RechargeListRenderUI.prototype.createChildren = function () {
                    _super.prototype.createChildren.call(this);
                    this.createView(ui.page.render.RechargeListRenderUI.uiView);
                };
                return RechargeListRenderUI;
            }(View));
            RechargeListRenderUI.uiView = { "type": "View", "props": { "width": 640, "height": 66 }, "child": [{ "type": "Image", "props": { "var": "back_0", "top": 0, "skin": "gameSkin/back_07.png", "sizeGrid": "5,5,5,5", "right": 0, "left": 0, "bottom": 1 } }, { "type": "Image", "props": { "y": 10, "x": 10, "var": "icon_0", "skin": "gameSkin/icon_arror.png", "right": 0, "centerY": -1 } }, { "type": "Label", "props": { "y": 20, "x": 25, "var": "tip_0", "text": "500金币", "fontSize": 24, "color": "#333333", "centerY": -1 } }, { "type": "Label", "props": { "y": 20, "var": "tip_1", "text": "50元", "right": 60, "fontSize": 20, "color": "#999999", "centerY": -1 } }] };
            render.RechargeListRenderUI = RechargeListRenderUI;
        })(render = page.render || (page.render = {}));
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var render;
        (function (render) {
            var RechargeTitleRenderUI = (function (_super) {
                __extends(RechargeTitleRenderUI, _super);
                function RechargeTitleRenderUI() {
                    return _super.call(this) || this;
                }
                RechargeTitleRenderUI.prototype.createChildren = function () {
                    _super.prototype.createChildren.call(this);
                    this.createView(ui.page.render.RechargeTitleRenderUI.uiView);
                };
                return RechargeTitleRenderUI;
            }(View));
            RechargeTitleRenderUI.uiView = { "type": "View", "props": { "width": 640, "height": 120 }, "child": [{ "type": "Image", "props": { "top": 0, "skin": "gameSkin/back_06.png", "sizeGrid": "5,5,5,5", "right": 0, "left": 0, "bottom": 0 } }, { "type": "Button", "props": { "y": 10, "x": 10, "var": "btn_return", "stateNum": "1", "skin": "gameSkin/btn_03.png" } }, { "type": "Label", "props": { "y": 37, "x": 258, "var": "tip_1", "text": "充值", "fontSize": 24, "color": "#ffffff", "centerX": 0 } }, { "type": "Label", "props": { "y": 87, "x": 272, "var": "tip_2", "text": "请选择充值金额", "fontSize": 16, "color": "#cccccc", "centerX": 0 } }] };
            render.RechargeTitleRenderUI = RechargeTitleRenderUI;
        })(render = page.render || (page.render = {}));
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var render;
        (function (render) {
            var ResetRenderUI = (function (_super) {
                __extends(ResetRenderUI, _super);
                function ResetRenderUI() {
                    return _super.call(this) || this;
                }
                ResetRenderUI.prototype.createChildren = function () {
                    _super.prototype.createChildren.call(this);
                    this.createView(ui.page.render.ResetRenderUI.uiView);
                };
                return ResetRenderUI;
            }(View));
            ResetRenderUI.uiView = { "type": "View", "props": { "width": 360, "height": 240 }, "child": [{ "type": "Button", "props": { "y": 102, "x": 209, "width": 228, "var": "btn_0", "stateNum": "1", "skin": "loadSkin/btn_01.png", "sizeGrid": "15,15,13,15", "labelSize": 24, "labelColors": "#cccccc,#cccccc,#cccccc", "label": "发送验证码", "height": 64, "centerX": 0 } }, { "type": "HBox", "props": { "y": 186, "x": 198, "space": 5, "centerX": 0, "align": "middle" }, "child": [{ "type": "Button", "props": { "y": 1, "width": 151, "var": "btn_1", "stateNum": "1", "skin": "loadSkin/btn_02.png", "sizeGrid": "14,12,16,11", "labelSize": 20, "label": "使用已有账户", "height": 47 } }] }, { "type": "Box", "props": { "y": 0, "x": 153, "right": 0, "left": 0, "height": 72 }, "child": [{ "type": "Clip", "props": { "var": "clip_1", "top": 0, "skin": "loadSkin/clip_03.png", "sizeGrid": "21,23,23,27", "right": 0, "left": 0, "clipY": 2, "bottom": 0 } }, { "type": "TextInput", "props": { "x": 62, "width": 278, "var": "textinput_0", "type": "email", "skin": "loadSkin/textinput_01.png", "sizeGrid": "30,30,30,30", "prompt": "请输入邮箱地址", "maxChars": 20, "height": 45, "fontSize": 24, "color": "#666666", "centerY": 0 } }, { "type": "Clip", "props": { "var": "clip_0", "skin": "loadSkin/clip_01.png", "left": 10, "index": 0, "clipY": 2, "centerY": 0 } }] }] };
            render.ResetRenderUI = ResetRenderUI;
        })(render = page.render || (page.render = {}));
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var render;
        (function (render) {
            var RoomChatRenderUI = (function (_super) {
                __extends(RoomChatRenderUI, _super);
                function RoomChatRenderUI() {
                    return _super.call(this) || this;
                }
                RoomChatRenderUI.prototype.createChildren = function () {
                    _super.prototype.createChildren.call(this);
                    this.createView(ui.page.render.RoomChatRenderUI.uiView);
                };
                return RoomChatRenderUI;
            }(View));
            RoomChatRenderUI.uiView = { "type": "View", "props": { "width": 640, "skin": "gameSkin/btn_17.png", "height": 85 }, "child": [{ "type": "Image", "props": { "y": 0, "x": 0, "top": 0, "skin": "gameSkin/back_07.png", "sizeGrid": "5,5,5,5", "right": 0, "left": 0, "bottom": 0, "alpha": 0.7 } }, { "type": "Image", "props": { "y": 7.5, "x": 0, "skin": "gameSkin/icon_06.png", "centerY": 0 } }, { "type": "TextInput", "props": { "y": 0, "x": 69, "width": 570, "var": "textinput_0", "top": 0, "skin": "loadSkin/textinput_01.png", "right": 1, "prompt": "说点什么吧...", "padding": "0,130,0,0", "left": 69, "height": 70, "fontSize": 24, "bottom": 0 } }, { "type": "Box", "props": { "y": 0, "x": 473, "width": 167, "var": "box_chat", "top": 0, "height": 85, "bottom": 0 }, "child": [{ "type": "Button", "props": { "y": 1, "x": -62, "width": 167, "var": "btn_0", "stateNum": "1", "skin": "gameSkin/btn_21.png", "sizeGrid": "10,10,10,10", "right": 0, "labelSize": 30, "labelColors": "#ffffff,#ffffff,#ffffff", "height": 84, "centerY": 0 } }] }, { "type": "Box", "props": { "y": 0, "x": 450, "width": 170, "var": "user_default", "top": 0, "height": 85, "bottom": 0 }, "child": [{ "type": "Button", "props": { "y": 2, "x": 95, "var": "btn_4", "stateNum": "1", "skin": "gameSkin/btn_12.png" } }, { "type": "Button", "props": { "y": 2, "x": 5, "visible": false, "var": "btn_3", "stateNum": "1", "skin": "gameSkin/btn_11.png" } }] }, { "type": "Box", "props": { "y": 0, "x": 450, "width": 170, "var": "anchor_default", "top": 0, "height": 85, "bottom": 0 }, "child": [{ "type": "Button", "props": { "y": 0, "x": 95, "var": "btn_5", "stateNum": "1", "skin": "gameSkin/btn_13.png" } }, { "type": "Button", "props": { "y": 0, "x": 2, "var": "btn_6", "stateNum": "1", "skin": "gameSkin/btn_20.png" } }] }] };
            render.RoomChatRenderUI = RoomChatRenderUI;
        })(render = page.render || (page.render = {}));
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var render;
        (function (render) {
            var RoomGiftRenderUI = (function (_super) {
                __extends(RoomGiftRenderUI, _super);
                function RoomGiftRenderUI() {
                    return _super.call(this) || this;
                }
                RoomGiftRenderUI.prototype.createChildren = function () {
                    View.regComponent("ui.page.render.GiftItemRenderUI", ui.page.render.GiftItemRenderUI);
                    _super.prototype.createChildren.call(this);
                    this.createView(ui.page.render.RoomGiftRenderUI.uiView);
                };
                return RoomGiftRenderUI;
            }(View));
            RoomGiftRenderUI.uiView = { "type": "View", "props": { "width": 640, "height": 400 }, "child": [{ "type": "List", "props": { "y": 0, "x": 0, "var": "list", "repeatY": 2, "repeatX": 4 }, "child": [{ "type": "GiftItemRender", "props": { "renderType": "render", "name": "render", "runtime": "ui.page.render.GiftItemRenderUI" } }] }, { "type": "Box", "props": { "var": "recharge_box", "right": 0, "left": 0, "height": 80, "bottom": 0 }, "child": [{ "type": "Image", "props": { "top": 0, "skin": "gameSkin/back_09.png", "sizeGrid": "5,5,5,5", "right": 0, "left": 0, "bottom": 0, "alpha": 0.8 } }, { "type": "Button", "props": { "width": 180, "var": "btn_0", "top": 0, "skin": "gameSkin/btn_19.png", "right": 0, "labelSize": 30, "labelColors": "#ffffff,#cccccc,#cccccc", "label": "去充值  >>", "bottom": 0 } }, { "type": "Label", "props": { "var": "tip_0", "text": "余额：0金币", "mouseEnabled": false, "left": 20, "fontSize": 26, "color": "#ffffff", "centerY": 0 } }] }] };
            render.RoomGiftRenderUI = RoomGiftRenderUI;
        })(render = page.render || (page.render = {}));
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var render;
        (function (render) {
            var RoomRenderUI = (function (_super) {
                __extends(RoomRenderUI, _super);
                function RoomRenderUI() {
                    return _super.call(this) || this;
                }
                RoomRenderUI.prototype.createChildren = function () {
                    View.regComponent("view.render.AvatarRender", view.render.AvatarRender);
                    _super.prototype.createChildren.call(this);
                    this.createView(ui.page.render.RoomRenderUI.uiView);
                };
                return RoomRenderUI;
            }(View));
            RoomRenderUI.uiView = { "type": "View", "props": { "width": 640, "height": 400 }, "child": [{ "type": "Image", "props": { "top": 0, "skin": "gameSkin/back_07.png", "sizeGrid": "5,5,5,5", "right": 0, "left": 0, "bottom": 0 } }, { "type": "Box", "props": { "width": 595, "var": "pic_box", "height": 297, "centerX": 0, "bottom": 15 }, "child": [{ "type": "Image", "props": { "var": "img_cover", "top": 0, "skin": "anchorSource/back_01.jpg", "sizeGrid": "5,5,5,5", "right": 0, "left": 0, "bottom": 0, "alpha": 0.8 } }] }, { "type": "Box", "props": { "width": 595, "var": "box_head", "top": 8, "height": 72, "centerX": 0 }, "child": [{ "type": "Label", "props": { "y": 9, "x": 83, "var": "t_nickname", "text": "天真的小萝莉", "fontSize": 24, "color": "#b73937" } }, { "type": "Label", "props": { "y": 47, "x": 84, "var": "t_tip", "text": "懒人就是漂亮~~~~", "fontSize": 18, "color": "#7f7f7f" } }, { "type": "Label", "props": { "y": 9, "x": 489.63671875, "var": "t_users", "text": "在线:20人", "right": 0, "fontSize": 24, "color": "#666666" } }, { "type": "Label", "props": { "y": 47, "var": "t_tip_1", "text": "免费房间", "right": 0, "fontSize": 18, "color": "#7f7f7f" } }, { "type": "AvatarRender", "props": { "width": 72, "var": "img_avatar", "runtime": "view.render.AvatarRender", "height": 72 } }] }] };
            render.RoomRenderUI = RoomRenderUI;
        })(render = page.render || (page.render = {}));
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var render;
        (function (render) {
            var RoomTitleRenderUI = (function (_super) {
                __extends(RoomTitleRenderUI, _super);
                function RoomTitleRenderUI() {
                    return _super.call(this) || this;
                }
                RoomTitleRenderUI.prototype.createChildren = function () {
                    _super.prototype.createChildren.call(this);
                    this.createView(ui.page.render.RoomTitleRenderUI.uiView);
                };
                return RoomTitleRenderUI;
            }(View));
            RoomTitleRenderUI.uiView = { "type": "View", "props": { "width": 640, "height": 200 }, "child": [{ "type": "Clip", "props": { "y": 18, "x": 565, "width": 56, "var": "clip_2", "skin": "gameSkin/clip_03.png", "sizeGrid": "24,24,27,26", "scaleY": 1.3, "scaleX": 1.3, "index": 0, "height": 56, "clipY": 2 } }, { "type": "Button", "props": { "y": 13, "x": 562, "var": "btn_close", "stateNum": "1", "skin": "gameSkin/btn_09.png" } }, { "type": "Clip", "props": { "y": 23, "x": 17, "width": 262, "var": "clip_1", "skin": "gameSkin/clip_03.png", "sizeGrid": "24,21,27,46", "index": 0, "height": 56, "clipY": 2 } }, { "type": "Image", "props": { "y": 23, "x": 15, "width": 56, "skin": "anchorSource/avatar_01.png", "height": 56 } }, { "type": "Label", "props": { "y": 36, "x": 80, "var": "anchor_name", "text": "天真的小萝莉", "fontSize": 30, "color": "#ffffff" } }, { "type": "Label", "props": { "y": 112, "var": "roomid_shadow", "text": "房间号:100034", "right": 19, "fontSize": 20, "color": "#666666" } }, { "type": "Label", "props": { "y": 111, "x": 487.705078125, "var": "roomid_text", "text": "房间号:100034", "right": 20, "fontSize": 20, "color": "#ffffff" } }, { "type": "Box", "props": { "y": 100, "x": 16, "var": "box_users" }, "child": [{ "type": "Clip", "props": { "y": 0, "x": 0, "width": 147, "var": "clip_3", "skin": "gameSkin/clip_03.png", "sizeGrid": "0,31,0,35", "scaleY": 0.7, "scaleX": 0.7, "right": 0, "left": 0, "height": 56, "clipY": 2 } }, { "type": "Label", "props": { "var": "anchor_users", "text": "在线：0人", "left": 15, "fontSize": 20, "color": "#ffffff", "centerY": 0, "align": "left" } }] }, { "type": "Box", "props": { "y": 155, "x": 16, "width": 151, "var": "box_zuanshi", "height": 39 }, "child": [{ "type": "Clip", "props": { "y": 0, "x": 0, "var": "clip_4", "skin": "gameSkin/clip_03.png", "sizeGrid": "0,31,0,35", "scaleY": 0.7, "scaleX": 0.7, "right": 0, "left": 0, "height": 56, "clipY": 2 } }, { "type": "Label", "props": { "var": "anchor_zuanshi", "text": "收益：0钻", "left": 15, "fontSize": 20, "color": "#ffffff", "centerY": 0, "align": "left" } }] }] };
            render.RoomTitleRenderUI = RoomTitleRenderUI;
        })(render = page.render || (page.render = {}));
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var render;
        (function (render) {
            var SetListItemRenderUI = (function (_super) {
                __extends(SetListItemRenderUI, _super);
                function SetListItemRenderUI() {
                    return _super.call(this) || this;
                }
                SetListItemRenderUI.prototype.createChildren = function () {
                    _super.prototype.createChildren.call(this);
                    this.createView(ui.page.render.SetListItemRenderUI.uiView);
                };
                return SetListItemRenderUI;
            }(View));
            SetListItemRenderUI.uiView = { "type": "View", "props": { "width": 640, "height": 66 }, "child": [{ "type": "Image", "props": { "var": "back_0", "top": 0, "skin": "gameSkin/back_07.png", "sizeGrid": "5,5,5,5", "right": 0, "left": 0, "bottom": 0 } }, { "type": "Image", "props": { "var": "icon_1", "skin": "gameSkin/icon_arror.png", "right": 0, "centerY": -1 } }, { "type": "Image", "props": { "var": "icon_0", "skin": "gameSkin/icon_01.png", "left": 20, "centerY": -1 } }, { "type": "Label", "props": { "y": 20, "x": 95, "var": "tip_0", "text": "充值", "fontSize": 24, "color": "#333333", "centerY": -1 } }] };
            render.SetListItemRenderUI = SetListItemRenderUI;
        })(render = page.render || (page.render = {}));
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var render;
        (function (render) {
            var SetTitleRenderUI = (function (_super) {
                __extends(SetTitleRenderUI, _super);
                function SetTitleRenderUI() {
                    return _super.call(this) || this;
                }
                SetTitleRenderUI.prototype.createChildren = function () {
                    View.regComponent("view.render.AvatarRender", view.render.AvatarRender);
                    _super.prototype.createChildren.call(this);
                    this.createView(ui.page.render.SetTitleRenderUI.uiView);
                };
                return SetTitleRenderUI;
            }(View));
            SetTitleRenderUI.uiView = { "type": "View", "props": { "width": 640, "height": 320 }, "child": [{ "type": "Image", "props": { "y": 0, "x": 0, "var": "img_cover", "skin": "anchorSource/back_01.jpg" } }, { "type": "Image", "props": { "top": 0, "skin": "gameSkin/back_06.png", "sizeGrid": "5,5,5,5", "right": 0, "left": 0, "bottom": 0, "alpha": 0.9 } }, { "type": "Button", "props": { "y": 0, "x": 0, "var": "btn_return", "stateNum": "1", "skin": "gameSkin/btn_03.png" } }, { "type": "Label", "props": { "y": 27, "x": 248, "var": "t_nickname", "text": "天真的小萝莉", "fontSize": 24, "color": "#ffffff", "centerX": 0 } }, { "type": "HBox", "props": { "y": 242, "x": 169.8984375, "var": "hbox", "space": 0, "centerX": 0, "align": "middle" }, "child": [{ "type": "Label", "props": { "y": 25, "var": "t_amount", "text": "0", "fontSize": 24, "color": "#ffffff" } }, { "type": "Button", "props": { "y": 1, "x": 105, "stateNum": "1", "skin": "gameSkin/btn_05.png" } }, { "type": "Label", "props": { "y": 13, "x": 162.1015625, "var": "t_zuan", "text": "0", "fontSize": 24, "color": "#ffffff" } }, { "type": "Button", "props": { "y": 2, "x": 289, "stateNum": "1", "skin": "gameSkin/btn_06.png" } }] }, { "type": "Label", "props": { "var": "t_userid", "text": "ID:10006", "right": 15, "fontSize": 24, "color": "#ffffff", "bottom": 15 } }, { "type": "AvatarRender", "props": { "var": "avatar", "runtime": "view.render.AvatarRender", "centerY": 0, "centerX": 0 } }] };
            render.SetTitleRenderUI = SetTitleRenderUI;
        })(render = page.render || (page.render = {}));
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
(function (ui) {
    var page;
    (function (page) {
        var render;
        (function (render) {
            var SingUpRenderUI = (function (_super) {
                __extends(SingUpRenderUI, _super);
                function SingUpRenderUI() {
                    return _super.call(this) || this;
                }
                SingUpRenderUI.prototype.createChildren = function () {
                    _super.prototype.createChildren.call(this);
                    this.createView(ui.page.render.SingUpRenderUI.uiView);
                };
                return SingUpRenderUI;
            }(View));
            SingUpRenderUI.uiView = { "type": "View", "props": { "width": 360, "height": 420 }, "child": [{ "type": "Button", "props": { "y": 286, "x": 242, "width": 228, "var": "btn_0", "stateNum": "1", "skin": "loadSkin/btn_01.png", "sizeGrid": "15,15,13,15", "labelSize": 24, "labelColors": "#cccccc,#cccccc,#cccccc", "label": "注册", "height": 64, "centerX": 0 } }, { "type": "Clip", "props": { "y": 111, "x": 184, "skin": "loadSkin/clip_02.png", "name": "clip_1", "index": 0, "clipY": 2 } }, { "type": "HBox", "props": { "y": 371, "x": 231, "space": 5, "centerX": 0, "align": "middle" }, "child": [{ "type": "Button", "props": { "y": 1, "width": 151, "var": "btn_1", "stateNum": "1", "skin": "loadSkin/btn_02.png", "sizeGrid": "14,12,16,11", "labelSize": 20, "label": "使用已有账户", "height": 47 } }, { "type": "Image", "props": { "y": 15, "x": 155, "skin": "loadSkin/back_02.png" } }, { "type": "Button", "props": { "y": 0, "x": 169, "width": 80, "var": "btn_2", "stateNum": "1", "skin": "loadSkin/btn_03.png", "sizeGrid": "14,12,16,11", "labelSize": 20, "label": "找回密码", "height": 47 } }] }, { "type": "Box", "props": { "y": 0, "x": 196, "right": 0, "left": 0, "height": 72 }, "child": [{ "type": "Clip", "props": { "var": "clip_1", "top": 0, "skin": "loadSkin/clip_03.png", "sizeGrid": "21,23,23,27", "right": 0, "left": 0, "clipY": 2, "bottom": 0 } }, { "type": "TextInput", "props": { "y": 14.5, "x": 65, "width": 278, "var": "textinput_0", "type": "email", "skin": "loadSkin/textinput_01.png", "sizeGrid": "30,30,30,30", "prompt": "请输入邮箱地址", "maxChars": 20, "height": 45, "fontSize": 24, "color": "#666666", "centerY": 0 } }, { "type": "Clip", "props": { "var": "clip_0", "skin": "loadSkin/clip_01.png", "left": 10, "index": 0, "clipY": 2, "centerY": 0 } }] }, { "type": "Box", "props": { "y": 91, "x": 176, "right": 0, "left": 0, "height": 72 }, "child": [{ "type": "Clip", "props": { "var": "clip_3", "top": 0, "skin": "loadSkin/clip_03.png", "sizeGrid": "21,23,23,27", "right": 0, "left": 0, "clipY": 2, "bottom": 0 } }, { "type": "TextInput", "props": { "x": 62, "width": 278, "var": "textinput_1", "type": "password", "skin": "loadSkin/textinput_01.png", "sizeGrid": "30,30,30,30", "prompt": "请输入登录密码", "maxChars": 20, "height": 45, "fontSize": 24, "color": "#666666", "centerY": 0 } }, { "type": "Clip", "props": { "var": "clip_2", "skin": "loadSkin/clip_02.png", "left": 10, "index": 0, "clipY": 2, "centerY": 0 } }] }, { "type": "Box", "props": { "y": 183, "x": 176, "right": 0, "left": 0, "height": 72 }, "child": [{ "type": "Clip", "props": { "var": "clip_5", "top": 0, "skin": "loadSkin/clip_03.png", "sizeGrid": "21,23,23,27", "right": 0, "left": 0, "clipY": 2, "bottom": 0 } }, { "type": "TextInput", "props": { "x": 62, "width": 278, "var": "textinput_2", "type": "password", "skin": "loadSkin/textinput_01.png", "sizeGrid": "30,30,30,30", "prompt": "请再次输入登录密码", "maxChars": 20, "height": 45, "fontSize": 24, "color": "#666666", "centerY": 0 } }, { "type": "Clip", "props": { "var": "clip_4", "skin": "loadSkin/clip_02.png", "left": 10, "index": 0, "clipY": 2, "centerY": 0 } }] }] };
            render.SingUpRenderUI = SingUpRenderUI;
        })(render = page.render || (page.render = {}));
    })(page = ui.page || (ui.page = {}));
})(ui || (ui = {}));
//# sourceMappingURL=layaUI.max.all.js.map