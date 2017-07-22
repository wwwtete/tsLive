.class public Lorg/xwalk/core/XWalkUIClient;
.super Ljava/lang/Object;
.source "XWalkUIClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/XWalkUIClient$LoadStatus;,
        Lorg/xwalk/core/XWalkUIClient$InitiateBy;,
        Lorg/xwalk/core/XWalkUIClient$ConsoleMessageType;,
        Lorg/xwalk/core/XWalkUIClient$JavascriptMessageType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private bridge:Ljava/lang/Object;

.field private constructorParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private constructorTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

.field private enumConsoleMessageTypeClassValueOfMethod:Lorg/xwalk/core/ReflectMethod;

.field private enumInitiateByClassValueOfMethod:Lorg/xwalk/core/ReflectMethod;

.field private enumJavascriptMessageTypeClassValueOfMethod:Lorg/xwalk/core/ReflectMethod;

.field private enumLoadStatusClassValueOfMethod:Lorg/xwalk/core/ReflectMethod;

.field private onConsoleMessageXWalkViewInternalStringintStringConsoleMessageTypeMethod:Lorg/xwalk/core/ReflectMethod;

.field private onCreateWindowRequestedXWalkViewInternalInitiateByInternalValueCallbackMethod:Lorg/xwalk/core/ReflectMethod;

.field private onFullscreenToggledXWalkViewInternalbooleanMethod:Lorg/xwalk/core/ReflectMethod;

.field private onIconAvailableXWalkViewInternalStringMessageMethod:Lorg/xwalk/core/ReflectMethod;

.field private onJavascriptCloseWindowXWalkViewInternalMethod:Lorg/xwalk/core/ReflectMethod;

.field private onJavascriptModalDialogXWalkViewInternalJavascriptMessageTypeInternalStringStringStringXWalkJavascriptResultInternalMethod:Lorg/xwalk/core/ReflectMethod;

.field private onJsAlertXWalkViewInternalStringStringXWalkJavascriptResultInternalMethod:Lorg/xwalk/core/ReflectMethod;

.field private onJsConfirmXWalkViewInternalStringStringXWalkJavascriptResultInternalMethod:Lorg/xwalk/core/ReflectMethod;

.field private onJsPromptXWalkViewInternalStringStringStringXWalkJavascriptResultInternalMethod:Lorg/xwalk/core/ReflectMethod;

.field private onPageLoadStartedXWalkViewInternalStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private onPageLoadStoppedXWalkViewInternalStringLoadStatusInternalMethod:Lorg/xwalk/core/ReflectMethod;

.field private onReceivedIconXWalkViewInternalStringBitmapMethod:Lorg/xwalk/core/ReflectMethod;

.field private onReceivedTitleXWalkViewInternalStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private onRequestFocusXWalkViewInternalMethod:Lorg/xwalk/core/ReflectMethod;

.field private onScaleChangedXWalkViewInternalfloatfloatMethod:Lorg/xwalk/core/ReflectMethod;

.field private onUnhandledKeyEventXWalkViewInternalKeyEventMethod:Lorg/xwalk/core/ReflectMethod;

.field private openFileChooserXWalkViewInternalValueCallbackStringStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private postWrapperMethod:Lorg/xwalk/core/ReflectMethod;

