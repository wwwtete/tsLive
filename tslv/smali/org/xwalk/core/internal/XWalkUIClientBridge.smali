.class public Lorg/xwalk/core/internal/XWalkUIClientBridge;
.super Lorg/xwalk/core/internal/XWalkUIClientInternal;
.source "XWalkUIClientBridge.java"


# instance fields
.field private coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

.field private enumConsoleMessageTypeClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private enumInitiateByClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private enumJavascriptMessageTypeClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private enumLoadStatusClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onConsoleMessageXWalkViewInternalStringintStringConsoleMessageTypeMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onCreateWindowRequestedXWalkViewInternalInitiateByInternalValueCallbackMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onFullscreenToggledXWalkViewInternalbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onIconAvailableXWalkViewInternalStringMessageMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onJavascriptCloseWindowXWalkViewInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onJavascriptModalDialogXWalkViewInternalJavascriptMessageTypeInternalStringStringStringXWalkJavascriptResultInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onJsAlertXWalkViewInternalStringStringXWalkJavascriptResultInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onJsConfirmXWalkViewInternalStringStringXWalkJavascriptResultInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onJsPromptXWalkViewInternalStringStringStringXWalkJavascriptResultInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onPageLoadStartedXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onPageLoadStoppedXWalkViewInternalStringLoadStatusInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onReceivedIconXWalkViewInternalStringBitmapMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onReceivedTitleXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onRequestFocusXWalkViewInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onScaleChangedXWalkViewInternalfloatfloatMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onUnhandledKeyEventXWalkViewInternalKeyEventMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private openFileChooserXWalkViewInternalValueCallbackStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private shouldOverrideKeyEventXWalkViewInternalKeyEventMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private wrapper:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/Object;)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "wrapper"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 58
    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/XWalkUIClientInternal;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    .line 31
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    invoke-direct {v0}, Lorg/xwalk/core/internal/ReflectMethod;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->enumJavascriptMessageTypeClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 37
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    invoke-direct {v0}, Lorg/xwalk/core/internal/ReflectMethod;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->enumConsoleMessageTypeClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 43
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    invoke-direct {v0}, Lorg/xwalk/core/internal/ReflectMethod;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->enumInitiateByClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 49
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    invoke-direct {v0}, Lorg/xwalk/core/internal/ReflectMethod;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->enumLoadStatusClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 95
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onCreateWindowRequested"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onCreateWindowRequestedXWalkViewInternalInitiateByInternalValueCallbackMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 118
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onIconAvailable"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onIconAvailableXWalkViewInternalStringMessageMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 141
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onReceivedIcon"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onReceivedIconXWalkViewInternalStringBitmapMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 164
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onRequestFocus"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onRequestFocusXWalkViewInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 187
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onJavascriptCloseWindow"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onJavascriptCloseWindowXWalkViewInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 213
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onJavascriptModalDialog"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onJavascriptModalDialogXWalkViewInternalJavascriptMessageTypeInternalStringStringStringXWalkJavascriptResultInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 236
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onFullscreenToggled"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onFullscreenToggledXWalkViewInternalbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 259
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "openFileChooser"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->openFileChooserXWalkViewInternalValueCallbackStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 282
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onScaleChanged"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onScaleChangedXWalkViewInternalfloatfloatMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 308
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "shouldOverrideKeyEvent"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->shouldOverrideKeyEventXWalkViewInternalKeyEventMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 331
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onUnhandledKeyEvent"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onUnhandledKeyEventXWalkViewInternalKeyEventMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 357
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onConsoleMessage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onConsoleMessageXWalkViewInternalStringintStringConsoleMessageTypeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 380
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onReceivedTitle"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onReceivedTitleXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 403
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onPageLoadStarted"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onPageLoadStartedXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 426
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onPageLoadStopped"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onPageLoadStoppedXWalkViewInternalStringLoadStatusInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 452
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onJsAlert"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onJsAlertXWalkViewInternalStringStringXWalkJavascriptResultInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 478
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onJsConfirm"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onJsConfirmXWalkViewInternalStringStringXWalkJavascriptResultInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 504
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onJsPrompt"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onJsPromptXWalkViewInternalStringStringStringXWalkJavascriptResultInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 60
    iput-object p2, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->wrapper:Ljava/lang/Object;

    .line 61
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->reflectionInit()V

    .line 63
    return-void
