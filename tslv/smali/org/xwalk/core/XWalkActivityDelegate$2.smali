.class Lorg/xwalk/core/XWalkActivityDelegate$2;
.super Ljava/lang/Object;
.source "XWalkActivityDelegate.java"

# interfaces
.implements Lorg/xwalk/core/XWalkUpdater$XWalkBackgroundUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/XWalkActivityDelegate;->onActivateFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xwalk/core/XWalkActivityDelegate;


# direct methods
.method constructor <init>(Lorg/xwalk/core/XWalkActivityDelegate;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lorg/xwalk/core/XWalkActivityDelegate$2;->this$0:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onXWalkUpdateCancelled()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate$2;->this$0:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-static {v0}, Lorg/xwalk/core/XWalkActivityDelegate;->access$000(Lorg/xwalk/core/XWalkActivityDelegate;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 128
    return-void
.end method

.method public onXWalkUpdateCompleted()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate$2;->this$0:Lorg/xwalk/core/XWalkActivityDelegate;

    iget-object v1, p0, Lorg/xwalk/core/XWalkActivityDelegate$2;->this$0:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-static {v1}, Lorg/xwalk/core/XWalkActivityDelegate;->access$100(Lorg/xwalk/core/XWalkActivityDelegate;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xwalk/core/XWalkLibraryLoader;->startActivate(Lorg/xwalk/core/XWalkLibraryLoader$ActivateListener;Landroid/app/Activity;)V

    .line 138
    return-void
.end method

.method public onXWalkUpdateFailed()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate$2;->this$0:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-static {v0}, Lorg/xwalk/core/XWalkActivityDelegate;->access$000(Lorg/xwalk/core/XWalkActivityDelegate;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 133
    return-void
.end method

.method public onXWalkUpdateProgress(I)V
    .locals 0
    .param p1, "percentage"    # I

    .prologue
    .line 123
    return-void
.end method

.method public onXWalkUpdateStarted()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method
