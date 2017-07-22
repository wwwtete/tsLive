.class public Lcom/nordnetab/chcp/main/utils/CleanUpHelper;
.super Ljava/lang/Object;
.source "CleanUpHelper.java"


# static fields
.field private static isExecuting:Z


# instance fields
.field private final rootFolder:Ljava/io/File;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "rootFolder"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nordnetab/chcp/main/utils/CleanUpHelper;->rootFolder:Ljava/io/File;

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/nordnetab/chcp/main/utils/CleanUpHelper$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/nordnetab/chcp/main/utils/CleanUpHelper$1;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/nordnetab/chcp/main/utils/CleanUpHelper;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/nordnetab/chcp/main/utils/CleanUpHelper;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/nordnetab/chcp/main/utils/CleanUpHelper;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/nordnetab/chcp/main/utils/CleanUpHelper;->removeFolders([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 16
    sput-boolean p0, Lcom/nordnetab/chcp/main/utils/CleanUpHelper;->isExecuting:Z

    return p0
.end method

.method private removeFolders([Ljava/lang/String;)V
    .locals 10
    .param p1, "excludedReleases"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 55
    iget-object v4, p0, Lcom/nordnetab/chcp/main/utils/CleanUpHelper;->rootFolder:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 78
    :cond_0
    return-void

    .line 59
    :cond_1
    iget-object v4, p0, Lcom/nordnetab/chcp/main/utils/CleanUpHelper;->rootFolder:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 60
    .local v2, "files":[Ljava/io/File;
    array-length v7, v2

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v1, v2, v6

    .line 61
    .local v1, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 62
    .local v3, "isIgnored":Z
    array-length v8, p1

    move v4, v5

    :goto_1
    if-ge v4, v8, :cond_4

    aget-object v0, p1, v4

    .line 63
    .local v0, "excludedReleaseName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 62
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 67
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 68
    const/4 v3, 0x1

    .line 73
    .end local v0    # "excludedReleaseName":Ljava/lang/String;
    :cond_4
    if-nez v3, :cond_5

    .line 74
    const-string v4, "CHCP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Deleting old release folder: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {v1}, Lcom/nordnetab/chcp/main/utils/FilesUtility;->delete(Ljava/io/File;)V

    .line 60
    :cond_5
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0
.end method

.method public static removeReleaseFolders(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "excludedReleases"    # [Ljava/lang/String;

    .prologue
    .line 38
    sget-boolean v1, Lcom/nordnetab/chcp/main/utils/CleanUpHelper;->isExecuting:Z

    if-eqz v1, :cond_0

    .line 52
    :goto_0
    return-void

    .line 41
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/nordnetab/chcp/main/utils/CleanUpHelper;->isExecuting:Z

    .line 43
    invoke-static {p0}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;->getPluginRootFolder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "rootFolder":Ljava/lang/String;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/nordnetab/chcp/main/utils/CleanUpHelper$1;

    invoke-direct {v2, v0, p1}, Lcom/nordnetab/chcp/main/utils/CleanUpHelper$1;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 51
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
