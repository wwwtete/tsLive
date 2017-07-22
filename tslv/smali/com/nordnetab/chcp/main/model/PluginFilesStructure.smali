.class public Lcom/nordnetab/chcp/main/model/PluginFilesStructure;
.super Ljava/lang/Object;
.source "PluginFilesStructure.java"


# static fields
.field public static final CONFIG_FILE_NAME:Ljava/lang/String; = "chcp.json"

.field private static final DOWNLOAD_FOLDER:Ljava/lang/String; = "update"

.field private static final MAIN_CONTENT_FOLDER:Ljava/lang/String; = "www"

.field public static final MANIFEST_FILE_NAME:Ljava/lang/String; = "chcp.manifest"

.field private static final PLUGIN_FOLDER:Ljava/lang/String; = "cordova-hot-code-push-plugin"


# instance fields
.field private contentFolder:Ljava/lang/String;

.field private downloadFolder:Ljava/lang/String;

.field private wwwFolder:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "releaseVersion"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cordova-hot-code-push-plugin"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/nordnetab/chcp/main/utils/Paths;->get([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->contentFolder:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public static getPluginRootFolder(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cordova-hot-code-push-plugin"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/nordnetab/chcp/main/utils/Paths;->get([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContentFolder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->contentFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadFolder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->downloadFolder:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->getContentFolder()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "update"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/nordnetab/chcp/main/utils/Paths;->get([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->downloadFolder:Ljava/lang/String;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->downloadFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getWwwFolder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->wwwFolder:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->getContentFolder()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "www"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/nordnetab/chcp/main/utils/Paths;->get([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->wwwFolder:Ljava/lang/String;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->wwwFolder:Ljava/lang/String;

    return-object v0
.end method

.method public switchToRelease(Ljava/lang/String;)V
    .locals 5
    .param p1, "releaseVersion"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 63
    iget-object v1, p0, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->contentFolder:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 64
    .local v0, "idx":I
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->contentFolder:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/nordnetab/chcp/main/utils/Paths;->get([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->contentFolder:Ljava/lang/String;

    .line 67
    iput-object v4, p0, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->wwwFolder:Ljava/lang/String;

    .line 68
    iput-object v4, p0, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->downloadFolder:Ljava/lang/String;

    .line 69
    return-void
.end method
