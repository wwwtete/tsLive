.class Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;
.super Ljava/lang/Object;
.source "UpdateLoaderWorker.java"

# interfaces
.implements Lcom/nordnetab/chcp/main/updater/WorkerTask;


# instance fields
.field private appConfigStorage:Lcom/nordnetab/chcp/main/storage/IObjectFileStorage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nordnetab/chcp/main/storage/IObjectFileStorage",
            "<",
            "Lcom/nordnetab/chcp/main/config/ApplicationConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final appNativeVersion:I

.field private final applicationConfigUrl:Ljava/lang/String;

.field private final filesStructure:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

.field private manifestStorage:Lcom/nordnetab/chcp/main/storage/IObjectFileStorage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nordnetab/chcp/main/storage/IObjectFileStorage",
            "<",
            "Lcom/nordnetab/chcp/main/config/ContentManifest;",
            ">;"
        }
    .end annotation
.end field

.field private oldAppConfig:Lcom/nordnetab/chcp/main/config/ApplicationConfig;

.field private oldManifest:Lcom/nordnetab/chcp/main/config/ContentManifest;

.field private final requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resultEvent:Lcom/nordnetab/chcp/main/events/WorkerEvent;


# direct methods
.method constructor <init>(Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest;->getConfigURL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->applicationConfigUrl:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest;->getCurrentNativeVersion()I

    move-result v0

    iput v0, p0, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->appNativeVersion:I

    .line 61
    invoke-virtual {p1}, Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest;->getCurrentReleaseFileStructure()Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    move-result-object v0

    iput-object v0, p0, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->filesStructure:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    .line 62
    invoke-virtual {p1}, Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->requestHeaders:Ljava/util/Map;

    .line 63
    return-void
.end method

.method private cleanUp()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->filesStructure:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    invoke-virtual {v0}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->getContentFolder()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nordnetab/chcp/main/utils/FilesUtility;->delete(Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method private downloadApplicationConfig(Ljava/lang/String;)Lcom/nordnetab/chcp/main/config/ApplicationConfig;
    .locals 4
    .param p1, "configUrl"    # Ljava/lang/String;

    .prologue
    .line 172
    new-instance v1, Lcom/nordnetab/chcp/main/network/ApplicationConfigDownloader;

    iget-object v2, p0, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->requestHeaders:Ljava/util/Map;

    invoke-direct {v1, p1, v2}, Lcom/nordnetab/chcp/main/network/ApplicationConfigDownloader;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 173
    .local v1, "downloader":Lcom/nordnetab/chcp/main/network/ApplicationConfigDownloader;
    invoke-virtual {v1}, Lcom/nordnetab/chcp/main/network/ApplicationConfigDownloader;->download()Lcom/nordnetab/chcp/main/network/DownloadResult;

    move-result-object v0

    .line 174
    .local v0, "downloadResult":Lcom/nordnetab/chcp/main/network/DownloadResult;, "Lcom/nordnetab/chcp/main/network/DownloadResult<Lcom/nordnetab/chcp/main/config/ApplicationConfig;>;"
    iget-object v2, v0, Lcom/nordnetab/chcp/main/network/DownloadResult;->error:Ljava/lang/Exception;

    if-eqz v2, :cond_0

    .line 175
    const-string v2, "CHCP"

    const-string v3, "Failed to download application config"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v2, 0x0

    .line 180
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, v0, Lcom/nordnetab/chcp/main/network/DownloadResult;->value:Ljava/lang/Object;

    check-cast v2, Lcom/nordnetab/chcp/main/config/ApplicationConfig;

    goto :goto_0
.end method

.method private downloadContentManifest(Ljava/lang/String;)Lcom/nordnetab/chcp/main/config/ContentManifest;
    .locals 6
    .param p1, "contentUrl"    # Ljava/lang/String;

    .prologue
    .line 190
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const-string v5, "chcp.manifest"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/nordnetab/chcp/main/utils/URLUtility;->construct([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "url":Ljava/lang/String;
    new-instance v1, Lcom/nordnetab/chcp/main/network/ContentManifestDownloader;

    iget-object v3, p0, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->requestHeaders:Ljava/util/Map;

    invoke-direct {v1, v2, v3}, Lcom/nordnetab/chcp/main/network/ContentManifestDownloader;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 192
    .local v1, "downloader":Lcom/nordnetab/chcp/main/network/ContentManifestDownloader;
    invoke-virtual {v1}, Lcom/nordnetab/chcp/main/network/ContentManifestDownloader;->download()Lcom/nordnetab/chcp/main/network/DownloadResult;

    move-result-object v0

    .line 193
    .local v0, "downloadResult":Lcom/nordnetab/chcp/main/network/DownloadResult;, "Lcom/nordnetab/chcp/main/network/DownloadResult<Lcom/nordnetab/chcp/main/config/ContentManifest;>;"
    iget-object v3, v0, Lcom/nordnetab/chcp/main/network/DownloadResult;->error:Ljava/lang/Exception;

    if-eqz v3, :cond_0

    .line 194
    const-string v3, "CHCP"

    const-string v4, "Failed to download content manifest"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v3, 0x0

    .line 198
    :goto_0
    return-object v3

    :cond_0
    iget-object v3, v0, Lcom/nordnetab/chcp/main/network/DownloadResult;->value:Ljava/lang/Object;

    check-cast v3, Lcom/nordnetab/chcp/main/config/ContentManifest;

    goto :goto_0
.end method

.method private downloadNewAndChangedFiles(Ljava/lang/String;Lcom/nordnetab/chcp/main/model/ManifestDiff;)Z
    .locals 5
    .param p1, "contentUrl"    # Ljava/lang/String;
    .param p2, "diff"    # Lcom/nordnetab/chcp/main/model/ManifestDiff;

    .prologue
    .line 219
    invoke-virtual {p2}, Lcom/nordnetab/chcp/main/model/ManifestDiff;->getUpdateFiles()Ljava/util/List;

    move-result-object v0

    .line 220
    .local v0, "downloadFiles":Ljava/util/List;, "Ljava/util/List<Lcom/nordnetab/chcp/main/model/ManifestFile;>;"
    const/4 v2, 0x1

    .line 222
    .local v2, "isFinishedWithSuccess":Z
    :try_start_0
    iget-object v3, p0, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->filesStructure:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    invoke-virtual {v3}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->getDownloadFolder()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->requestHeaders:Ljava/util/Map;

    invoke-static {v3, p1, v0, v4}, Lcom/nordnetab/chcp/main/network/FileDownloader;->downloadFiles(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    return v2

    .line 223
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 225
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private init()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 145
    new-instance v0, Lcom/nordnetab/chcp/main/storage/ContentManifestStorage;

    invoke-direct {v0}, Lcom/nordnetab/chcp/main/storage/ContentManifestStorage;-><init>()V

    iput-object v0, p0, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->manifestStorage:Lcom/nordnetab/chcp/main/storage/IObjectFileStorage;

    .line 146
    new-instance v0, Lcom/nordnetab/chcp/main/storage/ApplicationConfigStorage;

    invoke-direct {v0}, Lcom/nordnetab/chcp/main/storage/ApplicationConfigStorage;-><init>()V

    iput-object v0, p0, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->appConfigStorage:Lcom/nordnetab/chcp/main/storage/IObjectFileStorage;

    .line 149
    iget-object v0, p0, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->appConfigStorage:Lcom/nordnetab/chcp/main/storage/IObjectFileStorage;

    iget-object v2, p0, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->filesStructure:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    invoke-virtual {v2}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->getWwwFolder()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/nordnetab/chcp/main/storage/IObjectFileStorage;->loadFromFolder(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nordnetab/chcp/main/config/ApplicationConfig;

    iput-object v0, p0, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->oldAppConfig:Lcom/nordnetab/chcp/main/config/ApplicationConfig;

    .line 150
    iget-object v0, p0, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->oldAppConfig:Lcom/nordnetab/chcp/main/config/ApplicationConfig;

    if-nez v0, :cond_0

    .line 151
    sget-object v0, Lcom/nordnetab/chcp/main/model/ChcpError;->LOCAL_VERSION_OF_APPLICATION_CONFIG_NOT_FOUND:Lcom/nordnetab/chcp/main/model/ChcpError;

    invoke-direct {p0, v0, v3}, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->setErrorResult(Lcom/nordnetab/chcp/main/model/ChcpError;Lcom/nordnetab/chcp/main/config/ApplicationConfig;)V

    move v0, v1

    .line 162
    :goto_0
    return v0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->manifestStorage:Lcom/nordnetab/chcp/main/storage/IObjectFileStorage;

    iget-object v2, p0, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->filesStructure:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    invoke-virtual {v2}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->getWwwFolder()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/nordnetab/chcp/main/storage/IObjectFileStorage;->loadFromFolder(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nordnetab/chcp/main/config/ContentManifest;

    iput-object v0, p0, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->oldManifest:Lcom/nordnetab/chcp/main/config/ContentManifest;

    .line 157
    iget-object v0, p0, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->oldManifest:Lcom/nordnetab/chcp/main/config/ContentManifest;

    if-nez v0, :cond_1

    .line 158
    sget-object v0, Lcom/nordnetab/chcp/main/model/ChcpError;->LOCAL_VERSION_OF_MANIFEST_NOT_FOUND:Lcom/nordnetab/chcp/main/model/ChcpError;

    invoke-direct {p0, v0, v3}, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->setErrorResult(Lcom/nordnetab/chcp/main/model/ChcpError;Lcom/nordnetab/chcp/main/config/ApplicationConfig;)V

    move v0, v1

    .line 159
    goto :goto_0

    .line 162
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private recreateDownloadFolder(Ljava/lang/String;)V
    .locals 0
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    .line 207
    invoke-static {p1}, Lcom/nordnetab/chcp/main/utils/FilesUtility;->delete(Ljava/lang/String;)V

    .line 208
    invoke-static {p1}, Lcom/nordnetab/chcp/main/utils/FilesUtility;->ensureDirectoryExists(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method private setErrorResult(Lcom/nordnetab/chcp/main/model/ChcpError;Lcom/nordnetab/chcp/main/config/ApplicationConfig;)V
    .locals 1
    .param p1, "error"    # Lcom/nordnetab/chcp/main/model/ChcpError;
    .param p2, "newAppConfig"    # Lcom/nordnetab/chcp/main/config/ApplicationConfig;

    .prologue
    .line 241
    new-instance v0, Lcom/nordnetab/chcp/main/events/UpdateDownloadErrorEvent;

    invoke-direct {v0, p1, p2}, Lcom/nordnetab/chcp/main/events/UpdateDownloadErrorEvent;-><init>(Lcom/nordnetab/chcp/main/model/ChcpError;Lcom/nordnetab/chcp/main/config/ApplicationConfig;)V

    iput-object v0, p0, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->resultEvent:Lcom/nordnetab/chcp/main/events/WorkerEvent;

    .line 242
    return-void
.end method

.method private setNothingToUpdateResult(Lcom/nordnetab/chcp/main/config/ApplicationConfig;)V
    .locals 1
    .param p1, "newAppConfig"    # Lcom/nordnetab/chcp/main/config/ApplicationConfig;

    .prologue
    .line 249
    new-instance v0, Lcom/nordnetab/chcp/main/events/NothingToUpdateEvent;

    invoke-direct {v0, p1}, Lcom/nordnetab/chcp/main/events/NothingToUpdateEvent;-><init>(Lcom/nordnetab/chcp/main/config/ApplicationConfig;)V

    iput-object v0, p0, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->resultEvent:Lcom/nordnetab/chcp/main/events/WorkerEvent;

    .line 250
    return-void
.end method

.method private setSuccessResult(Lcom/nordnetab/chcp/main/config/ApplicationConfig;)V
    .locals 1
    .param p1, "newAppConfig"    # Lcom/nordnetab/chcp/main/config/ApplicationConfig;

    .prologue
    .line 245
    new-instance v0, Lcom/nordnetab/chcp/main/events/UpdateIsReadyToInstallEvent;

    invoke-direct {v0, p1}, Lcom/nordnetab/chcp/main/events/UpdateIsReadyToInstallEvent;-><init>(Lcom/nordnetab/chcp/main/config/ApplicationConfig;)V

    iput-object v0, p0, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->resultEvent:Lcom/nordnetab/chcp/main/events/WorkerEvent;

    .line 246
    return-void
.end method


# virtual methods
.method public result()Lcom/nordnetab/chcp/main/events/WorkerEvent;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->resultEvent:Lcom/nordnetab/chcp/main/events/WorkerEvent;

    return-object v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 67
    const-string v5, "CHCP"

    const-string v6, "Starting loader worker "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-direct {p0}, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->init()Z

    move-result v5

    if-nez v5, :cond_0

    .line 137
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v5, p0, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->applicationConfigUrl:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->downloadApplicationConfig(Ljava/lang/String;)Lcom/nordnetab/chcp/main/config/ApplicationConfig;

    move-result-object v2

    .line 75
    .local v2, "newAppConfig":Lcom/nordnetab/chcp/main/config/ApplicationConfig;
    if-nez v2, :cond_1

    .line 76
    sget-object v5, Lcom/nordnetab/chcp/main/model/ChcpError;->FAILED_TO_DOWNLOAD_APPLICATION_CONFIG:Lcom/nordnetab/chcp/main/model/ChcpError;

    invoke-direct {p0, v5, v7}, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->setErrorResult(Lcom/nordnetab/chcp/main/model/ChcpError;Lcom/nordnetab/chcp/main/config/ApplicationConfig;)V

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {v2}, Lcom/nordnetab/chcp/main/config/ApplicationConfig;->getContentConfig()Lcom/nordnetab/chcp/main/config/ContentConfig;

    move-result-object v3

    .line 80
    .local v3, "newContentConfig":Lcom/nordnetab/chcp/main/config/ContentConfig;
    if-eqz v3, :cond_2

    .line 81
    invoke-virtual {v3}, Lcom/nordnetab/chcp/main/config/ContentConfig;->getReleaseVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 82
    invoke-virtual {v3}, Lcom/nordnetab/chcp/main/config/ContentConfig;->getContentUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 83
    :cond_2
    sget-object v5, Lcom/nordnetab/chcp/main/model/ChcpError;->NEW_APPLICATION_CONFIG_IS_INVALID:Lcom/nordnetab/chcp/main/model/ChcpError;

    invoke-direct {p0, v5, v7}, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->setErrorResult(Lcom/nordnetab/chcp/main/model/ChcpError;Lcom/nordnetab/chcp/main/config/ApplicationConfig;)V

    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {v3}, Lcom/nordnetab/chcp/main/config/ContentConfig;->getReleaseVersion()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->oldAppConfig:Lcom/nordnetab/chcp/main/config/ApplicationConfig;

    invoke-virtual {v6}, Lcom/nordnetab/chcp/main/config/ApplicationConfig;->getContentConfig()Lcom/nordnetab/chcp/main/config/ContentConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nordnetab/chcp/main/config/ContentConfig;->getReleaseVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 89
    invoke-direct {p0, v2}, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->setNothingToUpdateResult(Lcom/nordnetab/chcp/main/config/ApplicationConfig;)V

    goto :goto_0

    .line 94
    :cond_4
    invoke-virtual {v3}, Lcom/nordnetab/chcp/main/config/ContentConfig;->getMinimumNativeVersion()I

    move-result v5

    iget v6, p0, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->appNativeVersion:I

    if-le v5, v6, :cond_5

    .line 95
    sget-object v5, Lcom/nordnetab/chcp/main/model/ChcpError;->APPLICATION_BUILD_VERSION_TOO_LOW:Lcom/nordnetab/chcp/main/model/ChcpError;

    invoke-direct {p0, v5, v2}, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->setErrorResult(Lcom/nordnetab/chcp/main/model/ChcpError;Lcom/nordnetab/chcp/main/config/ApplicationConfig;)V

    goto :goto_0

    .line 100
    :cond_5
    invoke-virtual {v3}, Lcom/nordnetab/chcp/main/config/ContentConfig;->getContentUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->downloadContentManifest(Ljava/lang/String;)Lcom/nordnetab/chcp/main/config/ContentManifest;

    move-result-object v4

    .line 101
    .local v4, "newContentManifest":Lcom/nordnetab/chcp/main/config/ContentManifest;
    if-nez v4, :cond_6

    .line 102
    sget-object v5, Lcom/nordnetab/chcp/main/model/ChcpError;->FAILED_TO_DOWNLOAD_CONTENT_MANIFEST:Lcom/nordnetab/chcp/main/model/ChcpError;

    invoke-direct {p0, v5, v2}, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->setErrorResult(Lcom/nordnetab/chcp/main/model/ChcpError;Lcom/nordnetab/chcp/main/config/ApplicationConfig;)V

    goto :goto_0

    .line 107
    :cond_6
    iget-object v5, p0, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->oldManifest:Lcom/nordnetab/chcp/main/config/ContentManifest;

    invoke-virtual {v5, v4}, Lcom/nordnetab/chcp/main/config/ContentManifest;->calculateDifference(Lcom/nordnetab/chcp/main/config/ContentManifest;)Lcom/nordnetab/chcp/main/model/ManifestDiff;

    move-result-object v0

    .line 108
    .local v0, "diff":Lcom/nordnetab/chcp/main/model/ManifestDiff;
    invoke-virtual {v0}, Lcom/nordnetab/chcp/main/model/ManifestDiff;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 109
    iget-object v5, p0, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->manifestStorage:Lcom/nordnetab/chcp/main/storage/IObjectFileStorage;

    iget-object v6, p0, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->filesStructure:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    invoke-virtual {v6}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->getWwwFolder()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lcom/nordnetab/chcp/main/storage/IObjectFileStorage;->storeInFolder(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 110
    iget-object v5, p0, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->appConfigStorage:Lcom/nordnetab/chcp/main/storage/IObjectFileStorage;

    iget-object v6, p0, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->filesStructure:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    invoke-virtual {v6}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->getWwwFolder()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Lcom/nordnetab/chcp/main/storage/IObjectFileStorage;->storeInFolder(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 111
    invoke-direct {p0, v2}, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->setNothingToUpdateResult(Lcom/nordnetab/chcp/main/config/ApplicationConfig;)V

    goto/16 :goto_0

    .line 117
    :cond_7
    iget-object v5, p0, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->filesStructure:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    invoke-virtual {v2}, Lcom/nordnetab/chcp/main/config/ApplicationConfig;->getContentConfig()Lcom/nordnetab/chcp/main/config/ContentConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nordnetab/chcp/main/config/ContentConfig;->getReleaseVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->switchToRelease(Ljava/lang/String;)V

    .line 119
    iget-object v5, p0, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->filesStructure:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    invoke-virtual {v5}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->getDownloadFolder()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->recreateDownloadFolder(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v3}, Lcom/nordnetab/chcp/main/config/ContentConfig;->getContentUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v0}, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->downloadNewAndChangedFiles(Ljava/lang/String;Lcom/nordnetab/chcp/main/model/ManifestDiff;)Z

    move-result v1

    .line 123
    .local v1, "isDownloaded":Z
    if-nez v1, :cond_8

    .line 124
    invoke-direct {p0}, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->cleanUp()V

    .line 125
    sget-object v5, Lcom/nordnetab/chcp/main/model/ChcpError;->FAILED_TO_DOWNLOAD_UPDATE_FILES:Lcom/nordnetab/chcp/main/model/ChcpError;

    invoke-direct {p0, v5, v2}, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->setErrorResult(Lcom/nordnetab/chcp/main/model/ChcpError;Lcom/nordnetab/chcp/main/config/ApplicationConfig;)V

    goto/16 :goto_0

    .line 130
    :cond_8
    iget-object v5, p0, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->manifestStorage:Lcom/nordnetab/chcp/main/storage/IObjectFileStorage;

    iget-object v6, p0, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->filesStructure:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    invoke-virtual {v6}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->getDownloadFolder()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lcom/nordnetab/chcp/main/storage/IObjectFileStorage;->storeInFolder(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 131
    iget-object v5, p0, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->appConfigStorage:Lcom/nordnetab/chcp/main/storage/IObjectFileStorage;

    iget-object v6, p0, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->filesStructure:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    invoke-virtual {v6}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->getDownloadFolder()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Lcom/nordnetab/chcp/main/storage/IObjectFileStorage;->storeInFolder(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 134
    invoke-direct {p0, v2}, Lcom/nordnetab/chcp/main/updater/UpdateLoaderWorker;->setSuccessResult(Lcom/nordnetab/chcp/main/config/ApplicationConfig;)V

    .line 136
    const-string v5, "CHCP"

    const-string v6, "Loader worker has finished"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
