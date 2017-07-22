.class public Lnet/ossrs/yasea/SrsFlvMuxer;
.super Ljava/lang/Object;
.source "SrsFlvMuxer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;,
        Lnet/ossrs/yasea/SrsFlvMuxer$SrsRawAacStreamCodec;,
        Lnet/ossrs/yasea/SrsFlvMuxer$SrsRawH264Stream;,
        Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;,
        Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;,
        Lnet/ossrs/yasea/SrsFlvMuxer$SrsAnnexbSearch;,
        Lnet/ossrs/yasea/SrsFlvMuxer$SrsUtils;,
        Lnet/ossrs/yasea/SrsFlvMuxer$SrsAvcNaluType;,
        Lnet/ossrs/yasea/SrsFlvMuxer$SrsCodecAudioSampleRate;,
        Lnet/ossrs/yasea/SrsFlvMuxer$SrsAacProfile;,
        Lnet/ossrs/yasea/SrsFlvMuxer$SrsAacObjectType;,
        Lnet/ossrs/yasea/SrsFlvMuxer$SrsCodecVideo;,
        Lnet/ossrs/yasea/SrsFlvMuxer$SrsCodecFlvTag;,
        Lnet/ossrs/yasea/SrsFlvMuxer$SrsCodecVideoAVCType;,
        Lnet/ossrs/yasea/SrsFlvMuxer$SrsCodecVideoAVCFrame;
    }
.end annotation


# static fields
.field private static final AUDIO_TRACK:I = 0x65

.field private static final TAG:Ljava/lang/String; = "SrsFlvMuxer"

.field private static final VIDEO_TRACK:I = 0x64


# instance fields
.field private audioSequenceHeader:Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;

.field private volatile connected:Z

.field private flv:Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;

.field private frameCache:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

.field private needToFindKeyFrame:Z

.field private publisher:Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;

.field private final txFrameLock:Ljava/lang/Object;

.field private videoSequenceHeader:Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;

.field private worker:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/github/faucamp/simplertmp/RtmpHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/github/faucamp/simplertmp/RtmpHandler;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->connected:Z

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->txFrameLock:Ljava/lang/Object;

    .line 55
    new-instance v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;

    invoke-direct {v0, p0}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;-><init>(Lnet/ossrs/yasea/SrsFlvMuxer;)V

    iput-object v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->flv:Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->needToFindKeyFrame:Z

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->frameCache:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 70
    iput-object p1, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

    .line 71
    new-instance v0, Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;

    invoke-direct {v0, p1}, Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;-><init>(Lcom/github/faucamp/simplertmp/RtmpHandler;)V

    iput-object v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->publisher:Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lnet/ossrs/yasea/SrsFlvMuxer;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsFlvMuxer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lnet/ossrs/yasea/SrsFlvMuxer;->connect(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lnet/ossrs/yasea/SrsFlvMuxer;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsFlvMuxer;

    .prologue
    .line 47
    iget-object v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->frameCache:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic access$1000(Lnet/ossrs/yasea/SrsFlvMuxer;)Lcom/github/faucamp/simplertmp/RtmpHandler;
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsFlvMuxer;

    .prologue
    .line 47
    iget-object v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->mHandler:Lcom/github/faucamp/simplertmp/RtmpHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lnet/ossrs/yasea/SrsFlvMuxer;)Z
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsFlvMuxer;

    .prologue
    .line 47
    iget-boolean v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->needToFindKeyFrame:Z

    return v0
.end method

