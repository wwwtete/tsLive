.class public Lcom/github/faucamp/simplertmp/io/RtmpConnection;
.super Ljava/lang/Object;
.source "RtmpConnection.java"

# interfaces
.implements Lcom/github/faucamp/simplertmp/RtmpPublisher;


# static fields
.field private static final TAG:Ljava/lang/String; = "RtmpConnection"

.field private static final rtmpUrlPattern:Ljava/util/regex/Pattern;


# instance fields
.field private appName:Ljava/lang/String;

.field private audioDataLength:I

.field private audioFrameCount:I

.field private audioLastTimeMillis:J

.field private volatile connected:Z

.field private final connectingLock:Ljava/lang/Object;

.field private currentStreamId:I

.field private host:Ljava/lang/String;

.field private inputStream:Ljava/io/BufferedInputStream;

.field private mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

.field private outputStream:Ljava/io/BufferedOutputStream;

.field private pageUrl:Ljava/lang/String;

.field private port:I

.field private final publishLock:Ljava/lang/Object;

.field private volatile publishPermitted:Z

.field private publishType:Ljava/lang/String;

.field private rtmpDecoder:Lcom/github/faucamp/simplertmp/io/RtmpDecoder;

.field private rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

.field private rxPacketHandler:Ljava/lang/Thread;

.field private serverId:Lcom/github/faucamp/simplertmp/amf/AmfNumber;

.field private serverIpAddr:Lcom/github/faucamp/simplertmp/amf/AmfString;

.field private serverPid:Lcom/github/faucamp/simplertmp/amf/AmfNumber;

.field private socket:Ljava/net/Socket;

.field private socketExceptionCause:Ljava/lang/String;

.field private srsServerInfo:Ljava/lang/String;

.field private streamName:Ljava/lang/String;

.field private swfUrl:Ljava/lang/String;

.field private tcUrl:Ljava/lang/String;

.field private transactionIdCounter:I

.field private videoDataLength:I

.field private videoFrameCacheNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private videoFrameCount:I

.field private videoHeight:I

.field private videoLastTimeMillis:J

.field private videoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "^rtmp://([^/:]+)(:(\\d+))*/([^/]+)(/(.*))*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpUrlPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/github/faucamp/simplertmp/RtmpHandler;)V
    .locals 2
    .param p1, "handler"    # Lcom/github/faucamp/simplertmp/RtmpHandler;

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->srsServerInfo:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->socketExceptionCause:Ljava/lang/String;

    .line 66
    iput-boolean v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connected:Z

    .line 67
    iput-boolean v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publishPermitted:Z

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connectingLock:Ljava/lang/Object;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publishLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->videoFrameCacheNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 71
    iput v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->currentStreamId:I

    .line 72
    iput v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->transactionIdCounter:I

    .line 86
    iput-object p1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/github/faucamp/simplertmp/io/RtmpConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/github/faucamp/simplertmp/io/RtmpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->handleRxPacketLoop()V

    return-void
.end method

.method private calcAudioBitrate(I)V
    .locals 9
    .param p1, "length"    # I

    .prologue
    const-wide/32 v4, 0xf4240

    const/4 v8, 0x0

    .line 465
    iget v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->audioDataLength:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->audioDataLength:I

    .line 466
    iget v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->audioFrameCount:I

    if-nez v2, :cond_1

    .line 467
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->audioLastTimeMillis:J

    .line 468
    iget v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->audioFrameCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->audioFrameCount:I

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    iget v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->audioFrameCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->audioFrameCount:I

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    .line 471
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    div-long/2addr v2, v4

    iget-wide v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->audioLastTimeMillis:J

    sub-long v0, v2, v4

    .line 472
    .local v0, "diffTimeMillis":J
    iget-object v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

    iget v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->audioDataLength:I

    int-to-double v4, v3

    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    mul-double/2addr v4, v6

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    long-to-double v6, v0

    div-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/github/faucamp/simplertmp/RtmpHandler;->notifyRtmpAudioBitrateChanged(D)V

    .line 473
    iput v8, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->audioFrameCount:I

    .line 474
    iput v8, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->audioDataLength:I

    goto :goto_0
.end method

.method private calcVideoFpsAndBitrate(I)V
    .locals 11
    .param p1, "length"    # I

    .prologue
    const-wide/32 v4, 0xf4240

    const/4 v10, 0x0

    const-wide v8, 0x408f400000000000L    # 1000.0

    .line 449
    iget v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->videoDataLength:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->videoDataLength:I

    .line 450
    iget v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->videoFrameCount:I

    if-nez v2, :cond_1

    .line 451
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->videoLastTimeMillis:J

    .line 452
    iget v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->videoFrameCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->videoFrameCount:I

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    iget v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->videoFrameCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->videoFrameCount:I

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    .line 455
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    div-long/2addr v2, v4

    iget-wide v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->videoLastTimeMillis:J

    sub-long v0, v2, v4

    .line 456
    .local v0, "diffTimeMillis":J
    iget-object v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

    iget v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->videoFrameCount:I

    int-to-double v4, v3

    mul-double/2addr v4, v8

    long-to-double v6, v0

    div-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/github/faucamp/simplertmp/RtmpHandler;->notifyRtmpVideoFpsChanged(D)V

    .line 457
    iget-object v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

    iget v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->videoDataLength:I

    int-to-double v4, v3

    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    mul-double/2addr v4, v6

    mul-double/2addr v4, v8

    long-to-double v6, v0

    div-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/github/faucamp/simplertmp/RtmpHandler;->notifyRtmpVideoBitrateChanged(D)V

    .line 458
    iput v10, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->videoFrameCount:I

    .line 459
    iput v10, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->videoDataLength:I

    goto :goto_0
.end method