.field private shouldOverrideKeyEventXWalkViewInternalKeyEventMethod:Lorg/xwalk/core/ReflectMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/xwalk/core/XWalkUIClient;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/xwalk/core/XWalkUIClient;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/xwalk/core/XWalkView;)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    invoke-direct {v0}, Lorg/xwalk/core/ReflectMethod;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/XWalkUIClient;->enumJavascriptMessageTypeClassValueOfMethod:Lorg/xwalk/core/ReflectMethod;

    .line 66
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    invoke-direct {v0}, Lorg/xwalk/core/ReflectMethod;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/XWalkUIClient;->enumConsoleMessageTypeClassValueOfMethod:Lorg/xwalk/core/ReflectMethod;

    .line 80
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    invoke-direct {v0}, Lorg/xwalk/core/ReflectMethod;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/XWalkUIClient;->enumInitiateByClassValueOfMethod:Lorg/xwalk/core/ReflectMethod;

    .line 98
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    invoke-direct {v0}, Lorg/xwalk/core/ReflectMethod;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/XWalkUIClient;->enumLoadStatusClassValueOfMethod:Lorg/xwalk/core/ReflectMethod;

    .line 148
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "onCreateWindowRequested"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkUIClient;->onCreateWindowRequestedXWalkViewInternalInitiateByInternalValueCallbackMethod:Lorg/xwalk/core/ReflectMethod;

    .line 170
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "onIconAvailable"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkUIClient;->onIconAvailableXWalkViewInternalStringMessageMethod:Lorg/xwalk/core/ReflectMethod;

    .line 192
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "onReceivedIcon"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkUIClient;->onReceivedIconXWalkViewInternalStringBitmapMethod:Lorg/xwalk/core/ReflectMethod;

    .line 212
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "onRequestFocus"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkUIClient;->onRequestFocusXWalkViewInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 232
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "onJavascriptCloseWindow"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkUIClient;->onJavascriptCloseWindowXWalkViewInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 257
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "onJavascriptModalDialog"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkUIClient;->onJavascriptModalDialogXWalkViewInternalJavascriptMessageTypeInternalStringStringStringXWalkJavascriptResultInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 278
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "onFullscreenToggled"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkUIClient;->onFullscreenToggledXWalkViewInternalbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 305
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "openFileChooser"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkUIClient;->openFileChooserXWalkViewInternalValueCallbackStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 327
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "onScaleChanged"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkUIClient;->onScaleChangedXWalkViewInternalfloatfloatMethod:Lorg/xwalk/core/ReflectMethod;

    .line 356
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "shouldOverrideKeyEvent"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkUIClient;->shouldOverrideKeyEventXWalkViewInternalKeyEventMethod:Lorg/xwalk/core/ReflectMethod;

    .line 383
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "onUnhandledKeyEvent"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkUIClient;->onUnhandledKeyEventXWalkViewInternalKeyEventMethod:Lorg/xwalk/core/ReflectMethod;

    .line 408
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "onConsoleMessage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkUIClient;->onConsoleMessageXWalkViewInternalStringintStringConsoleMessageTypeMethod:Lorg/xwalk/core/ReflectMethod;

    .line 429
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "onReceivedTitle"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkUIClient;->onReceivedTitleXWalkViewInternalStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 456
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "onPageLoadStarted"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkUIClient;->onPageLoadStartedXWalkViewInternalStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 482
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "onPageLoadStopped"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkUIClient;->onPageLoadStoppedXWalkViewInternalStringLoadStatusInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 509
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "onJsAlert"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkUIClient;->onJsAlertXWalkViewInternalStringStringXWalkJavascriptResultInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 535
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "onJsConfirm"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkUIClient;->onJsConfirmXWalkViewInternalStringStringXWalkJavascriptResultInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 563
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "onJsPrompt"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkUIClient;->onJsPromptXWalkViewInternalStringStringStringXWalkJavascriptResultInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/XWalkUIClient;->constructorTypes:Ljava/util/ArrayList;

    .line 119
    iget-object v0, p0, Lorg/xwalk/core/XWalkUIClient;->constructorTypes:Ljava/util/ArrayList;

    const-string v1, "XWalkViewBridge"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/XWalkUIClient;->constructorParams:Ljava/util/ArrayList;

    .line 122
    iget-object v0, p0, Lorg/xwalk/core/XWalkUIClient;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual {p0}, Lorg/xwalk/core/XWalkUIClient;->reflectionInit()V

    .line 125
    return-void
.end method

