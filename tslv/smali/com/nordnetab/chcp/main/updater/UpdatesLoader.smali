.class public Lcom/nordnetab/chcp/main/updater/UpdatesLoader;
.super Ljava/lang/Object;
.source "UpdatesLoader.java"


# static fields
.field private static isExecuting:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 15
    sput-boolean p0, Lcom/nordnetab/chcp/main/updater/UpdatesLoader;->isExecuting:Z

    return p0
.end method

.method public static downloadUpdate(Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest;)Lcom/nordnetab/chcp/main/model/ChcpError;
    .locals 2
    .param p0, "request"    # Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest;

    .prologue
    .line 37
    sget-boolean v1, Lcom/nordnetab/chcp/main/updater/UpdatesLoader;->isExecuting:Z

    if-eqz v1, :cond_0

    .line 38
    sget-object v1, Lcom/nordnetab/chcp/main/model/ChcpError;->DOWNLOAD_ALREADY_IN_PROGRESS:Lcom/nordnetab/chcp/main/model/ChcpError;

    .line 51
    :goto_0
    return-object v1

    .line 42
    :cond_0
    invoke-static {}, Lcom/nordnetab/chcp/main/updater/UpdatesInstaller;->isInstalling()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    sget-object v1, Lcom/nordnetab/chcp/main/model/ChcpError;->CANT_DOWNLOAD_UPDATE_WHILE_INSTALLATION_IN_PROGRESS:Lcom/nordnetab/chcp/main/model/ChcpError;

    goto :goto_0

    .line 46
    :cond_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/nordnetab/chcp/main/updater/UpdatesLoader;->isExecuting:Z

    .line 48
    new-instance v0, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;

    invoke-direct {v0, p0}, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;-><init>(Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest;)V

    .line 49
    .local v0, "task":Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;
    invoke-static {v0}, Lcom/nordnetab/chcp/main/updater/UpdatesLoader;->executeTask(Lcom/nordnetab/chcp/main/updater/WorkerTask;)V

    .line 51
    sget-object v1, Lcom/nordnetab/chcp/main/model/ChcpError;->NONE:Lcom/nordnetab/chcp/main/model/ChcpError;

    goto :goto_0
.end method

.method private static executeTask(Lcom/nordnetab/chcp/main/updater/WorkerTask;)V
    .locals 2
    .param p0, "task"    # Lcom/nordnetab/chcp/main/updater/WorkerTask;

    .prologue
    .line 55
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/nordnetab/chcp/main/updater/UpdatesLoader$1;

    invoke-direct {v1, p0}, Lcom/nordnetab/chcp/main/updater/UpdatesLoader$1;-><init>(Lcom/nordnetab/chcp/main/updater/WorkerTask;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 63
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 64
    return-void
.end method

.method public static isExecuting()Z
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/nordnetab/chcp/main/updater/UpdatesLoader;->isExecuting:Z

    return v0
.end method
