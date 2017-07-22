.class public Lcom/nordnetab/chcp/main/network/FileDownloader;
.super Ljava/lang/Object;
.source "FileDownloader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 12
    .param p0, "urlFrom"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "checkSum"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p3, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 67
    const-string v8, "CHCP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Loading file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v6, Lcom/nordnetab/chcp/main/utils/MD5;

    invoke-direct {v6}, Lcom/nordnetab/chcp/main/utils/MD5;-><init>()V

    .line 70
    .local v6, "md5":Lcom/nordnetab/chcp/main/utils/MD5;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .local v3, "downloadFile":Ljava/io/File;
    invoke-static {v3}, Lcom/nordnetab/chcp/main/utils/FilesUtility;->delete(Ljava/io/File;)V

    .line 72
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-static {v8}, Lcom/nordnetab/chcp/main/utils/FilesUtility;->ensureDirectoryExists(Ljava/io/File;)V

    .line 75
    invoke-static {p0, p3}, Lcom/nordnetab/chcp/main/utils/URLConnectionHelper;->createConnectionToURL(Ljava/lang/String;Ljava/util/Map;)Ljava/net/URLConnection;

    move-result-object v0

    .line 76
    .local v0, "connection":Ljava/net/URLConnection;
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 77
    .local v5, "input":Ljava/io/InputStream;
    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p1, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 79
    .local v7, "output":Ljava/io/OutputStream;
    const/16 v8, 0x400

    new-array v2, v8, [B

    .line 81
    .local v2, "data":[B
    :goto_0
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "count":I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_0

    .line 82
    invoke-virtual {v7, v2, v11, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 83
    invoke-virtual {v6, v2, v1}, Lcom/nordnetab/chcp/main/utils/MD5;->write([BI)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 87
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 88
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 90
    invoke-virtual {v6}, Lcom/nordnetab/chcp/main/utils/MD5;->calculateHash()Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, "downloadedFileHash":Ljava/lang/String;
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 92
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File is corrupted: checksum "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " doesn\'t match hash "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " of the downloaded file"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 94
    :cond_1
    return-void
.end method

.method public static downloadFiles(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .locals 9
    .param p0, "downloadFolder"    # Ljava/lang/String;
    .param p1, "contentFolderUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nordnetab/chcp/main/model/ManifestFile;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "files":Ljava/util/List;, "Ljava/util/List<Lcom/nordnetab/chcp/main/model/ManifestFile;>;"
    .local p3, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 48
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nordnetab/chcp/main/model/ManifestFile;

    .line 49
    .local v0, "file":Lcom/nordnetab/chcp/main/model/ManifestFile;
    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v6

    iget-object v5, v0, Lcom/nordnetab/chcp/main/model/ManifestFile;->name:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v4}, Lcom/nordnetab/chcp/main/utils/URLUtility;->construct([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "fileUrl":Ljava/lang/String;
    new-array v4, v8, [Ljava/lang/String;

    aput-object p0, v4, v6

    iget-object v5, v0, Lcom/nordnetab/chcp/main/model/ManifestFile;->name:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v4}, Lcom/nordnetab/chcp/main/utils/Paths;->get([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "filePath":Ljava/lang/String;
    iget-object v4, v0, Lcom/nordnetab/chcp/main/model/ManifestFile;->hash:Ljava/lang/String;

    invoke-static {v2, v1, v4, p3}, Lcom/nordnetab/chcp/main/network/FileDownloader;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 53
    .end local v0    # "file":Lcom/nordnetab/chcp/main/model/ManifestFile;
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "fileUrl":Ljava/lang/String;
    :cond_0
    return-void
.end method
