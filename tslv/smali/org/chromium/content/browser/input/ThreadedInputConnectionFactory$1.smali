.class Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;
.super Ljava/lang/Object;
.source "ThreadedInputConnectionFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->triggerDelayedOnCreateInputConnection(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;

    iput-object p2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;

    invoke-static {v0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->access$000(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;)Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->onWindowFocusChanged(Z)V

    .line 125
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;

    invoke-static {v0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->access$100(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;)Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->isActive(Landroid/view/View;)Z

    .line 129
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;

    invoke-static {v0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->access$300(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1$1;

    invoke-direct {v1, p0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1$1;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
