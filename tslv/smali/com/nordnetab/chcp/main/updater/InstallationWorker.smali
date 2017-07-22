.class Lcom/nordnetab/chcp/main/updater/InstallationWorker;
.super Ljava/lang/Object;
.source "InstallationWorker.java"

# interfaces
.implements Lcom/nordnetab/chcp/main/updater/WorkerTask;


# instance fields
.field private currentReleaseFS:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

.field private manifestDiff:Lcom/nordnetab/chcp/main/model/ManifestDiff;

.field private newAppConfig:Lcom/nordnetab/chcp/main/config/ApplicationConfig;

.field private newReleaseFS:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

.field private resultEvent:Lcom/nordnetab/chcp/main/events/WorkerEvent;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newVersion"    # Ljava/lang/String;
    .param p3, "currentVersion"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    invoke-direct {v0, p1, p2}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nordnetab/chcp/main/updater/InstallationWorker;->newReleaseFS:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    .line 50
    new-instance v0, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    invoke-direct {v0, p1, p3}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nordnetab/chcp/main/updater/InstallationWorker;->currentReleaseFS:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    .line 51
    return-void
.end method

.method private cleanUpOnFailure()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/nordnetab/chcp/main/updater/InstallationWorker;->newReleaseFS:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    invoke-virtual {v0}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->getContentFolder()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nordnetab/chcp/main/utils/FilesUtility;->delete(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method private cleanUpOnSuccess()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/nordnetab/chcp/main/updater/InstallationWorker;->newReleaseFS:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    invoke-virtual {v0}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->getDownloadFolder()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nordnetab/chcp/main/utils/FilesUtility;->delete(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method private copyFilesFromCurrentReleaseToNewRelease()Z
    .locals 5

    .prologue
    .line 131
    const/4 v3, 0x1

    .line 132
    .local v3, "result":Z
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/nordnetab/chcp/main/updater/InstallationWorker;->currentReleaseFS:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    invoke-virtual {v4}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->getWwwFolder()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, "currentWwwFolder":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/nordnetab/chcp/main/updater/InstallationWorker;->newReleaseFS:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    invoke-virtual {v4}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->getWwwFolder()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v2, "newWwwFolder":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 137
    invoke-static {v2}, Lcom/nordnetab/chcp/main/utils/FilesUtility;->delete(Ljava/io/File;)V

    .line 140
    :cond_0
    invoke-static {v0, v2}, Lcom/nordnetab/chcp/main/utils/FilesUtility;->copy(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return v3

    .line 141
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private deleteUnusedFiles()V
    .locals 6

    .prologue
    .line 167
    iget-object v3, p0, Lcom/nordnetab/chcp/main/updater/InstallationWorker;->manifestDiff:Lcom/nordnetab/chcp/main/model/ManifestDiff;

    invoke-virtual {v3}, Lcom/nordnetab/chcp/main/model/ManifestDiff;->deletedFiles()Ljava/util/List;

    move-result-object v2

    .line 168
    .local v2, "files":Ljava/util/List;, "Ljava/util/List<Lcom/nordnetab/chcp/main/model/ManifestFile;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nordnetab/chcp/main/model/ManifestFile;

    .line 169
    .local v0, "file":Lcom/nordnetab/chcp/main/model/ManifestFile;
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/nordnetab/chcp/main/updater/InstallationWorker;->newReleaseFS:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    invoke-virtual {v4}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->getWwwFolder()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/nordnetab/chcp/main/model/ManifestFile;->name:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .local v1, "fileToDelete":Ljava/io/File;
    invoke-static {v1}, Lcom/nordnetab/chcp/main/utils/FilesUtility;->delete(Ljava/io/File;)V

    goto :goto_0

    .line 172
    .end local v0    # "file":Lcom/nordnetab/chcp/main/model/ManifestFile;
    .end local v1    # "fileToDelete":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private init()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 97
    new-instance v0, Lcom/nordnetab/chcp/main/storage/ApplicationConfigStorage;

    invoke-direct {v0}, Lcom/nordnetab/chcp/main/storage/ApplicationConfigStorage;-><init>()V

    .line 98
    .local v0, "appConfigStorage":Lcom/nordnetab/chcp/main/storage/IObjectFileStorage;, "Lcom/nordnetab/chcp/main/storage/IObjectFileStorage<Lcom/nordnetab/chcp/main/config/ApplicationConfig;>;"
    iget-object v4, p0, Lcom/nordnetab/chcp/main/updater/InstallationWorker;->newReleaseFS:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    invoke-virtual {v4}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->getDownloadFolder()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/nordnetab/chcp/main/storage/IObjectFileStorage;->loadFromFolder(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nordnetab/chcp/main/config/ApplicationConfig;

    iput-object v4, p0, Lcom/nordnetab/chcp/main/updater/InstallationWorker;->newAppConfig:Lcom/nordnetab/chcp/main/config/ApplicationConfig;

    .line 99
    iget-object v4, p0, Lcom/nordnetab/chcp/main/updater/InstallationWorker;->newAppConfig:Lcom/nordnetab/chcp/main/config/ApplicationConfig;

    if-nez v4, :cond_0

    .line 100
    sget-object v4, Lcom/nordnetab/chcp/main/model/ChcpError;->LOADED_VERSION_OF_APPLICATION_CONFIG_NOT_FOUND:Lcom/nordnetab/chcp/main/model/ChcpError;

    invoke-direct {p0, v4}, Lcom/nordnetab/chcp/main/updater/InstallationWorker;->setResultForError(Lcom/nordnetab/chcp/main/model/ChcpError;)V

    move v4, v5

    .line 122
    :goto_0
    return v4

    .line 105
    :cond_0
    new-instance v1, Lcom/nordnetab/chcp/main/storage/ContentManifestStorage;

    invoke-direct {v1}, Lcom/nordnetab/chcp/main/storage/ContentManifestStorage;-><init>()V

    .line 106
    .local v1, "manifestStorage":Lcom/nordnetab/chcp/main/storage/IObjectFileStorage;, "Lcom/nordnetab/chcp/main/storage/IObjectFileStorage<Lcom/nordnetab/chcp/main/config/ContentManifest;>;"
    iget-object v4, p0, Lcom/nordnetab/chcp/main/updater/InstallationWorker;->currentReleaseFS:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    invoke-virtual {v4}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->getWwwFolder()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/nordnetab/chcp/main/storage/IObjectFileStorage;->loadFromFolder(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nordnetab/chcp/main/config/ContentManifest;

    .line 107
    .local v3, "oldManifest":Lcom/nordnetab/chcp/main/config/ContentManifest;
    if-nez v3, :cond_1

    .line 108
    sget-object v4, Lcom/nordnetab/chcp/main/model/ChcpError;->LOCAL_VERSION_OF_MANIFEST_NOT_FOUND:Lcom/nordnetab/chcp/main/model/ChcpError;

    invoke-direct {p0, v4}, Lcom/nordnetab/chcp/main/updater/InstallationWorker;->setResultForError(Lcom/nordnetab/chcp/main/model/ChcpError;)V

    move v4, v5

    .line 109
    goto :goto_0

    .line 113
    :cond_1
    iget-object v4, p0, Lcom/nordnetab/chcp/main/updater/InstallationWorker;->newReleaseFS:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    invoke-virtual {v4}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->getDownloadFolder()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/nordnetab/chcp/main/storage/IObjectFileStorage;->loadFromFolder(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nordnetab/chcp/main/config/ContentManifest;

    .line 114
    .local v2, "newManifest":Lcom/nordnetab/chcp/main/config/ContentManifest;
    if-nez v2, :cond_2

    .line 115
    sget-object v4, Lcom/nordnetab/chcp/main/model/ChcpError;->LOADED_VERSION_OF_MANIFEST_NOT_FOUND:Lcom/nordnetab/chcp/main/model/ChcpError;

    invoke-direct {p0, v4}, Lcom/nordnetab/chcp/main/updater/InstallationWorker;->setResultForError(Lcom/nordnetab/chcp/main/model/ChcpError;)V

    move v4, v5

    .line 116
    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {v3, v2}, Lcom/nordnetab/chcp/main/config/ContentManifest;->calculateDifference(Lcom/nordnetab/chcp/main/config/ContentManifest;)Lcom/nordnetab/chcp/main/model/ManifestDiff;

    move-result-object v4

    iput-object v4, p0, Lcom/nordnetab/chcp/main/updater/InstallationWorker;->manifestDiff:Lcom/nordnetab/chcp/main/model/ManifestDiff;

    .line 122
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private isUpdateValid(Ljava/lang/String;Lcom/nordnetab/chcp/main/model/ManifestDiff;)Z
    .locals 9
    .param p1, "downloadFolderPath"    # Ljava/lang/String;
    .param p2, "manifestDiff"    # Lcom/nordnetab/chcp/main/model/ManifestDiff;

    .prologue
    .line 200
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, "downloadFolder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 202
    const/4 v3, 0x0

    .line 224
    :cond_0
    :goto_0
    return v3

    .line 205
    :cond_1
    const/4 v3, 0x1

    .line 206
    .local v3, "isValid":Z
    invoke-virtual {p2}, Lcom/nordnetab/chcp/main/model/ManifestDiff;->getUpdateFiles()Ljava/util/List;

    move-result-object v4

    .line 208
    .local v4, "updateFileList":Ljava/util/List;, "Ljava/util/List<Lcom/nordnetab/chcp/main/model/ManifestFile;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nordnetab/chcp/main/model/ManifestFile;

    .line 209
    .local v5, "updatedFile":Lcom/nordnetab/chcp/main/model/ManifestFile;
    new-instance v2, Ljava/io/File;

    iget-object v7, v5, Lcom/nordnetab/chcp/main/model/ManifestFile;->name:Ljava/lang/String;

    invoke-direct {v2, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 212
    .local v2, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 213
    invoke-static {v2}, Lcom/nordnetab/chcp/main/utils/FilesUtility;->calculateFileHash(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v5, Lcom/nordnetab/chcp/main/model/ManifestFile;->hash:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_2

    .line 214
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    const/4 v3, 0x0

    .line 220
    goto :goto_0
.end method

.method private moveFilesFromInstallationFolderToWwwFolder()Z
    .locals 3

    .prologue
    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/nordnetab/chcp/main/updater/InstallationWorker;->newReleaseFS:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    invoke-virtual {v1}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->getDownloadFolder()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nordnetab/chcp/main/updater/InstallationWorker;->newReleaseFS:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    invoke-virtual {v2}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->getWwwFolder()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nordnetab/chcp/main/utils/FilesUtility;->copy(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    const/4 v1, 0x1

    .line 187
    :goto_0
    return v1

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 187
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setResultForError(Lcom/nordnetab/chcp/main/model/ChcpError;)V
    .locals 2
    .param p1, "error"    # Lcom/nordnetab/chcp/main/model/ChcpError;

    .prologue
    .line 230
    new-instance v0, Lcom/nordnetab/chcp/main/events/UpdateInstallationErrorEvent;

    iget-object v1, p0, Lcom/nordnetab/chcp/main/updater/InstallationWorker;->newAppConfig:Lcom/nordnetab/chcp/main/config/ApplicationConfig;

    invoke-direct {v0, p1, v1}, Lcom/nordnetab/chcp/main/events/UpdateInstallationErrorEvent;-><init>(Lcom/nordnetab/chcp/main/model/ChcpError;Lcom/nordnetab/chcp/main/config/ApplicationConfig;)V

    iput-object v0, p0, Lcom/nordnetab/chcp/main/updater/InstallationWorker;->resultEvent:Lcom/nordnetab/chcp/main/events/WorkerEvent;

    .line 231
    return-void
.end method

.method private setSuccessResult()V
    .locals 2

    .prologue
    .line 234
    new-instance v0, Lcom/nordnetab/chcp/main/events/UpdateInstalledEvent;

    iget-object v1, p0, Lcom/nordnetab/chcp/main/updater/InstallationWorker;->newAppConfig:Lcom/nordnetab/chcp/main/config/ApplicationConfig;

    invoke-direct {v0, v1}, Lcom/nordnetab/chcp/main/events/UpdateInstalledEvent;-><init>(Lcom/nordnetab/chcp/main/config/ApplicationConfig;)V

    iput-object v0, p0, Lcom/nordnetab/chcp/main/updater/InstallationWorker;->resultEvent:Lcom/nordnetab/chcp/main/events/WorkerEvent;

    .line 235
    return-void
.end method


# virtual methods
.method public result()Lcom/nordnetab/chcp/main/events/WorkerEvent;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/nordnetab/chcp/main/updater/InstallationWorker;->resultEvent:Lcom/nordnetab/chcp/main/events/WorkerEvent;

    return-object v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/nordnetab/chcp/main/updater/InstallationWorker;->init()Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/nordnetab/chcp/main/updater/InstallationWorker;->newReleaseFS:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    invoke-virtual {v1}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->getDownloadFolder()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nordnetab/chcp/main/updater/InstallationWorker;->manifestDiff:Lcom/nordnetab/chcp/main/model/ManifestDiff;

    invoke-direct {p0, v1, v2}, Lcom/nordnetab/chcp/main/updater/InstallationWorker;->isUpdateValid(Ljava/lang/String;Lcom/nordnetab/chcp/main/model/ManifestDiff;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    sget-object v1, Lcom/nordnetab/chcp/main/model/ChcpError;->UPDATE_IS_INVALID:Lcom/nordnetab/chcp/main/model/ChcpError;

    invoke-direct {p0, v1}, Lcom/nordnetab/chcp/main/updater/InstallationWorker;->setResultForError(Lcom/nordnetab/chcp/main/model/ChcpError;)V

    goto :goto_0

    .line 67
    :cond_1
    invoke-direct {p0}, Lcom/nordnetab/chcp/main/updater/InstallationWorker;->copyFilesFromCurrentReleaseToNewRelease()Z

    move-result v1

    if-nez v1, :cond_2

    .line 68
    sget-object v1, Lcom/nordnetab/chcp/main/model/ChcpError;->FAILED_TO_COPY_FILES_FROM_PREVIOUS_RELEASE:Lcom/nordnetab/chcp/main/model/ChcpError;

    invoke-direct {p0, v1}, Lcom/nordnetab/chcp/main/updater/InstallationWorker;->setResultForError(Lcom/nordnetab/chcp/main/model/ChcpError;)V

    goto :goto_0

    .line 73
    :cond_2
    invoke-direct {p0}, Lcom/nordnetab/chcp/main/updater/InstallationWorker;->deleteUnusedFiles()V

    .line 76
    invoke-direct {p0}, Lcom/nordnetab/chcp/main/updater/InstallationWorker;->moveFilesFromInstallationFolderToWwwFolder()Z

    move-result v0

    .line 77
    .local v0, "isInstalled":Z
    if-nez v0, :cond_3

    .line 78
    invoke-direct {p0}, Lcom/nordnetab/chcp/main/updater/InstallationWorker;->cleanUpOnFailure()V

    .line 79
    sget-object v1, Lcom/nordnetab/chcp/main/model/ChcpError;->FAILED_TO_COPY_NEW_CONTENT_FILES:Lcom/nordnetab/chcp/main/model/ChcpError;

    invoke-direct {p0, v1}, Lcom/nordnetab/chcp/main/updater/InstallationWorker;->setResultForError(Lcom/nordnetab/chcp/main/model/ChcpError;)V

    goto :goto_0

    .line 84
    :cond_3
    invoke-direct {p0}, Lcom/nordnetab/chcp/main/updater/InstallationWorker;->cleanUpOnSuccess()V

    .line 87
    invoke-direct {p0}, Lcom/nordnetab/chcp/main/updater/InstallationWorker;->setSuccessResult()V

    goto :goto_0
.end method
