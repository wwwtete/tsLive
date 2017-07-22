.class public Lcom/nordnetab/chcp/main/utils/AssetsHelper;
.super Ljava/lang/Object;
.source "AssetsHelper.java"


# static fields
.field private static isWorking:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-static {p0, p1, p2}, Lcom/nordnetab/chcp/main/utils/AssetsHelper;->execute(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 25
    sput-boolean p0, Lcom/nordnetab/chcp/main/utils/AssetsHelper;->isWorking:Z

    return p0
.end method

.method public static copyAssetDirectoryToAppDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "fromDirectory"    # Ljava/lang/String;
    .param p2, "toDirectory"    # Ljava/lang/String;

    .prologue
    .line 44
    sget-boolean v0, Lcom/nordnetab/chcp/main/utils/AssetsHelper;->isWorking:Z

    if-eqz v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/nordnetab/chcp/main/utils/AssetsHelper;->isWorking:Z

    .line 50
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/nordnetab/chcp/main/events/BeforeAssetsInstalledEvent;

    invoke-direct {v1}, Lcom/nordnetab/chcp/main/events/BeforeAssetsInstalledEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 52
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/nordnetab/chcp/main/utils/AssetsHelper$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/nordnetab/chcp/main/utils/AssetsHelper$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 65
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private static copyAssets(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "appJarPath"    # Ljava/lang/String;
    .param p1, "assetsDir"    # Ljava/lang/String;
    .param p2, "toDirectory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    new-instance v3, Ljava/util/jar/JarFile;

    invoke-direct {v3, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 79
    .local v3, "jarFile":Ljava/util/jar/JarFile;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 80
    .local v5, "prefixLength":I
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 82
    .local v2, "filesEnumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 83
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarEntry;

    .line 84
    .local v1, "fileJarEntry":Ljava/util/jar/JarEntry;
    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 86
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcom/nordnetab/chcp/main/utils/Paths;->get([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "destinationFileAbsolutePath":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/nordnetab/chcp/main/utils/AssetsHelper;->copyFile(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    .end local v0    # "destinationFileAbsolutePath":Ljava/lang/String;
    .end local v1    # "fileJarEntry":Ljava/util/jar/JarEntry;
    .end local v4    # "name":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static copyFile(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "destinationFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nordnetab/chcp/main/utils/FilesUtility;->ensureDirectoryExists(Ljava/lang/String;)V

    .line 98
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 100
    .local v2, "out":Ljava/io/OutputStream;
    const/16 v3, 0x2000

    new-array v0, v3, [B

    .line 102
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "len":I
    if-lez v1, :cond_0

    .line 103
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 107
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 108
    return-void
.end method

.method private static execute(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "fromDirectory"    # Ljava/lang/String;
    .param p2, "toDirectory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {p2}, Lcom/nordnetab/chcp/main/utils/FilesUtility;->delete(Ljava/lang/String;)V

    .line 71
    invoke-static {p2}, Lcom/nordnetab/chcp/main/utils/FilesUtility;->ensureDirectoryExists(Ljava/lang/String;)V

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assets/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "assetsDir":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v1, v0, p2}, Lcom/nordnetab/chcp/main/utils/AssetsHelper;->copyAssets(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method
