.class abstract Lcom/nordnetab/chcp/main/storage/FileStorageAbs;
.super Ljava/lang/Object;
.source "FileStorageAbs.java"

# interfaces
.implements Lcom/nordnetab/chcp/main/storage/IObjectFileStorage;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/nordnetab/chcp/main/storage/IObjectFileStorage",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    .local p0, "this":Lcom/nordnetab/chcp/main/storage/FileStorageAbs;, "Lcom/nordnetab/chcp/main/storage/FileStorageAbs<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract createInstance(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method protected abstract getFullPathForFileInFolder(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public loadFromFolder(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "folder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/nordnetab/chcp/main/storage/FileStorageAbs;, "Lcom/nordnetab/chcp/main/storage/FileStorageAbs<TT;>;"
    invoke-virtual {p0, p1}, Lcom/nordnetab/chcp/main/storage/FileStorageAbs;->getFullPathForFileInFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "pathToStorableFile":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    const/4 v2, 0x0

    .line 67
    :goto_0
    return-object v2

    .line 59
    :cond_0
    const/4 v2, 0x0

    .line 61
    .local v2, "result":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-static {v1}, Lcom/nordnetab/chcp/main/utils/FilesUtility;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "json":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nordnetab/chcp/main/storage/FileStorageAbs;->createInstance(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 63
    .end local v0    # "json":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public storeInFolder(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 4
    .param p2, "folder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/nordnetab/chcp/main/storage/FileStorageAbs;, "Lcom/nordnetab/chcp/main/storage/FileStorageAbs<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    .line 37
    invoke-virtual {p0, p2}, Lcom/nordnetab/chcp/main/storage/FileStorageAbs;->getFullPathForFileInFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "pathToStorableFile":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    :goto_0
    return v2

    .line 43
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/nordnetab/chcp/main/utils/FilesUtility;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    const/4 v2, 0x1

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
