.class Lorg/xwalk/core/XWalkUpdater$BackgroundListener;
.super Ljava/lang/Object;
.source "XWalkUpdater.java"

# interfaces
.implements Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xwalk/core/XWalkUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xwalk/core/XWalkUpdater;


# direct methods
.method private constructor <init>(Lorg/xwalk/core/XWalkUpdater;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener;->this$0:Lorg/xwalk/core/XWalkUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/xwalk/core/XWalkUpdater;Lorg/xwalk/core/XWalkUpdater$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/xwalk/core/XWalkUpdater;
    .param p2, "x1"    # Lorg/xwalk/core/XWalkUpdater$1;

    .prologue
    .line 505
    invoke-direct {p0, p1}, Lorg/xwalk/core/XWalkUpdater$BackgroundListener;-><init>(Lorg/xwalk/core/XWalkUpdater;)V

    return-void
.end method


# virtual methods
.method public onDownloadCancelled()V
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener;->this$0:Lorg/xwalk/core/XWalkUpdater;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/xwalk/core/XWalkUpdater;->access$802(Lorg/xwalk/core/XWalkUpdater;Z)Z

    .line 520
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener;->this$0:Lorg/xwalk/core/XWalkUpdater;

    invoke-static {v0}, Lorg/xwalk/core/XWalkUpdater;->access$900(Lorg/xwalk/core/XWalkUpdater;)Lorg/xwalk/core/XWalkUpdater$XWalkBackgroundUpdateListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/xwalk/core/XWalkUpdater$XWalkBackgroundUpdateListener;->onXWalkUpdateCancelled()V

    .line 521
    return-void
.end method

.method public onDownloadCompleted(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    .line 531
    iget-object v2, p0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener;->this$0:Lorg/xwalk/core/XWalkUpdater;

    invoke-static {v2, v5}, Lorg/xwalk/core/XWalkUpdater;->access$802(Lorg/xwalk/core/XWalkUpdater;Z)Z

    .line 532
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 533
    .local v1, "libFile":Ljava/lang/String;
    iget-object v2, p0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener;->this$0:Lorg/xwalk/core/XWalkUpdater;

    invoke-static {v2}, Lorg/xwalk/core/XWalkUpdater;->access$400(Lorg/xwalk/core/XWalkUpdater;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "extracted_xwalkcore"

    invoke-virtual {v2, v3, v5}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, "destDir":Ljava/lang/String;
    const-string v2, "XWalkLib"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Download mode extract dir: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    new-instance v2, Lorg/xwalk/core/XWalkUpdater$BackgroundListener$1;

    invoke-direct {v2, p0, v1, v0}, Lorg/xwalk/core/XWalkUpdater$BackgroundListener$1;-><init>(Lorg/xwalk/core/XWalkUpdater$BackgroundListener;Ljava/lang/String;Ljava/lang/String;)V

    new-array v3, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lorg/xwalk/core/XWalkUpdater$BackgroundListener$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 569
    return-void
.end method

.method public onDownloadFailed(II)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "error"    # I

    .prologue
    .line 525
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener;->this$0:Lorg/xwalk/core/XWalkUpdater;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/xwalk/core/XWalkUpdater;->access$802(Lorg/xwalk/core/XWalkUpdater;Z)Z

    .line 526
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener;->this$0:Lorg/xwalk/core/XWalkUpdater;

    invoke-static {v0}, Lorg/xwalk/core/XWalkUpdater;->access$900(Lorg/xwalk/core/XWalkUpdater;)Lorg/xwalk/core/XWalkUpdater$XWalkBackgroundUpdateListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/xwalk/core/XWalkUpdater$XWalkBackgroundUpdateListener;->onXWalkUpdateFailed()V

    .line 527
    return-void
.end method

.method public onDownloadStarted()V
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener;->this$0:Lorg/xwalk/core/XWalkUpdater;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/xwalk/core/XWalkUpdater;->access$802(Lorg/xwalk/core/XWalkUpdater;Z)Z

    .line 509
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener;->this$0:Lorg/xwalk/core/XWalkUpdater;

    invoke-static {v0}, Lorg/xwalk/core/XWalkUpdater;->access$900(Lorg/xwalk/core/XWalkUpdater;)Lorg/xwalk/core/XWalkUpdater$XWalkBackgroundUpdateListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/xwalk/core/XWalkUpdater$XWalkBackgroundUpdateListener;->onXWalkUpdateStarted()V

    .line 510
    return-void
.end method

.method public onDownloadUpdated(I)V
    .locals 1
    .param p1, "percentage"    # I

    .prologue
    .line 514
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener;->this$0:Lorg/xwalk/core/XWalkUpdater;

    invoke-static {v0}, Lorg/xwalk/core/XWalkUpdater;->access$900(Lorg/xwalk/core/XWalkUpdater;)Lorg/xwalk/core/XWalkUpdater$XWalkBackgroundUpdateListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/xwalk/core/XWalkUpdater$XWalkBackgroundUpdateListener;->onXWalkUpdateProgress(I)V

    .line 515
    return-void
.end method