.end method

.method private ConvertConsoleMessageType(Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;)Ljava/lang/Object;
    .locals 4
    .param p1, "type"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->enumConsoleMessageTypeClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private ConvertInitiateByInternal(Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;)Ljava/lang/Object;
    .locals 4
    .param p1, "type"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->enumInitiateByClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private ConvertJavascriptMessageTypeInternal(Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;)Ljava/lang/Object;
    .locals 4
    .param p1, "type"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->enumJavascriptMessageTypeClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private ConvertLoadStatusInternal(Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;)Ljava/lang/Object;
    .locals 4
    .param p1, "type"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->enumLoadStatusClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$000(Lorg/xwalk/core/internal/XWalkUIClientBridge;)Lorg/xwalk/core/internal/XWalkCoreBridge;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkUIClientBridge;

    .prologue
    .line 23
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    return-object v0
.end method


# virtual methods
.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method public onConsoleMessage(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;ILjava/lang/String;Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;)Z
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "lineNumber"    # I
    .param p4, "sourceId"    # Ljava/lang/String;
    .param p5, "messageType"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    .prologue
    .line 343
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onConsoleMessageXWalkViewInternalStringintStringConsoleMessageTypeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual/range {p0 .. p5}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onConsoleMessageSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;ILjava/lang/String;Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;)Z

    move-result v0

    .line 346
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_0
    return v0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onConsoleMessageXWalkViewInternalStringintStringConsoleMessageTypeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    invoke-direct {p0, p5}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->ConvertConsoleMessageType(Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public onConsoleMessage(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;ILjava/lang/String;Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;)Z
    .locals 6
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "lineNumber"    # I
    .param p4, "sourceId"    # Ljava/lang/String;
    .param p5, "messageType"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    .prologue
    .line 335
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    move-object v1, p1

    .line 336
    check-cast v1, Lorg/xwalk/core/internal/XWalkViewBridge;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onConsoleMessage(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;ILjava/lang/String;Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;)Z

    move-result v0

    .line 338
    :goto_0
    return v0

    :cond_0
    invoke-super/range {p0 .. p5}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onConsoleMessage(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;ILjava/lang/String;Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;)Z

    move-result v0

    goto :goto_0
.end method

.method public onConsoleMessageSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;ILjava/lang/String;Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;)Z
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "lineNumber"    # I
    .param p4, "sourceId"    # Ljava/lang/String;
    .param p5, "messageType"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    .prologue
    .line 352
    invoke-super/range {p0 .. p5}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onConsoleMessage(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;ILjava/lang/String;Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;)Z

    move-result v0

    .line 354
    .local v0, "ret":Z
    return v0
.end method

