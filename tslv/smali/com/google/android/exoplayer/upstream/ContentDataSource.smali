.class public final Lcom/google/android/exoplayer/upstream/ContentDataSource;
.super Ljava/lang/Object;
.source "ContentDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/UriDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;
    }
.end annotation


# instance fields
.field private assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private bytesRemaining:J

.field private inputStream:Ljava/io/InputStream;

.field private final listener:Lcom/google/android/exoplayer/upstream/TransferListener;

.field private opened:Z

.field private final resolver:Landroid/content/ContentResolver;

.field private uriString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer/upstream/ContentDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/google/android/exoplayer/upstream/TransferListener;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->resolver:Landroid/content/ContentResolver;

    .line 66
    iput-object p2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    .line 67
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 138
    iput-object v3, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->uriString:Ljava/lang/String;

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 146
    :cond_0
    iput-object v3, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    .line 148
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    :cond_1
    iput-object v3, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 155
    iget-boolean v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->opened:Z

    if-eqz v1, :cond_2

    .line 156
    iput-boolean v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->opened:Z

    .line 157
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v1, :cond_2

    .line 158
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v1}, Lcom/google/android/exoplayer/upstream/TransferListener;->onTransferEnd()V

    .line 163
    :cond_2
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v1, Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    iput-object v3, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 155
    iget-boolean v2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->opened:Z

    if-eqz v2, :cond_3

    .line 156
    iput-boolean v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->opened:Z

    .line 157
    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v2, :cond_3

    .line 158
    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v2}, Lcom/google/android/exoplayer/upstream/TransferListener;->onTransferEnd()V

    :cond_3
    throw v1

    .line 143
    :catch_1
    move-exception v0

    .line 144
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_3
    new-instance v1, Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 146
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v1

    iput-object v3, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    .line 148
    :try_start_4
    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v2, :cond_4

    .line 149
    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 154
    :cond_4
    iput-object v3, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 155
    iget-boolean v2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->opened:Z

    if-eqz v2, :cond_5

    .line 156
    iput-boolean v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->opened:Z

    .line 157
    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v2, :cond_5

    .line 158
    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v2}, Lcom/google/android/exoplayer/upstream/TransferListener;->onTransferEnd()V

    :cond_5
    throw v1

    .line 151
    :catch_2
    move-exception v0

    .line 152
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_5
    new-instance v1, Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 154
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v1

    iput-object v3, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 155
    iget-boolean v2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->opened:Z

    if-eqz v2, :cond_6

    .line 156
    iput-boolean v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->opened:Z

    .line 157
    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v2, :cond_6

    .line 158
    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v2}, Lcom/google/android/exoplayer/upstream/TransferListener;->onTransferEnd()V

    :cond_6
    throw v1
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->uriString:Ljava/lang/String;

    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer/upstream/DataSpec;)J
    .locals 8
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    .line 72
    :try_start_0
    iget-object v1, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->uriString:Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->resolver:Landroid/content/ContentResolver;

    iget-object v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    const-string v5, "r"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 74
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    .line 75
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    iget-wide v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->position:J

    invoke-virtual {v1, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 76
    .local v2, "skipped":J
    iget-wide v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->position:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 79
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v2    # "skipped":J
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 81
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "skipped":J
    :cond_0
    :try_start_1
    iget-wide v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_3

    .line 82
    iget-wide v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    iput-wide v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->bytesRemaining:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    :cond_1
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->opened:Z

    .line 97
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v1, :cond_2

    .line 98
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v1}, Lcom/google/android/exoplayer/upstream/TransferListener;->onTransferStart()V

    .line 101
    :cond_2
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->bytesRemaining:J

    return-wide v4

    .line 84
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    int-to-long v4, v1

    iput-wide v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->bytesRemaining:J

    .line 85
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->bytesRemaining:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    .line 89
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->bytesRemaining:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    .line 106
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->bytesRemaining:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 107
    const/4 v0, -0x1

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    const/4 v0, 0x0

    .line 111
    .local v0, "bytesRead":I
    :try_start_0
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->bytesRemaining:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_3

    move v1, p3

    .line 113
    .local v1, "bytesToRead":I
    :goto_1
    iget-object v3, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v3, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 118
    if-lez v0, :cond_0

    .line 119
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->bytesRemaining:J

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    .line 120
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->bytesRemaining:J

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->bytesRemaining:J

    .line 122
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v3, :cond_0

    .line 123
    iget-object v3, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v3, v0}, Lcom/google/android/exoplayer/upstream/TransferListener;->onBytesTransferred(I)V

    goto :goto_0

    .line 111
    .end local v1    # "bytesToRead":I
    :cond_3
    :try_start_1
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/ContentDataSource;->bytesRemaining:J

    int-to-long v6, p3

    .line 112
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    long-to-int v1, v4

    goto :goto_1

    .line 114
    :catch_0
    move-exception v2

    .line 115
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
.end method