.method private ConvertConsoleMessageType(Lorg/xwalk/core/XWalkUIClient$ConsoleMessageType;)Ljava/lang/Object;
    .locals 4
    .param p1, "type"    # Lorg/xwalk/core/XWalkUIClient$ConsoleMessageType;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/xwalk/core/XWalkUIClient;->enumConsoleMessageTypeClassValueOfMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkUIClient$ConsoleMessageType;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private ConvertInitiateBy(Lorg/xwalk/core/XWalkUIClient$InitiateBy;)Ljava/lang/Object;
    .locals 4
    .param p1, "type"    # Lorg/xwalk/core/XWalkUIClient$InitiateBy;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/xwalk/core/XWalkUIClient;->enumInitiateByClassValueOfMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkUIClient$InitiateBy;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private ConvertJavascriptMessageType(Lorg/xwalk/core/XWalkUIClient$JavascriptMessageType;)Ljava/lang/Object;
    .locals 4
    .param p1, "type"    # Lorg/xwalk/core/XWalkUIClient$JavascriptMessageType;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/xwalk/core/XWalkUIClient;->enumJavascriptMessageTypeClassValueOfMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkUIClient$JavascriptMessageType;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private ConvertLoadStatus(Lorg/xwalk/core/XWalkUIClient$LoadStatus;)Ljava/lang/Object;
    .locals 4
    .param p1, "type"    # Lorg/xwalk/core/XWalkUIClient$LoadStatus;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/xwalk/core/XWalkUIClient;->enumLoadStatusClassValueOfMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkUIClient$LoadStatus;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getBridge()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/xwalk/core/XWalkUIClient;->bridge:Ljava/lang/Object;

    return-object v0
.end method

