.class Lorg/xwalk/core/XWalkInitializer$XWalkLibraryListener;
.super Ljava/lang/Object;
.source "XWalkInitializer.java"

# interfaces
.implements Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;
.implements Lorg/xwalk/core/XWalkLibraryLoader$ActivateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xwalk/core/XWalkInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XWalkLibraryListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xwalk/core/XWalkInitializer;


# direct methods
.method private constructor <init>(Lorg/xwalk/core/XWalkInitializer;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lorg/xwalk/core/XWalkInitializer$XWalkLibraryListener;->this$0:Lorg/xwalk/core/XWalkInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/xwalk/core/XWalkInitializer;Lorg/xwalk/core/XWalkInitializer$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/xwalk/core/XWalkInitializer;
    .param p2, "x1"    # Lorg/xwalk/core/XWalkInitializer$1;

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lorg/xwalk/core/XWalkInitializer$XWalkLibraryListener;-><init>(Lorg/xwalk/core/XWalkInitializer;)V

    return-void
.end method


# virtual methods
.method public onActivateCompleted()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lorg/xwalk/core/XWalkInitializer$XWalkLibraryListener;->this$0:Lorg/xwalk/core/XWalkInitializer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/xwalk/core/XWalkInitializer;->access$102(Lorg/xwalk/core/XWalkInitializer;Z)Z

    .line 238
    iget-object v0, p0, Lorg/xwalk/core/XWalkInitializer$XWalkLibraryListener;->this$0:Lorg/xwalk/core/XWalkInitializer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/xwalk/core/XWalkInitializer;->access$402(Lorg/xwalk/core/XWalkInitializer;Z)Z

    .line 239
    iget-object v0, p0, Lorg/xwalk/core/XWalkInitializer$XWalkLibraryListener;->this$0:Lorg/xwalk/core/XWalkInitializer;

    invoke-static {v0}, Lorg/xwalk/core/XWalkInitializer;->access$200(Lorg/xwalk/core/XWalkInitializer;)Lorg/xwalk/core/XWalkInitializer$XWalkInitListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/xwalk/core/XWalkInitializer$XWalkInitListener;->onXWalkInitCompleted()V

    .line 240
    return-void
.end method

.method public onActivateFailed()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lorg/xwalk/core/XWalkInitializer$XWalkLibraryListener;->this$0:Lorg/xwalk/core/XWalkInitializer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/xwalk/core/XWalkInitializer;->access$102(Lorg/xwalk/core/XWalkInitializer;Z)Z

    .line 232
    iget-object v0, p0, Lorg/xwalk/core/XWalkInitializer$XWalkLibraryListener;->this$0:Lorg/xwalk/core/XWalkInitializer;

    invoke-static {v0}, Lorg/xwalk/core/XWalkInitializer;->access$200(Lorg/xwalk/core/XWalkInitializer;)Lorg/xwalk/core/XWalkInitializer$XWalkInitListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/xwalk/core/XWalkInitializer$XWalkInitListener;->onXWalkInitFailed()V

    .line 233
    return-void
.end method

.method public onActivateStarted()V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method public onDecompressCancelled()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lorg/xwalk/core/XWalkInitializer$XWalkLibraryListener;->this$0:Lorg/xwalk/core/XWalkInitializer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/xwalk/core/XWalkInitializer;->access$102(Lorg/xwalk/core/XWalkInitializer;Z)Z

    .line 217
    iget-object v0, p0, Lorg/xwalk/core/XWalkInitializer$XWalkLibraryListener;->this$0:Lorg/xwalk/core/XWalkInitializer;

    invoke-static {v0}, Lorg/xwalk/core/XWalkInitializer;->access$200(Lorg/xwalk/core/XWalkInitializer;)Lorg/xwalk/core/XWalkInitializer$XWalkInitListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/xwalk/core/XWalkInitializer$XWalkInitListener;->onXWalkInitCancelled()V

    .line 218
    return-void
.end method

.method public onDecompressCompleted()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lorg/xwalk/core/XWalkInitializer$XWalkLibraryListener;->this$0:Lorg/xwalk/core/XWalkInitializer;

    invoke-static {v0}, Lorg/xwalk/core/XWalkInitializer;->access$300(Lorg/xwalk/core/XWalkInitializer;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/xwalk/core/XWalkLibraryLoader;->startActivate(Lorg/xwalk/core/XWalkLibraryLoader$ActivateListener;Landroid/app/Activity;)V

    .line 223
    return-void
.end method

.method public onDecompressStarted()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method
