.class Lorg/chromium/content/browser/input/ThreadedInputConnection$3;
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
    .line 60
    iput-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$3;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 63
    iget-object v2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$3;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    invoke-static {v2}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->access$100(Lorg/chromium/content/browser/input/ThreadedInputConnection;)Lorg/chromium/content/browser/input/TextInputState;

    move-result-object v1

    .line 64
    .local v1, "textInputState":Lorg/chromium/content/browser/input/TextInputState;
    if-nez v1, :cond_0

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-virtual {v1}, Lorg/chromium/content/browser/input/TextInputState;->selection()Lorg/chromium/content/browser/input/Range;

    move-result-object v0

    .line 66
    .local v0, "selection":Lorg/chromium/content/browser/input/Range;
    iget-object v2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$3;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/Range;->end()I

    move-result v3

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/Range;->end()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->setSelection(II)Z

    goto :goto_0
.end method