.method public onConsoleMessage(Lorg/xwalk/core/XWalkView;Ljava/lang/String;ILjava/lang/String;Lorg/xwalk/core/XWalkUIClient$ConsoleMessageType;)Z
    .locals 6
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "lineNumber"    # I
    .param p4, "sourceId"    # Ljava/lang/String;
    .param p5, "messageType"    # Lorg/xwalk/core/XWalkUIClient$ConsoleMessageType;

    .prologue
    const/4 v2, 0x0

    .line 397
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkUIClient;->onConsoleMessageXWalkViewInternalStringintStringConsoleMessageTypeMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkView;->getBridge()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    const/4 v4, 0x4

    invoke-direct {p0, p5}, Lorg/xwalk/core/XWalkUIClient;->ConvertConsoleMessageType(Lorg/xwalk/core/XWalkUIClient$ConsoleMessageType;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 405
    :goto_0
    return v1

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 400
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 405
    goto :goto_0

    .line 402
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public onCreateWindowRequested(Lorg/xwalk/core/XWalkView;Lorg/xwalk/core/XWalkUIClient$InitiateBy;Landroid/webkit/ValueCallback;)Z
    .locals 6
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "initiator"    # Lorg/xwalk/core/XWalkUIClient$InitiateBy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xwalk/core/XWalkView;",
            "Lorg/xwalk/core/XWalkUIClient$InitiateBy;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Lorg/xwalk/core/XWalkView;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Lorg/xwalk/core/XWalkView;>;"
    const/4 v2, 0x0

    .line 137
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkUIClient;->onCreateWindowRequestedXWalkViewInternalInitiateByInternalValueCallbackMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkView;->getBridge()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-direct {p0, p2}, Lorg/xwalk/core/XWalkUIClient;->ConvertInitiateBy(Lorg/xwalk/core/XWalkUIClient$InitiateBy;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 145
    :goto_0
    return v1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 140
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 145
    goto :goto_0

    .line 142
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public onFullscreenToggled(Lorg/xwalk/core/XWalkView;Z)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "enterFullscreen"    # Z

    .prologue
    .line 267
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkUIClient;->onFullscreenToggledXWalkViewInternalbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkView;->getBridge()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 270
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public onIconAvailable(Lorg/xwalk/core/XWalkView;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "startDownload"    # Landroid/os/Message;

    .prologue
    .line 159
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkUIClient;->onIconAvailableXWalkViewInternalStringMessageMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkView;->getBridge()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 162
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public onJavascriptCloseWindow(Lorg/xwalk/core/XWalkView;)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;

    .prologue
    .line 221
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkUIClient;->onJavascriptCloseWindowXWalkViewInternalMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkView;->getBridge()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 224
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public onJavascriptModalDialog(Lorg/xwalk/core/XWalkView;Lorg/xwalk/core/XWalkUIClient$JavascriptMessageType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/XWalkJavascriptResult;)Z
    .locals 6
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "type"    # Lorg/xwalk/core/XWalkUIClient$JavascriptMessageType;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "defaultValue"    # Ljava/lang/String;
    .param p6, "result"    # Lorg/xwalk/core/XWalkJavascriptResult;

    .prologue
    const/4 v2, 0x0

    .line 246
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkUIClient;->onJavascriptModalDialogXWalkViewInternalJavascriptMessageTypeInternalStringStringStringXWalkJavascriptResultInternalMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkView;->getBridge()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-direct {p0, p2}, Lorg/xwalk/core/XWalkUIClient;->ConvertJavascriptMessageType(Lorg/xwalk/core/XWalkUIClient$JavascriptMessageType;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    const/4 v4, 0x4

    aput-object p5, v3, v4

    const/4 v4, 0x5

    check-cast p6, Lorg/xwalk/core/XWalkJavascriptResultHandler;

    .end local p6    # "result":Lorg/xwalk/core/XWalkJavascriptResult;
    invoke-virtual {p6}, Lorg/xwalk/core/XWalkJavascriptResultHandler;->getBridge()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 254
    :goto_0
    return v1

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 249
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 254
    goto :goto_0

    .line 251
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public onJsAlert(Lorg/xwalk/core/XWalkView;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/XWalkJavascriptResult;)Z
    .locals 6
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Lorg/xwalk/core/XWalkJavascriptResult;

    .prologue
    const/4 v2, 0x0

    .line 498
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkUIClient;->onJsAlertXWalkViewInternalStringStringXWalkJavascriptResultInternalMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkView;->getBridge()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    check-cast p4, Lorg/xwalk/core/XWalkJavascriptResultHandler;

    .end local p4    # "result":Lorg/xwalk/core/XWalkJavascriptResult;
    invoke-virtual {p4}, Lorg/xwalk/core/XWalkJavascriptResultHandler;->getBridge()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 506
    :goto_0
    return v1

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 501
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 506
    goto :goto_0

    .line 503
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public onJsConfirm(Lorg/xwalk/core/XWalkView;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/XWalkJavascriptResult;)Z
    .locals 6
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Lorg/xwalk/core/XWalkJavascriptResult;

    .prologue
    const/4 v2, 0x0

    .line 524
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkUIClient;->onJsConfirmXWalkViewInternalStringStringXWalkJavascriptResultInternalMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkView;->getBridge()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    check-cast p4, Lorg/xwalk/core/XWalkJavascriptResultHandler;

    .end local p4    # "result":Lorg/xwalk/core/XWalkJavascriptResult;
    invoke-virtual {p4}, Lorg/xwalk/core/XWalkJavascriptResultHandler;->getBridge()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 532
    :goto_0
    return v1

    .line 525
    :catch_0
    move-exception v0

    .line 526
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 527
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 532
    goto :goto_0

    .line 529
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public onJsPrompt(Lorg/xwalk/core/XWalkView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/XWalkJavascriptResult;)Z
    .locals 6
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Lorg/xwalk/core/XWalkJavascriptResult;

    .prologue
    const/4 v2, 0x0

    .line 552
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkUIClient;->onJsPromptXWalkViewInternalStringStringStringXWalkJavascriptResultInternalMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkView;->getBridge()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    const/4 v4, 0x4

    check-cast p5, Lorg/xwalk/core/XWalkJavascriptResultHandler;

    .end local p5    # "result":Lorg/xwalk/core/XWalkJavascriptResult;
    invoke-virtual {p5}, Lorg/xwalk/core/XWalkJavascriptResultHandler;->getBridge()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 560
    :goto_0
    return v1

    .line 553
    :catch_0
    move-exception v0

    .line 554
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 555
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 560
    goto :goto_0

    .line 557
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public onPageLoadStarted(Lorg/xwalk/core/XWalkView;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 445
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkUIClient;->onPageLoadStartedXWalkViewInternalStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkView;->getBridge()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    :goto_0
    return-void

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 448
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 450
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public onPageLoadStopped(Lorg/xwalk/core/XWalkView;Ljava/lang/String;Lorg/xwalk/core/XWalkUIClient$LoadStatus;)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "status"    # Lorg/xwalk/core/XWalkUIClient$LoadStatus;

    .prologue
    .line 471
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkUIClient;->onPageLoadStoppedXWalkViewInternalStringLoadStatusInternalMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkView;->getBridge()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-direct {p0, p3}, Lorg/xwalk/core/XWalkUIClient;->ConvertLoadStatus(Lorg/xwalk/core/XWalkUIClient$LoadStatus;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :goto_0
    return-void

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 474
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 476
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public onReceivedIcon(Lorg/xwalk/core/XWalkView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 181
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkUIClient;->onReceivedIconXWalkViewInternalStringBitmapMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkView;->getBridge()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 184
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public onReceivedTitle(Lorg/xwalk/core/XWalkView;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 418
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkUIClient;->onReceivedTitleXWalkViewInternalStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkView;->getBridge()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :goto_0
    return-void

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 421
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 423
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public onRequestFocus(Lorg/xwalk/core/XWalkView;)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;

    .prologue
    .line 201
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkUIClient;->onRequestFocusXWalkViewInternalMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkView;->getBridge()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 204
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public onScaleChanged(Lorg/xwalk/core/XWalkView;FF)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "oldScale"    # F
    .param p3, "newScale"    # F

    .prologue
    .line 316
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkUIClient;->onScaleChangedXWalkViewInternalfloatfloatMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkView;->getBridge()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_0
    return-void

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 319
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public onUnhandledKeyEvent(Lorg/xwalk/core/XWalkView;Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 372
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkUIClient;->onUnhandledKeyEventXWalkViewInternalKeyEventMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkView;->getBridge()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :goto_0
    return-void

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 375
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public openFileChooser(Lorg/xwalk/core/XWalkView;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p3, "acceptType"    # Ljava/lang/String;
    .param p4, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xwalk/core/XWalkView;",
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
    .line 294
    .local p2, "uploadFile":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkUIClient;->openFileChooserXWalkViewInternalValueCallbackStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkView;->getBridge()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 297
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method reflectionInit()V
    .locals 14

    .prologue
    .line 567
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->initEmbeddedMode()V

    .line 569
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->getInstance()Lorg/xwalk/core/XWalkCoreWrapper;

    move-result-object v6

    iput-object v6, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    .line 570
    iget-object v6, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v6, :cond_0

    .line 571
    invoke-static {p0}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectObject(Ljava/lang/Object;)V

    .line 647
    :goto_0
    return-void

    .line 575
    :cond_0
    iget-object v6, p0, Lorg/xwalk/core/XWalkUIClient;->constructorTypes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 576
    .local v3, "length":I
    add-int/lit8 v6, v3, 0x1

    new-array v4, v6, [Ljava/lang/Class;

    .line 577
    .local v4, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 578
    iget-object v6, p0, Lorg/xwalk/core/XWalkUIClient;->constructorTypes:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 579
    .local v5, "type":Ljava/lang/Object;
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 580
    iget-object v6, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    check-cast v5, Ljava/lang/String;

    .end local v5    # "type":Ljava/lang/Object;
    invoke-virtual {v6, v5}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v2

    .line 581
    iget-object v6, p0, Lorg/xwalk/core/XWalkUIClient;->constructorParams:Ljava/util/ArrayList;

    iget-object v7, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    iget-object v8, p0, Lorg/xwalk/core/XWalkUIClient;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 577
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 582
    .restart local v5    # "type":Ljava/lang/Object;
    :cond_2
    instance-of v6, v5, Ljava/lang/Class;

    if-eqz v6, :cond_3

    .line 583
    check-cast v5, Ljava/lang/Class;

    .end local v5    # "type":Ljava/lang/Object;
    aput-object v5, v4, v2

    goto :goto_2

    .line 585
    .restart local v5    # "type":Ljava/lang/Object;
    :cond_3
    sget-boolean v6, Lorg/xwalk/core/XWalkUIClient;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 589
    .end local v5    # "type":Ljava/lang/Object;
    :cond_4
    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v3

    .line 590
    iget-object v6, p0, Lorg/xwalk/core/XWalkUIClient;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    new-instance v0, Lorg/xwalk/core/ReflectConstructor;

    iget-object v6, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v7, "XWalkUIClientBridge"

    invoke-virtual {v6, v7}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v0, v6, v4}, Lorg/xwalk/core/ReflectConstructor;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 595
    .local v0, "constructor":Lorg/xwalk/core/ReflectConstructor;
    :try_start_0
    iget-object v6, p0, Lorg/xwalk/core/XWalkUIClient;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/xwalk/core/ReflectConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lorg/xwalk/core/XWalkUIClient;->bridge:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    iget-object v6, p0, Lorg/xwalk/core/XWalkUIClient;->postWrapperMethod:Lorg/xwalk/core/ReflectMethod;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lorg/xwalk/core/XWalkUIClient;->postWrapperMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v7}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    :cond_5
    iget-object v6, p0, Lorg/xwalk/core/XWalkUIClient;->enumJavascriptMessageTypeClassValueOfMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v9, "XWalkUIClientInternal$JavascriptMessageTypeInternal"

    invoke-virtual {v8, v9}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string v9, "valueOf"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 604
    iget-object v6, p0, Lorg/xwalk/core/XWalkUIClient;->enumConsoleMessageTypeClassValueOfMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v9, "XWalkUIClientInternal$ConsoleMessageType"

    invoke-virtual {v8, v9}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string v9, "valueOf"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 606
    iget-object v6, p0, Lorg/xwalk/core/XWalkUIClient;->enumInitiateByClassValueOfMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v9, "XWalkUIClientInternal$InitiateByInternal"

    invoke-virtual {v8, v9}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string v9, "valueOf"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 608
    iget-object v6, p0, Lorg/xwalk/core/XWalkUIClient;->enumLoadStatusClassValueOfMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v9, "XWalkUIClientInternal$LoadStatusInternal"

    invoke-virtual {v8, v9}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string v9, "valueOf"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 611
    iget-object v6, p0, Lorg/xwalk/core/XWalkUIClient;->onCreateWindowRequestedXWalkViewInternalInitiateByInternalValueCallbackMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkUIClient;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onCreateWindowRequestedSuper"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkViewBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkUIClientInternal$InitiateByInternal"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-class v12, Landroid/webkit/ValueCallback;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 613
    iget-object v6, p0, Lorg/xwalk/core/XWalkUIClient;->onIconAvailableXWalkViewInternalStringMessageMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkUIClient;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onIconAvailableSuper"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkViewBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-class v12, Landroid/os/Message;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 615
    iget-object v6, p0, Lorg/xwalk/core/XWalkUIClient;->onReceivedIconXWalkViewInternalStringBitmapMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkUIClient;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onReceivedIconSuper"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkViewBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-class v12, Landroid/graphics/Bitmap;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 617
    iget-object v6, p0, Lorg/xwalk/core/XWalkUIClient;->onRequestFocusXWalkViewInternalMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkUIClient;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onRequestFocusSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkViewBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 619
    iget-object v6, p0, Lorg/xwalk/core/XWalkUIClient;->onJavascriptCloseWindowXWalkViewInternalMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkUIClient;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onJavascriptCloseWindowSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkViewBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 621
    iget-object v6, p0, Lorg/xwalk/core/XWalkUIClient;->onJavascriptModalDialogXWalkViewInternalJavascriptMessageTypeInternalStringStringStringXWalkJavascriptResultInternalMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkUIClient;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onJavascriptModalDialogSuper"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkViewBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkUIClientInternal$JavascriptMessageTypeInternal"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x5

    iget-object v12, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkJavascriptResultHandlerBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 623
    iget-object v6, p0, Lorg/xwalk/core/XWalkUIClient;->onFullscreenToggledXWalkViewInternalbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkUIClient;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onFullscreenToggledSuper"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkViewBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 625
    iget-object v6, p0, Lorg/xwalk/core/XWalkUIClient;->openFileChooserXWalkViewInternalValueCallbackStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkUIClient;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "openFileChooserSuper"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkViewBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Landroid/webkit/ValueCallback;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 627
    iget-object v6, p0, Lorg/xwalk/core/XWalkUIClient;->onScaleChangedXWalkViewInternalfloatfloatMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkUIClient;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onScaleChangedSuper"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkViewBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 629
    iget-object v6, p0, Lorg/xwalk/core/XWalkUIClient;->shouldOverrideKeyEventXWalkViewInternalKeyEventMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkUIClient;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "shouldOverrideKeyEventSuper"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkViewBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Landroid/view/KeyEvent;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 631
    iget-object v6, p0, Lorg/xwalk/core/XWalkUIClient;->onUnhandledKeyEventXWalkViewInternalKeyEventMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkUIClient;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onUnhandledKeyEventSuper"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkViewBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Landroid/view/KeyEvent;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 633
    iget-object v6, p0, Lorg/xwalk/core/XWalkUIClient;->onConsoleMessageXWalkViewInternalStringintStringConsoleMessageTypeMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkUIClient;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onConsoleMessageSuper"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkViewBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x4

    iget-object v12, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkUIClientInternal$ConsoleMessageType"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 635
    iget-object v6, p0, Lorg/xwalk/core/XWalkUIClient;->onReceivedTitleXWalkViewInternalStringMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkUIClient;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onReceivedTitleSuper"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkViewBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 637
    iget-object v6, p0, Lorg/xwalk/core/XWalkUIClient;->onPageLoadStartedXWalkViewInternalStringMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkUIClient;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onPageLoadStartedSuper"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkViewBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 639
    iget-object v6, p0, Lorg/xwalk/core/XWalkUIClient;->onPageLoadStoppedXWalkViewInternalStringLoadStatusInternalMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkUIClient;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onPageLoadStoppedSuper"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkViewBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    iget-object v12, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkUIClientInternal$LoadStatusInternal"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 641
    iget-object v6, p0, Lorg/xwalk/core/XWalkUIClient;->onJsAlertXWalkViewInternalStringStringXWalkJavascriptResultInternalMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkUIClient;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onJsAlertSuper"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkViewBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    iget-object v12, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkJavascriptResultHandlerBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 643
    iget-object v6, p0, Lorg/xwalk/core/XWalkUIClient;->onJsConfirmXWalkViewInternalStringStringXWalkJavascriptResultInternalMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkUIClient;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onJsConfirmSuper"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkViewBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    iget-object v12, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkJavascriptResultHandlerBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 645
    iget-object v6, p0, Lorg/xwalk/core/XWalkUIClient;->onJsPromptXWalkViewInternalStringStringStringXWalkJavascriptResultInternalMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkUIClient;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onJsPromptSuper"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkViewBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x4

    iget-object v12, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkJavascriptResultHandlerBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto/16 :goto_0

    .line 596
    :catch_0
    move-exception v1

    .line 597
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    goto/16 :goto_0
.end method

.method public shouldOverrideKeyEvent(Lorg/xwalk/core/XWalkView;Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 345
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkUIClient;->shouldOverrideKeyEventXWalkViewInternalKeyEventMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkView;->getBridge()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 353
    :goto_0
    return v1

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkUIClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 348
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 353
    goto :goto_0

    .line 350
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method
