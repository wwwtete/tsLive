.class Lorg/chromium/content/browser/input/ThreadedInputConnection$8;
.super Ljava/lang/Object;
.source "ThreadedInputConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/input/ThreadedInputConnection;->updateComposingText(Ljava/lang/CharSequence;IZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

.field final synthetic val$accentToSend:I

.field final synthetic val$newCursorPosition:I

.field final synthetic val$text:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;Ljava/lang/CharSequence;II)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$8;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    iput-object p2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$8;->val$text:Ljava/lang/CharSequence;

    iput p3, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$8;->val$newCursorPosition:I

    iput p4, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$8;->val$accentToSend:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 299
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$8;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    invoke-static {v0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->access$200(Lorg/chromium/content/browser/input/ThreadedInputConnection;)Lorg/chromium/content/browser/input/ImeAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$8;->val$text:Ljava/lang/CharSequence;

    iget v2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$8;->val$newCursorPosition:I

    const/4 v3, 0x0

    iget v4, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection$8;->val$accentToSend:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/chromium/content/browser/input/ImeAdapter;->sendCompositionToNative(Ljava/lang/CharSequence;IZI)Z

    .line 300
    return-void
.end method
