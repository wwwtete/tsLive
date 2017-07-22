.class public Lcom/nordnetab/chcp/main/HotCodePushPlugin;
.super Lorg/apache/cordova/CordovaPlugin;
.source "HotCodePushPlugin.java"


# static fields
.field private static final FILE_PREFIX:Ljava/lang/String; = "file://"

.field private static final LOCAL_ASSETS_FOLDER:Ljava/lang/String; = "file:///android_asset/www"

.field private static final WWW_FOLDER:Ljava/lang/String; = "www"


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

.field private chcpXmlConfig:Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;

.field private defaultCallbackStoredResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/cordova/PluginResult;",
            ">;"
        }
    .end annotation
.end field

.field private defaultFetchUpdateOptions:Lcom/nordnetab/chcp/main/config/FetchUpdateOptions;

.field private dontReloadOnStart:Z

.field private downloadJsCallback:Lorg/apache/cordova/CallbackContext;

.field private fileStructure:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

.field private handler:Landroid/os/Handler;

.field private installJsCallback:Lorg/apache/cordova/CallbackContext;

.field private isPluginReadyForWork:Z

.field private jsDefaultCallback:Lorg/apache/cordova/CallbackContext;

.field private pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

.field private pluginInternalPrefsStorage:Lcom/nordnetab/chcp/main/storage/IObjectPreferenceStorage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nordnetab/chcp/main/storage/IObjectPreferenceStorage",
            "<",
            "Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private startingPage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/nordnetab/chcp/main/HotCodePushPlugin;)V
    .locals 0
    .param p0, "x0"    # Lcom/nordnetab/chcp/main/HotCodePushPlugin;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->redirectToLocalStorageIndexPage()V

    return-void
.end method

