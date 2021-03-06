.class public final Lcom/google/android/exoplayer/upstream/AssetDataSource;
.super Ljava/lang/Object;
.source "AssetDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/UriDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/upstream/AssetDataSource$AssetDataSourceException;
    }
.end annotation


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private bytesRemaining:J

.field private inputStream:Ljava/io/InputStream;

.field private final listener:Lcom/google/android/exoplayer/upstream/TransferListener;

.field private opened:Z

.field private uriString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer/upstream/AssetDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/google/android/exoplayer/upstream/TransferListener;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->assetManager:Landroid/content/res/AssetManager;

    .line 63
    iput-object p2, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    .line 64
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/upstream/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 140
    iput-object v2, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->uriString:Ljava/lang/String;

    .line 141
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    iput-object v2, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    .line 148
    iget-boolean v1, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->opened:Z

    if-eqz v1, :cond_0

    .line 149
    iput-boolean v3, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->opened:Z

    .line 150
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v1}, Lcom/google/android/exoplayer/upstream/TransferListener;->onTransferEnd()V

    .line 156
    :cond_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Lcom/google/android/exoplayer/upstream/AssetDataSource$AssetDataSourceException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    iput-object v2, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    .line 148
    iget-boolean v2, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->opened:Z

    if-eqz v2, :cond_1

    .line 149
    iput-boolean v3, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->opened:Z

    .line 150
    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v2, :cond_1

    .line 151
    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v2}, Lcom/google/android/exoplayer/upstream/TransferListener;->onTransferEnd()V

    :cond_1
    throw v1
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->uriString:Ljava/lang/String;

    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer/upstream/DataSpec;)J
    .locals 12
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/upstream/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, -0x1

    const/4 v8, 0x1

    .line 69
    :try_start_0
    iget-object v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->uriString:Ljava/lang/String;

    .line 70
    iget-object v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "path":Ljava/lang/String;
    const-string v4, "/android_asset/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    const/16 v4, 0xf

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 76
    :cond_0
    :goto_0
    iget-object v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->uriString:Ljava/lang/String;

    .line 77
    iget-object v4, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->assetManager:Landroid/content/res/AssetManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    .line 78
    iget-object v4, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    iget-wide v6, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->position:J

    invoke-virtual {v4, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 79
    .local v2, "skipped":J
    iget-wide v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->position:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    .line 82
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "skipped":J
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Lcom/google/android/exoplayer/upstream/AssetDataSource$AssetDataSourceException;

    invoke-direct {v4, v0}, Lcom/google/android/exoplayer/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v4

    .line 73
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "path":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 74
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 84
    .restart local v2    # "skipped":J
    :cond_2
    iget-wide v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_5

    .line 85
    iget-wide v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    iput-wide v4, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->bytesRemaining:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 99
    :cond_3
    :goto_1
    iput-boolean v8, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->opened:Z

    .line 100
    iget-object v4, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v4, :cond_4

    .line 101
    iget-object v4, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v4}, Lcom/google/android/exoplayer/upstream/TransferListener;->onTransferStart()V

    .line 103
    :cond_4
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->bytesRemaining:J

    return-wide v4

    .line 87
    :cond_5
    :try_start_2
    iget-object v4, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->bytesRemaining:J

    .line 88
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->bytesRemaining:J

    const-wide/32 v6, 0x7fffffff

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 92
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->bytesRemaining:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public read([BII)I
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/upstream/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    .line 108
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->bytesRemaining:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 109
    const/4 v0, -0x1

    .line 129
    :cond_0
    :goto_0
    return v0

    .line 111
    :cond_1
    const/4 v0, 0x0

    .line 113
    .local v0, "bytesRead":I
    :try_start_0
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->bytesRemaining:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_3

    move v1, p3

    .line 115
    .local v1, "bytesToRead":I
    :goto_1
    iget-object v3, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v3, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 120
    if-lez v0, :cond_0

    .line 121
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->bytesRemaining:J

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    .line 122
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->bytesRemaining:J

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->bytesRemaining:J

    .line 124
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v3, :cond_0

    .line 125
    iget-object v3, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v3, v0}, Lcom/google/android/exoplayer/upstream/TransferListener;->onBytesTransferred(I)V

    goto :goto_0

    .line 113
    .end local v1    # "bytesToRead":I
    :cond_3
    :try_start_1
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/AssetDataSource;->bytesRemaining:J

    int-to-long v6, p3

    .line 114
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    long-to-int v1, v4

    goto :goto_1

    .line 116
    :catch_0
    move-exception v2

    .line 117
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/google/android/exoplayer/upstream/AssetDataSource$AssetDataSourceException;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
.end method
