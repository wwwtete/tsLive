.class public Lcom/nordnetab/chcp/main/updater/UpdatesInstaller;
.super Ljava/lang/Object;
.source "UpdatesInstaller.java"


# static fields
.field private static isInstalling:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 18
    sput-boolean p0, Lcom/nordnetab/chcp/main/updater/UpdatesInstaller;->isInstalling:Z

    return p0
.end method

.method private static dispatchBeforeInstallEvent()V
    .locals 2

    .prologue
    .line 83
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/nordnetab/chcp/main/events/BeforeInstallEvent;

    invoke-direct {v1}, Lcom/nordnetab/chcp/main/events/BeforeInstallEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method private static execute(Lcom/nordnetab/chcp/main/updater/WorkerTask;)V
    .locals 2
    .param p0, "task"    # Lcom/nordnetab/chcp/main/updater/WorkerTask;

    .prologue
    .line 69
    const/4 v0, 0x1

    sput-boolean v0, Lcom/nordnetab/chcp/main/updater/UpdatesInstaller;->isInstalling:Z

    .line 70
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/nordnetab/chcp/main/updater/UpdatesInstaller$1;

    invoke-direct {v1, p0}, Lcom/nordnetab/chcp/main/updater/UpdatesInstaller$1;-><init>(Lcom/nordnetab/chcp/main/updater/WorkerTask;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 80
    return-void
.end method

.method public static install(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/nordnetab/chcp/main/model/ChcpError;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "newVersion"    # Ljava/lang/String;
    .param p2, "currentVersion"    # Ljava/lang/String;

    .prologue
    .line 45
    sget-boolean v2, Lcom/nordnetab/chcp/main/updater/UpdatesInstaller;->isInstalling:Z

    if-eqz v2, :cond_0

    .line 46
    sget-object v2, Lcom/nordnetab/chcp/main/model/ChcpError;->INSTALLATION_ALREADY_IN_PROGRESS:Lcom/nordnetab/chcp/main/model/ChcpError;

    .line 65
    :goto_0
    return-object v2

    .line 50
    :cond_0
    invoke-static {}, Lcom/nordnetab/chcp/main/updater/UpdatesLoader;->isExecuting()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    sget-object v2, Lcom/nordnetab/chcp/main/model/ChcpError;->CANT_INSTALL_WHILE_DOWNLOAD_IN_PROGRESS:Lcom/nordnetab/chcp/main/model/ChcpError;

    goto :goto_0

    .line 55
    :cond_1
    new-instance v0, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    invoke-direct {v0, p0, p1}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    .local v0, "newReleaseFS":Lcom/nordnetab/chcp/main/model/PluginFilesStructure;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->getDownloadFolder()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 57
    :cond_2
    sget-object v2, Lcom/nordnetab/chcp/main/model/ChcpError;->NOTHING_TO_INSTALL:Lcom/nordnetab/chcp/main/model/ChcpError;

    goto :goto_0

    .line 60
    :cond_3
    invoke-static {}, Lcom/nordnetab/chcp/main/updater/UpdatesInstaller;->dispatchBeforeInstallEvent()V

    .line 62
    new-instance v1, Lcom/nordnetab/chcp/main/updater/InstallationWorker;

    invoke-direct {v1, p0, p1, p2}, Lcom/nordnetab/chcp/main/updater/InstallationWorker;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .local v1, "task":Lcom/nordnetab/chcp/main/updater/WorkerTask;
    invoke-static {v1}, Lcom/nordnetab/chcp/main/updater/UpdatesInstaller;->execute(Lcom/nordnetab/chcp/main/updater/WorkerTask;)V

    .line 65
    sget-object v2, Lcom/nordnetab/chcp/main/model/ChcpError;->NONE:Lcom/nordnetab/chcp/main/model/ChcpError;

    goto :goto_0
.end method

.method public static isInstalling()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/nordnetab/chcp/main/updater/UpdatesInstaller;->isInstalling:Z

    return v0
.end method
