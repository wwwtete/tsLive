.class Lorg/chromium/content/browser/input/ThreadedInputConnection$4;
.super Ljava/lang/Object;
.source "ThreadedInputConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/input/ThreadedInputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$4;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 73
    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$4;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    invoke-static {v1}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->access$200(Lorg/chromium/content/browser/input/ThreadedInputConnection;)Lorg/chromium/content/browser/input/ImeAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/ImeAdapter;->requestTextInputStateUpdate()Z

    move-result v0

    .line 74
    .local v0, "result":Z
    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$4;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->unblockOnUiThread()V

    .line 75
    :cond_0
    return-void
.end method
