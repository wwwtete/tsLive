.class Lorg/chromium/content/browser/input/ThreadedInputConnection$16;
.super Ljava/lang/Object;
.source "ThreadedInputConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/input/ThreadedInputConnection;->requestCursorUpdates(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

.field final synthetic val$cursorUpdateMode:I


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;I)V
    .locals 0

    .prologue
    .line 639
    iput-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$16;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    iput p2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$16;->val$cursorUpdateMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 642
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$16;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    invoke-static {v0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->access$200(Lorg/chromium/content/browser/input/ThreadedInputConnection;)Lorg/chromium/content/browser/input/ImeAdapter;

    move-result-object v0

    iget v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$16;->val$cursorUpdateMode:I

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->onRequestCursorUpdates(I)Z

    .line 643
    return-void
.end method
