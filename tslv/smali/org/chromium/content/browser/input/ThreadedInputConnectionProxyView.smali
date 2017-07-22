.class public Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;
.super Landroid/view/View;
.source "ThreadedInputConnectionProxyView.java"


# static fields
.field private static final DEBUG_LOGS:Z = false

.field private static final TAG:Ljava/lang/String; = "cr_Ime"


# instance fields
.field private final mContainerView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "containerView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 30
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mHandler:Landroid/os/Handler;

    .line 32
    iput-object p3, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mContainerView:Landroid/view/View;

    .line 33
    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->setFocusable(Z)V

    .line 34
    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->setFocusableInTouchMode(Z)V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->setVisibility(I)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;

    .prologue
    .line 22
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mContainerView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mContainerView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView$4;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView$4;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThreadBlockingNoException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView$7;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView$7;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThreadBlockingNoException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView$2;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView$2;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThreadBlockingNoException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView$3;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView$3;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThreadBlockingNoException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView$6;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView$6;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThreadBlockingNoException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView$5;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView$5;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThreadBlockingNoException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 54
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView$1;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;Landroid/view/inputmethod/EditorInfo;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThreadBlockingNoException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 132
    return-void
.end method