.method static synthetic access$1202(Lnet/ossrs/yasea/SrsFlvMuxer;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsFlvMuxer;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->needToFindKeyFrame:Z

    return p1
.end method

.method static synthetic access$200(Lnet/ossrs/yasea/SrsFlvMuxer;)Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsFlvMuxer;

    .prologue
    .line 47
    iget-object v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->videoSequenceHeader:Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;

    return-object v0
.end method

.method static synthetic access$202(Lnet/ossrs/yasea/SrsFlvMuxer;Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;)Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;
    .locals 0
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsFlvMuxer;
    .param p1, "x1"    # Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;

    .prologue
    .line 47
    iput-object p1, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->videoSequenceHeader:Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;

    return-object p1
.end method

.method static synthetic access$300(Lnet/ossrs/yasea/SrsFlvMuxer;Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;)V
    .locals 0
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsFlvMuxer;
    .param p1, "x1"    # Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lnet/ossrs/yasea/SrsFlvMuxer;->sendFlvTag(Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;)V

    return-void
.end method

.method static synthetic access$400(Lnet/ossrs/yasea/SrsFlvMuxer;)Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsFlvMuxer;

    .prologue
    .line 47
    iget-object v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->audioSequenceHeader:Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;

    return-object v0
.end method

.method static synthetic access$402(Lnet/ossrs/yasea/SrsFlvMuxer;Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;)Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;
    .locals 0
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsFlvMuxer;
    .param p1, "x1"    # Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;

    .prologue
    .line 47
    iput-object p1, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->audioSequenceHeader:Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;

    return-object p1
.end method

.method static synthetic access$500(Lnet/ossrs/yasea/SrsFlvMuxer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsFlvMuxer;

    .prologue
    .line 47
    iget-object v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->txFrameLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lnet/ossrs/yasea/SrsFlvMuxer;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsFlvMuxer;

    .prologue
    .line 47
    iget-object v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->worker:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$700(Lnet/ossrs/yasea/SrsFlvMuxer;)V
    .locals 0
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsFlvMuxer;

    .prologue
    .line 47
    invoke-direct {p0}, Lnet/ossrs/yasea/SrsFlvMuxer;->disconnect()V

    return-void
.end method

.method private connect(Ljava/lang/String;)Z
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 120
    iget-boolean v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->connected:Z

    if-nez v0, :cond_1

    .line 121
    const-string v0, "SrsFlvMuxer"

    const-string v1, "worker: connecting to RTMP server by url=%s\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->publisher:Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;

    invoke-virtual {v0, p1}, Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;->connect(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->publisher:Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;

    const-string v1, "live"

    invoke-virtual {v0, v1}, Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;->publish(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->connected:Z

    .line 125
    :cond_0
    iput-object v4, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->videoSequenceHeader:Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;

    .line 126
    iput-object v4, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->audioSequenceHeader:Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;

    .line 128
    :cond_1
    iget-boolean v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->connected:Z

    return v0
.end method

.method private disconnect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    :try_start_0
    iget-object v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->publisher:Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;

    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->connected:Z

    .line 114
    iput-object v1, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->videoSequenceHeader:Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;

    .line 115
    iput-object v1, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->audioSequenceHeader:Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;

    .line 116
    const-string v0, "SrsFlvMuxer"

    const-string v1, "worker: disconnect ok."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void

    .line 110
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private sendFlvTag(Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;)V
    .locals 5
    .param p1, "frame"    # Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;

    .prologue
    .line 132
    iget-boolean v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->connected:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-virtual {p1}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;->is_video()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    iget-object v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->publisher:Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;

    iget-object v1, p1, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;->flvTag:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget v2, p1, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;->dts:I

    invoke-virtual {v0, v1, v2}, Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;->publishVideoData([BI)V

    .line 142
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;->is_keyframe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const-string v0, "SrsFlvMuxer"

    const-string v1, "worker: send frame type=%d, dts=%d, size=%dB"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;->type:I

    .line 144
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p1, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;->dts:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p1, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;->flvTag:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 143
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :cond_3
    invoke-virtual {p1}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;->is_audio()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->publisher:Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;

    iget-object v1, p1, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;->flvTag:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget v2, p1, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;->dts:I

    invoke-virtual {v0, v1, v2}, Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;->publishAudioData([BI)V

    goto :goto_1
.end method

.method public static srs_print_bytes(Ljava/lang/String;Ljava/nio/ByteBuffer;I)V
    .locals 11
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "size"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 248
    .local v1, "i":I
    const/16 v0, 0x10

    .line 249
    .local v0, "bytes_in_line":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 250
    .local v2, "max":I
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    if-ge v1, v2, :cond_1

    .line 251
    const-string v4, "0x%s "

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    add-int/lit8 v4, v1, 0x1

    rem-int/2addr v4, v0

    if-nez v4, :cond_0

    .line 253
    const-string v4, "%03d-%03d: %s"

    new-array v5, v10, [Ljava/lang/Object;

    div-int v6, v1, v0

    mul-int/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 258
    const-string v4, "%03d-%03d: %s"

    new-array v5, v10, [Ljava/lang/Object;

    div-int v6, p2, v0

    mul-int/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    add-int/lit8 v6, v1, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_2
    return-void
.end method


# virtual methods
.method public addTrack(Landroid/media/MediaFormat;)I
    .locals 2
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 98
    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "video/avc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->flv:Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;

    invoke-virtual {v0, p1}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->setVideoTrack(Landroid/media/MediaFormat;)V

    .line 100
    const/16 v0, 0x64

    .line 103
    :goto_0
    return v0

    .line 102
    :cond_0
    iget-object v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->flv:Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;

    invoke-virtual {v0, p1}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->setAudioTrack(Landroid/media/MediaFormat;)V

    .line 103
    const/16 v0, 0x65

    goto :goto_0
.end method

.method public getVideoFrameCacheNumber()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->publisher:Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->publisher:Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;

    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;->getVideoFrameCacheNumber()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    goto :goto_0
.end method

.method public setVideoResolution(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->publisher:Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->publisher:Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;

    invoke-virtual {v0, p1, p2}, Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;->setVideoResolution(II)V

    .line 90
    :cond_0
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 2
    .param p1, "rtmpUrl"    # Ljava/lang/String;

    .prologue
    .line 152
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/ossrs/yasea/SrsFlvMuxer$1;

    invoke-direct {v1, p0, p1}, Lnet/ossrs/yasea/SrsFlvMuxer$1;-><init>(Lnet/ossrs/yasea/SrsFlvMuxer;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->worker:Ljava/lang/Thread;

    .line 190
    iget-object v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->worker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 191
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 197
    iget-object v1, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->worker:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->worker:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 200
    :try_start_0
    iget-object v1, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->worker:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    iget-object v1, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->frameCache:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 206
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->worker:Ljava/lang/Thread;

    .line 208
    :cond_0
    iget-object v1, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->flv:Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;

    invoke-virtual {v1}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->reset()V

    .line 209
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->needToFindKeyFrame:Z

    .line 210
    const-string v1, "SrsFlvMuxer"

    const-string v2, "SrsFlvMuxer closed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lnet/ossrs/yasea/SrsFlvMuxer$2;

    invoke-direct {v2, p0}, Lnet/ossrs/yasea/SrsFlvMuxer$2;-><init>(Lnet/ossrs/yasea/SrsFlvMuxer;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 217
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 218
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 203
    iget-object v1, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->worker:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 8
    .param p1, "trackIndex"    # I
    .param p2, "byteBuf"    # Ljava/nio/ByteBuffer;
    .param p3, "bufferInfo"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 227
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    if-lez v0, :cond_0

    .line 228
    const-string v0, "SrsFlvMuxer"

    const-string v1, "encoded frame %dB, offset=%d pts=%dms"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 229
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 228
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    const/16 v0, 0x64

    if-ne v0, p1, :cond_1

    .line 234
    iget-object v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->flv:Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;

    invoke-virtual {v0, p2, p3}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->writeVideoSample(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer;->flv:Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;

    invoke-virtual {v0, p2, p3}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->writeAudioSample(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_0
.end method