.method public onCreateWindowRequested(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;Landroid/webkit/ValueCallback;)Z
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "initiator"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xwalk/core/internal/XWalkViewBridge;",
            "Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Lorg/xwalk/core/internal/XWalkViewInternal;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 75
    .local p3, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Lorg/xwalk/core/internal/XWalkViewInternal;>;"
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onCreateWindowRequestedXWalkViewInternalInitiateByInternalValueCallbackMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onCreateWindowRequestedSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;Landroid/webkit/ValueCallback;)Z

    move-result v1

    .line 79
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_0
    return v1

    .line 78
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_0
    move-object v0, p3

    .line 79
    .local v0, "callbackFinal":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Lorg/xwalk/core/internal/XWalkViewInternal;>;"
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onCreateWindowRequestedXWalkViewInternalInitiateByInternalValueCallbackMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    instance-of v4, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v4, :cond_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p2}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->ConvertInitiateByInternal(Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lorg/xwalk/core/internal/XWalkUIClientBridge$1;

    invoke-direct {v4, p0, v0}, Lorg/xwalk/core/internal/XWalkUIClientBridge$1;-><init>(Lorg/xwalk/core/internal/XWalkUIClientBridge;Landroid/webkit/ValueCallback;)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public onCreateWindowRequested(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;Landroid/webkit/ValueCallback;)Z
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "initiator"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xwalk/core/internal/XWalkViewInternal;",
            "Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Lorg/xwalk/core/internal/XWalkViewInternal;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 67
    .local p3, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Lorg/xwalk/core/internal/XWalkViewInternal;>;"
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 68
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onCreateWindowRequested(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;Landroid/webkit/ValueCallback;)Z

    move-result v0

    .line 70
    :goto_0
    return v0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onCreateWindowRequested(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;Landroid/webkit/ValueCallback;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateWindowRequestedSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;Landroid/webkit/ValueCallback;)Z
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "initiator"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xwalk/core/internal/XWalkViewBridge;",
            "Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Lorg/xwalk/core/internal/XWalkViewInternal;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 90
    .local p3, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Lorg/xwalk/core/internal/XWalkViewInternal;>;"
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onCreateWindowRequested(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkUIClientInternal$InitiateByInternal;Landroid/webkit/ValueCallback;)Z

    move-result v0

    .line 92
    .local v0, "ret":Z
    return v0
.end method

.method public onFullscreenToggled(Lorg/xwalk/core/internal/XWalkViewBridge;Z)V
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "enterFullscreen"    # Z

    .prologue
    .line 225
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onFullscreenToggledXWalkViewInternalbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onFullscreenToggledSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Z)V

    .line 230
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_0
    return-void

    .line 228
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onFullscreenToggledXWalkViewInternalbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public onFullscreenToggled(Lorg/xwalk/core/internal/XWalkViewInternal;Z)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "enterFullscreen"    # Z

    .prologue
    .line 217
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 218
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onFullscreenToggled(Lorg/xwalk/core/internal/XWalkViewBridge;Z)V

    .line 222
    :goto_0
    return-void

    .line 220
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onFullscreenToggled(Lorg/xwalk/core/internal/XWalkViewInternal;Z)V

    goto :goto_0
.end method

.method public onFullscreenToggledSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Z)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "enterFullscreen"    # Z

    .prologue
    .line 233
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onFullscreenToggled(Lorg/xwalk/core/internal/XWalkViewInternal;Z)V

    .line 234
    return-void
.end method

