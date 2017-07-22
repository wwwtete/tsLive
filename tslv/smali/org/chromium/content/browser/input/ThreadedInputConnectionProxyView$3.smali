.class Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView$3;
.super Ljava/lang/Object;
.source "ThreadedInputConnectionProxyView.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->hasWindowFocus()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView$3;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView$3;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;

    invoke-static {v0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->access$000(Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView$3;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