.method private closeStream()V
    .locals 4

    .prologue
    .line 315
    iget-boolean v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connected:Z

    if-nez v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Not connected to RTMP server"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/github/faucamp/simplertmp/RtmpHandler;->notifyRtmpIllegalStateException(Ljava/lang/IllegalStateException;)V

    .line 334
    :goto_0
    return-void

    .line 319
    :cond_0
    iget v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->currentStreamId:I

    if-nez v1, :cond_1

    .line 320
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No current stream object exists"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/github/faucamp/simplertmp/RtmpHandler;->notifyRtmpIllegalStateException(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    .line 323
    :cond_1
    iget-boolean v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publishPermitted:Z

    if-nez v1, :cond_2

    .line 324
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Not get _result(Netstream.Publish.Start)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/github/faucamp/simplertmp/RtmpHandler;->notifyRtmpIllegalStateException(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    .line 327
    :cond_2
    const-string v1, "RtmpConnection"

    const-string v2, "closeStream(): setting current stream ID to 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    new-instance v0, Lcom/github/faucamp/simplertmp/packets/Command;

    const-string v1, "closeStream"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/faucamp/simplertmp/packets/Command;-><init>(Ljava/lang/String;I)V

    .line 329
    .local v0, "closeStream":Lcom/github/faucamp/simplertmp/packets/Command;
    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/packets/Command;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->setChunkStreamId(I)V

    .line 330
    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/packets/Command;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v1

    iget v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->currentStreamId:I

    invoke-virtual {v1, v2}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->setMessageStreamId(I)V

    .line 331
    new-instance v1, Lcom/github/faucamp/simplertmp/amf/AmfNull;

    invoke-direct {v1}, Lcom/github/faucamp/simplertmp/amf/AmfNull;-><init>()V

    invoke-virtual {v0, v1}, Lcom/github/faucamp/simplertmp/packets/Command;->addData(Lcom/github/faucamp/simplertmp/amf/AmfData;)V

    .line 332
    invoke-direct {p0, v0}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->sendRtmpPacket(Lcom/github/faucamp/simplertmp/packets/RtmpPacket;)V

    .line 333
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

    invoke-virtual {v1}, Lcom/github/faucamp/simplertmp/RtmpHandler;->notifyRtmpStopped()V

    goto :goto_0
.end method

.method private createStream()Z
    .locals 8

    .prologue
    const/4 v6, 0x5

    const/4 v4, 0x0

    .line 208
    iget-boolean v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connected:Z

    if-nez v5, :cond_0

    .line 209
    iget-object v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Not connected to RTMP server"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/github/faucamp/simplertmp/RtmpHandler;->notifyRtmpIllegalStateException(Ljava/lang/IllegalStateException;)V

    .line 253
    :goto_0
    return v4

    .line 212
    :cond_0
    iget v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->currentStreamId:I

    if-eqz v5, :cond_1

    .line 213
    iget-object v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Current stream object has existed"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/github/faucamp/simplertmp/RtmpHandler;->notifyRtmpIllegalStateException(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    .line 217
    :cond_1
    const-string v4, "RtmpConnection"

    const-string v5, "createStream(): Sending releaseStream command..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v3, Lcom/github/faucamp/simplertmp/packets/Command;

    const-string v4, "releaseStream"

    iget v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->transactionIdCounter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->transactionIdCounter:I

    invoke-direct {v3, v4, v5}, Lcom/github/faucamp/simplertmp/packets/Command;-><init>(Ljava/lang/String;I)V

    .line 220
    .local v3, "releaseStream":Lcom/github/faucamp/simplertmp/packets/Command;
    invoke-virtual {v3}, Lcom/github/faucamp/simplertmp/packets/Command;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->setChunkStreamId(I)V

    .line 221
    new-instance v4, Lcom/github/faucamp/simplertmp/amf/AmfNull;

    invoke-direct {v4}, Lcom/github/faucamp/simplertmp/amf/AmfNull;-><init>()V

    invoke-virtual {v3, v4}, Lcom/github/faucamp/simplertmp/packets/Command;->addData(Lcom/github/faucamp/simplertmp/amf/AmfData;)V

    .line 222
    iget-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->streamName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/github/faucamp/simplertmp/packets/Command;->addData(Ljava/lang/String;)V

    .line 223
    invoke-direct {p0, v3}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->sendRtmpPacket(Lcom/github/faucamp/simplertmp/packets/RtmpPacket;)V

    .line 225
    const-string v4, "RtmpConnection"

    const-string v5, "createStream(): Sending FCPublish command..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v0, Lcom/github/faucamp/simplertmp/packets/Command;

    const-string v4, "FCPublish"

    iget v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->transactionIdCounter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->transactionIdCounter:I

    invoke-direct {v0, v4, v5}, Lcom/github/faucamp/simplertmp/packets/Command;-><init>(Ljava/lang/String;I)V

    .line 228
    .local v0, "FCPublish":Lcom/github/faucamp/simplertmp/packets/Command;
    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/packets/Command;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->setChunkStreamId(I)V

    .line 229
    new-instance v4, Lcom/github/faucamp/simplertmp/amf/AmfNull;

    invoke-direct {v4}, Lcom/github/faucamp/simplertmp/amf/AmfNull;-><init>()V

    invoke-virtual {v0, v4}, Lcom/github/faucamp/simplertmp/packets/Command;->addData(Lcom/github/faucamp/simplertmp/amf/AmfData;)V

    .line 230
    iget-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->streamName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/github/faucamp/simplertmp/packets/Command;->addData(Ljava/lang/String;)V

    .line 231
    invoke-direct {p0, v0}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->sendRtmpPacket(Lcom/github/faucamp/simplertmp/packets/RtmpPacket;)V

    .line 233
    const-string v4, "RtmpConnection"

    const-string v5, "createStream(): Sending createStream command..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->getChunkStreamInfo(I)Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;

    move-result-object v1

    .line 236
    .local v1, "chunkStreamInfo":Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;
    new-instance v2, Lcom/github/faucamp/simplertmp/packets/Command;

    const-string v4, "createStream"

    iget v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->transactionIdCounter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->transactionIdCounter:I

    invoke-direct {v2, v4, v5, v1}, Lcom/github/faucamp/simplertmp/packets/Command;-><init>(Ljava/lang/String;ILcom/github/faucamp/simplertmp/io/ChunkStreamInfo;)V

    .line 237
    .local v2, "createStream":Lcom/github/faucamp/simplertmp/packets/Command;
    new-instance v4, Lcom/github/faucamp/simplertmp/amf/AmfNull;

    invoke-direct {v4}, Lcom/github/faucamp/simplertmp/amf/AmfNull;-><init>()V

    invoke-virtual {v2, v4}, Lcom/github/faucamp/simplertmp/packets/Command;->addData(Lcom/github/faucamp/simplertmp/amf/AmfData;)V

    .line 238
    invoke-direct {p0, v2}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->sendRtmpPacket(Lcom/github/faucamp/simplertmp/packets/RtmpPacket;)V

    .line 241
    iget-object v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publishLock:Ljava/lang/Object;

    monitor-enter v5

    .line 243
    :try_start_0
    iget-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publishLock:Ljava/lang/Object;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :goto_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    iget-boolean v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publishPermitted:Z

    if-eqz v4, :cond_2

    .line 249
    iget-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connected"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->srsServerInfo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/github/faucamp/simplertmp/RtmpHandler;->notifyRtmpConnected(Ljava/lang/String;)V

    .line 253
    :goto_2
    iget-boolean v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publishPermitted:Z

    goto/16 :goto_0

    .line 247
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 251
    :cond_2
    invoke-direct {p0}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->shutdown()V

    goto :goto_2

    .line 244
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private fmlePublish()V
    .locals 4

    .prologue
    .line 257
    iget-boolean v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connected:Z

    if-nez v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Not connected to RTMP server"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/github/faucamp/simplertmp/RtmpHandler;->notifyRtmpIllegalStateException(Ljava/lang/IllegalStateException;)V

    .line 275
    :goto_0
    return-void

    .line 261
    :cond_0
    iget v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->currentStreamId:I

    if-nez v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No current stream object exists"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/github/faucamp/simplertmp/RtmpHandler;->notifyRtmpIllegalStateException(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    .line 266
    :cond_1
    const-string v1, "RtmpConnection"

    const-string v2, "fmlePublish(): Sending publish command..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance v0, Lcom/github/faucamp/simplertmp/packets/Command;

    const-string v1, "publish"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/faucamp/simplertmp/packets/Command;-><init>(Ljava/lang/String;I)V

    .line 269
    .local v0, "publish":Lcom/github/faucamp/simplertmp/packets/Command;
    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/packets/Command;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->setChunkStreamId(I)V

    .line 270
    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/packets/Command;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v1

    iget v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->currentStreamId:I

    invoke-virtual {v1, v2}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->setMessageStreamId(I)V

    .line 271
    new-instance v1, Lcom/github/faucamp/simplertmp/amf/AmfNull;

    invoke-direct {v1}, Lcom/github/faucamp/simplertmp/amf/AmfNull;-><init>()V

    invoke-virtual {v0, v1}, Lcom/github/faucamp/simplertmp/packets/Command;->addData(Lcom/github/faucamp/simplertmp/amf/AmfData;)V

    .line 272
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->streamName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/faucamp/simplertmp/packets/Command;->addData(Ljava/lang/String;)V

    .line 273
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publishType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/faucamp/simplertmp/packets/Command;->addData(Ljava/lang/String;)V

    .line 274
    invoke-direct {p0, v0}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->sendRtmpPacket(Lcom/github/faucamp/simplertmp/packets/RtmpPacket;)V

    goto :goto_0
.end method

.method private handleRxInvoke(Lcom/github/faucamp/simplertmp/packets/Command;)V
    .locals 7
    .param p1, "invoke"    # Lcom/github/faucamp/simplertmp/packets/Command;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 577
    invoke-virtual {p1}, Lcom/github/faucamp/simplertmp/packets/Command;->getCommandName()Ljava/lang/String;

    move-result-object v1

    .line 579
    .local v1, "commandName":Ljava/lang/String;
    const-string v3, "_result"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 581
    iget-object v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    invoke-virtual {p1}, Lcom/github/faucamp/simplertmp/packets/Command;->getTransactionId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->takeInvokedCommand(I)Ljava/lang/String;

    move-result-object v2

    .line 583
    .local v2, "method":Ljava/lang/String;
    const-string v3, "RtmpConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleRxInvoke: Got result for invoked method: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const-string v3, "connect"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 586
    invoke-direct {p0, p1}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->onSrsServerInfo(Lcom/github/faucamp/simplertmp/packets/Command;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->srsServerInfo:Ljava/lang/String;

    .line 588
    iput-boolean v6, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connected:Z

    .line 589
    iget-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connectingLock:Ljava/lang/Object;

    monitor-enter v4

    .line 590
    :try_start_0
    iget-object v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connectingLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 591
    monitor-exit v4

    .line 624
    .end local v2    # "method":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 591
    .restart local v2    # "method":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 592
    :cond_1
    const-string v3, "createStream"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 594
    invoke-virtual {p1}, Lcom/github/faucamp/simplertmp/packets/Command;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/faucamp/simplertmp/amf/AmfNumber;

    invoke-virtual {v3}, Lcom/github/faucamp/simplertmp/amf/AmfNumber;->getValue()D

    move-result-wide v4

    double-to-int v3, v4

    iput v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->currentStreamId:I

    .line 595
    const-string v3, "RtmpConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleRxInvoke(): Stream ID to publish: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->currentStreamId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->streamName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publishType:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 597
    invoke-direct {p0}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->fmlePublish()V

    goto :goto_0

    .line 599
    :cond_2
    const-string v3, "releaseStream"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 600
    const-string v3, "RtmpConnection"

    const-string v4, "handleRxInvoke(): \'releaseStream\'"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 601
    :cond_3
    const-string v3, "FCPublish"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 602
    const-string v3, "RtmpConnection"

    const-string v4, "handleRxInvoke(): \'FCPublish\'"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 604
    :cond_4
    const-string v3, "RtmpConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleRxInvoke(): \'_result\' message received for unknown method: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 606
    .end local v2    # "method":Ljava/lang/String;
    :cond_5
    const-string v3, "onBWDone"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 607
    const-string v3, "RtmpConnection"

    const-string v4, "handleRxInvoke(): \'onBWDone\'"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 608
    :cond_6
    const-string v3, "onFCPublish"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 609
    const-string v3, "RtmpConnection"

    const-string v4, "handleRxInvoke(): \'onFCPublish\'"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 610
    :cond_7
    const-string v3, "onStatus"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 611
    invoke-virtual {p1}, Lcom/github/faucamp/simplertmp/packets/Command;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/faucamp/simplertmp/amf/AmfObject;

    const-string v4, "code"

    invoke-virtual {v3, v4}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->getProperty(Ljava/lang/String;)Lcom/github/faucamp/simplertmp/amf/AmfData;

    move-result-object v3

    check-cast v3, Lcom/github/faucamp/simplertmp/amf/AmfString;

    invoke-virtual {v3}, Lcom/github/faucamp/simplertmp/amf/AmfString;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, "code":Ljava/lang/String;
    const-string v3, "RtmpConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleRxInvoke(): onStatus "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const-string v3, "NetStream.Publish.Start"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 614
    invoke-direct {p0}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->onMetaData()V

    .line 616
    iput-boolean v6, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publishPermitted:Z

    .line 617
    iget-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publishLock:Ljava/lang/Object;

    monitor-enter v4

    .line 618
    :try_start_1
    iget-object v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publishLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 619
    monitor-exit v4

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 622
    .end local v0    # "code":Ljava/lang/String;
    :cond_8
    const-string v3, "RtmpConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleRxInvoke(): Unknown/unhandled server invoke: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private handleRxPacketLoop()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 508
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v13

    if-nez v13, :cond_1

    .line 511
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpDecoder:Lcom/github/faucamp/simplertmp/io/RtmpDecoder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->inputStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v13, v14}, Lcom/github/faucamp/simplertmp/io/RtmpDecoder;->readPacket(Ljava/io/InputStream;)Lcom/github/faucamp/simplertmp/packets/RtmpPacket;

    move-result-object v8

    .line 512
    .local v8, "rtmpPacket":Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
    if-eqz v8, :cond_0

    .line 514
    sget-object v13, Lcom/github/faucamp/simplertmp/io/RtmpConnection$2;->$SwitchMap$com$github$faucamp$simplertmp$packets$RtmpHeader$MessageType:[I

    invoke-virtual {v8}, Lcom/github/faucamp/simplertmp/packets/RtmpPacket;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v14

    invoke-virtual {v14}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->getMessageType()Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    move-result-object v14

    invoke-virtual {v14}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    .line 560
    const-string v13, "RtmpConnection"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleRxPacketLoop(): Not handling unimplemented/unknown packet of type: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Lcom/github/faucamp/simplertmp/packets/RtmpPacket;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v15

    invoke-virtual {v15}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->getMessageType()Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 564
    .end local v8    # "rtmpPacket":Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
    :catch_0
    move-exception v5

    .line 565
    .local v5, "eof":Ljava/io/EOFException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 516
    .end local v5    # "eof":Ljava/io/EOFException;
    .restart local v8    # "rtmpPacket":Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
    :pswitch_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    check-cast v8, Lcom/github/faucamp/simplertmp/packets/Abort;

    .end local v8    # "rtmpPacket":Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
    invoke-virtual {v8}, Lcom/github/faucamp/simplertmp/packets/Abort;->getChunkStreamId()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->getChunkStreamInfo(I)Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;

    move-result-object v13

    invoke-virtual {v13}, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->clearStoredChunks()V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 566
    :catch_1
    move-exception v9

    .line 567
    .local v9, "se":Ljava/net/SocketException;
    const-string v13, "RtmpConnection"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Caught SocketException while reading/decoding packet, shutting down: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

    invoke-virtual {v13, v9}, Lcom/github/faucamp/simplertmp/RtmpHandler;->notifyRtmpSocketException(Ljava/net/SocketException;)V

    goto/16 :goto_0

    .line 519
    .end local v9    # "se":Ljava/net/SocketException;
    .restart local v8    # "rtmpPacket":Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
    :pswitch_1
    :try_start_2
    move-object v0, v8

    check-cast v0, Lcom/github/faucamp/simplertmp/packets/UserControl;

    move-object v11, v0

    .line 520
    .local v11, "user":Lcom/github/faucamp/simplertmp/packets/UserControl;
    sget-object v13, Lcom/github/faucamp/simplertmp/io/RtmpConnection$2;->$SwitchMap$com$github$faucamp$simplertmp$packets$UserControl$Type:[I

    invoke-virtual {v11}, Lcom/github/faucamp/simplertmp/packets/UserControl;->getType()Lcom/github/faucamp/simplertmp/packets/UserControl$Type;

    move-result-object v14

    invoke-virtual {v14}, Lcom/github/faucamp/simplertmp/packets/UserControl$Type;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_1

    goto/16 :goto_0

    .line 522
    :pswitch_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->currentStreamId:I

    invoke-virtual {v11}, Lcom/github/faucamp/simplertmp/packets/UserControl;->getFirstEventData()I

    move-result v14

    if-eq v13, v14, :cond_0

    .line 523
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

    new-instance v14, Ljava/lang/IllegalStateException;

    const-string v15, "Current stream ID error!"

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Lcom/github/faucamp/simplertmp/RtmpHandler;->notifyRtmpIllegalStateException(Ljava/lang/IllegalStateException;)V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 569
    .end local v8    # "rtmpPacket":Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
    .end local v11    # "user":Lcom/github/faucamp/simplertmp/packets/UserControl;
    :catch_2
    move-exception v6

    .line 570
    .local v6, "ioe":Ljava/io/IOException;
    const-string v13, "RtmpConnection"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Caught exception while reading/decoding packet, shutting down: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

    invoke-virtual {v13, v6}, Lcom/github/faucamp/simplertmp/RtmpHandler;->notifyRtmpIOException(Ljava/io/IOException;)V

    goto/16 :goto_0

    .line 527
    .end local v6    # "ioe":Ljava/io/IOException;
    .restart local v8    # "rtmpPacket":Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
    .restart local v11    # "user":Lcom/github/faucamp/simplertmp/packets/UserControl;
    :pswitch_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->getChunkStreamInfo(I)Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;

    move-result-object v3

    .line 528
    .local v3, "channelInfo":Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;
    const-string v13, "RtmpConnection"

    const-string v14, "handleRxPacketLoop(): Sending PONG reply.."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    new-instance v7, Lcom/github/faucamp/simplertmp/packets/UserControl;

    invoke-direct {v7, v11, v3}, Lcom/github/faucamp/simplertmp/packets/UserControl;-><init>(Lcom/github/faucamp/simplertmp/packets/UserControl;Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;)V

    .line 530
    .local v7, "pong":Lcom/github/faucamp/simplertmp/packets/UserControl;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->sendRtmpPacket(Lcom/github/faucamp/simplertmp/packets/RtmpPacket;)V

    goto/16 :goto_0

    .line 533
    .end local v3    # "channelInfo":Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;
    .end local v7    # "pong":Lcom/github/faucamp/simplertmp/packets/UserControl;
    :pswitch_4
    const-string v13, "RtmpConnection"

    const-string v14, "handleRxPacketLoop(): Stream EOF reached, closing RTMP writer..."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 541
    .end local v11    # "user":Lcom/github/faucamp/simplertmp/packets/UserControl;
    :pswitch_5
    move-object v0, v8

    check-cast v0, Lcom/github/faucamp/simplertmp/packets/WindowAckSize;

    move-object v12, v0

    .line 542
    .local v12, "windowAckSize":Lcom/github/faucamp/simplertmp/packets/WindowAckSize;
    invoke-virtual {v12}, Lcom/github/faucamp/simplertmp/packets/WindowAckSize;->getAcknowledgementWindowSize()I

    move-result v10

    .line 543
    .local v10, "size":I
    const-string v13, "RtmpConnection"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleRxPacketLoop(): Setting acknowledgement window size: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    invoke-virtual {v13, v10}, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->setAcknowledgmentWindowSize(I)V

    goto/16 :goto_0

    .line 547
    .end local v10    # "size":I
    .end local v12    # "windowAckSize":Lcom/github/faucamp/simplertmp/packets/WindowAckSize;
    :pswitch_6
    move-object v0, v8

    check-cast v0, Lcom/github/faucamp/simplertmp/packets/SetPeerBandwidth;

    move-object v2, v0

    .line 548
    .local v2, "bw":Lcom/github/faucamp/simplertmp/packets/SetPeerBandwidth;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    invoke-virtual {v2}, Lcom/github/faucamp/simplertmp/packets/SetPeerBandwidth;->getAcknowledgementWindowSize()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->setAcknowledgmentWindowSize(I)V

    .line 549
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    invoke-virtual {v13}, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->getAcknowledgementWindowSize()I

    move-result v1

    .line 550
    .local v1, "acknowledgementWindowsize":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->getChunkStreamInfo(I)Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;

    move-result-object v4

    .line 551
    .local v4, "chunkStreamInfo":Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;
    const-string v13, "RtmpConnection"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleRxPacketLoop(): Send acknowledgement window size: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    new-instance v13, Lcom/github/faucamp/simplertmp/packets/WindowAckSize;

    invoke-direct {v13, v1, v4}, Lcom/github/faucamp/simplertmp/packets/WindowAckSize;-><init>(ILcom/github/faucamp/simplertmp/io/ChunkStreamInfo;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->sendRtmpPacket(Lcom/github/faucamp/simplertmp/packets/RtmpPacket;)V

    .line 554
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v13, v1}, Ljava/net/Socket;->setSendBufferSize(I)V

    goto/16 :goto_0

    .line 557
    .end local v1    # "acknowledgementWindowsize":I
    .end local v2    # "bw":Lcom/github/faucamp/simplertmp/packets/SetPeerBandwidth;
    .end local v4    # "chunkStreamInfo":Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;
    :pswitch_7
    check-cast v8, Lcom/github/faucamp/simplertmp/packets/Command;

    .end local v8    # "rtmpPacket":Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->handleRxInvoke(Lcom/github/faucamp/simplertmp/packets/Command;)V
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 574
    :cond_1
    return-void

    .line 514
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 520
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handshake(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lcom/github/faucamp/simplertmp/packets/Handshake;

    invoke-direct {v0}, Lcom/github/faucamp/simplertmp/packets/Handshake;-><init>()V

    .line 91
    .local v0, "handshake":Lcom/github/faucamp/simplertmp/packets/Handshake;
    invoke-virtual {v0, p2}, Lcom/github/faucamp/simplertmp/packets/Handshake;->writeC0(Ljava/io/OutputStream;)V

    .line 92
    invoke-virtual {v0, p2}, Lcom/github/faucamp/simplertmp/packets/Handshake;->writeC1(Ljava/io/OutputStream;)V

    .line 93
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 94
    invoke-virtual {v0, p1}, Lcom/github/faucamp/simplertmp/packets/Handshake;->readS0(Ljava/io/InputStream;)V

    .line 95
    invoke-virtual {v0, p1}, Lcom/github/faucamp/simplertmp/packets/Handshake;->readS1(Ljava/io/InputStream;)V

    .line 96
    invoke-virtual {v0, p2}, Lcom/github/faucamp/simplertmp/packets/Handshake;->writeC2(Ljava/io/OutputStream;)V

    .line 97
    invoke-virtual {v0, p1}, Lcom/github/faucamp/simplertmp/packets/Handshake;->readS2(Ljava/io/InputStream;)V

    .line 98
    return-void
.end method

.method private onMetaData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 278
    iget-boolean v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connected:Z

    if-nez v2, :cond_0

    .line 279
    iget-object v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Not connected to RTMP server"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/github/faucamp/simplertmp/RtmpHandler;->notifyRtmpIllegalStateException(Ljava/lang/IllegalStateException;)V

    .line 304
    :goto_0
    return-void

    .line 282
    :cond_0
    iget v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->currentStreamId:I

    if-nez v2, :cond_1

    .line 283
    iget-object v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "No current stream object exists"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/github/faucamp/simplertmp/RtmpHandler;->notifyRtmpIllegalStateException(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    .line 287
    :cond_1
    const-string v2, "RtmpConnection"

    const-string v3, "onMetaData(): Sending empty onMetaData..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    new-instance v1, Lcom/github/faucamp/simplertmp/packets/Data;

    const-string v2, "@setDataFrame"

    invoke-direct {v1, v2}, Lcom/github/faucamp/simplertmp/packets/Data;-><init>(Ljava/lang/String;)V

    .line 289
    .local v1, "metadata":Lcom/github/faucamp/simplertmp/packets/Data;
    invoke-virtual {v1}, Lcom/github/faucamp/simplertmp/packets/Data;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v2

    iget v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->currentStreamId:I

    invoke-virtual {v2, v3}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->setMessageStreamId(I)V

    .line 290
    const-string v2, "onMetaData"

    invoke-virtual {v1, v2}, Lcom/github/faucamp/simplertmp/packets/Data;->addData(Ljava/lang/String;)V

    .line 291
    new-instance v0, Lcom/github/faucamp/simplertmp/amf/AmfMap;

    invoke-direct {v0}, Lcom/github/faucamp/simplertmp/amf/AmfMap;-><init>()V

    .line 292
    .local v0, "ecmaArray":Lcom/github/faucamp/simplertmp/amf/AmfMap;
    const-string v2, "duration"

    invoke-virtual {v0, v2, v4}, Lcom/github/faucamp/simplertmp/amf/AmfMap;->setProperty(Ljava/lang/String;I)V

    .line 293
    const-string v2, "width"

    iget v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->videoWidth:I

    invoke-virtual {v0, v2, v3}, Lcom/github/faucamp/simplertmp/amf/AmfMap;->setProperty(Ljava/lang/String;I)V

    .line 294
    const-string v2, "height"

    iget v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->videoHeight:I

    invoke-virtual {v0, v2, v3}, Lcom/github/faucamp/simplertmp/amf/AmfMap;->setProperty(Ljava/lang/String;I)V

    .line 295
    const-string v2, "videodatarate"

    invoke-virtual {v0, v2, v4}, Lcom/github/faucamp/simplertmp/amf/AmfMap;->setProperty(Ljava/lang/String;I)V

    .line 296
    const-string v2, "framerate"

    invoke-virtual {v0, v2, v4}, Lcom/github/faucamp/simplertmp/amf/AmfMap;->setProperty(Ljava/lang/String;I)V

    .line 297
    const-string v2, "audiodatarate"

    invoke-virtual {v0, v2, v4}, Lcom/github/faucamp/simplertmp/amf/AmfMap;->setProperty(Ljava/lang/String;I)V

    .line 298
    const-string v2, "audiosamplerate"

    const v3, 0xac44

    invoke-virtual {v0, v2, v3}, Lcom/github/faucamp/simplertmp/amf/AmfMap;->setProperty(Ljava/lang/String;I)V

    .line 299
    const-string v2, "audiosamplesize"

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Lcom/github/faucamp/simplertmp/amf/AmfMap;->setProperty(Ljava/lang/String;I)V

    .line 300
    const-string v2, "stereo"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/github/faucamp/simplertmp/amf/AmfMap;->setProperty(Ljava/lang/String;Z)V

    .line 301
    const-string v2, "filesize"

    invoke-virtual {v0, v2, v4}, Lcom/github/faucamp/simplertmp/amf/AmfMap;->setProperty(Ljava/lang/String;I)V

    .line 302
    invoke-virtual {v1, v0}, Lcom/github/faucamp/simplertmp/packets/Data;->addData(Lcom/github/faucamp/simplertmp/amf/AmfData;)V

    .line 303
    invoke-direct {p0, v1}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->sendRtmpPacket(Lcom/github/faucamp/simplertmp/packets/RtmpPacket;)V

    goto :goto_0
.end method

.method private onSrsServerInfo(Lcom/github/faucamp/simplertmp/packets/Command;)Ljava/lang/String;
    .locals 6
    .param p1, "invoke"    # Lcom/github/faucamp/simplertmp/packets/Command;

    .prologue
    .line 628
    invoke-virtual {p1}, Lcom/github/faucamp/simplertmp/packets/Command;->getData()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/faucamp/simplertmp/amf/AmfObject;

    .line 629
    .local v1, "objData":Lcom/github/faucamp/simplertmp/amf/AmfObject;
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->getProperty(Ljava/lang/String;)Lcom/github/faucamp/simplertmp/amf/AmfData;

    move-result-object v2

    instance-of v2, v2, Lcom/github/faucamp/simplertmp/amf/AmfObject;

    if-eqz v2, :cond_0

    .line 630
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->getProperty(Ljava/lang/String;)Lcom/github/faucamp/simplertmp/amf/AmfData;

    move-result-object v1

    .end local v1    # "objData":Lcom/github/faucamp/simplertmp/amf/AmfObject;
    check-cast v1, Lcom/github/faucamp/simplertmp/amf/AmfObject;

    .line 631
    .restart local v1    # "objData":Lcom/github/faucamp/simplertmp/amf/AmfObject;
    const-string v2, "srs_server_ip"

    invoke-virtual {v1, v2}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->getProperty(Ljava/lang/String;)Lcom/github/faucamp/simplertmp/amf/AmfData;

    move-result-object v2

    check-cast v2, Lcom/github/faucamp/simplertmp/amf/AmfString;

    iput-object v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->serverIpAddr:Lcom/github/faucamp/simplertmp/amf/AmfString;

    .line 632
    const-string v2, "srs_pid"

    invoke-virtual {v1, v2}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->getProperty(Ljava/lang/String;)Lcom/github/faucamp/simplertmp/amf/AmfData;

    move-result-object v2

    check-cast v2, Lcom/github/faucamp/simplertmp/amf/AmfNumber;

    iput-object v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->serverPid:Lcom/github/faucamp/simplertmp/amf/AmfNumber;

    .line 633
    const-string v2, "srs_id"

    invoke-virtual {v1, v2}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->getProperty(Ljava/lang/String;)Lcom/github/faucamp/simplertmp/amf/AmfData;

    move-result-object v2

    check-cast v2, Lcom/github/faucamp/simplertmp/amf/AmfNumber;

    iput-object v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->serverId:Lcom/github/faucamp/simplertmp/amf/AmfNumber;

    .line 635
    :cond_0
    const-string v0, ""

    .line 636
    .local v0, "info":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->serverIpAddr:Lcom/github/faucamp/simplertmp/amf/AmfString;

    if-nez v2, :cond_1

    const-string v2, ""

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 637
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->serverPid:Lcom/github/faucamp/simplertmp/amf/AmfNumber;

    if-nez v2, :cond_2

    const-string v2, ""

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 638
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->serverId:Lcom/github/faucamp/simplertmp/amf/AmfNumber;

    if-nez v2, :cond_3

    const-string v2, ""

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 639
    return-object v0

    .line 636
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ip: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->serverIpAddr:Lcom/github/faucamp/simplertmp/amf/AmfString;

    invoke-virtual {v4}, Lcom/github/faucamp/simplertmp/amf/AmfString;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 637
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " pid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->serverPid:Lcom/github/faucamp/simplertmp/amf/AmfNumber;

    invoke-virtual {v4}, Lcom/github/faucamp/simplertmp/amf/AmfNumber;->getValue()D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 638
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->serverId:Lcom/github/faucamp/simplertmp/amf/AmfNumber;

    invoke-virtual {v4}, Lcom/github/faucamp/simplertmp/amf/AmfNumber;->getValue()D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 373
    iput-boolean v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connected:Z

    .line 374
    iput-boolean v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publishPermitted:Z

    .line 375
    iput-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->tcUrl:Ljava/lang/String;

    .line 376
    iput-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->swfUrl:Ljava/lang/String;

    .line 377
    iput-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->pageUrl:Ljava/lang/String;

    .line 378
    iput-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->appName:Ljava/lang/String;

    .line 379
    iput-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->streamName:Ljava/lang/String;

    .line 380
    iput-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publishType:Ljava/lang/String;

    .line 381
    iput v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->currentStreamId:I

    .line 382
    iput v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->transactionIdCounter:I

    .line 383
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->videoFrameCacheNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 384
    const-string v0, ""

    iput-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->socketExceptionCause:Ljava/lang/String;

    .line 385
    iput-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->serverIpAddr:Lcom/github/faucamp/simplertmp/amf/AmfString;

    .line 386
    iput-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->serverPid:Lcom/github/faucamp/simplertmp/amf/AmfNumber;

    .line 387
    iput-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->serverId:Lcom/github/faucamp/simplertmp/amf/AmfNumber;

    .line 388
    iput-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->socket:Ljava/net/Socket;

    .line 389
    iput-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    .line 390
    iput-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpDecoder:Lcom/github/faucamp/simplertmp/io/RtmpDecoder;

    .line 391
    return-void
.end method

.method private rtmpConnect()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 156
    iget-boolean v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connected:Z

    if-eqz v4, :cond_0

    .line 157
    iget-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Already connected to RTMP server"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/github/faucamp/simplertmp/RtmpHandler;->notifyRtmpIllegalStateException(Ljava/lang/IllegalStateException;)V

    .line 194
    :goto_0
    return v3

    .line 162
    :cond_0
    invoke-static {}, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->markSessionTimestampTx()V

    .line 164
    const-string v4, "RtmpConnection"

    const-string v5, "rtmpConnect(): Building \'connect\' invoke packet"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->getChunkStreamInfo(I)Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;

    move-result-object v1

    .line 166
    .local v1, "chunkStreamInfo":Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;
    new-instance v2, Lcom/github/faucamp/simplertmp/packets/Command;

    const-string v4, "connect"

    iget v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->transactionIdCounter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->transactionIdCounter:I

    invoke-direct {v2, v4, v5, v1}, Lcom/github/faucamp/simplertmp/packets/Command;-><init>(Ljava/lang/String;ILcom/github/faucamp/simplertmp/io/ChunkStreamInfo;)V

    .line 167
    .local v2, "invoke":Lcom/github/faucamp/simplertmp/packets/Command;
    invoke-virtual {v2}, Lcom/github/faucamp/simplertmp/packets/Command;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->setMessageStreamId(I)V

    .line 168
    new-instance v0, Lcom/github/faucamp/simplertmp/amf/AmfObject;

    invoke-direct {v0}, Lcom/github/faucamp/simplertmp/amf/AmfObject;-><init>()V

    .line 169
    .local v0, "args":Lcom/github/faucamp/simplertmp/amf/AmfObject;
    const-string v4, "app"

    iget-object v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->appName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v4, "flashVer"

    const-string v5, "LNX 11,2,202,233"

    invoke-virtual {v0, v4, v5}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v4, "swfUrl"

    iget-object v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->swfUrl:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v4, "tcUrl"

    iget-object v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->tcUrl:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v4, "fpad"

    invoke-virtual {v0, v4, v3}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;Z)V

    .line 174
    const-string v4, "capabilities"

    const/16 v5, 0xef

    invoke-virtual {v0, v4, v5}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;I)V

    .line 175
    const-string v4, "audioCodecs"

    const/16 v5, 0xdf7

    invoke-virtual {v0, v4, v5}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;I)V

    .line 176
    const-string v4, "videoCodecs"

    const/16 v5, 0xfc

    invoke-virtual {v0, v4, v5}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;I)V

    .line 177
    const-string v4, "videoFunction"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;I)V

    .line 178
    const-string v4, "pageUrl"

    iget-object v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->pageUrl:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v4, "objectEncoding"

    invoke-virtual {v0, v4, v3}, Lcom/github/faucamp/simplertmp/amf/AmfObject;->setProperty(Ljava/lang/String;I)V

    .line 180
    invoke-virtual {v2, v0}, Lcom/github/faucamp/simplertmp/packets/Command;->addData(Lcom/github/faucamp/simplertmp/amf/AmfData;)V

    .line 181
    invoke-direct {p0, v2}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->sendRtmpPacket(Lcom/github/faucamp/simplertmp/packets/RtmpPacket;)V

    .line 182
    iget-object v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

    const-string v4, "Connecting"

    invoke-virtual {v3, v4}, Lcom/github/faucamp/simplertmp/RtmpHandler;->notifyRtmpConnecting(Ljava/lang/String;)V

    .line 184
    iget-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connectingLock:Ljava/lang/Object;

    monitor-enter v4

    .line 186
    :try_start_0
    iget-object v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connectingLock:Ljava/lang/Object;

    const-wide/16 v6, 0x1388

    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :goto_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    iget-boolean v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connected:Z

    if-nez v3, :cond_1

    .line 192
    invoke-direct {p0}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->shutdown()V

    .line 194
    :cond_1
    iget-boolean v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connected:Z

    goto/16 :goto_0

    .line 190
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 187
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private sendRtmpPacket(Lcom/github/faucamp/simplertmp/packets/RtmpPacket;)V
    .locals 8
    .param p1, "rtmpPacket"    # Lcom/github/faucamp/simplertmp/packets/RtmpPacket;

    .prologue
    .line 481
    :try_start_0
    iget-object v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    invoke-virtual {p1}, Lcom/github/faucamp/simplertmp/packets/RtmpPacket;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->getChunkStreamId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->getChunkStreamInfo(I)Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;

    move-result-object v2

    .line 482
    .local v2, "chunkStreamInfo":Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;
    invoke-virtual {p1}, Lcom/github/faucamp/simplertmp/packets/RtmpPacket;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->setPrevHeaderTx(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V

    .line 483
    instance-of v5, p1, Lcom/github/faucamp/simplertmp/packets/Video;

    if-nez v5, :cond_0

    instance-of v5, p1, Lcom/github/faucamp/simplertmp/packets/Audio;

    if-nez v5, :cond_0

    .line 484
    invoke-virtual {p1}, Lcom/github/faucamp/simplertmp/packets/RtmpPacket;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v5

    invoke-virtual {v2}, Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;->markAbsoluteTimestampTx()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->setAbsoluteTimestamp(I)V

    .line 486
    :cond_0
    iget-object v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->outputStream:Ljava/io/BufferedOutputStream;

    iget-object v6, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    invoke-virtual {v6}, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->getTxChunkSize()I

    move-result v6

    invoke-virtual {p1, v5, v6, v2}, Lcom/github/faucamp/simplertmp/packets/RtmpPacket;->writeTo(Ljava/io/OutputStream;ILcom/github/faucamp/simplertmp/io/ChunkStreamInfo;)V

    .line 487
    const-string v5, "RtmpConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wrote packet: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/github/faucamp/simplertmp/packets/RtmpPacket;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v7

    invoke-virtual {v7}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->getPacketLength()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    instance-of v5, p1, Lcom/github/faucamp/simplertmp/packets/Command;

    if-eqz v5, :cond_1

    .line 489
    iget-object v6, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    move-object v0, p1

    check-cast v0, Lcom/github/faucamp/simplertmp/packets/Command;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/github/faucamp/simplertmp/packets/Command;->getTransactionId()I

    move-result v5

    check-cast p1, Lcom/github/faucamp/simplertmp/packets/Command;

    .end local p1    # "rtmpPacket":Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
    invoke-virtual {p1}, Lcom/github/faucamp/simplertmp/packets/Command;->getCommandName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;->addInvokedCommand(ILjava/lang/String;)Ljava/lang/String;

    .line 491
    :cond_1
    iget-object v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->outputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 504
    .end local v2    # "chunkStreamInfo":Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;
    :cond_2
    :goto_0
    return-void

    .line 492
    :catch_0
    move-exception v4

    .line 495
    .local v4, "se":Ljava/net/SocketException;
    iget-object v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->socketExceptionCause:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 496
    invoke-virtual {v4}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->socketExceptionCause:Ljava/lang/String;

    .line 497
    const-string v5, "RtmpConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Caught SocketException during write loop, shutting down: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

    invoke-virtual {v5, v4}, Lcom/github/faucamp/simplertmp/RtmpHandler;->notifyRtmpSocketException(Ljava/net/SocketException;)V

    goto :goto_0

    .line 500
    .end local v4    # "se":Ljava/net/SocketException;
    :catch_1
    move-exception v3

    .line 501
    .local v3, "ioe":Ljava/io/IOException;
    const-string v5, "RtmpConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Caught IOException during write loop, shutting down: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v5, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

    invoke-virtual {v5, v3}, Lcom/github/faucamp/simplertmp/RtmpHandler;->notifyRtmpIOException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method private shutdown()V
    .locals 5

    .prologue
    .line 337
    iget-object v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->socket:Ljava/net/Socket;

    if-eqz v3, :cond_1

    .line 340
    :try_start_0
    iget-object v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->shutdownInput()V

    .line 342
    iget-object v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :goto_0
    iget-object v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rxPacketHandler:Ljava/lang/Thread;

    if-eqz v3, :cond_0

    .line 349
    iget-object v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rxPacketHandler:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 351
    :try_start_1
    iget-object v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rxPacketHandler:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 355
    :goto_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rxPacketHandler:Ljava/lang/Thread;

    .line 360
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 361
    const-string v3, "RtmpConnection"

    const-string v4, "socket closed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 366
    :goto_2
    iget-object v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

    invoke-virtual {v3}, Lcom/github/faucamp/simplertmp/RtmpHandler;->notifyRtmpDisconnected()V

    .line 369
    :cond_1
    invoke-direct {p0}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->reset()V

    .line 370
    return-void

    .line 343
    :catch_0
    move-exception v2

    .line 344
    .local v2, "ioe":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 352
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 353
    .local v1, "ie":Ljava/lang/InterruptedException;
    iget-object v3, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rxPacketHandler:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 362
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 363
    .local v0, "ex":Ljava/io/IOException;
    const-string v3, "RtmpConnection"

    const-string v4, "shutdown(): failed to close socket"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 309
    invoke-direct {p0}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->closeStream()V

    .line 311
    :cond_0
    invoke-direct {p0}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->shutdown()V

    .line 312
    return-void
.end method

.method public connect(Ljava/lang/String;)Z
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 102
    sget-object v4, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpUrlPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 103
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    const/16 v4, 0x2f

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->tcUrl:Ljava/lang/String;

    .line 105
    const-string v4, ""

    iput-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->swfUrl:Ljava/lang/String;

    .line 106
    const-string v4, ""

    iput-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->pageUrl:Ljava/lang/String;

    .line 107
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->host:Ljava/lang/String;

    .line 108
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "portStr":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :goto_0
    iput v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->port:I

    .line 110
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->appName:Ljava/lang/String;

    .line 111
    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->streamName:Ljava/lang/String;

    .line 119
    const-string v4, "RtmpConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "connect() called. Host: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->host:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", port: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->port:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", appName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->appName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", publishPath: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->streamName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v4, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    invoke-direct {v4}, Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;-><init>()V

    iput-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    .line 121
    new-instance v4, Lcom/github/faucamp/simplertmp/io/RtmpDecoder;

    iget-object v6, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpSessionInfo:Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;

    invoke-direct {v4, v6}, Lcom/github/faucamp/simplertmp/io/RtmpDecoder;-><init>(Lcom/github/faucamp/simplertmp/io/RtmpSessionInfo;)V

    iput-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpDecoder:Lcom/github/faucamp/simplertmp/io/RtmpDecoder;

    .line 122
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V

    iput-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->socket:Ljava/net/Socket;

    .line 123
    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->host:Ljava/lang/String;

    iget v6, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->port:I

    invoke-direct {v3, v4, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 125
    .local v3, "socketAddress":Ljava/net/SocketAddress;
    :try_start_0
    iget-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->socket:Ljava/net/Socket;

    const/16 v6, 0xbb8

    invoke-virtual {v4, v3, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 126
    new-instance v4, Ljava/io/BufferedInputStream;

    iget-object v6, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->inputStream:Ljava/io/BufferedInputStream;

    .line 127
    new-instance v4, Ljava/io/BufferedOutputStream;

    iget-object v6, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->outputStream:Ljava/io/BufferedOutputStream;

    .line 128
    const-string v4, "RtmpConnection"

    const-string v6, "connect(): socket connection established, doing handhake..."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->inputStream:Ljava/io/BufferedInputStream;

    iget-object v6, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->outputStream:Ljava/io/BufferedOutputStream;

    invoke-direct {p0, v4, v6}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->handshake(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 130
    const-string v4, "RtmpConnection"

    const-string v6, "connect(): handshake done"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/github/faucamp/simplertmp/io/RtmpConnection$1;

    invoke-direct {v5, p0}, Lcom/github/faucamp/simplertmp/io/RtmpConnection$1;-><init>(Lcom/github/faucamp/simplertmp/io/RtmpConnection;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rxPacketHandler:Ljava/lang/Thread;

    .line 150
    iget-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rxPacketHandler:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 152
    invoke-direct {p0}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->rtmpConnect()Z

    move-result v4

    .end local v2    # "portStr":Ljava/lang/String;
    .end local v3    # "socketAddress":Ljava/net/SocketAddress;
    :goto_1
    return v4

    .line 109
    .restart local v2    # "portStr":Ljava/lang/String;
    :cond_0
    const/16 v4, 0x78f

    goto/16 :goto_0

    .line 113
    .end local v2    # "portStr":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid RTMP URL. Must be in format: rtmp://host[:port]/application[/streamName]"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/github/faucamp/simplertmp/RtmpHandler;->notifyRtmpIllegalArgumentException(Ljava/lang/IllegalArgumentException;)V

    move v4, v5

    .line 115
    goto :goto_1

    .line 131
    .restart local v2    # "portStr":Ljava/lang/String;
    .restart local v3    # "socketAddress":Ljava/net/SocketAddress;
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 133
    iget-object v4, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

    invoke-virtual {v4, v0}, Lcom/github/faucamp/simplertmp/RtmpHandler;->notifyRtmpIOException(Ljava/io/IOException;)V

    move v4, v5

    .line 134
    goto :goto_1
.end method

.method public final getServerId()I
    .locals 2

    .prologue
    .line 659
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->serverId:Lcom/github/faucamp/simplertmp/amf/AmfNumber;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->serverId:Lcom/github/faucamp/simplertmp/amf/AmfNumber;

    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/amf/AmfNumber;->getValue()D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method public final getServerIpAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->serverIpAddr:Lcom/github/faucamp/simplertmp/amf/AmfString;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->serverIpAddr:Lcom/github/faucamp/simplertmp/amf/AmfString;

    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/amf/AmfString;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getServerPid()I
    .locals 2

    .prologue
    .line 654
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->serverPid:Lcom/github/faucamp/simplertmp/amf/AmfNumber;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->serverPid:Lcom/github/faucamp/simplertmp/amf/AmfNumber;

    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/amf/AmfNumber;->getValue()D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method public getVideoFrameCacheNumber()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->videoFrameCacheNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public publish(Ljava/lang/String;)Z
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No publish type specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/github/faucamp/simplertmp/RtmpHandler;->notifyRtmpIllegalArgumentException(Ljava/lang/IllegalArgumentException;)V

    .line 201
    const/4 v0, 0x0

    .line 204
    :goto_0
    return v0

    .line 203
    :cond_0
    iput-object p1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publishType:Ljava/lang/String;

    .line 204
    invoke-direct {p0}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->createStream()Z

    move-result v0

    goto :goto_0
.end method

.method public publishAudioData([BI)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "dts"    # I

    .prologue
    .line 395
    if-eqz p1, :cond_0

    array-length v1, p1

    if-eqz v1, :cond_0

    if-gez p2, :cond_1

    .line 396
    :cond_0
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid Audio Data"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/github/faucamp/simplertmp/RtmpHandler;->notifyRtmpIllegalArgumentException(Ljava/lang/IllegalArgumentException;)V

    .line 418
    :goto_0
    return-void

    .line 399
    :cond_1
    iget-boolean v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connected:Z

    if-nez v1, :cond_2

    .line 400
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Not connected to RTMP server"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/github/faucamp/simplertmp/RtmpHandler;->notifyRtmpIllegalStateException(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    .line 403
    :cond_2
    iget v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->currentStreamId:I

    if-nez v1, :cond_3

    .line 404
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No current stream object exists"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/github/faucamp/simplertmp/RtmpHandler;->notifyRtmpIllegalStateException(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    .line 407
    :cond_3
    iget-boolean v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publishPermitted:Z

    if-nez v1, :cond_4

    .line 408
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Not get _result(Netstream.Publish.Start)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/github/faucamp/simplertmp/RtmpHandler;->notifyRtmpIllegalStateException(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    .line 411
    :cond_4
    new-instance v0, Lcom/github/faucamp/simplertmp/packets/Audio;

    invoke-direct {v0}, Lcom/github/faucamp/simplertmp/packets/Audio;-><init>()V

    .line 412
    .local v0, "audio":Lcom/github/faucamp/simplertmp/packets/Audio;
    invoke-virtual {v0, p1}, Lcom/github/faucamp/simplertmp/packets/Audio;->setData([B)V

    .line 413
    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/packets/Audio;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->setAbsoluteTimestamp(I)V

    .line 414
    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/packets/Audio;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v1

    iget v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->currentStreamId:I

    invoke-virtual {v1, v2}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->setMessageStreamId(I)V

    .line 415
    invoke-direct {p0, v0}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->sendRtmpPacket(Lcom/github/faucamp/simplertmp/packets/RtmpPacket;)V

    .line 416
    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/packets/Audio;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->getPacketLength()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->calcAudioBitrate(I)V

    .line 417
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

    invoke-virtual {v1}, Lcom/github/faucamp/simplertmp/RtmpHandler;->notifyRtmpAudioStreaming()V

    goto :goto_0
.end method

.method public publishVideoData([BI)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "dts"    # I

    .prologue
    .line 422
    if-eqz p1, :cond_0

    array-length v1, p1

    if-eqz v1, :cond_0

    if-gez p2, :cond_1

    .line 423
    :cond_0
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid Video Data"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/github/faucamp/simplertmp/RtmpHandler;->notifyRtmpIllegalArgumentException(Ljava/lang/IllegalArgumentException;)V

    .line 446
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-boolean v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connected:Z

    if-nez v1, :cond_2

    .line 427
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Not connected to RTMP server"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/github/faucamp/simplertmp/RtmpHandler;->notifyRtmpIllegalStateException(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    .line 430
    :cond_2
    iget v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->currentStreamId:I

    if-nez v1, :cond_3

    .line 431
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No current stream object exists"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/github/faucamp/simplertmp/RtmpHandler;->notifyRtmpIllegalStateException(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    .line 434
    :cond_3
    iget-boolean v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publishPermitted:Z

    if-nez v1, :cond_4

    .line 435
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Not get _result(Netstream.Publish.Start)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/github/faucamp/simplertmp/RtmpHandler;->notifyRtmpIllegalStateException(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    .line 438
    :cond_4
    new-instance v0, Lcom/github/faucamp/simplertmp/packets/Video;

    invoke-direct {v0}, Lcom/github/faucamp/simplertmp/packets/Video;-><init>()V

    .line 439
    .local v0, "video":Lcom/github/faucamp/simplertmp/packets/Video;
    invoke-virtual {v0, p1}, Lcom/github/faucamp/simplertmp/packets/Video;->setData([B)V

    .line 440
    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/packets/Video;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->setAbsoluteTimestamp(I)V

    .line 441
    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/packets/Video;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v1

    iget v2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->currentStreamId:I

    invoke-virtual {v1, v2}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->setMessageStreamId(I)V

    .line 442
    invoke-direct {p0, v0}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->sendRtmpPacket(Lcom/github/faucamp/simplertmp/packets/RtmpPacket;)V

    .line 443
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->videoFrameCacheNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 444
    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/packets/Video;->getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->getPacketLength()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->calcVideoFpsAndBitrate(I)V

    .line 445
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

    invoke-virtual {v1}, Lcom/github/faucamp/simplertmp/RtmpHandler;->notifyRtmpVideoStreaming()V

    goto :goto_0
.end method

.method public setVideoResolution(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 664
    iput p1, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->videoWidth:I

    .line 665
    iput p2, p0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->videoHeight:I

    .line 666
    return-void
.end method
