.class Lorg/chromium/content/browser/input/ThreadedInputConnection$12;
.super Ljava/lang/Object;
.source "ThreadedInputConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/input/ThreadedInputConnection;->deleteSurroundingText(II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

.field final synthetic val$afterLength:I

.field final synthetic val$beforeLength:I


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;II)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$12;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    iput p2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$12;->val$beforeLength:I

    iput p3, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$12;->val$afterLength:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 413
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$12;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    invoke-static {v0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->access$200(Lorg/chromium/content/browser/input/ThreadedInputConnection;)Lorg/chromium/content/browser/input/ImeAdapter;

    move-result-object v0

    iget v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$12;->val$beforeLength:I

    iget v2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$12;->val$afterLength:I

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content/browser/input/ImeAdapter;->deleteSurroundingText(II)Z

    .line 414
    return-void
.end method