.method public onIconAvailable(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "startDownload"    # Landroid/os/Message;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onIconAvailableXWalkViewInternalStringMessageMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onIconAvailableSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Landroid/os/Message;)V

    .line 112
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_0
    return-void

    .line 110
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onIconAvailableXWalkViewInternalStringMessageMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public onIconAvailable(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "startDownload"    # Landroid/os/Message;

    .prologue
    .line 99
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 100
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onIconAvailable(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Landroid/os/Message;)V

    .line 104
    :goto_0
    return-void

    .line 102
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onIconAvailable(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public onIconAvailableSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "startDownload"    # Landroid/os/Message;

    .prologue
    .line 115
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onIconAvailable(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Landroid/os/Message;)V

    .line 116
    return-void
.end method

.method public onJavascriptCloseWindow(Lorg/xwalk/core/internal/XWalkViewBridge;)V
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;

    .prologue
    .line 176
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onJavascriptCloseWindowXWalkViewInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onJavascriptCloseWindowSuper(Lorg/xwalk/core/internal/XWalkViewBridge;)V

    .line 181
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_0
    return-void

    .line 179
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onJavascriptCloseWindowXWalkViewInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public onJavascriptCloseWindow(Lorg/xwalk/core/internal/XWalkViewInternal;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;

    .prologue
    .line 168
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 169
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onJavascriptCloseWindow(Lorg/xwalk/core/internal/XWalkViewBridge;)V

    .line 173
    :goto_0
    return-void

    .line 171
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onJavascriptCloseWindow(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    goto :goto_0
.end method

.method public onJavascriptCloseWindowSuper(Lorg/xwalk/core/internal/XWalkViewBridge;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;

    .prologue
    .line 184
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onJavascriptCloseWindow(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    .line 185
    return-void
.end method

.method public onJavascriptModalDialog(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;)Z
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "type"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "defaultValue"    # Ljava/lang/String;
    .param p6, "result"    # Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;

    .prologue
    .line 199
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onJavascriptModalDialogXWalkViewInternalJavascriptMessageTypeInternalStringStringStringXWalkJavascriptResultInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual/range {p0 .. p6}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onJavascriptModalDialogSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;)Z

    move-result v0

    .line 202
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    .end local p6    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;
    :goto_0
    return v0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    .restart local p6    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onJavascriptModalDialogXWalkViewInternalJavascriptMessageTypeInternalStringStringStringXWalkJavascriptResultInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    invoke-direct {p0, p2}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->ConvertJavascriptMessageTypeInternal(Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    aput-object p3, v2, v0

    const/4 v0, 0x3

    aput-object p4, v2, v0

    const/4 v0, 0x4

    aput-object p5, v2, v0

    const/4 v3, 0x5

    instance-of v0, p6, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;

    if-eqz v0, :cond_2

    .end local p6    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;
    :goto_2
    invoke-virtual {p6}, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    .restart local p6    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;
    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_2
    new-instance v0, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;

    invoke-direct {v0, p6}, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;-><init>(Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;)V

    move-object p6, v0

    goto :goto_2
.end method

.method public onJavascriptModalDialog(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z
    .locals 7
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "type"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "defaultValue"    # Ljava/lang/String;
    .param p6, "result"    # Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;

    .prologue
    .line 191
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_1

    move-object v1, p1

    .line 192
    check-cast v1, Lorg/xwalk/core/internal/XWalkViewBridge;

    instance-of v0, p6, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;

    if-eqz v0, :cond_0

    check-cast p6, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;

    .end local p6    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;
    move-object v6, p6

    :goto_0
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onJavascriptModalDialog(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;)Z

    move-result v0

    .line 194
    :goto_1
    return v0

    .line 192
    .restart local p6    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;
    :cond_0
    new-instance v6, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;

    check-cast p6, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;

    .end local p6    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;
    invoke-direct {v6, p6}, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;-><init>(Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;)V

    goto :goto_0

    .line 194
    .restart local p6    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;
    :cond_1
    invoke-super/range {p0 .. p6}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onJavascriptModalDialog(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z

    move-result v0

    goto :goto_1
.end method

.method public onJavascriptModalDialogSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;)Z
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "type"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "defaultValue"    # Ljava/lang/String;
    .param p6, "result"    # Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;

    .prologue
    .line 208
    invoke-super/range {p0 .. p6}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onJavascriptModalDialog(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkUIClientInternal$JavascriptMessageTypeInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z

    move-result v0

    .line 210
    .local v0, "ret":Z
    return v0
.end method

.method public onJsAlert(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;)Z
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;

    .prologue
    .line 438
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onJsAlertXWalkViewInternalStringStringXWalkJavascriptResultInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onJsAlertSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;)Z

    move-result v0

    .line 441
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    .end local p4    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;
    :goto_0
    return v0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    .restart local p4    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onJsAlertXWalkViewInternalStringStringXWalkJavascriptResultInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    aput-object p2, v2, v0

    const/4 v0, 0x2

    aput-object p3, v2, v0

    const/4 v3, 0x3

    instance-of v0, p4, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;

    if-eqz v0, :cond_2

    .end local p4    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;
    :goto_2
    invoke-virtual {p4}, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    .restart local p4    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;
    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_2
    new-instance v0, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;

    invoke-direct {v0, p4}, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;-><init>(Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;)V

    move-object p4, v0

    goto :goto_2
.end method

.method public onJsAlert(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;

    .prologue
    .line 430
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_1

    .line 431
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    instance-of v0, p4, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;

    if-eqz v0, :cond_0

    check-cast p4, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;

    .end local p4    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onJsAlert(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;)Z

    move-result v0

    .line 433
    :goto_1
    return v0

    .line 431
    .restart local p4    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;
    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;

    check-cast p4, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;

    .end local p4    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;
    invoke-direct {v0, p4}, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;-><init>(Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;)V

    move-object p4, v0

    goto :goto_0

    .line 433
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    .restart local p4    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onJsAlert(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z

    move-result v0

    goto :goto_1
.end method

.method public onJsAlertSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;)Z
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;

    .prologue
    .line 447
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onJsAlert(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z

    move-result v0

    .line 449
    .local v0, "ret":Z
    return v0
.end method

.method public onJsConfirm(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;)Z
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;

    .prologue
    .line 464
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onJsConfirmXWalkViewInternalStringStringXWalkJavascriptResultInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onJsConfirmSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;)Z

    move-result v0

    .line 467
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    .end local p4    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;
    :goto_0
    return v0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    .restart local p4    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onJsConfirmXWalkViewInternalStringStringXWalkJavascriptResultInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    aput-object p2, v2, v0

    const/4 v0, 0x2

    aput-object p3, v2, v0

    const/4 v3, 0x3

    instance-of v0, p4, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;

    if-eqz v0, :cond_2

    .end local p4    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;
    :goto_2
    invoke-virtual {p4}, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    .restart local p4    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;
    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_2
    new-instance v0, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;

    invoke-direct {v0, p4}, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;-><init>(Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;)V

    move-object p4, v0

    goto :goto_2
.end method

.method public onJsConfirm(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;

    .prologue
    .line 456
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_1

    .line 457
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    instance-of v0, p4, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;

    if-eqz v0, :cond_0

    check-cast p4, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;

    .end local p4    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onJsConfirm(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;)Z

    move-result v0

    .line 459
    :goto_1
    return v0

    .line 457
    .restart local p4    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;
    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;

    check-cast p4, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;

    .end local p4    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;
    invoke-direct {v0, p4}, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;-><init>(Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;)V

    move-object p4, v0

    goto :goto_0

    .line 459
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    .restart local p4    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onJsConfirm(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z

    move-result v0

    goto :goto_1
.end method

.method public onJsConfirmSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;)Z
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;

    .prologue
    .line 473
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onJsConfirm(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z

    move-result v0

    .line 475
    .local v0, "ret":Z
    return v0
.end method

.method public onJsPrompt(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;)Z
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;

    .prologue
    .line 490
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onJsPromptXWalkViewInternalStringStringStringXWalkJavascriptResultInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    invoke-virtual/range {p0 .. p5}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onJsPromptSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;)Z

    move-result v0

    .line 493
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    .end local p5    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;
    :goto_0
    return v0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    .restart local p5    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onJsPromptXWalkViewInternalStringStringStringXWalkJavascriptResultInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    aput-object p2, v2, v0

    const/4 v0, 0x2

    aput-object p3, v2, v0

    const/4 v0, 0x3

    aput-object p4, v2, v0

    const/4 v3, 0x4

    instance-of v0, p5, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;

    if-eqz v0, :cond_2

    .end local p5    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;
    :goto_2
    invoke-virtual {p5}, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    .restart local p5    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;
    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_2
    new-instance v0, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;

    invoke-direct {v0, p5}, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;-><init>(Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;)V

    move-object p5, v0

    goto :goto_2
.end method

.method public onJsPrompt(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z
    .locals 6
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;

    .prologue
    .line 482
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_1

    move-object v1, p1

    .line 483
    check-cast v1, Lorg/xwalk/core/internal/XWalkViewBridge;

    instance-of v0, p5, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;

    if-eqz v0, :cond_0

    check-cast p5, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;

    .end local p5    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;
    move-object v5, p5

    :goto_0
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onJsPrompt(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;)Z

    move-result v0

    .line 485
    :goto_1
    return v0

    .line 483
    .restart local p5    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;
    :cond_0
    new-instance v5, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;

    check-cast p5, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;

    .end local p5    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;
    invoke-direct {v5, p5}, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;-><init>(Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;)V

    goto :goto_0

    .line 485
    .restart local p5    # "result":Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;
    :cond_1
    invoke-super/range {p0 .. p5}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onJsPrompt(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z

    move-result v0

    goto :goto_1
.end method

.method public onJsPromptSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;)Z
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;

    .prologue
    .line 499
    invoke-super/range {p0 .. p5}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onJsPrompt(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z

    move-result v0

    .line 501
    .local v0, "ret":Z
    return v0
.end method

.method public onPageLoadStarted(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 392
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onPageLoadStartedXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onPageLoadStartedSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)V

    .line 397
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_0
    return-void

    .line 395
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onPageLoadStartedXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public onPageLoadStarted(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 384
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 385
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onPageLoadStarted(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)V

    .line 389
    :goto_0
    return-void

    .line 387
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onPageLoadStarted(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPageLoadStartedSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 400
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onPageLoadStarted(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method public onPageLoadStopped(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;)V
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "status"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;

    .prologue
    .line 415
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onPageLoadStoppedXWalkViewInternalStringLoadStatusInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onPageLoadStoppedSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;)V

    .line 420
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_0
    return-void

    .line 418
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onPageLoadStoppedXWalkViewInternalStringLoadStatusInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-direct {p0, p3}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->ConvertLoadStatusInternal(Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public onPageLoadStopped(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "status"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;

    .prologue
    .line 407
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 408
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onPageLoadStopped(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;)V

    .line 412
    :goto_0
    return-void

    .line 410
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onPageLoadStopped(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;)V

    goto :goto_0
.end method

.method public onPageLoadStoppedSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "status"    # Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;

    .prologue
    .line 423
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onPageLoadStopped(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkUIClientInternal$LoadStatusInternal;)V

    .line 424
    return-void
.end method

.method public onReceivedIcon(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 130
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onReceivedIconXWalkViewInternalStringBitmapMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onReceivedIconSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 135
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_0
    return-void

    .line 133
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onReceivedIconXWalkViewInternalStringBitmapMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public onReceivedIcon(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 122
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 123
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onReceivedIcon(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 127
    :goto_0
    return-void

    .line 125
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onReceivedIcon(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onReceivedIconSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 138
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onReceivedIcon(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 139
    return-void
.end method

.method public onReceivedTitle(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 369
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onReceivedTitleXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onReceivedTitleSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)V

    .line 374
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_0
    return-void

    .line 372
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onReceivedTitleXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public onReceivedTitle(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 361
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 362
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onReceivedTitle(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)V

    .line 366
    :goto_0
    return-void

    .line 364
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onReceivedTitle(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedTitleSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 377
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onReceivedTitle(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method public onRequestFocus(Lorg/xwalk/core/internal/XWalkViewBridge;)V
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;

    .prologue
    .line 153
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onRequestFocusXWalkViewInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onRequestFocusSuper(Lorg/xwalk/core/internal/XWalkViewBridge;)V

    .line 158
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_0
    return-void

    .line 156
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onRequestFocusXWalkViewInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public onRequestFocus(Lorg/xwalk/core/internal/XWalkViewInternal;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;

    .prologue
    .line 145
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 146
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onRequestFocus(Lorg/xwalk/core/internal/XWalkViewBridge;)V

    .line 150
    :goto_0
    return-void

    .line 148
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onRequestFocus(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    goto :goto_0
.end method

.method public onRequestFocusSuper(Lorg/xwalk/core/internal/XWalkViewBridge;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;

    .prologue
    .line 161
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onRequestFocus(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    .line 162
    return-void
.end method

.method public onScaleChanged(Lorg/xwalk/core/internal/XWalkViewBridge;FF)V
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "oldScale"    # F
    .param p3, "newScale"    # F

    .prologue
    .line 271
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onScaleChangedXWalkViewInternalfloatfloatMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onScaleChangedSuper(Lorg/xwalk/core/internal/XWalkViewBridge;FF)V

    .line 276
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_0
    return-void

    .line 274
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onScaleChangedXWalkViewInternalfloatfloatMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public onScaleChanged(Lorg/xwalk/core/internal/XWalkViewInternal;FF)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "oldScale"    # F
    .param p3, "newScale"    # F

    .prologue
    .line 263
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 264
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onScaleChanged(Lorg/xwalk/core/internal/XWalkViewBridge;FF)V

    .line 268
    :goto_0
    return-void

    .line 266
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onScaleChanged(Lorg/xwalk/core/internal/XWalkViewInternal;FF)V

    goto :goto_0
.end method

.method public onScaleChangedSuper(Lorg/xwalk/core/internal/XWalkViewBridge;FF)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "oldScale"    # F
    .param p3, "newScale"    # F

    .prologue
    .line 279
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onScaleChanged(Lorg/xwalk/core/internal/XWalkViewInternal;FF)V

    .line 280
    return-void
.end method

.method public onUnhandledKeyEvent(Lorg/xwalk/core/internal/XWalkViewBridge;Landroid/view/KeyEvent;)V
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 320
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onUnhandledKeyEventXWalkViewInternalKeyEventMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onUnhandledKeyEventSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Landroid/view/KeyEvent;)V

    .line 325
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_0
    return-void

    .line 323
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onUnhandledKeyEventXWalkViewInternalKeyEventMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public onUnhandledKeyEvent(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 312
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 313
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onUnhandledKeyEvent(Lorg/xwalk/core/internal/XWalkViewBridge;Landroid/view/KeyEvent;)V

    .line 317
    :goto_0
    return-void

    .line 315
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onUnhandledKeyEvent(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public onUnhandledKeyEventSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Landroid/view/KeyEvent;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 328
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->onUnhandledKeyEvent(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/view/KeyEvent;)V

    .line 329
    return-void
.end method

.method public openFileChooser(Lorg/xwalk/core/internal/XWalkViewBridge;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p3, "acceptType"    # Ljava/lang/String;
    .param p4, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xwalk/core/internal/XWalkViewBridge;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 248
    .local p2, "uploadFile":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->openFileChooserXWalkViewInternalValueCallbackStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->openFileChooserSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_0
    return-void

    .line 251
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->openFileChooserXWalkViewInternalValueCallbackStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public openFileChooser(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p3, "acceptType"    # Ljava/lang/String;
    .param p4, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xwalk/core/internal/XWalkViewInternal;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 240
    .local p2, "uploadFile":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 241
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->openFileChooser(Lorg/xwalk/core/internal/XWalkViewBridge;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :goto_0
    return-void

    .line 243
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->openFileChooser(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public openFileChooserSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p3, "acceptType"    # Ljava/lang/String;
    .param p4, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xwalk/core/internal/XWalkViewBridge;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 256
    .local p2, "uploadFile":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->openFileChooser(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method reflectionInit()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 508
    invoke-static {}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 509
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    if-nez v0, :cond_0

    .line 556
    :goto_0
    return-void

    .line 511
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->enumJavascriptMessageTypeClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v2, "XWalkUIClient$JavascriptMessageType"

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "valueOf"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {v0, v9, v1, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 513
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->enumConsoleMessageTypeClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v2, "XWalkUIClient$ConsoleMessageType"

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "valueOf"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {v0, v9, v1, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 515
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->enumInitiateByClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v2, "XWalkUIClient$InitiateBy"

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "valueOf"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {v0, v9, v1, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 517
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->enumLoadStatusClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v2, "XWalkUIClient$LoadStatus"

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "valueOf"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {v0, v9, v1, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 520
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onCreateWindowRequestedXWalkViewInternalInitiateByInternalValueCallbackMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onCreateWindowRequested"

    new-array v3, v11, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkUIClient$InitiateBy"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v8

    const-class v4, Landroid/webkit/ValueCallback;

    aput-object v4, v3, v10

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 522
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onIconAvailableXWalkViewInternalStringMessageMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onIconAvailable"

    new-array v3, v11, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v7

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v8

    const-class v4, Landroid/os/Message;

    aput-object v4, v3, v10

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 524
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onReceivedIconXWalkViewInternalStringBitmapMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onReceivedIcon"

    new-array v3, v11, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v7

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v8

    const-class v4, Landroid/graphics/Bitmap;

    aput-object v4, v3, v10

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 526
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onRequestFocusXWalkViewInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onRequestFocus"

    new-array v3, v8, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 528
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onJavascriptCloseWindowXWalkViewInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onJavascriptCloseWindow"

    new-array v3, v8, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 530
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onJavascriptModalDialogXWalkViewInternalJavascriptMessageTypeInternalStringStringStringXWalkJavascriptResultInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onJavascriptModalDialog"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkUIClient$JavascriptMessageType"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v8

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v10

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v11

    const/4 v4, 0x4

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v6, "XWalkJavascriptResult"

    invoke-virtual {v5, v6}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 532
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onFullscreenToggledXWalkViewInternalbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onFullscreenToggled"

    new-array v3, v10, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 534
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->openFileChooserXWalkViewInternalValueCallbackStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "openFileChooser"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v7

    const-class v4, Landroid/webkit/ValueCallback;

    aput-object v4, v3, v8

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v10

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v11

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 536
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onScaleChangedXWalkViewInternalfloatfloatMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onScaleChanged"

    new-array v3, v11, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v8

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v10

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 538
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->shouldOverrideKeyEventXWalkViewInternalKeyEventMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "shouldOverrideKeyEvent"

    new-array v3, v10, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v7

    const-class v4, Landroid/view/KeyEvent;

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 540
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onUnhandledKeyEventXWalkViewInternalKeyEventMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onUnhandledKeyEvent"

    new-array v3, v10, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v7

    const-class v4, Landroid/view/KeyEvent;

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 542
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onConsoleMessageXWalkViewInternalStringintStringConsoleMessageTypeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onConsoleMessage"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v7

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v8

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v10

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v11

    const/4 v4, 0x4

    iget-object v5, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v6, "XWalkUIClient$ConsoleMessageType"

    invoke-virtual {v5, v6}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 544
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onReceivedTitleXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onReceivedTitle"

    new-array v3, v10, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v7

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 546
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onPageLoadStartedXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onPageLoadStarted"

    new-array v3, v10, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v7

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 548
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onPageLoadStoppedXWalkViewInternalStringLoadStatusInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onPageLoadStopped"

    new-array v3, v11, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v7

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v8

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkUIClient$LoadStatus"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 550
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onJsAlertXWalkViewInternalStringStringXWalkJavascriptResultInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onJsAlert"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v7

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v8

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v10

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkJavascriptResult"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 552
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onJsConfirmXWalkViewInternalStringStringXWalkJavascriptResultInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onJsConfirm"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v7

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v8

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v10

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkJavascriptResult"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 554
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->onJsPromptXWalkViewInternalStringStringStringXWalkJavascriptResultInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onJsPrompt"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v7

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v8

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v10

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v11

    const/4 v4, 0x4

    iget-object v5, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v6, "XWalkJavascriptResult"

    invoke-virtual {v5, v6}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto/16 :goto_0
.end method

.method public shouldOverrideKeyEvent(Lorg/xwalk/core/internal/XWalkViewBridge;Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 294
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->shouldOverrideKeyEventXWalkViewInternalKeyEventMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->shouldOverrideKeyEventSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 297
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_0
    return v0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientBridge;->shouldOverrideKeyEventXWalkViewInternalKeyEventMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public shouldOverrideKeyEvent(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 286
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 287
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientBridge;->shouldOverrideKeyEvent(Lorg/xwalk/core/internal/XWalkViewBridge;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 289
    :goto_0
    return v0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->shouldOverrideKeyEvent(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldOverrideKeyEventSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 303
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->shouldOverrideKeyEvent(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 305
    .local v0, "ret":Z
    return v0
.end method
