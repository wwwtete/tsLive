.class public final enum Lcom/nordnetab/chcp/main/model/ChcpError;
.super Ljava/lang/Enum;
.source "ChcpError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nordnetab/chcp/main/model/ChcpError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nordnetab/chcp/main/model/ChcpError;

.field public static final enum APPLICATION_BUILD_VERSION_TOO_LOW:Lcom/nordnetab/chcp/main/model/ChcpError;

.field public static final enum ASSETS_FOLDER_IN_NOT_YET_INSTALLED:Lcom/nordnetab/chcp/main/model/ChcpError;

.field public static final enum CANT_DOWNLOAD_UPDATE_WHILE_INSTALLATION_IN_PROGRESS:Lcom/nordnetab/chcp/main/model/ChcpError;

.field public static final enum CANT_INSTALL_WHILE_DOWNLOAD_IN_PROGRESS:Lcom/nordnetab/chcp/main/model/ChcpError;

.field public static final enum DOWNLOAD_ALREADY_IN_PROGRESS:Lcom/nordnetab/chcp/main/model/ChcpError;

.field public static final enum FAILED_TO_COPY_FILES_FROM_PREVIOUS_RELEASE:Lcom/nordnetab/chcp/main/model/ChcpError;

.field public static final enum FAILED_TO_COPY_NEW_CONTENT_FILES:Lcom/nordnetab/chcp/main/model/ChcpError;

.field public static final enum FAILED_TO_DOWNLOAD_APPLICATION_CONFIG:Lcom/nordnetab/chcp/main/model/ChcpError;

.field public static final enum FAILED_TO_DOWNLOAD_CONTENT_MANIFEST:Lcom/nordnetab/chcp/main/model/ChcpError;

.field public static final enum FAILED_TO_DOWNLOAD_UPDATE_FILES:Lcom/nordnetab/chcp/main/model/ChcpError;

.field public static final enum FAILED_TO_INSTALL_ASSETS_ON_EXTERNAL_STORAGE:Lcom/nordnetab/chcp/main/model/ChcpError;

.field public static final enum FAILED_TO_MOVE_LOADED_FILES_TO_INSTALLATION_FOLDER:Lcom/nordnetab/chcp/main/model/ChcpError;

.field public static final enum INSTALLATION_ALREADY_IN_PROGRESS:Lcom/nordnetab/chcp/main/model/ChcpError;

.field public static final enum LOADED_VERSION_OF_APPLICATION_CONFIG_NOT_FOUND:Lcom/nordnetab/chcp/main/model/ChcpError;

.field public static final enum LOADED_VERSION_OF_MANIFEST_NOT_FOUND:Lcom/nordnetab/chcp/main/model/ChcpError;

.field public static final enum LOCAL_VERSION_OF_APPLICATION_CONFIG_NOT_FOUND:Lcom/nordnetab/chcp/main/model/ChcpError;

.field public static final enum LOCAL_VERSION_OF_MANIFEST_NOT_FOUND:Lcom/nordnetab/chcp/main/model/ChcpError;

.field public static final enum NEW_APPLICATION_CONFIG_IS_INVALID:Lcom/nordnetab/chcp/main/model/ChcpError;

.field public static final enum NONE:Lcom/nordnetab/chcp/main/model/ChcpError;

.field public static final enum NOTHING_TO_INSTALL:Lcom/nordnetab/chcp/main/model/ChcpError;

.field public static final enum NOTHING_TO_UPDATE:Lcom/nordnetab/chcp/main/model/ChcpError;

.field public static final enum UPDATE_IS_INVALID:Lcom/nordnetab/chcp/main/model/ChcpError;


# instance fields
.field private errorCode:I

