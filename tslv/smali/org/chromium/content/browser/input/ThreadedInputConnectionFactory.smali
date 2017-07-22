.class public Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;
.super Ljava/lang/Object;
.source "ThreadedInputConnectionFactory.java"

# interfaces
.implements Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;


# static fields
.field private static final CHECK_REGISTER_RETRY:I = 0x1

.field private static final DEBUG_LOGS:Z = false

.field private static final TAG:Ljava/lang/String; = "cr_Ime"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

.field private final mInputMethodUma:Lorg/chromium/content/browser/input/InputMethodUma;

.field private mProxyView:Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;

.field private mThreadedInputConnection:Lorg/chromium/content/browser/input/ThreadedInputConnection;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/InputMethodManagerWrapper;)V
    .locals 1
    .param p1, "inputMethodManagerWrapper"    # Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    .line 42
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->createHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mHandler:Landroid/os/Handler;

    .line 43
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->createInputMethodUma()Lorg/chromium/content/browser/input/InputMethodUma;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mInputMethodUma:Lorg/chromium/content/browser/input/InputMethodUma;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;)Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mProxyView:Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;)Lorg/chromium/content/browser/input/InputMethodManagerWrapper;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->postCheckRegisterResultOnImeThread(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->checkRegisterResult(Landroid/view/View;I)V

    return-void
.end method

.method private checkRegisterResult(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "retry"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mProxyView:Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->isActive(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mInputMethodUma:Lorg/chromium/content/browser/input/InputMethodUma;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/InputMethodUma;->recordProxyViewSuccess()V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->isActive(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    if-lez p2, :cond_2

    .line 167
    add-int/lit8 v0, p2, -0x1

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->postCheckRegisterResultOnImeThread(Landroid/view/View;I)V

    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->onRegisterProxyViewFailed()V

    goto :goto_0
.end method

.method private postCheckRegisterResultOnImeThread(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "retry"    # I

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 142
    .local v0, "viewHandler":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 143
    :cond_0
    new-instance v1, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$2;

    invoke-direct {v1, p0, p1, p2}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$2;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private shouldTriggerDelayedOnCreateInputConnection()Z
    .locals 6

    .prologue
    .line 73
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 74
    .local v4, "ste":Ljava/lang/StackTraceElement;
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "className":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-class v5, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "TestInputMethodManagerWrapper"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 78
    :cond_0
    const/4 v5, 0x0

    .line 81
    .end local v1    # "className":Ljava/lang/String;
    .end local v4    # "ste":Ljava/lang/StackTraceElement;
    :goto_1
    return v5

    .line 73
    .restart local v1    # "className":Ljava/lang/String;
    .restart local v4    # "ste":Ljava/lang/StackTraceElement;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    .end local v1    # "className":Ljava/lang/String;
    .end local v4    # "ste":Ljava/lang/StackTraceElement;
    :cond_2
    const/4 v5, 0x1

    goto :goto_1
.end method

.method private triggerDelayedOnCreateInputConnection(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mProxyView:Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->createProxyView(Landroid/os/Handler;Landroid/view/View;)Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mProxyView:Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mProxyView:Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->requestFocus()Z

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;

    invoke-direct {v1, p0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    return-void
.end method


# virtual methods
.method protected createHandler()Landroid/os/Handler;
    .locals 3
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 48
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "InputConnectionHandlerThread"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 50
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 51
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v1
.end method

.method protected createInputMethodUma()Lorg/chromium/content/browser/input/InputMethodUma;
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lorg/chromium/content/browser/input/InputMethodUma;

    invoke-direct {v0}, Lorg/chromium/content/browser/input/InputMethodUma;-><init>()V

    return-object v0
.end method

.method protected createProxyView(Landroid/os/Handler;Landroid/view/View;)Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "containerView"    # Landroid/view/View;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/View;)V

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public bridge synthetic initializeAndGet(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapter;IIIILandroid/view/inputmethod/EditorInfo;)Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;
    .locals 1

    .prologue
    .line 21
    invoke-virtual/range {p0 .. p7}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->initializeAndGet(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapter;IIIILandroid/view/inputmethod/EditorInfo;)Lorg/chromium/content/browser/input/ThreadedInputConnection;

    move-result-object v0

    return-object v0
.end method

.method public initializeAndGet(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapter;IIIILandroid/view/inputmethod/EditorInfo;)Lorg/chromium/content/browser/input/ThreadedInputConnection;
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "imeAdapter"    # Lorg/chromium/content/browser/input/ImeAdapter;
    .param p3, "inputType"    # I
    .param p4, "inputFlags"    # I
    .param p5, "selectionStart"    # I
    .param p6, "selectionEnd"    # I
    .param p7, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 88
    invoke-static {}, Lorg/chromium/content/browser/input/ImeUtils;->checkOnUiThread()V

    .line 89
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->shouldTriggerDelayedOnCreateInputConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->triggerDelayedOnCreateInputConnection(Landroid/view/View;)V

    .line 91
    const/4 v0, 0x0

    .line 100
    :goto_0
    return-object v0

    .line 94
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mThreadedInputConnection:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    if-nez v0, :cond_1

    .line 96
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, p2, v1}, Lorg/chromium/content/browser/input/ThreadedInputConnection;-><init>(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mThreadedInputConnection:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    .line 98
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mThreadedInputConnection:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->initializeOutAttrsOnUiThread(IIIILandroid/view/inputmethod/EditorInfo;)V

    .line 100
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mThreadedInputConnection:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    goto :goto_0
.end method

.method protected onRegisterProxyViewFailed()V
    .locals 2
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 176
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Failed to register proxy view"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
