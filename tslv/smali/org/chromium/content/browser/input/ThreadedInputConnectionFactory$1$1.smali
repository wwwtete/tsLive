.class Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1$1;
.super Ljava/lang/Object;
.source "ThreadedInputConnectionFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1$1;->this$1:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1$1;->this$1:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;

    iget-object v0, v0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;->this$0:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1$1;->this$1:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;

    iget-object v1, v1, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;->val$view:Landroid/view/View;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->access$200(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;Landroid/view/View;I)V

    .line 133
    return-void
.end method
