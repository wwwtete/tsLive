.class Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$2;
.super Ljava/lang/Object;
.source "ThreadedInputConnectionFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->postCheckRegisterResultOnImeThread(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;

.field final synthetic val$retry:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$2;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;

    iput-object p2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$2;->val$view:Landroid/view/View;

    iput p3, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$2;->val$retry:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$2;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$2;->val$view:Landroid/view/View;

    iget v2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$2;->val$retry:I

    invoke-static {v0, v1, v2}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->access$400(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;Landroid/view/View;I)V

    .line 147
    return-void
.end method