.method private cleanupFileSystemFromOldReleases()V
    .locals 4

    .prologue
    .line 925
    iget-object v0, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    invoke-virtual {v0}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->getCurrentReleaseVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 935
    :goto_0
    return-void

    .line 929
    :cond_0
    iget-object v0, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    .line 930
    invoke-virtual {v3}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->getCurrentReleaseVersionName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    .line 931
    invoke-virtual {v3}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->getPreviousReleaseVersionName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    .line 932
    invoke-virtual {v3}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->getReadyForInstallationReleaseVersionName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 929
    invoke-static {v0, v1}, Lcom/nordnetab/chcp/main/utils/CleanUpHelper;->removeReleaseFolders(Landroid/content/Context;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dispatchDefaultCallbackStoredResults()V
    .locals 3

    .prologue
    .line 290
    iget-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->defaultCallbackStoredResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->jsDefaultCallback:Lorg/apache/cordova/CallbackContext;

    if-nez v1, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->defaultCallbackStoredResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/PluginResult;

    .line 295
    .local v0, "result":Lorg/apache/cordova/PluginResult;
    invoke-direct {p0, v0}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->sendMessageToDefaultCallback(Lorg/apache/cordova/PluginResult;)Z

    goto :goto_1

    .line 298
    .end local v0    # "result":Lorg/apache/cordova/PluginResult;
    :cond_2
    iget-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->defaultCallbackStoredResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method private fetchUpdate()V
    .locals 2

    .prologue
    .line 470
    const/4 v0, 0x0

    new-instance v1, Lcom/nordnetab/chcp/main/config/FetchUpdateOptions;

    invoke-direct {v1}, Lcom/nordnetab/chcp/main/config/FetchUpdateOptions;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->fetchUpdate(Lorg/apache/cordova/CallbackContext;Lcom/nordnetab/chcp/main/config/FetchUpdateOptions;)V

    .line 471
    return-void
.end method

.method private fetchUpdate(Lorg/apache/cordova/CallbackContext;Lcom/nordnetab/chcp/main/config/FetchUpdateOptions;)V
    .locals 8
    .param p1, "jsCallback"    # Lorg/apache/cordova/CallbackContext;
    .param p2, "fetchOptions"    # Lcom/nordnetab/chcp/main/config/FetchUpdateOptions;

    .prologue
    .line 480
    iget-boolean v6, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->isPluginReadyForWork:Z

    if-nez v6, :cond_1

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    const/4 v5, 0x0

    .line 485
    .local v5, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->chcpXmlConfig:Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;

    invoke-virtual {v6}, Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;->getConfigUrl()Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, "configURL":Ljava/lang/String;
    if-nez p2, :cond_2

    .line 487
    iget-object p2, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->defaultFetchUpdateOptions:Lcom/nordnetab/chcp/main/config/FetchUpdateOptions;

    .line 489
    :cond_2
    if-eqz p2, :cond_3

    .line 490
    invoke-virtual {p2}, Lcom/nordnetab/chcp/main/config/FetchUpdateOptions;->getRequestHeaders()Ljava/util/Map;

    move-result-object v5

    .line 491
    invoke-virtual {p2}, Lcom/nordnetab/chcp/main/config/FetchUpdateOptions;->getConfigURL()Ljava/lang/String;

    move-result-object v3

    .line 492
    .local v3, "optionalConfigURL":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 493
    move-object v0, v3

    .line 497
    .end local v3    # "optionalConfigURL":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest;->builder(Landroid/content/Context;)Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest$Builder;

    move-result-object v6

    .line 498
    invoke-virtual {v6, v0}, Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest$Builder;->setConfigURL(Ljava/lang/String;)Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->chcpXmlConfig:Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;

    .line 499
    invoke-virtual {v7}, Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;->getNativeInterfaceVersion()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest$Builder;->setCurrentNativeVersion(I)Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    .line 500
    invoke-virtual {v7}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->getCurrentReleaseVersionName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest$Builder;->setCurrentReleaseVersion(Ljava/lang/String;)Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest$Builder;

    move-result-object v6

    .line 501
    invoke-virtual {v6, v5}, Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest$Builder;->setRequestHeaders(Ljava/util/Map;)Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest$Builder;

    move-result-object v6

    .line 502
    invoke-virtual {v6}, Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest$Builder;->build()Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest;

    move-result-object v4

    .line 504
    .local v4, "request":Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest;
    invoke-static {v4}, Lcom/nordnetab/chcp/main/updater/UpdatesLoader;->downloadUpdate(Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest;)Lcom/nordnetab/chcp/main/model/ChcpError;

    move-result-object v1

    .line 505
    .local v1, "error":Lcom/nordnetab/chcp/main/model/ChcpError;
    sget-object v6, Lcom/nordnetab/chcp/main/model/ChcpError;->NONE:Lcom/nordnetab/chcp/main/model/ChcpError;

    if-eq v1, v6, :cond_4

    .line 506
    if-eqz p1, :cond_0

    .line 507
    const-string v6, "chcp_updateLoadFailed"

    const/4 v7, 0x0

    invoke-static {v6, v7, v1}, Lcom/nordnetab/chcp/main/js/PluginResultHelper;->createPluginResult(Ljava/lang/String;Ljava/util/Map;Lcom/nordnetab/chcp/main/model/ChcpError;)Lorg/apache/cordova/PluginResult;

    move-result-object v2

    .line 508
    .local v2, "errorResult":Lorg/apache/cordova/PluginResult;
    invoke-virtual {p1, v2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_0

    .line 513
    .end local v2    # "errorResult":Lorg/apache/cordova/PluginResult;
    :cond_4
    if-eqz p1, :cond_0

    .line 514
    iput-object p1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->downloadJsCallback:Lorg/apache/cordova/CallbackContext;

    goto :goto_0
.end method

.method private getStartingPage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 639
    iget-object v2, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->startingPage:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 640
    iget-object v2, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->startingPage:Ljava/lang/String;

    .line 649
    :goto_0
    return-object v2

    .line 643
    :cond_0
    new-instance v0, Lorg/apache/cordova/ConfigXmlParser;

    invoke-direct {v0}, Lorg/apache/cordova/ConfigXmlParser;-><init>()V

    .line 644
    .local v0, "parser":Lorg/apache/cordova/ConfigXmlParser;
    iget-object v2, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/cordova/ConfigXmlParser;->parse(Landroid/content/Context;)V

    .line 645
    invoke-virtual {v0}, Lorg/apache/cordova/ConfigXmlParser;->getLaunchUrl()Ljava/lang/String;

    move-result-object v1

    .line 647
    .local v1, "url":Ljava/lang/String;
    const-string v2, "file:///android_asset/www"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->startingPage:Ljava/lang/String;

    .line 649
    iget-object v2, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->startingPage:Ljava/lang/String;

    goto :goto_0
.end method

.method private installUpdate(Lorg/apache/cordova/CallbackContext;)V
    .locals 5
    .param p1, "jsCallback"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 525
    iget-boolean v2, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->isPluginReadyForWork:Z

    if-nez v2, :cond_1

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    iget-object v2, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    invoke-virtual {v3}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->getReadyForInstallationReleaseVersionName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    invoke-virtual {v4}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->getCurrentReleaseVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/nordnetab/chcp/main/updater/UpdatesInstaller;->install(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/nordnetab/chcp/main/model/ChcpError;

    move-result-object v0

    .line 530
    .local v0, "error":Lcom/nordnetab/chcp/main/model/ChcpError;
    sget-object v2, Lcom/nordnetab/chcp/main/model/ChcpError;->NONE:Lcom/nordnetab/chcp/main/model/ChcpError;

    if-eq v0, v2, :cond_2

    .line 531
    if-eqz p1, :cond_0

    .line 532
    const-string v2, "chcp_updateInstallFailed"

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/nordnetab/chcp/main/js/PluginResultHelper;->createPluginResult(Ljava/lang/String;Ljava/util/Map;Lcom/nordnetab/chcp/main/model/ChcpError;)Lorg/apache/cordova/PluginResult;

    move-result-object v1

    .line 533
    .local v1, "errorResult":Lorg/apache/cordova/PluginResult;
    invoke-virtual {p1, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_0

    .line 539
    .end local v1    # "errorResult":Lorg/apache/cordova/PluginResult;
    :cond_2
    if-eqz p1, :cond_0

    .line 540
    iput-object p1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->installJsCallback:Lorg/apache/cordova/CallbackContext;

    goto :goto_0
.end method

.method private installWwwFolder()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 583
    iput-boolean v2, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->isPluginReadyForWork:Z

    .line 586
    iget-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    invoke-virtual {v1}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->isWwwFolderInstalled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 587
    iget-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    invoke-virtual {v1, v2}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->setWwwFolderInstalled(Z)V

    .line 588
    iget-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->setReadyForInstallationReleaseVersionName(Ljava/lang/String;)V

    .line 589
    iget-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->setPreviousReleaseVersionName(Ljava/lang/String;)V

    .line 591
    iget-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "chcp.json"

    invoke-static {v1, v2}, Lcom/nordnetab/chcp/main/config/ApplicationConfig;->configFromAssets(Landroid/content/Context;Ljava/lang/String;)Lcom/nordnetab/chcp/main/config/ApplicationConfig;

    move-result-object v0

    .line 592
    .local v0, "appConfig":Lcom/nordnetab/chcp/main/config/ApplicationConfig;
    iget-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    invoke-virtual {v0}, Lcom/nordnetab/chcp/main/config/ApplicationConfig;->getContentConfig()Lcom/nordnetab/chcp/main/config/ContentConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nordnetab/chcp/main/config/ContentConfig;->getReleaseVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->setCurrentReleaseVersionName(Ljava/lang/String;)V

    .line 594
    iget-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefsStorage:Lcom/nordnetab/chcp/main/storage/IObjectPreferenceStorage;

    iget-object v2, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    invoke-interface {v1, v2}, Lcom/nordnetab/chcp/main/storage/IObjectPreferenceStorage;->storeInPreference(Ljava/lang/Object;)Z

    .line 597
    .end local v0    # "appConfig":Lcom/nordnetab/chcp/main/config/ApplicationConfig;
    :cond_0
    iget-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "www"

    iget-object v3, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->fileStructure:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    invoke-virtual {v3}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->getWwwFolder()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/nordnetab/chcp/main/utils/AssetsHelper;->copyAssetDirectoryToAppDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    return-void
.end method

.method private isApplicationHasBeenUpdated()Z
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    invoke-virtual {v0}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->getAppBuildVersion()I

    move-result v0

    iget-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/nordnetab/chcp/main/utils/VersionHelper;->applicationVersionCode(Landroid/content/Context;)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPluginReadyForWork()Z
    .locals 4

    .prologue
    .line 554
    invoke-direct {p0}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->isWwwFolderExists()Z

    move-result v1

    .line 555
    .local v1, "isWwwFolderExists":Z
    iget-object v3, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    invoke-virtual {v3}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->isWwwFolderInstalled()Z

    move-result v2

    .line 556
    .local v2, "isWwwFolderInstalled":Z
    invoke-direct {p0}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->isApplicationHasBeenUpdated()Z

    move-result v0

    .line 558
    .local v0, "isApplicationHasBeenUpdated":Z
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isWwwFolderExists()Z
    .locals 2

    .prologue
    .line 567
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->fileStructure:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    invoke-virtual {v1}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->getWwwFolder()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private jsFetchUpdate(Lorg/apache/cordova/CallbackContext;Lorg/apache/cordova/CordovaArgs;)V
    .locals 3
    .param p1, "callback"    # Lorg/apache/cordova/CallbackContext;
    .param p2, "args"    # Lorg/apache/cordova/CordovaArgs;

    .prologue
    .line 336
    iget-boolean v2, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->isPluginReadyForWork:Z

    if-nez v2, :cond_0

    .line 337
    const-string v2, "chcp_updateLoadFailed"

    invoke-direct {p0, v2, p1}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->sendPluginNotReadyToWork(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    .line 348
    :goto_0
    return-void

    .line 341
    :cond_0
    const/4 v0, 0x0

    .line 343
    .local v0, "fetchOptions":Lcom/nordnetab/chcp/main/config/FetchUpdateOptions;
    :try_start_0
    new-instance v1, Lcom/nordnetab/chcp/main/config/FetchUpdateOptions;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lorg/apache/cordova/CordovaArgs;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nordnetab/chcp/main/config/FetchUpdateOptions;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "fetchOptions":Lcom/nordnetab/chcp/main/config/FetchUpdateOptions;
    .local v1, "fetchOptions":Lcom/nordnetab/chcp/main/config/FetchUpdateOptions;
    move-object v0, v1

    .line 347
    .end local v1    # "fetchOptions":Lcom/nordnetab/chcp/main/config/FetchUpdateOptions;
    .restart local v0    # "fetchOptions":Lcom/nordnetab/chcp/main/config/FetchUpdateOptions;
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->fetchUpdate(Lorg/apache/cordova/CallbackContext;Lcom/nordnetab/chcp/main/config/FetchUpdateOptions;)V

    goto :goto_0

    .line 344
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private jsGetVersionInfo(Lorg/apache/cordova/CallbackContext;)V
    .locals 6
    .param p1, "callback"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    const/4 v5, 0x0

    .line 456
    iget-object v3, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 457
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 458
    .local v1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "currentWebVersion"

    iget-object v4, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    invoke-virtual {v4}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->getCurrentReleaseVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    const-string v3, "readyToInstallWebVersion"

    iget-object v4, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    invoke-virtual {v4}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->getReadyForInstallationReleaseVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    const-string v3, "previousWebVersion"

    iget-object v4, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    invoke-virtual {v4}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->getPreviousReleaseVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const-string v3, "appVersion"

    invoke-static {v0}, Lcom/nordnetab/chcp/main/utils/VersionHelper;->applicationVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    const-string v3, "buildVersion"

    invoke-static {v0}, Lcom/nordnetab/chcp/main/utils/VersionHelper;->applicationVersionCode(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    invoke-static {v5, v1, v5}, Lcom/nordnetab/chcp/main/js/PluginResultHelper;->createPluginResult(Ljava/lang/String;Ljava/util/Map;Lcom/nordnetab/chcp/main/model/ChcpError;)Lorg/apache/cordova/PluginResult;

    move-result-object v2

    .line 465
    .local v2, "pluginResult":Lorg/apache/cordova/PluginResult;
    invoke-virtual {p1, v2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 466
    return-void
.end method

.method private jsInit(Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .param p1, "callback"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->jsDefaultCallback:Lorg/apache/cordova/CallbackContext;

    .line 308
    invoke-direct {p0}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->dispatchDefaultCallbackStoredResults()V

    .line 314
    iget-object v0, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/nordnetab/chcp/main/HotCodePushPlugin$1;

    invoke-direct {v1, p0}, Lcom/nordnetab/chcp/main/HotCodePushPlugin$1;-><init>(Lcom/nordnetab/chcp/main/HotCodePushPlugin;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 323
    iget-object v0, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->chcpXmlConfig:Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;

    invoke-virtual {v0}, Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;->isAutoDownloadIsAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-static {}, Lcom/nordnetab/chcp/main/updater/UpdatesInstaller;->isInstalling()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nordnetab/chcp/main/updater/UpdatesLoader;->isExecuting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    invoke-direct {p0}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->fetchUpdate()V

    .line 327
    :cond_0
    return-void
.end method

.method private jsInstallUpdate(Lorg/apache/cordova/CallbackContext;)V
    .locals 1
    .param p1, "callback"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->isPluginReadyForWork:Z

    if-nez v0, :cond_0

    .line 358
    const-string v0, "chcp_updateInstallFailed"

    invoke-direct {p0, v0, p1}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->sendPluginNotReadyToWork(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    .line 363
    :goto_0
    return-void

    .line 362
    :cond_0
    invoke-direct {p0, p1}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->installUpdate(Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0
.end method

.method private jsIsUpdateAvailableForInstallation(Lorg/apache/cordova/CallbackContext;)V
    .locals 6
    .param p1, "callback"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 435
    const/4 v0, 0x0

    .line 436
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 437
    .local v1, "error":Lcom/nordnetab/chcp/main/model/ChcpError;
    iget-object v4, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    invoke-virtual {v4}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->getReadyForInstallationReleaseVersionName()Ljava/lang/String;

    move-result-object v3

    .line 438
    .local v3, "readyForInstallationVersionName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 439
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 440
    .restart local v0    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "readyToInstallVersion"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const-string v4, "currentVersion"

    iget-object v5, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    invoke-virtual {v5}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->getCurrentReleaseVersionName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    :goto_0
    const/4 v4, 0x0

    invoke-static {v4, v0, v1}, Lcom/nordnetab/chcp/main/js/PluginResultHelper;->createPluginResult(Ljava/lang/String;Ljava/util/Map;Lcom/nordnetab/chcp/main/model/ChcpError;)Lorg/apache/cordova/PluginResult;

    move-result-object v2

    .line 447
    .local v2, "pluginResult":Lorg/apache/cordova/PluginResult;
    invoke-virtual {p1, v2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 448
    return-void

    .line 443
    .end local v2    # "pluginResult":Lorg/apache/cordova/PluginResult;
    :cond_0
    sget-object v1, Lcom/nordnetab/chcp/main/model/ChcpError;->NOTHING_TO_INSTALL:Lcom/nordnetab/chcp/main/model/ChcpError;

    goto :goto_0
.end method

.method private jsRequestAppUpdate(Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/CallbackContext;)V
    .locals 6
    .param p1, "arguments"    # Lorg/apache/cordova/CordovaArgs;
    .param p2, "callback"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 408
    iget-boolean v4, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->isPluginReadyForWork:Z

    if-nez v4, :cond_1

    .line 409
    const-string v4, ""

    invoke-direct {p0, v4, p2}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->sendPluginNotReadyToWork(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    const/4 v2, 0x0

    .line 415
    .local v2, "msg":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1, v4}, Lorg/apache/cordova/CordovaArgs;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 424
    iget-object v4, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->appConfigStorage:Lcom/nordnetab/chcp/main/storage/IObjectFileStorage;

    iget-object v5, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->fileStructure:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    invoke-virtual {v5}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->getWwwFolder()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nordnetab/chcp/main/storage/IObjectFileStorage;->loadFromFolder(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nordnetab/chcp/main/config/ApplicationConfig;

    invoke-virtual {v4}, Lcom/nordnetab/chcp/main/config/ApplicationConfig;->getStoreUrl()Ljava/lang/String;

    move-result-object v3

    .line 426
    .local v3, "storeURL":Ljava/lang/String;
    new-instance v4, Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;

    iget-object v5, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v2, v3, p2}, Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v4}, Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;->show()V

    goto :goto_0

    .line 416
    .end local v3    # "storeURL":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 417
    .local v1, "e":Lorg/json/JSONException;
    const-string v4, "CHCP"

    const-string v5, "Dialog message is not set"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private jsSetPluginOptions(Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/CallbackContext;)V
    .locals 4
    .param p1, "arguments"    # Lorg/apache/cordova/CordovaArgs;
    .param p2, "callback"    # Lorg/apache/cordova/CallbackContext;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 385
    iget-boolean v2, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->isPluginReadyForWork:Z

    if-nez v2, :cond_0

    .line 386
    const-string v2, ""

    invoke-direct {p0, v2, p2}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->sendPluginNotReadyToWork(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    .line 399
    :goto_0
    return-void

    .line 391
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2}, Lorg/apache/cordova/CordovaArgs;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 392
    .local v1, "jsonObject":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->chcpXmlConfig:Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;

    invoke-virtual {v2, v1}, Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;->mergeOptionsFromJs(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_0

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "CHCP"

    const-string v3, "Failed to process plugin options, received from JS."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private loadPluginInternalPreferences()V
    .locals 3

    .prologue
    .line 223
    iget-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    if-eqz v1, :cond_0

    .line 234
    :goto_0
    return-void

    .line 227
    :cond_0
    new-instance v1, Lcom/nordnetab/chcp/main/storage/PluginInternalPreferencesStorage;

    iget-object v2, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nordnetab/chcp/main/storage/PluginInternalPreferencesStorage;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefsStorage:Lcom/nordnetab/chcp/main/storage/IObjectPreferenceStorage;

    .line 228
    iget-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefsStorage:Lcom/nordnetab/chcp/main/storage/IObjectPreferenceStorage;

    invoke-interface {v1}, Lcom/nordnetab/chcp/main/storage/IObjectPreferenceStorage;->loadFromPreference()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    .line 229
    .local v0, "config":Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->getCurrentReleaseVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->createDefault(Landroid/content/Context;)Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefsStorage:Lcom/nordnetab/chcp/main/storage/IObjectPreferenceStorage;

    invoke-interface {v1, v0}, Lcom/nordnetab/chcp/main/storage/IObjectPreferenceStorage;->storeInPreference(Ljava/lang/Object;)Z

    .line 233
    :cond_2
    iput-object v0, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    goto :goto_0
.end method

.method private parseCordovaConfigXml()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->chcpXmlConfig:Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;

    if-eqz v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;->loadFromCordovaConfig(Landroid/content/Context;)Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->chcpXmlConfig:Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;

    goto :goto_0
.end method

.method private redirectToLocalStorageIndexPage()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 604
    invoke-direct {p0}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->getStartingPage()Ljava/lang/String;

    move-result-object v2

    .line 608
    .local v2, "indexPage":Ljava/lang/String;
    move-object v3, v2

    .line 609
    .local v3, "strippedIndexPage":Ljava/lang/String;
    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 610
    :cond_0
    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 611
    .local v1, "idx":I
    if-ltz v1, :cond_2

    .line 612
    invoke-virtual {v3, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 620
    .end local v1    # "idx":I
    :cond_1
    :goto_0
    new-array v4, v8, [Ljava/lang/String;

    iget-object v5, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->fileStructure:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    invoke-virtual {v5}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->getWwwFolder()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object v3, v4, v6

    invoke-static {v4}, Lcom/nordnetab/chcp/main/utils/Paths;->get([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 621
    .local v0, "external":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 622
    const-string v4, "CHCP"

    const-string v5, "External starting page not found. Aborting page change."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :goto_1
    return-void

    .line 614
    .end local v0    # "external":Ljava/lang/String;
    .restart local v1    # "idx":I
    :cond_2
    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 615
    invoke-virtual {v3, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 627
    .end local v1    # "idx":I
    .restart local v0    # "external":Ljava/lang/String;
    :cond_3
    new-array v4, v8, [Ljava/lang/String;

    iget-object v5, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->fileStructure:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    invoke-virtual {v5}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->getWwwFolder()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object v2, v4, v6

    invoke-static {v4}, Lcom/nordnetab/chcp/main/utils/Paths;->get([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 628
    iget-object v4, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->webView:Lorg/apache/cordova/CordovaWebView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v7}, Lorg/apache/cordova/CordovaWebView;->loadUrlIntoView(Ljava/lang/String;Z)V

    .line 630
    const-string v4, "CHCP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading external page: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private rollbackIfCorrupted(Lcom/nordnetab/chcp/main/model/ChcpError;)V
    .locals 2
    .param p1, "error"    # Lcom/nordnetab/chcp/main/model/ChcpError;

    .prologue
    .line 947
    sget-object v0, Lcom/nordnetab/chcp/main/model/ChcpError;->LOCAL_VERSION_OF_APPLICATION_CONFIG_NOT_FOUND:Lcom/nordnetab/chcp/main/model/ChcpError;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/nordnetab/chcp/main/model/ChcpError;->LOCAL_VERSION_OF_MANIFEST_NOT_FOUND:Lcom/nordnetab/chcp/main/model/ChcpError;

    if-eq p1, v0, :cond_0

    .line 959
    :goto_0
    return-void

    .line 952
    :cond_0
    iget-object v0, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    invoke-virtual {v0}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->getPreviousReleaseVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 953
    const-string v0, "CHCP"

    const-string v1, "Current release is corrupted, trying to rollback to the previous one"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    invoke-direct {p0}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->rollbackToPreviousRelease()V

    goto :goto_0

    .line 956
    :cond_1
    const-string v0, "CHCP"

    const-string v1, "Current release is corrupted, reinstalling www folder from assets"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    invoke-direct {p0}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->installWwwFolder()V

    goto :goto_0
.end method

.method private rollbackToPreviousRelease()V
    .locals 2

    .prologue
    .line 965
    iget-object v0, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    iget-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    invoke-virtual {v1}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->getPreviousReleaseVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->setCurrentReleaseVersionName(Ljava/lang/String;)V

    .line 966
    iget-object v0, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->setPreviousReleaseVersionName(Ljava/lang/String;)V

    .line 967
    iget-object v0, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->setReadyForInstallationReleaseVersionName(Ljava/lang/String;)V

    .line 968
    iget-object v0, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefsStorage:Lcom/nordnetab/chcp/main/storage/IObjectPreferenceStorage;

    iget-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    invoke-interface {v0, v1}, Lcom/nordnetab/chcp/main/storage/IObjectPreferenceStorage;->storeInPreference(Ljava/lang/Object;)Z

    .line 970
    iget-object v0, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->fileStructure:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    iget-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    invoke-virtual {v1}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->getCurrentReleaseVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->switchToRelease(Ljava/lang/String;)V

    .line 972
    iget-object v0, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/nordnetab/chcp/main/HotCodePushPlugin$3;

    invoke-direct {v1, p0}, Lcom/nordnetab/chcp/main/HotCodePushPlugin$3;-><init>(Lcom/nordnetab/chcp/main/HotCodePushPlugin;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 978
    return-void
.end method

.method private sendMessageToDefaultCallback(Lorg/apache/cordova/PluginResult;)Z
    .locals 2
    .param p1, "message"    # Lorg/apache/cordova/PluginResult;

    .prologue
    const/4 v0, 0x1

    .line 275
    iget-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->jsDefaultCallback:Lorg/apache/cordova/CallbackContext;

    if-nez v1, :cond_0

    .line 276
    iget-object v0, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->defaultCallbackStoredResults:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    const/4 v0, 0x0

    .line 283
    :goto_0
    return v0

    .line 280
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 281
    iget-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->jsDefaultCallback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1, p1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_0
.end method

.method private sendPluginNotReadyToWork(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 3
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "callback"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 373
    const/4 v1, 0x0

    sget-object v2, Lcom/nordnetab/chcp/main/model/ChcpError;->ASSETS_FOLDER_IN_NOT_YET_INSTALLED:Lcom/nordnetab/chcp/main/model/ChcpError;

    invoke-static {p1, v1, v2}, Lcom/nordnetab/chcp/main/js/PluginResultHelper;->createPluginResult(Ljava/lang/String;Ljava/util/Map;Lcom/nordnetab/chcp/main/model/ChcpError;)Lorg/apache/cordova/PluginResult;

    move-result-object v0

    .line 374
    .local v0, "pluginResult":Lorg/apache/cordova/PluginResult;
    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 375
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/CallbackContext;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/apache/cordova/CordovaArgs;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 242
    const/4 v0, 0x1

    .line 243
    .local v0, "cmdProcessed":Z
    const-string v1, "jsInitPlugin"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    invoke-direct {p0, p3}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->jsInit(Lorg/apache/cordova/CallbackContext;)V

    .line 261
    :goto_0
    return v0

    .line 245
    :cond_0
    const-string v1, "jsFetchUpdate"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    invoke-direct {p0, p3, p2}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->jsFetchUpdate(Lorg/apache/cordova/CallbackContext;Lorg/apache/cordova/CordovaArgs;)V

    goto :goto_0

    .line 247
    :cond_1
    const-string v1, "jsInstallUpdate"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 248
    invoke-direct {p0, p3}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->jsInstallUpdate(Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 249
    :cond_2
    const-string v1, "jsConfigure"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 250
    invoke-direct {p0, p2, p3}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->jsSetPluginOptions(Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 251
    :cond_3
    const-string v1, "jsRequestAppUpdate"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 252
    invoke-direct {p0, p2, p3}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->jsRequestAppUpdate(Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 253
    :cond_4
    const-string v1, "jsIsUpdateAvailableForInstallation"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 254
    invoke-direct {p0, p3}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->jsIsUpdateAvailableForInstallation(Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 255
    :cond_5
    const-string v1, "jsGetVersionInfo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 256
    invoke-direct {p0, p3}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->jsGetVersionInfo(Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 258
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultFetchUpdateOptions()Lcom/nordnetab/chcp/main/config/FetchUpdateOptions;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->defaultFetchUpdateOptions:Lcom/nordnetab/chcp/main/config/FetchUpdateOptions;

    return-object v0
.end method

.method public initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
    .locals 3
    .param p1, "cordova"    # Lorg/apache/cordova/CordovaInterface;
    .param p2, "webView"    # Lorg/apache/cordova/CordovaWebView;

    .prologue
    .line 92
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/CordovaPlugin;->initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    .line 94
    invoke-direct {p0}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->parseCordovaConfigXml()V

    .line 95
    invoke-direct {p0}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->loadPluginInternalPreferences()V

    .line 97
    const-string v0, "CHCP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Currently running release version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    invoke-virtual {v2}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->getCurrentReleaseVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->cleanupFileSystemFromOldReleases()V

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->handler:Landroid/os/Handler;

    .line 103
    new-instance v0, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    invoke-virtual {v2}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->getCurrentReleaseVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->fileStructure:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    .line 104
    new-instance v0, Lcom/nordnetab/chcp/main/storage/ApplicationConfigStorage;

    invoke-direct {v0}, Lcom/nordnetab/chcp/main/storage/ApplicationConfigStorage;-><init>()V

    iput-object v0, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->appConfigStorage:Lcom/nordnetab/chcp/main/storage/IObjectFileStorage;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->defaultCallbackStoredResults:Ljava/util/List;

    .line 106
    return-void
.end method

.method public onEvent(Lcom/nordnetab/chcp/main/events/AssetsInstallationErrorEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/nordnetab/chcp/main/events/AssetsInstallationErrorEvent;
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .prologue
    .line 705
    const-string v1, "CHCP"

    const-string v2, "Can\'t install assets on device. Continue to work with default bundle"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    invoke-static {p1}, Lcom/nordnetab/chcp/main/js/PluginResultHelper;->pluginResultFromEvent(Lcom/nordnetab/chcp/main/events/IPluginEvent;)Lorg/apache/cordova/PluginResult;

    move-result-object v0

    .line 708
    .local v0, "result":Lorg/apache/cordova/PluginResult;
    invoke-direct {p0, v0}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->sendMessageToDefaultCallback(Lorg/apache/cordova/PluginResult;)Z

    .line 709
    return-void
.end method

.method public onEvent(Lcom/nordnetab/chcp/main/events/AssetsInstalledEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/nordnetab/chcp/main/events/AssetsInstalledEvent;
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 678
    iget-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    iget-object v2, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/nordnetab/chcp/main/utils/VersionHelper;->applicationVersionCode(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->setAppBuildVersion(I)V

    .line 679
    iget-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    invoke-virtual {v1, v3}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->setWwwFolderInstalled(Z)V

    .line 680
    iget-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefsStorage:Lcom/nordnetab/chcp/main/storage/IObjectPreferenceStorage;

    iget-object v2, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    invoke-interface {v1, v2}, Lcom/nordnetab/chcp/main/storage/IObjectPreferenceStorage;->storeInPreference(Ljava/lang/Object;)Z

    .line 682
    iput-boolean v3, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->isPluginReadyForWork:Z

    .line 684
    invoke-static {p1}, Lcom/nordnetab/chcp/main/js/PluginResultHelper;->pluginResultFromEvent(Lcom/nordnetab/chcp/main/events/IPluginEvent;)Lorg/apache/cordova/PluginResult;

    move-result-object v0

    .line 685
    .local v0, "result":Lorg/apache/cordova/PluginResult;
    invoke-direct {p0, v0}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->sendMessageToDefaultCallback(Lorg/apache/cordova/PluginResult;)Z

    .line 687
    iget-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->chcpXmlConfig:Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;

    invoke-virtual {v1}, Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;->isAutoDownloadIsAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 688
    invoke-static {}, Lcom/nordnetab/chcp/main/updater/UpdatesInstaller;->isInstalling()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/nordnetab/chcp/main/updater/UpdatesLoader;->isExecuting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 689
    invoke-direct {p0}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->fetchUpdate()V

    .line 691
    :cond_0
    return-void
.end method

.method public onEvent(Lcom/nordnetab/chcp/main/events/BeforeAssetsInstalledEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/nordnetab/chcp/main/events/BeforeAssetsInstalledEvent;
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .prologue
    .line 659
    const-string v1, "CHCP"

    const-string v2, "Dispatching before assets installed event"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-static {p1}, Lcom/nordnetab/chcp/main/js/PluginResultHelper;->pluginResultFromEvent(Lcom/nordnetab/chcp/main/events/IPluginEvent;)Lorg/apache/cordova/PluginResult;

    move-result-object v0

    .line 662
    .local v0, "result":Lorg/apache/cordova/PluginResult;
    invoke-direct {p0, v0}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->sendMessageToDefaultCallback(Lorg/apache/cordova/PluginResult;)Z

    .line 663
    return-void
.end method

.method public onEvent(Lcom/nordnetab/chcp/main/events/BeforeInstallEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/nordnetab/chcp/main/events/BeforeInstallEvent;
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .prologue
    .line 784
    const-string v1, "CHCP"

    const-string v2, "Dispatching Before install event"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    invoke-static {p1}, Lcom/nordnetab/chcp/main/js/PluginResultHelper;->pluginResultFromEvent(Lcom/nordnetab/chcp/main/events/IPluginEvent;)Lorg/apache/cordova/PluginResult;

    move-result-object v0

    .line 788
    .local v0, "jsResult":Lorg/apache/cordova/PluginResult;
    invoke-direct {p0, v0}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->sendMessageToDefaultCallback(Lorg/apache/cordova/PluginResult;)Z

    .line 789
    return-void
.end method

.method public onEvent(Lcom/nordnetab/chcp/main/events/NothingToInstallEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/nordnetab/chcp/main/events/NothingToInstallEvent;
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .prologue
    .line 907
    const-string v1, "CHCP"

    const-string v2, "Nothing to install"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    invoke-static {p1}, Lcom/nordnetab/chcp/main/js/PluginResultHelper;->pluginResultFromEvent(Lcom/nordnetab/chcp/main/events/IPluginEvent;)Lorg/apache/cordova/PluginResult;

    move-result-object v0

    .line 912
    .local v0, "jsResult":Lorg/apache/cordova/PluginResult;
    iget-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->installJsCallback:Lorg/apache/cordova/CallbackContext;

    if-eqz v1, :cond_0

    .line 913
    iget-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->installJsCallback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 914
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->installJsCallback:Lorg/apache/cordova/CallbackContext;

    .line 917
    :cond_0
    invoke-direct {p0, v0}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->sendMessageToDefaultCallback(Lorg/apache/cordova/PluginResult;)Z

    .line 918
    return-void
.end method

.method public onEvent(Lcom/nordnetab/chcp/main/events/NothingToUpdateEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/nordnetab/chcp/main/events/NothingToUpdateEvent;
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .prologue
    .line 760
    const-string v1, "CHCP"

    const-string v2, "Nothing to update"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    invoke-static {p1}, Lcom/nordnetab/chcp/main/js/PluginResultHelper;->pluginResultFromEvent(Lcom/nordnetab/chcp/main/events/IPluginEvent;)Lorg/apache/cordova/PluginResult;

    move-result-object v0

    .line 765
    .local v0, "jsResult":Lorg/apache/cordova/PluginResult;
    iget-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->downloadJsCallback:Lorg/apache/cordova/CallbackContext;

    if-eqz v1, :cond_0

    .line 766
    iget-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->downloadJsCallback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 767
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->downloadJsCallback:Lorg/apache/cordova/CallbackContext;

    .line 770
    :cond_0
    invoke-direct {p0, v0}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->sendMessageToDefaultCallback(Lorg/apache/cordova/PluginResult;)Z

    .line 771
    return-void
.end method

.method public onEvent(Lcom/nordnetab/chcp/main/events/UpdateDownloadErrorEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/nordnetab/chcp/main/events/UpdateDownloadErrorEvent;
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .prologue
    .line 802
    const-string v2, "CHCP"

    const-string v3, "Failed to update"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    invoke-virtual {p1}, Lcom/nordnetab/chcp/main/events/UpdateDownloadErrorEvent;->error()Lcom/nordnetab/chcp/main/model/ChcpError;

    move-result-object v0

    .line 805
    .local v0, "error":Lcom/nordnetab/chcp/main/model/ChcpError;
    sget-object v2, Lcom/nordnetab/chcp/main/model/ChcpError;->LOCAL_VERSION_OF_APPLICATION_CONFIG_NOT_FOUND:Lcom/nordnetab/chcp/main/model/ChcpError;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/nordnetab/chcp/main/model/ChcpError;->LOCAL_VERSION_OF_MANIFEST_NOT_FOUND:Lcom/nordnetab/chcp/main/model/ChcpError;

    if-ne v0, v2, :cond_1

    .line 806
    :cond_0
    const-string v2, "CHCP"

    const-string v3, "Can\'t load application config from installation folder. Reinstalling external folder"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    invoke-direct {p0}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->installWwwFolder()V

    .line 810
    :cond_1
    invoke-static {p1}, Lcom/nordnetab/chcp/main/js/PluginResultHelper;->pluginResultFromEvent(Lcom/nordnetab/chcp/main/events/IPluginEvent;)Lorg/apache/cordova/PluginResult;

    move-result-object v1

    .line 813
    .local v1, "jsResult":Lorg/apache/cordova/PluginResult;
    iget-object v2, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->downloadJsCallback:Lorg/apache/cordova/CallbackContext;

    if-eqz v2, :cond_2

    .line 814
    iget-object v2, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->downloadJsCallback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v2, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 815
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->downloadJsCallback:Lorg/apache/cordova/CallbackContext;

    .line 818
    :cond_2
    invoke-direct {p0, v1}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->sendMessageToDefaultCallback(Lorg/apache/cordova/PluginResult;)Z

    .line 820
    invoke-virtual {p1}, Lcom/nordnetab/chcp/main/events/UpdateDownloadErrorEvent;->error()Lcom/nordnetab/chcp/main/model/ChcpError;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->rollbackIfCorrupted(Lcom/nordnetab/chcp/main/model/ChcpError;)V

    .line 821
    return-void
.end method

.method public onEvent(Lcom/nordnetab/chcp/main/events/UpdateInstallationErrorEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/nordnetab/chcp/main/events/UpdateInstallationErrorEvent;
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .prologue
    .line 881
    const-string v1, "CHCP"

    const-string v2, "Failed to install"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    invoke-static {p1}, Lcom/nordnetab/chcp/main/js/PluginResultHelper;->pluginResultFromEvent(Lcom/nordnetab/chcp/main/events/IPluginEvent;)Lorg/apache/cordova/PluginResult;

    move-result-object v0

    .line 886
    .local v0, "jsResult":Lorg/apache/cordova/PluginResult;
    iget-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->installJsCallback:Lorg/apache/cordova/CallbackContext;

    if-eqz v1, :cond_0

    .line 887
    iget-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->installJsCallback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 888
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->installJsCallback:Lorg/apache/cordova/CallbackContext;

    .line 891
    :cond_0
    invoke-direct {p0, v0}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->sendMessageToDefaultCallback(Lorg/apache/cordova/PluginResult;)Z

    .line 893
    invoke-virtual {p1}, Lcom/nordnetab/chcp/main/events/UpdateInstallationErrorEvent;->error()Lcom/nordnetab/chcp/main/model/ChcpError;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->rollbackIfCorrupted(Lcom/nordnetab/chcp/main/model/ChcpError;)V

    .line 894
    return-void
.end method

.method public onEvent(Lcom/nordnetab/chcp/main/events/UpdateInstalledEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/nordnetab/chcp/main/events/UpdateInstalledEvent;
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .prologue
    .line 838
    const-string v2, "CHCP"

    const-string v3, "Update is installed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    invoke-virtual {p1}, Lcom/nordnetab/chcp/main/events/UpdateInstalledEvent;->applicationConfig()Lcom/nordnetab/chcp/main/config/ApplicationConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nordnetab/chcp/main/config/ApplicationConfig;->getContentConfig()Lcom/nordnetab/chcp/main/config/ContentConfig;

    move-result-object v1

    .line 843
    .local v1, "newContentConfig":Lcom/nordnetab/chcp/main/config/ContentConfig;
    iget-object v2, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    iget-object v3, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    invoke-virtual {v3}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->getCurrentReleaseVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->setPreviousReleaseVersionName(Ljava/lang/String;)V

    .line 844
    iget-object v2, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    invoke-virtual {v1}, Lcom/nordnetab/chcp/main/config/ContentConfig;->getReleaseVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->setCurrentReleaseVersionName(Ljava/lang/String;)V

    .line 845
    iget-object v2, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->setReadyForInstallationReleaseVersionName(Ljava/lang/String;)V

    .line 846
    iget-object v2, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefsStorage:Lcom/nordnetab/chcp/main/storage/IObjectPreferenceStorage;

    iget-object v3, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    invoke-interface {v2, v3}, Lcom/nordnetab/chcp/main/storage/IObjectPreferenceStorage;->storeInPreference(Ljava/lang/Object;)Z

    .line 848
    new-instance v2, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    iget-object v3, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v1}, Lcom/nordnetab/chcp/main/config/ContentConfig;->getReleaseVersion()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->fileStructure:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    .line 850
    invoke-static {p1}, Lcom/nordnetab/chcp/main/js/PluginResultHelper;->pluginResultFromEvent(Lcom/nordnetab/chcp/main/events/IPluginEvent;)Lorg/apache/cordova/PluginResult;

    move-result-object v0

    .line 852
    .local v0, "jsResult":Lorg/apache/cordova/PluginResult;
    iget-object v2, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->installJsCallback:Lorg/apache/cordova/CallbackContext;

    if-eqz v2, :cond_0

    .line 853
    iget-object v2, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->installJsCallback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v2, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 854
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->installJsCallback:Lorg/apache/cordova/CallbackContext;

    .line 857
    :cond_0
    invoke-direct {p0, v0}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->sendMessageToDefaultCallback(Lorg/apache/cordova/PluginResult;)Z

    .line 860
    iget-object v2, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/nordnetab/chcp/main/HotCodePushPlugin$2;

    invoke-direct {v3, p0}, Lcom/nordnetab/chcp/main/HotCodePushPlugin$2;-><init>(Lcom/nordnetab/chcp/main/HotCodePushPlugin;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 867
    invoke-direct {p0}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->cleanupFileSystemFromOldReleases()V

    .line 868
    return-void
.end method

.method public onEvent(Lcom/nordnetab/chcp/main/events/UpdateIsReadyToInstallEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/nordnetab/chcp/main/events/UpdateIsReadyToInstallEvent;
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 726
    invoke-virtual {p1}, Lcom/nordnetab/chcp/main/events/UpdateIsReadyToInstallEvent;->applicationConfig()Lcom/nordnetab/chcp/main/config/ApplicationConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nordnetab/chcp/main/config/ApplicationConfig;->getContentConfig()Lcom/nordnetab/chcp/main/config/ContentConfig;

    move-result-object v1

    .line 727
    .local v1, "newContentConfig":Lcom/nordnetab/chcp/main/config/ContentConfig;
    const-string v2, "CHCP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update is ready for installation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/nordnetab/chcp/main/config/ContentConfig;->getReleaseVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-object v2, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    invoke-virtual {v1}, Lcom/nordnetab/chcp/main/config/ContentConfig;->getReleaseVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->setReadyForInstallationReleaseVersionName(Ljava/lang/String;)V

    .line 730
    iget-object v2, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefsStorage:Lcom/nordnetab/chcp/main/storage/IObjectPreferenceStorage;

    iget-object v3, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    invoke-interface {v2, v3}, Lcom/nordnetab/chcp/main/storage/IObjectPreferenceStorage;->storeInPreference(Ljava/lang/Object;)Z

    .line 732
    invoke-static {p1}, Lcom/nordnetab/chcp/main/js/PluginResultHelper;->pluginResultFromEvent(Lcom/nordnetab/chcp/main/events/IPluginEvent;)Lorg/apache/cordova/PluginResult;

    move-result-object v0

    .line 735
    .local v0, "jsResult":Lorg/apache/cordova/PluginResult;
    iget-object v2, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->downloadJsCallback:Lorg/apache/cordova/CallbackContext;

    if-eqz v2, :cond_0

    .line 736
    iget-object v2, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->downloadJsCallback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v2, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 737
    iput-object v5, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->downloadJsCallback:Lorg/apache/cordova/CallbackContext;

    .line 740
    :cond_0
    invoke-direct {p0, v0}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->sendMessageToDefaultCallback(Lorg/apache/cordova/PluginResult;)Z

    .line 743
    iget-object v2, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->chcpXmlConfig:Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;

    invoke-virtual {v2}, Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;->isAutoInstallIsAllowed()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/nordnetab/chcp/main/config/ContentConfig;->getUpdateTime()Lcom/nordnetab/chcp/main/model/UpdateTime;

    move-result-object v2

    sget-object v3, Lcom/nordnetab/chcp/main/model/UpdateTime;->NOW:Lcom/nordnetab/chcp/main/model/UpdateTime;

    if-ne v2, v3, :cond_1

    .line 744
    invoke-direct {p0, v5}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->installUpdate(Lorg/apache/cordova/CallbackContext;)V

    .line 746
    :cond_1
    return-void
.end method

.method public onResume(Z)V
    .locals 5
    .param p1, "multitasking"    # Z

    .prologue
    .line 143
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaPlugin;->onResume(Z)V

    .line 145
    iget-boolean v3, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->isPluginReadyForWork:Z

    if-nez v3, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v3, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->chcpXmlConfig:Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;

    invoke-virtual {v3}, Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;->isAutoInstallIsAllowed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    invoke-static {}, Lcom/nordnetab/chcp/main/updater/UpdatesInstaller;->isInstalling()Z

    move-result v3

    if-nez v3, :cond_0

    .line 151
    invoke-static {}, Lcom/nordnetab/chcp/main/updater/UpdatesLoader;->isExecuting()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    .line 152
    invoke-virtual {v3}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->getReadyForInstallationReleaseVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 156
    new-instance v1, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    iget-object v3, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    invoke-virtual {v4}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->getReadyForInstallationReleaseVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 157
    .local v1, "fs":Lcom/nordnetab/chcp/main/model/PluginFilesStructure;
    iget-object v3, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->appConfigStorage:Lcom/nordnetab/chcp/main/storage/IObjectFileStorage;

    invoke-virtual {v1}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->getDownloadFolder()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nordnetab/chcp/main/storage/IObjectFileStorage;->loadFromFolder(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nordnetab/chcp/main/config/ApplicationConfig;

    .line 158
    .local v0, "appConfig":Lcom/nordnetab/chcp/main/config/ApplicationConfig;
    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/nordnetab/chcp/main/config/ApplicationConfig;->getContentConfig()Lcom/nordnetab/chcp/main/config/ContentConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nordnetab/chcp/main/config/ContentConfig;->getUpdateTime()Lcom/nordnetab/chcp/main/model/UpdateTime;

    move-result-object v2

    .line 163
    .local v2, "updateTime":Lcom/nordnetab/chcp/main/model/UpdateTime;
    sget-object v3, Lcom/nordnetab/chcp/main/model/UpdateTime;->ON_RESUME:Lcom/nordnetab/chcp/main/model/UpdateTime;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/nordnetab/chcp/main/model/UpdateTime;->NOW:Lcom/nordnetab/chcp/main/model/UpdateTime;

    if-ne v2, v3, :cond_0

    .line 164
    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->installUpdate(Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 110
    invoke-super {p0}, Lorg/apache/cordova/CordovaPlugin;->onStart()V

    .line 112
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    .line 113
    .local v0, "eventBus":Lorg/greenrobot/eventbus/EventBus;
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->isPluginReadyForWork()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->isPluginReadyForWork:Z

    .line 120
    iget-boolean v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->isPluginReadyForWork:Z

    if-nez v1, :cond_2

    .line 121
    iput-boolean v2, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->dontReloadOnStart:Z

    .line 122
    invoke-direct {p0}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->installWwwFolder()V

    .line 139
    :cond_1
    :goto_0
    return-void

    .line 127
    :cond_2
    iget-boolean v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->dontReloadOnStart:Z

    if-nez v1, :cond_3

    .line 128
    iput-boolean v2, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->dontReloadOnStart:Z

    .line 129
    invoke-direct {p0}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->redirectToLocalStorageIndexPage()V

    .line 133
    :cond_3
    iget-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->chcpXmlConfig:Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;

    invoke-virtual {v1}, Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;->isAutoInstallIsAllowed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    invoke-static {}, Lcom/nordnetab/chcp/main/updater/UpdatesInstaller;->isInstalling()Z

    move-result v1

    if-nez v1, :cond_1

    .line 135
    invoke-static {}, Lcom/nordnetab/chcp/main/updater/UpdatesLoader;->isExecuting()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->pluginInternalPrefs:Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    .line 136
    invoke-virtual {v1}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->getReadyForInstallationReleaseVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 137
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->installUpdate(Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 170
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 172
    invoke-super {p0}, Lorg/apache/cordova/CordovaPlugin;->onStop()V

    .line 173
    return-void
.end method

.method public setDefaultFetchUpdateOptions(Lcom/nordnetab/chcp/main/config/FetchUpdateOptions;)V
    .locals 0
    .param p1, "options"    # Lcom/nordnetab/chcp/main/config/FetchUpdateOptions;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->defaultFetchUpdateOptions:Lcom/nordnetab/chcp/main/config/FetchUpdateOptions;

    .line 188
    return-void
.end method
