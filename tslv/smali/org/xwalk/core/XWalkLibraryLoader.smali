.class Lorg/xwalk/core/XWalkLibraryLoader;
.super Ljava/lang/Object;
.source "XWalkLibraryLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/XWalkLibraryLoader$HttpDownloadTask;,
        Lorg/xwalk/core/XWalkLibraryLoader$DownloadManagerTask;,
        Lorg/xwalk/core/XWalkLibraryLoader$ActivateTask;,
        Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;,
        Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;,
        Lorg/xwalk/core/XWalkLibraryLoader$ActivateListener;,
        Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_DOWNLOAD_FILE_NAME:Ljava/lang/String; = "xwalk_download.tmp"

.field private static final DOWNLOAD_WITHOUT_NOTIFICATION:Ljava/lang/String; = "android.permission.DOWNLOAD_WITHOUT_NOTIFICATION"

.field private static final TAG:Ljava/lang/String; = "XWalkLib"

.field private static sActiveTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    return-void
.end method

.method static synthetic access$002(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Landroid/os/AsyncTask;

    .prologue
    .line 47
    sput-object p0, Lorg/xwalk/core/XWalkLibraryLoader;->sActiveTask:Landroid/os/AsyncTask;

    return-object p0
.end method

.method public static cancelDecompress()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 191
    sget-object v0, Lorg/xwalk/core/XWalkLibraryLoader;->sActiveTask:Landroid/os/AsyncTask;

    check-cast v0, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;

    .line 192
    .local v0, "task":Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->cancel(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static cancelDownloadManager()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 232
    sget-object v1, Lorg/xwalk/core/XWalkLibraryLoader;->sActiveTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    sget-object v1, Lorg/xwalk/core/XWalkLibraryLoader;->sActiveTask:Landroid/os/AsyncTask;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cancelHttpDownload()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 257
    sget-object v1, Lorg/xwalk/core/XWalkLibraryLoader;->sActiveTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    sget-object v1, Lorg/xwalk/core/XWalkLibraryLoader;->sActiveTask:Landroid/os/AsyncTask;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLibraryStatus()I
    .locals 1

    .prologue
    .line 157
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->getCoreStatus()I

    move-result v0

    return v0
.end method

.method public static isLibraryReady()Z
    .locals 1

    .prologue
    .line 150
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->getInstance()Lorg/xwalk/core/XWalkCoreWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSharedLibrary()Z
    .locals 1

    .prologue
    .line 142
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->getInstance()Lorg/xwalk/core/XWalkCoreWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->isSharedMode()Z

    move-result v0

    return v0
.end method

.method public static prepareToInit(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 166
    invoke-static {p0}, Lorg/xwalk/core/XWalkEnvironment;->init(Landroid/content/Context;)V

    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handlePreInit(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public static startActivate(Lorg/xwalk/core/XWalkLibraryLoader$ActivateListener;Landroid/app/Activity;)V
    .locals 2
    .param p0, "listener"    # Lorg/xwalk/core/XWalkLibraryLoader$ActivateListener;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 203
    invoke-static {}, Lorg/xwalk/core/XWalkEnvironment;->getInitializationContext()Landroid/content/Context;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 204
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The context of initialization is not consistent"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    new-instance v0, Lorg/xwalk/core/XWalkLibraryLoader$ActivateTask;

    invoke-direct {v0, p0, p1}, Lorg/xwalk/core/XWalkLibraryLoader$ActivateTask;-><init>(Lorg/xwalk/core/XWalkLibraryLoader$ActivateListener;Landroid/app/Activity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/XWalkLibraryLoader$ActivateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 207
    return-void
.end method

.method public static startDecompress(Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;Landroid/content/Context;)V
    .locals 2
    .param p0, "listener"    # Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    invoke-static {}, Lorg/xwalk/core/XWalkEnvironment;->getInitializationContext()Landroid/content/Context;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 180
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The context of initialization is not consistent"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    new-instance v0, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;

    invoke-direct {v0, p0, p1}, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;-><init>(Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 183
    return-void
.end method

.method public static startDownloadManager(Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "listener"    # Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 220
    invoke-static {}, Lorg/xwalk/core/XWalkEnvironment;->getInitializationContext()Landroid/content/Context;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 221
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The context of initialization is not consistent"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    new-instance v0, Lorg/xwalk/core/XWalkLibraryLoader$DownloadManagerTask;

    invoke-direct {v0, p0, p1, p2}, Lorg/xwalk/core/XWalkLibraryLoader$DownloadManagerTask;-><init>(Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/XWalkLibraryLoader$DownloadManagerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 224
    return-void
.end method

.method public static startHttpDownload(Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "listener"    # Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 245
    invoke-static {}, Lorg/xwalk/core/XWalkEnvironment;->getInitializationContext()Landroid/content/Context;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The context of initialization is not consistent"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_0
    new-instance v0, Lorg/xwalk/core/XWalkLibraryLoader$HttpDownloadTask;

    invoke-direct {v0, p0, p1, p2}, Lorg/xwalk/core/XWalkLibraryLoader$HttpDownloadTask;-><init>(Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/XWalkLibraryLoader$HttpDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 249
    return-void
.end method