.field private errorDescription:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 10
    new-instance v0, Lcom/nordnetab/chcp/main/model/ChcpError;

    const-string v1, "NONE"

    const-string v2, ""

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/nordnetab/chcp/main/model/ChcpError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nordnetab/chcp/main/model/ChcpError;->NONE:Lcom/nordnetab/chcp/main/model/ChcpError;

    .line 14
    new-instance v0, Lcom/nordnetab/chcp/main/model/ChcpError;

    const-string v1, "FAILED_TO_DOWNLOAD_APPLICATION_CONFIG"

    const/4 v2, -0x1

    const-string v3, "Failed to download application configuration file"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/nordnetab/chcp/main/model/ChcpError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nordnetab/chcp/main/model/ChcpError;->FAILED_TO_DOWNLOAD_APPLICATION_CONFIG:Lcom/nordnetab/chcp/main/model/ChcpError;

    .line 15
    new-instance v0, Lcom/nordnetab/chcp/main/model/ChcpError;

    const-string v1, "APPLICATION_BUILD_VERSION_TOO_LOW"

    const/4 v2, -0x2

    const-string v3, "Application build version is too low for this update"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/nordnetab/chcp/main/model/ChcpError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nordnetab/chcp/main/model/ChcpError;->APPLICATION_BUILD_VERSION_TOO_LOW:Lcom/nordnetab/chcp/main/model/ChcpError;

    .line 16
    new-instance v0, Lcom/nordnetab/chcp/main/model/ChcpError;

    const-string v1, "FAILED_TO_DOWNLOAD_CONTENT_MANIFEST"

    const/4 v2, -0x3

    const-string v3, "Failed to download content manifest file"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/nordnetab/chcp/main/model/ChcpError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nordnetab/chcp/main/model/ChcpError;->FAILED_TO_DOWNLOAD_CONTENT_MANIFEST:Lcom/nordnetab/chcp/main/model/ChcpError;

    .line 17
    new-instance v0, Lcom/nordnetab/chcp/main/model/ChcpError;

    const-string v1, "FAILED_TO_DOWNLOAD_UPDATE_FILES"

    const/4 v2, -0x4

    const-string v3, "Failed to download update files"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/nordnetab/chcp/main/model/ChcpError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nordnetab/chcp/main/model/ChcpError;->FAILED_TO_DOWNLOAD_UPDATE_FILES:Lcom/nordnetab/chcp/main/model/ChcpError;

    .line 18
    new-instance v0, Lcom/nordnetab/chcp/main/model/ChcpError;

    const-string v1, "FAILED_TO_MOVE_LOADED_FILES_TO_INSTALLATION_FOLDER"

    const/4 v2, 0x5

    const/4 v3, -0x5

    const-string v4, "Failed to move downloaded files to the installation folder"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nordnetab/chcp/main/model/ChcpError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nordnetab/chcp/main/model/ChcpError;->FAILED_TO_MOVE_LOADED_FILES_TO_INSTALLATION_FOLDER:Lcom/nordnetab/chcp/main/model/ChcpError;

    .line 19
    new-instance v0, Lcom/nordnetab/chcp/main/model/ChcpError;

    const-string v1, "UPDATE_IS_INVALID"

    const/4 v2, 0x6

    const/4 v3, -0x6

    const-string v4, "Update package is broken"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nordnetab/chcp/main/model/ChcpError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nordnetab/chcp/main/model/ChcpError;->UPDATE_IS_INVALID:Lcom/nordnetab/chcp/main/model/ChcpError;

    .line 20
    new-instance v0, Lcom/nordnetab/chcp/main/model/ChcpError;

    const-string v1, "FAILED_TO_COPY_FILES_FROM_PREVIOUS_RELEASE"

    const/4 v2, 0x7

    const/4 v3, -0x7

    const-string v4, "Can\'t copy files from previous release to the new release"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nordnetab/chcp/main/model/ChcpError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nordnetab/chcp/main/model/ChcpError;->FAILED_TO_COPY_FILES_FROM_PREVIOUS_RELEASE:Lcom/nordnetab/chcp/main/model/ChcpError;

    .line 21
    new-instance v0, Lcom/nordnetab/chcp/main/model/ChcpError;

    const-string v1, "FAILED_TO_COPY_NEW_CONTENT_FILES"

    const/16 v2, 0x8

    const/4 v3, -0x8

    const-string v4, "Failed to copy new files to content directory"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nordnetab/chcp/main/model/ChcpError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nordnetab/chcp/main/model/ChcpError;->FAILED_TO_COPY_NEW_CONTENT_FILES:Lcom/nordnetab/chcp/main/model/ChcpError;

    .line 22
    new-instance v0, Lcom/nordnetab/chcp/main/model/ChcpError;

    const-string v1, "LOCAL_VERSION_OF_APPLICATION_CONFIG_NOT_FOUND"

    const/16 v2, 0x9

    const/16 v3, -0x9

    const-string v4, "Failed to load current application config"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nordnetab/chcp/main/model/ChcpError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nordnetab/chcp/main/model/ChcpError;->LOCAL_VERSION_OF_APPLICATION_CONFIG_NOT_FOUND:Lcom/nordnetab/chcp/main/model/ChcpError;

    .line 23
    new-instance v0, Lcom/nordnetab/chcp/main/model/ChcpError;

    const-string v1, "LOCAL_VERSION_OF_MANIFEST_NOT_FOUND"

    const/16 v2, 0xa

    const/16 v3, -0xa

    const-string v4, "Failed to load current manifest file"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nordnetab/chcp/main/model/ChcpError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nordnetab/chcp/main/model/ChcpError;->LOCAL_VERSION_OF_MANIFEST_NOT_FOUND:Lcom/nordnetab/chcp/main/model/ChcpError;

    .line 24
    new-instance v0, Lcom/nordnetab/chcp/main/model/ChcpError;

    const-string v1, "LOADED_VERSION_OF_APPLICATION_CONFIG_NOT_FOUND"

    const/16 v2, 0xb

    const/16 v3, -0xb

    const-string v4, "Failed to load application config from download folder"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nordnetab/chcp/main/model/ChcpError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nordnetab/chcp/main/model/ChcpError;->LOADED_VERSION_OF_APPLICATION_CONFIG_NOT_FOUND:Lcom/nordnetab/chcp/main/model/ChcpError;

    .line 25
    new-instance v0, Lcom/nordnetab/chcp/main/model/ChcpError;

    const-string v1, "LOADED_VERSION_OF_MANIFEST_NOT_FOUND"

    const/16 v2, 0xc

    const/16 v3, -0xc

    const-string v4, "Failed to load content manifest from download folder"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nordnetab/chcp/main/model/ChcpError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nordnetab/chcp/main/model/ChcpError;->LOADED_VERSION_OF_MANIFEST_NOT_FOUND:Lcom/nordnetab/chcp/main/model/ChcpError;

    .line 26
    new-instance v0, Lcom/nordnetab/chcp/main/model/ChcpError;

    const-string v1, "FAILED_TO_INSTALL_ASSETS_ON_EXTERNAL_STORAGE"

    const/16 v2, 0xd

    const/16 v3, -0xd

    const-string v4, "Failed to copy assets from application bundle in to external storage"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nordnetab/chcp/main/model/ChcpError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nordnetab/chcp/main/model/ChcpError;->FAILED_TO_INSTALL_ASSETS_ON_EXTERNAL_STORAGE:Lcom/nordnetab/chcp/main/model/ChcpError;

    .line 27
    new-instance v0, Lcom/nordnetab/chcp/main/model/ChcpError;

    const-string v1, "CANT_INSTALL_WHILE_DOWNLOAD_IN_PROGRESS"

    const/16 v2, 0xe

    const/16 v3, -0xe

    const-string v4, "Can\'t launch installation task while download is in progress"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nordnetab/chcp/main/model/ChcpError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nordnetab/chcp/main/model/ChcpError;->CANT_INSTALL_WHILE_DOWNLOAD_IN_PROGRESS:Lcom/nordnetab/chcp/main/model/ChcpError;

    .line 28
    new-instance v0, Lcom/nordnetab/chcp/main/model/ChcpError;

    const-string v1, "CANT_DOWNLOAD_UPDATE_WHILE_INSTALLATION_IN_PROGRESS"

    const/16 v2, 0xf

    const/16 v3, -0xf

    const-string v4, "Can\'t launch download task while installation is in progress"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nordnetab/chcp/main/model/ChcpError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nordnetab/chcp/main/model/ChcpError;->CANT_DOWNLOAD_UPDATE_WHILE_INSTALLATION_IN_PROGRESS:Lcom/nordnetab/chcp/main/model/ChcpError;

    .line 29
    new-instance v0, Lcom/nordnetab/chcp/main/model/ChcpError;

    const-string v1, "INSTALLATION_ALREADY_IN_PROGRESS"

    const/16 v2, 0x10

    const/16 v3, -0x10

    const-string v4, "Installation already in progress"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nordnetab/chcp/main/model/ChcpError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nordnetab/chcp/main/model/ChcpError;->INSTALLATION_ALREADY_IN_PROGRESS:Lcom/nordnetab/chcp/main/model/ChcpError;

    .line 30
    new-instance v0, Lcom/nordnetab/chcp/main/model/ChcpError;

    const-string v1, "DOWNLOAD_ALREADY_IN_PROGRESS"

    const/16 v2, 0x11

    const/16 v3, -0x11

    const-string v4, "Download already in progress"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nordnetab/chcp/main/model/ChcpError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nordnetab/chcp/main/model/ChcpError;->DOWNLOAD_ALREADY_IN_PROGRESS:Lcom/nordnetab/chcp/main/model/ChcpError;

    .line 31
    new-instance v0, Lcom/nordnetab/chcp/main/model/ChcpError;

    const-string v1, "ASSETS_FOLDER_IN_NOT_YET_INSTALLED"

    const/16 v2, 0x12

    const/16 v3, -0x12

    const-string v4, "API requests are ignored until assets are installed. Please, wait."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nordnetab/chcp/main/model/ChcpError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nordnetab/chcp/main/model/ChcpError;->ASSETS_FOLDER_IN_NOT_YET_INSTALLED:Lcom/nordnetab/chcp/main/model/ChcpError;

    .line 32
    new-instance v0, Lcom/nordnetab/chcp/main/model/ChcpError;

    const-string v1, "NEW_APPLICATION_CONFIG_IS_INVALID"

    const/16 v2, 0x13

    const/16 v3, -0x13

    const-string v4, "Downloaded new application config, but it is not valid"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nordnetab/chcp/main/model/ChcpError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nordnetab/chcp/main/model/ChcpError;->NEW_APPLICATION_CONFIG_IS_INVALID:Lcom/nordnetab/chcp/main/model/ChcpError;

    .line 37
    new-instance v0, Lcom/nordnetab/chcp/main/model/ChcpError;

    const-string v1, "NOTHING_TO_INSTALL"

    const/16 v2, 0x14

    const-string v3, "Nothing to install"

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/nordnetab/chcp/main/model/ChcpError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nordnetab/chcp/main/model/ChcpError;->NOTHING_TO_INSTALL:Lcom/nordnetab/chcp/main/model/ChcpError;

    .line 38
    new-instance v0, Lcom/nordnetab/chcp/main/model/ChcpError;

    const-string v1, "NOTHING_TO_UPDATE"

    const/16 v2, 0x15

    const-string v3, "Nothing new to load from server"

    invoke-direct {v0, v1, v2, v7, v3}, Lcom/nordnetab/chcp/main/model/ChcpError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/nordnetab/chcp/main/model/ChcpError;->NOTHING_TO_UPDATE:Lcom/nordnetab/chcp/main/model/ChcpError;

    .line 8
    const/16 v0, 0x16

    new-array v0, v0, [Lcom/nordnetab/chcp/main/model/ChcpError;

    sget-object v1, Lcom/nordnetab/chcp/main/model/ChcpError;->NONE:Lcom/nordnetab/chcp/main/model/ChcpError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nordnetab/chcp/main/model/ChcpError;->FAILED_TO_DOWNLOAD_APPLICATION_CONFIG:Lcom/nordnetab/chcp/main/model/ChcpError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nordnetab/chcp/main/model/ChcpError;->APPLICATION_BUILD_VERSION_TOO_LOW:Lcom/nordnetab/chcp/main/model/ChcpError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nordnetab/chcp/main/model/ChcpError;->FAILED_TO_DOWNLOAD_CONTENT_MANIFEST:Lcom/nordnetab/chcp/main/model/ChcpError;

    aput-object v1, v0, v8

    sget-object v1, Lcom/nordnetab/chcp/main/model/ChcpError;->FAILED_TO_DOWNLOAD_UPDATE_FILES:Lcom/nordnetab/chcp/main/model/ChcpError;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/nordnetab/chcp/main/model/ChcpError;->FAILED_TO_MOVE_LOADED_FILES_TO_INSTALLATION_FOLDER:Lcom/nordnetab/chcp/main/model/ChcpError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nordnetab/chcp/main/model/ChcpError;->UPDATE_IS_INVALID:Lcom/nordnetab/chcp/main/model/ChcpError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nordnetab/chcp/main/model/ChcpError;->FAILED_TO_COPY_FILES_FROM_PREVIOUS_RELEASE:Lcom/nordnetab/chcp/main/model/ChcpError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nordnetab/chcp/main/model/ChcpError;->FAILED_TO_COPY_NEW_CONTENT_FILES:Lcom/nordnetab/chcp/main/model/ChcpError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nordnetab/chcp/main/model/ChcpError;->LOCAL_VERSION_OF_APPLICATION_CONFIG_NOT_FOUND:Lcom/nordnetab/chcp/main/model/ChcpError;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nordnetab/chcp/main/model/ChcpError;->LOCAL_VERSION_OF_MANIFEST_NOT_FOUND:Lcom/nordnetab/chcp/main/model/ChcpError;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nordnetab/chcp/main/model/ChcpError;->LOADED_VERSION_OF_APPLICATION_CONFIG_NOT_FOUND:Lcom/nordnetab/chcp/main/model/ChcpError;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nordnetab/chcp/main/model/ChcpError;->LOADED_VERSION_OF_MANIFEST_NOT_FOUND:Lcom/nordnetab/chcp/main/model/ChcpError;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/nordnetab/chcp/main/model/ChcpError;->FAILED_TO_INSTALL_ASSETS_ON_EXTERNAL_STORAGE:Lcom/nordnetab/chcp/main/model/ChcpError;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/nordnetab/chcp/main/model/ChcpError;->CANT_INSTALL_WHILE_DOWNLOAD_IN_PROGRESS:Lcom/nordnetab/chcp/main/model/ChcpError;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/nordnetab/chcp/main/model/ChcpError;->CANT_DOWNLOAD_UPDATE_WHILE_INSTALLATION_IN_PROGRESS:Lcom/nordnetab/chcp/main/model/ChcpError;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/nordnetab/chcp/main/model/ChcpError;->INSTALLATION_ALREADY_IN_PROGRESS:Lcom/nordnetab/chcp/main/model/ChcpError;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/nordnetab/chcp/main/model/ChcpError;->DOWNLOAD_ALREADY_IN_PROGRESS:Lcom/nordnetab/chcp/main/model/ChcpError;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/nordnetab/chcp/main/model/ChcpError;->ASSETS_FOLDER_IN_NOT_YET_INSTALLED:Lcom/nordnetab/chcp/main/model/ChcpError;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/nordnetab/chcp/main/model/ChcpError;->NEW_APPLICATION_CONFIG_IS_INVALID:Lcom/nordnetab/chcp/main/model/ChcpError;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/nordnetab/chcp/main/model/ChcpError;->NOTHING_TO_INSTALL:Lcom/nordnetab/chcp/main/model/ChcpError;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/nordnetab/chcp/main/model/ChcpError;->NOTHING_TO_UPDATE:Lcom/nordnetab/chcp/main/model/ChcpError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nordnetab/chcp/main/model/ChcpError;->$VALUES:[Lcom/nordnetab/chcp/main/model/ChcpError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "errorCode"    # I
    .param p4, "errorDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/nordnetab/chcp/main/model/ChcpError;->errorCode:I

    .line 47
    iput-object p4, p0, Lcom/nordnetab/chcp/main/model/ChcpError;->errorDescription:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nordnetab/chcp/main/model/ChcpError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/nordnetab/chcp/main/model/ChcpError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nordnetab/chcp/main/model/ChcpError;

    return-object v0
.end method

.method public static values()[Lcom/nordnetab/chcp/main/model/ChcpError;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/nordnetab/chcp/main/model/ChcpError;->$VALUES:[Lcom/nordnetab/chcp/main/model/ChcpError;

    invoke-virtual {v0}, [Lcom/nordnetab/chcp/main/model/ChcpError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nordnetab/chcp/main/model/ChcpError;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/nordnetab/chcp/main/model/ChcpError;->errorCode:I

    return v0
.end method

.method public getErrorDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nordnetab/chcp/main/model/ChcpError;->errorDescription:Ljava/lang/String;

    return-object v0
.end method
