.class Lorg/xwalk/core/XWalkUpdater$BackgroundListener$1;
.super Landroid/os/AsyncTask;
.source "XWalkUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/XWalkUpdater$BackgroundListener;->onDownloadCompleted(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/xwalk/core/XWalkUpdater$BackgroundListener;

.field final synthetic val$destDir:Ljava/lang/String;

.field final synthetic val$libFile:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/xwalk/core/XWalkUpdater$BackgroundListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener$1;->this$1:Lorg/xwalk/core/XWalkUpdater$BackgroundListener;

    iput-object p2, p0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener$1;->val$libFile:Ljava/lang/String;

    iput-object p3, p0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener$1;->val$destDir:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, 0x0

    .line 540
    invoke-static {}, Lorg/xwalk/core/XWalkEnvironment;->isXWalkVerify()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener$1;->this$1:Lorg/xwalk/core/XWalkUpdater$BackgroundListener;

    iget-object v0, v0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener;->this$0:Lorg/xwalk/core/XWalkUpdater;

    iget-object v1, p0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener$1;->val$libFile:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/xwalk/core/XWalkUpdater;->access$1000(Lorg/xwalk/core/XWalkUpdater;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 555
    :goto_0
    return-object v0

    .line 546
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener$1;->val$libFile:Ljava/lang/String;

    invoke-static {v0}, Lorg/xwalk/core/XWalkDecompressor;->isResourceCompressed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener$1;->val$libFile:Ljava/lang/String;

    iget-object v1, p0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener$1;->val$destDir:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/xwalk/core/XWalkDecompressor;->decompressResource(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 548
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 551
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener$1;->val$libFile:Ljava/lang/String;

    iget-object v1, p0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener$1;->val$destDir:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/xwalk/core/XWalkDecompressor;->extractResource(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 552
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 555
    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 537
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/xwalk/core/XWalkUpdater$BackgroundListener$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 560
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener$1;->val$libFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 562
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 563
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener$1;->this$1:Lorg/xwalk/core/XWalkUpdater$BackgroundListener;

    iget-object v0, v0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener;->this$0:Lorg/xwalk/core/XWalkUpdater;

    invoke-static {v0}, Lorg/xwalk/core/XWalkUpdater;->access$900(Lorg/xwalk/core/XWalkUpdater;)Lorg/xwalk/core/XWalkUpdater$XWalkBackgroundUpdateListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/xwalk/core/XWalkUpdater$XWalkBackgroundUpdateListener;->onXWalkUpdateFailed()V

    .line 567
    :goto_0
    return-void

    .line 565
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener$1;->this$1:Lorg/xwalk/core/XWalkUpdater$BackgroundListener;

    iget-object v0, v0, Lorg/xwalk/core/XWalkUpdater$BackgroundListener;->this$0:Lorg/xwalk/core/XWalkUpdater;

    invoke-static {v0}, Lorg/xwalk/core/XWalkUpdater;->access$900(Lorg/xwalk/core/XWalkUpdater;)Lorg/xwalk/core/XWalkUpdater$XWalkBackgroundUpdateListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/xwalk/core/XWalkUpdater$XWalkBackgroundUpdateListener;->onXWalkUpdateCompleted()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 537
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/xwalk/core/XWalkUpdater$BackgroundListener$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
