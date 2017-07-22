.class public Lcom/nordnetab/chcp/main/utils/FilesUtility;
.super Ljava/lang/Object;
.source "FilesUtility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateFileHash(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 210
    new-instance v3, Lcom/nordnetab/chcp/main/utils/MD5;

    invoke-direct {v3}, Lcom/nordnetab/chcp/main/utils/MD5;-><init>()V

    .line 211
    .local v3, "md5":Lcom/nordnetab/chcp/main/utils/MD5;
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 214
    .local v1, "in":Ljava/io/InputStream;
    const/16 v4, 0x2000

    new-array v0, v4, [B

    .line 215
    .local v0, "buff":[B
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "len":I
    if-lez v2, :cond_0

    .line 216
    invoke-virtual {v3, v0, v2}, Lcom/nordnetab/chcp/main/utils/MD5;->write([BI)V

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {v3}, Lcom/nordnetab/chcp/main/utils/MD5;->calculateHash()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static calculateFileHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 198
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nordnetab/chcp/main/utils/FilesUtility;->calculateFileHash(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dst"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    invoke-static {p1}, Lcom/nordnetab/chcp/main/utils/FilesUtility;->ensureDirectoryExists(Ljava/io/File;)V

    .line 104
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "filesList":[Ljava/lang/String;
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v2, v4

    .line 106
    .local v1, "file":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    .local v3, "srcFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    .local v0, "destFile":Ljava/io/File;
    invoke-static {v3, v0}, Lcom/nordnetab/chcp/main/utils/FilesUtility;->copy(Ljava/io/File;Ljava/io/File;)V

    .line 105
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 112
    .end local v0    # "destFile":Ljava/io/File;
    .end local v1    # "file":Ljava/lang/String;
    .end local v2    # "filesList":[Ljava/lang/String;
    .end local v3    # "srcFile":Ljava/io/File;
    :cond_0
    invoke-static {p0, p1}, Lcom/nordnetab/chcp/main/utils/FilesUtility;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 114
    :cond_1
    return-void
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "dst"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/nordnetab/chcp/main/utils/FilesUtility;->copy(Ljava/io/File;Ljava/io/File;)V

    .line 90
    return-void
.end method

.method private static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .param p0, "fromFile"    # Ljava/io/File;
    .param p1, "toFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 118
    .local v1, "in":Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 121
    .local v3, "out":Ljava/io/OutputStream;
    const/16 v4, 0x2000

    new-array v0, v4, [B

    .line 123
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "len":I
    if-lez v2, :cond_0

    .line 124
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 128
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 129
    return-void
.end method

.method public static delete(Ljava/io/File;)V
    .locals 6
    .param p0, "fileOrDirectory"    # Ljava/io/File;

    .prologue
    .line 40
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 56
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 45
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 46
    .local v1, "filesList":[Ljava/io/File;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 47
    .local v0, "child":Ljava/io/File;
    invoke-static {v0}, Lcom/nordnetab/chcp/main/utils/FilesUtility;->delete(Ljava/io/File;)V

    .line 46
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 51
    .end local v0    # "child":Ljava/io/File;
    .end local v1    # "filesList":[Ljava/io/File;
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .local v2, "to":Ljava/io/File;
    invoke-virtual {p0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 53
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static delete(Ljava/lang/String;)V
    .locals 1
    .param p0, "pathToFileOrDirectory"    # Ljava/lang/String;

    .prologue
    .line 30
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nordnetab/chcp/main/utils/FilesUtility;->delete(Ljava/io/File;)V

    .line 31
    return-void
.end method

.method public static ensureDirectoryExists(Ljava/io/File;)V
    .locals 1
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 75
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 78
    :cond_1
    return-void
.end method

.method public static ensureDirectoryExists(Ljava/lang/String;)V
    .locals 1
    .param p0, "dirPath"    # Ljava/lang/String;

    .prologue
    .line 65
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nordnetab/chcp/main/utils/FilesUtility;->ensureDirectoryExists(Ljava/io/File;)V

    .line 66
    return-void
.end method

.method public static readFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 152
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .local v1, "content":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static readFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nordnetab/chcp/main/utils/FilesUtility;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static writeToFile(Ljava/lang/String;Ljava/io/File;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "dstFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 184
    .local v0, "bufferedWriter":Ljava/io/BufferedWriter;
    invoke-virtual {v0, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 187
    return-void
.end method

.method public static writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/nordnetab/chcp/main/utils/FilesUtility;->writeToFile(Ljava/lang/String;Ljava/io/File;)V

    .line 172
    return-void
.end method
