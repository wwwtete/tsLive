.class public Lnet/ossrs/yasea/SrsMp4Muxer;
.super Ljava/lang/Object;
.source "SrsMp4Muxer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;,
        Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;,
        Lnet/ossrs/yasea/SrsMp4Muxer$Track;,
        Lnet/ossrs/yasea/SrsMp4Muxer$Sample;,
        Lnet/ossrs/yasea/SrsMp4Muxer$SrsRawH264Stream;,
        Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrame;,
        Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrameBytes;,
        Lnet/ossrs/yasea/SrsMp4Muxer$SrsAnnexbSearch;,
        Lnet/ossrs/yasea/SrsMp4Muxer$SrsAvcNaluType;
    }
.end annotation


# static fields
.field private static final AUDIO_TRACK:I = 0x65

.field private static final TAG:Ljava/lang/String; = "SrsMp4Muxer"

.field private static final VIDEO_TRACK:I = 0x64

.field private static samplingFrequencyIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aacSpecConfig:Z

.field private audioFormat:Landroid/media/MediaFormat;

.field private avc:Lnet/ossrs/yasea/SrsMp4Muxer$SrsRawH264Stream;

.field private volatile bPaused:Z

.field private volatile bRecording:Z

.field private fc:Ljava/nio/channels/FileChannel;

.field private volatile flushBytes:J

.field private fos:Ljava/io/FileOutputStream;

.field private frameCache:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrame;",
            ">;"
        }
    .end annotation
.end field

.field private h264_pps:Ljava/nio/ByteBuffer;

.field private h264_sps:Ljava/nio/ByteBuffer;

.field private mHandler:Lnet/ossrs/yasea/SrsRecordHandler;

.field private mRecFile:Ljava/io/File;

.field private mdat:Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;

.field private volatile mdatOffset:J

.field private mp4Movie:Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;

.field private volatile needToFindKeyFrame:Z

.field private ppsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private volatile recFileSize:J

.field private spsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private track2SampleSizes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lnet/ossrs/yasea/SrsMp4Muxer$Track;",
            "[J>;"
        }
    .end annotation
.end field

.field private videoFormat:Landroid/media/MediaFormat;

.field private worker:Ljava/lang/Thread;

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/ossrs/yasea/SrsMp4Muxer;->samplingFrequencyIndexMap:Ljava/util/Map;

    .line 94
    sget-object v0, Lnet/ossrs/yasea/SrsMp4Muxer;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v1, 0x17700

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lnet/ossrs/yasea/SrsMp4Muxer;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v1, 0x15888

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lnet/ossrs/yasea/SrsMp4Muxer;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v1, 0xfa00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lnet/ossrs/yasea/SrsMp4Muxer;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v1, 0xbb80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lnet/ossrs/yasea/SrsMp4Muxer;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v1, 0xac44

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lnet/ossrs/yasea/SrsMp4Muxer;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x7d00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lnet/ossrs/yasea/SrsMp4Muxer;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x5dc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lnet/ossrs/yasea/SrsMp4Muxer;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x5622

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lnet/ossrs/yasea/SrsMp4Muxer;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x3e80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lnet/ossrs/yasea/SrsMp4Muxer;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x2ee0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lnet/ossrs/yasea/SrsMp4Muxer;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x2b11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lnet/ossrs/yasea/SrsMp4Muxer;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x1f40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public constructor <init>(Lnet/ossrs/yasea/SrsRecordHandler;)V
    .locals 6
    .param p1, "handler"    # Lnet/ossrs/yasea/SrsRecordHandler;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->videoFormat:Landroid/media/MediaFormat;

    .line 73
    iput-object v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->audioFormat:Landroid/media/MediaFormat;

    .line 75
    new-instance v0, Lnet/ossrs/yasea/SrsMp4Muxer$SrsRawH264Stream;

    invoke-direct {v0, p0, v1}, Lnet/ossrs/yasea/SrsMp4Muxer$SrsRawH264Stream;-><init>(Lnet/ossrs/yasea/SrsMp4Muxer;Lnet/ossrs/yasea/SrsMp4Muxer$1;)V

    iput-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->avc:Lnet/ossrs/yasea/SrsMp4Muxer$SrsRawH264Stream;

    .line 76
    new-instance v0, Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;

    invoke-direct {v0, p0, v1}, Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;-><init>(Lnet/ossrs/yasea/SrsMp4Muxer;Lnet/ossrs/yasea/SrsMp4Muxer$1;)V

    iput-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->mp4Movie:Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;

    .line 78
    iput-boolean v2, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->aacSpecConfig:Z

    .line 79
    iput-object v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->h264_sps:Ljava/nio/ByteBuffer;

    .line 80
    iput-object v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->h264_pps:Ljava/nio/ByteBuffer;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->spsList:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->ppsList:Ljava/util/ArrayList;

    .line 85
    iput-boolean v2, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->bRecording:Z

    .line 86
    iput-boolean v2, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->bPaused:Z

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->needToFindKeyFrame:Z

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->writeLock:Ljava/lang/Object;

    .line 89
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->frameCache:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 761
    iput-object v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->mdat:Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;

    .line 762
    iput-object v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->fos:Ljava/io/FileOutputStream;

    .line 763
    iput-object v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->fc:Ljava/nio/channels/FileChannel;

    .line 764
    iput-wide v4, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->recFileSize:J

    .line 765
    iput-wide v4, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->mdatOffset:J

    .line 766
    iput-wide v4, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->flushBytes:J

    .line 767
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->track2SampleSizes:Ljava/util/HashMap;

    .line 109
    iput-object p1, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->mHandler:Lnet/ossrs/yasea/SrsRecordHandler;

    .line 110
    return-void
.end method

.method static synthetic access$1000(Lnet/ossrs/yasea/SrsMp4Muxer;)Lnet/ossrs/yasea/SrsRecordHandler;
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsMp4Muxer;

    .prologue
    .line 63
    iget-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->mHandler:Lnet/ossrs/yasea/SrsRecordHandler;

    return-object v0
.end method

.method static synthetic access$1100(Lnet/ossrs/yasea/SrsMp4Muxer;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsMp4Muxer;

    .prologue
    .line 63
    iget-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->h264_sps:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$1200(Lnet/ossrs/yasea/SrsMp4Muxer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsMp4Muxer;

    .prologue
    .line 63
    iget-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->spsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lnet/ossrs/yasea/SrsMp4Muxer;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsMp4Muxer;

    .prologue
    .line 63
    iget-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->ppsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/util/Map;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lnet/ossrs/yasea/SrsMp4Muxer;->samplingFrequencyIndexMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lnet/ossrs/yasea/SrsMp4Muxer;)Z
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsMp4Muxer;

    .prologue
    .line 63
    iget-boolean v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->bRecording:Z

    return v0
.end method

.method static synthetic access$202(Lnet/ossrs/yasea/SrsMp4Muxer;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsMp4Muxer;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->bRecording:Z

    return p1
.end method

.method static synthetic access$300(Lnet/ossrs/yasea/SrsMp4Muxer;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsMp4Muxer;

    .prologue
    .line 63
    iget-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->frameCache:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic access$400(Lnet/ossrs/yasea/SrsMp4Muxer;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)V
    .locals 0
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsMp4Muxer;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;
    .param p2, "x2"    # Landroid/media/MediaCodec$BufferInfo;
    .param p3, "x3"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lnet/ossrs/yasea/SrsMp4Muxer;->writeSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)V

    return-void
.end method

.method static synthetic access$500(Lnet/ossrs/yasea/SrsMp4Muxer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsMp4Muxer;

    .prologue
    .line 63
    iget-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->writeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lnet/ossrs/yasea/SrsMp4Muxer;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsMp4Muxer;

    .prologue
    .line 63
    iget-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->worker:Ljava/lang/Thread;

    return-object v0
.end method

.method private createFileTypeBox()Lcom/coremedia/iso/boxes/FileTypeBox;
    .locals 6

    .prologue
    .line 866
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 867
    .local v0, "minorBrands":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const-string v1, "isom"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 868
    const-string v1, "3gp4"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 869
    new-instance v1, Lcom/coremedia/iso/boxes/FileTypeBox;

    const-string v2, "isom"

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v4, v5, v0}, Lcom/coremedia/iso/boxes/FileTypeBox;-><init>(Ljava/lang/String;JLjava/util/List;)V

    return-object v1
.end method

.method private createMovie(Ljava/io/File;)V
    .locals 6
    .param p1, "outputFile"    # Ljava/io/File;

    .prologue
    .line 771
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->fos:Ljava/io/FileOutputStream;

    .line 772
    iget-object v2, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    iput-object v2, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->fc:Ljava/nio/channels/FileChannel;

    .line 773
    new-instance v2, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;-><init>(Lnet/ossrs/yasea/SrsMp4Muxer;Lnet/ossrs/yasea/SrsMp4Muxer$1;)V

    iput-object v2, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->mdat:Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;

    .line 774
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->mdatOffset:J

    .line 776
    invoke-direct {p0}, Lnet/ossrs/yasea/SrsMp4Muxer;->createFileTypeBox()Lcom/coremedia/iso/boxes/FileTypeBox;

    move-result-object v1

    .line 777
    .local v1, "fileTypeBox":Lcom/coremedia/iso/boxes/FileTypeBox;
    iget-object v2, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/FileTypeBox;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 778
    iget-wide v2, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->recFileSize:J

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/FileTypeBox;->getSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->recFileSize:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    .end local v1    # "fileTypeBox":Lcom/coremedia/iso/boxes/FileTypeBox;
    :goto_0
    return-void

    .line 779
    :catch_0
    move-exception v0

    .line 780
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 781
    iget-object v2, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->mHandler:Lnet/ossrs/yasea/SrsRecordHandler;

    invoke-virtual {v2, v0}, Lnet/ossrs/yasea/SrsRecordHandler;->notifyRecordIOException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method private createMovieBox(Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;)Lcom/coremedia/iso/boxes/MovieBox;
    .locals 14
    .param p1, "movie"    # Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;

    .prologue
    .line 884
    new-instance v2, Lcom/coremedia/iso/boxes/MovieBox;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/MovieBox;-><init>()V

    .line 885
    .local v2, "movieBox":Lcom/coremedia/iso/boxes/MovieBox;
    new-instance v3, Lcom/coremedia/iso/boxes/MovieHeaderBox;

    invoke-direct {v3}, Lcom/coremedia/iso/boxes/MovieHeaderBox;-><init>()V

    .line 887
    .local v3, "mvhd":Lcom/coremedia/iso/boxes/MovieHeaderBox;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v7}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setCreationTime(Ljava/util/Date;)V

    .line 888
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v7}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setModificationTime(Ljava/util/Date;)V

    .line 889
    sget-object v7, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_0:Lcom/googlecode/mp4parser/util/Matrix;

    invoke-virtual {v3, v7}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setMatrix(Lcom/googlecode/mp4parser/util/Matrix;)V

    .line 890
    invoke-direct {p0, p1}, Lnet/ossrs/yasea/SrsMp4Muxer;->getTimescale(Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;)J

    move-result-wide v4

    .line 891
    .local v4, "movieTimeScale":J
    const-wide/16 v0, 0x0

    .line 893
    .local v0, "duration":J
    invoke-virtual {p1}, Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;->getTracks()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/ossrs/yasea/SrsMp4Muxer$Track;

    .line 894
    .local v6, "track":Lnet/ossrs/yasea/SrsMp4Muxer$Track;
    invoke-virtual {v6}, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->getDuration()J

    move-result-wide v10

    mul-long/2addr v10, v4

    invoke-virtual {v6}, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->getTimeScale()I

    move-result v12

    int-to-long v12, v12

    div-long v8, v10, v12

    .line 895
    .local v8, "tracksDuration":J
    cmp-long v10, v8, v0

    if-lez v10, :cond_0

    .line 896
    move-wide v0, v8

    goto :goto_0

    .line 900
    .end local v6    # "track":Lnet/ossrs/yasea/SrsMp4Muxer$Track;
    .end local v8    # "tracksDuration":J
    :cond_1
    invoke-virtual {v3, v0, v1}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setDuration(J)V

    .line 901
    invoke-virtual {v3, v4, v5}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setTimescale(J)V

    .line 902
    invoke-virtual {p1}, Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;->getTracks()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    int-to-long v10, v7

    invoke-virtual {v3, v10, v11}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setNextTrackId(J)V

    .line 904
    invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/MovieBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 905
    invoke-virtual {p1}, Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;->getTracks()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/ossrs/yasea/SrsMp4Muxer$Track;

    .line 906
    .restart local v6    # "track":Lnet/ossrs/yasea/SrsMp4Muxer$Track;
    invoke-direct {p0, v6, p1}, Lnet/ossrs/yasea/SrsMp4Muxer;->createTrackBox(Lnet/ossrs/yasea/SrsMp4Muxer$Track;Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;)Lcom/coremedia/iso/boxes/TrackBox;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/coremedia/iso/boxes/MovieBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_1

    .line 908
    .end local v6    # "track":Lnet/ossrs/yasea/SrsMp4Muxer$Track;
    :cond_2
    return-object v2
.end method

.method private createStbl(Lnet/ossrs/yasea/SrsMp4Muxer$Track;)Lcom/coremedia/iso/boxes/Box;
    .locals 1
    .param p1, "track"    # Lnet/ossrs/yasea/SrsMp4Muxer$Track;

    .prologue
    .line 970
    new-instance v0, Lcom/coremedia/iso/boxes/SampleTableBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SampleTableBox;-><init>()V

    .line 971
    .local v0, "stbl":Lcom/coremedia/iso/boxes/SampleTableBox;
    invoke-direct {p0, p1, v0}, Lnet/ossrs/yasea/SrsMp4Muxer;->createStsd(Lnet/ossrs/yasea/SrsMp4Muxer$Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    .line 972
    invoke-direct {p0, p1, v0}, Lnet/ossrs/yasea/SrsMp4Muxer;->createStts(Lnet/ossrs/yasea/SrsMp4Muxer$Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    .line 973
    invoke-direct {p0, p1, v0}, Lnet/ossrs/yasea/SrsMp4Muxer;->createStss(Lnet/ossrs/yasea/SrsMp4Muxer$Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    .line 974
    invoke-direct {p0, p1, v0}, Lnet/ossrs/yasea/SrsMp4Muxer;->createStsc(Lnet/ossrs/yasea/SrsMp4Muxer$Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    .line 975
    invoke-direct {p0, p1, v0}, Lnet/ossrs/yasea/SrsMp4Muxer;->createStsz(Lnet/ossrs/yasea/SrsMp4Muxer$Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    .line 976
    invoke-direct {p0, p1, v0}, Lnet/ossrs/yasea/SrsMp4Muxer;->createStco(Lnet/ossrs/yasea/SrsMp4Muxer$Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    .line 977
    return-object v0
.end method

.method private createStco(Lnet/ossrs/yasea/SrsMp4Muxer$Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 12
    .param p1, "track"    # Lnet/ossrs/yasea/SrsMp4Muxer$Track;
    .param p2, "stbl"    # Lcom/coremedia/iso/boxes/SampleTableBox;

    .prologue
    .line 1057
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1058
    .local v2, "chunksOffsets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-wide/16 v4, -0x1

    .line 1059
    .local v4, "lastOffset":J
    invoke-virtual {p1}, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->getSamples()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/ossrs/yasea/SrsMp4Muxer$Sample;

    .line 1060
    .local v3, "sample":Lnet/ossrs/yasea/SrsMp4Muxer$Sample;
    invoke-virtual {v3}, Lnet/ossrs/yasea/SrsMp4Muxer$Sample;->getOffset()J

    move-result-wide v6

    .line 1061
    .local v6, "offset":J
    const-wide/16 v10, -0x1

    cmp-long v10, v4, v10

    if-eqz v10, :cond_0

    cmp-long v10, v4, v6

    if-eqz v10, :cond_0

    .line 1062
    const-wide/16 v4, -0x1

    .line 1064
    :cond_0
    const-wide/16 v10, -0x1

    cmp-long v10, v4, v10

    if-nez v10, :cond_1

    .line 1065
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1067
    :cond_1
    invoke-virtual {v3}, Lnet/ossrs/yasea/SrsMp4Muxer$Sample;->getSize()J

    move-result-wide v10

    add-long v4, v6, v10

    .line 1068
    goto :goto_0

    .line 1069
    .end local v3    # "sample":Lnet/ossrs/yasea/SrsMp4Muxer$Sample;
    .end local v6    # "offset":J
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v1, v9, [J

    .line 1070
    .local v1, "chunkOffsetsLong":[J
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_3

    .line 1071
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    aput-wide v10, v1, v0

    .line 1070
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1074
    :cond_3
    new-instance v8, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;

    invoke-direct {v8}, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;-><init>()V

    .line 1075
    .local v8, "stco":Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;
    invoke-virtual {v8, v1}, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;->setChunkOffsets([J)V

    .line 1076
    invoke-virtual {p2, v8}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 1077
    return-void
.end method

.method private createStsc(Lnet/ossrs/yasea/SrsMp4Muxer$Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 25
    .param p1, "track"    # Lnet/ossrs/yasea/SrsMp4Muxer$Track;
    .param p2, "stbl"    # Lcom/coremedia/iso/boxes/SampleTableBox;

    .prologue
    .line 1011
    new-instance v22, Lcom/coremedia/iso/boxes/SampleToChunkBox;

    invoke-direct/range {v22 .. v22}, Lcom/coremedia/iso/boxes/SampleToChunkBox;-><init>()V

    .line 1012
    .local v22, "stsc":Lcom/coremedia/iso/boxes/SampleToChunkBox;
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/SampleToChunkBox;->setEntries(Ljava/util/List;)V

    .line 1015
    const/4 v10, 0x1

    .line 1016
    .local v10, "lastChunkNumber":I
    const/4 v11, 0x0

    .line 1018
    .local v11, "lastSampleCount":I
    const/4 v15, -0x1

    .line 1020
    .local v15, "previousWritedChunkCount":I
    invoke-virtual/range {p1 .. p1}, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->getSamples()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 1021
    .local v19, "samplesCount":I
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_0
    move/from16 v0, v19

    if-ge v2, v0, :cond_4

    .line 1022
    invoke-virtual/range {p1 .. p1}, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->getSamples()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lnet/ossrs/yasea/SrsMp4Muxer$Sample;

    .line 1023
    .local v18, "sample":Lnet/ossrs/yasea/SrsMp4Muxer$Sample;
    invoke-virtual/range {v18 .. v18}, Lnet/ossrs/yasea/SrsMp4Muxer$Sample;->getOffset()J

    move-result-wide v16

    .line 1024
    .local v16, "offset":J
    invoke-virtual/range {v18 .. v18}, Lnet/ossrs/yasea/SrsMp4Muxer$Sample;->getSize()J

    move-result-wide v20

    .line 1026
    .local v20, "size":J
    add-long v12, v16, v20

    .line 1027
    .local v12, "lastOffset":J
    add-int/lit8 v11, v11, 0x1

    .line 1029
    const/16 v23, 0x0

    .line 1030
    .local v23, "write":Z
    add-int/lit8 v3, v19, -0x1

    if-eq v2, v3, :cond_3

    .line 1031
    invoke-virtual/range {p1 .. p1}, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->getSamples()Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lnet/ossrs/yasea/SrsMp4Muxer$Sample;

    .line 1032
    .local v14, "nextSample":Lnet/ossrs/yasea/SrsMp4Muxer$Sample;
    invoke-virtual {v14}, Lnet/ossrs/yasea/SrsMp4Muxer$Sample;->getOffset()J

    move-result-wide v4

    cmp-long v3, v12, v4

    if-eqz v3, :cond_0

    .line 1033
    const/16 v23, 0x1

    .line 1038
    .end local v14    # "nextSample":Lnet/ossrs/yasea/SrsMp4Muxer$Sample;
    :cond_0
    :goto_1
    if-eqz v23, :cond_2

    .line 1039
    if-eq v15, v11, :cond_1

    .line 1040
    invoke-virtual/range {v22 .. v22}, Lcom/coremedia/iso/boxes/SampleToChunkBox;->getEntries()Ljava/util/List;

    move-result-object v24

    new-instance v3, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;

    int-to-long v4, v10

    int-to-long v6, v11

    const-wide/16 v8, 0x1

    invoke-direct/range {v3 .. v9}, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;-><init>(JJJ)V

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1041
    move v15, v11

    .line 1043
    :cond_1
    const/4 v11, 0x0

    .line 1044
    add-int/lit8 v10, v10, 0x1

    .line 1021
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1036
    :cond_3
    const/16 v23, 0x1

    goto :goto_1

    .line 1047
    .end local v12    # "lastOffset":J
    .end local v16    # "offset":J
    .end local v18    # "sample":Lnet/ossrs/yasea/SrsMp4Muxer$Sample;
    .end local v20    # "size":J
    .end local v23    # "write":Z
    :cond_4
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 1048
    return-void
.end method

.method private createStsd(Lnet/ossrs/yasea/SrsMp4Muxer$Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 1
    .param p1, "track"    # Lnet/ossrs/yasea/SrsMp4Muxer$Track;
    .param p2, "stbl"    # Lcom/coremedia/iso/boxes/SampleTableBox;

    .prologue
    .line 981
    invoke-virtual {p1}, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 982
    return-void
.end method

.method private createStss(Lnet/ossrs/yasea/SrsMp4Muxer$Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 3
    .param p1, "track"    # Lnet/ossrs/yasea/SrsMp4Muxer$Track;
    .param p2, "stbl"    # Lcom/coremedia/iso/boxes/SampleTableBox;

    .prologue
    .line 1002
    invoke-virtual {p1}, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->getSyncSamples()[J

    move-result-object v1

    .line 1003
    .local v1, "syncSamples":[J
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 1004
    new-instance v0, Lcom/coremedia/iso/boxes/SyncSampleBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SyncSampleBox;-><init>()V

    .line 1005
    .local v0, "stss":Lcom/coremedia/iso/boxes/SyncSampleBox;
    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SyncSampleBox;->setSampleNumber([J)V

    .line 1006
    invoke-virtual {p2, v0}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 1008
    .end local v0    # "stss":Lcom/coremedia/iso/boxes/SyncSampleBox;
    :cond_0
    return-void
.end method

.method private createStsz(Lnet/ossrs/yasea/SrsMp4Muxer$Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 2
    .param p1, "track"    # Lnet/ossrs/yasea/SrsMp4Muxer$Track;
    .param p2, "stbl"    # Lcom/coremedia/iso/boxes/SampleTableBox;

    .prologue
    .line 1051
    new-instance v0, Lcom/coremedia/iso/boxes/SampleSizeBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SampleSizeBox;-><init>()V

    .line 1052
    .local v0, "stsz":Lcom/coremedia/iso/boxes/SampleSizeBox;
    iget-object v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->track2SampleSizes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleSizeBox;->setSampleSizes([J)V

    .line 1053
    invoke-virtual {p2, v0}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 1054
    return-void
.end method

.method private createStts(Lnet/ossrs/yasea/SrsMp4Muxer$Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 12
    .param p1, "track"    # Lnet/ossrs/yasea/SrsMp4Muxer$Track;
    .param p2, "stbl"    # Lcom/coremedia/iso/boxes/SampleTableBox;

    .prologue
    const-wide/16 v10, 0x1

    .line 985
    const/4 v3, 0x0

    .line 986
    .local v3, "lastEntry":Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 988
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;>;"
    invoke-virtual {p1}, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->getSampleDurations()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 989
    .local v0, "delta":J
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v8

    cmp-long v5, v8, v0

    if-nez v5, :cond_0

    .line 990
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v8

    add-long/2addr v8, v10

    invoke-virtual {v3, v8, v9}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->setCount(J)V

    goto :goto_0

    .line 992
    :cond_0
    new-instance v3, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .end local v3    # "lastEntry":Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    invoke-direct {v3, v10, v11, v0, v1}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    .line 993
    .restart local v3    # "lastEntry":Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 996
    .end local v0    # "delta":J
    :cond_1
    new-instance v4, Lcom/coremedia/iso/boxes/TimeToSampleBox;

    invoke-direct {v4}, Lcom/coremedia/iso/boxes/TimeToSampleBox;-><init>()V

    .line 997
    .local v4, "stts":Lcom/coremedia/iso/boxes/TimeToSampleBox;
    invoke-virtual {v4, v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox;->setEntries(Ljava/util/List;)V

    .line 998
    invoke-virtual {p2, v4}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 999
    return-void
.end method

.method private createTrackBox(Lnet/ossrs/yasea/SrsMp4Muxer$Track;Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;)Lcom/coremedia/iso/boxes/TrackBox;
    .locals 16
    .param p1, "track"    # Lnet/ossrs/yasea/SrsMp4Muxer$Track;
    .param p2, "movie"    # Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;

    .prologue
    .line 912
    new-instance v10, Lcom/coremedia/iso/boxes/TrackBox;

    invoke-direct {v10}, Lcom/coremedia/iso/boxes/TrackBox;-><init>()V

    .line 913
    .local v10, "trackBox":Lcom/coremedia/iso/boxes/TrackBox;
    new-instance v9, Lcom/coremedia/iso/boxes/TrackHeaderBox;

    invoke-direct {v9}, Lcom/coremedia/iso/boxes/TrackHeaderBox;-><init>()V

    .line 915
    .local v9, "tkhd":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setEnabled(Z)V

    .line 916
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setInMovie(Z)V

    .line 917
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setInPreview(Z)V

    .line 918
    invoke-virtual/range {p1 .. p1}, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->isAudio()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 919
    sget-object v12, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_0:Lcom/googlecode/mp4parser/util/Matrix;

    invoke-virtual {v9, v12}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setMatrix(Lcom/googlecode/mp4parser/util/Matrix;)V

    .line 923
    :goto_0
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setAlternateGroup(I)V

    .line 924
    invoke-virtual/range {p1 .. p1}, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->getCreationTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setCreationTime(Ljava/util/Date;)V

    .line 925
    invoke-virtual/range {p1 .. p1}, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->getCreationTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setModificationTime(Ljava/util/Date;)V

    .line 926
    invoke-virtual/range {p1 .. p1}, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->getDuration()J

    move-result-wide v12

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lnet/ossrs/yasea/SrsMp4Muxer;->getTimescale(Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;)J

    move-result-wide v14

    mul-long/2addr v12, v14

    invoke-virtual/range {p1 .. p1}, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->getTimeScale()I

    move-result v14

    int-to-long v14, v14

    div-long/2addr v12, v14

    invoke-virtual {v9, v12, v13}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setDuration(J)V

    .line 927
    invoke-virtual/range {p1 .. p1}, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->getHeight()I

    move-result v12

    int-to-double v12, v12

    invoke-virtual {v9, v12, v13}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setHeight(D)V

    .line 928
    invoke-virtual/range {p1 .. p1}, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->getWidth()I

    move-result v12

    int-to-double v12, v12

    invoke-virtual {v9, v12, v13}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setWidth(D)V

    .line 929
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setLayer(I)V

    .line 930
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9, v12}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setModificationTime(Ljava/util/Date;)V

    .line 931
    invoke-virtual/range {p1 .. p1}, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->getTrackId()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    int-to-long v12, v12

    invoke-virtual {v9, v12, v13}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setTrackId(J)V

    .line 932
    invoke-virtual/range {p1 .. p1}, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->getVolume()F

    move-result v12

    invoke-virtual {v9, v12}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setVolume(F)V

    .line 934
    invoke-virtual {v10, v9}, Lcom/coremedia/iso/boxes/TrackBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 936
    new-instance v6, Lcom/coremedia/iso/boxes/MediaBox;

    invoke-direct {v6}, Lcom/coremedia/iso/boxes/MediaBox;-><init>()V

    .line 937
    .local v6, "mdia":Lcom/coremedia/iso/boxes/MediaBox;
    invoke-virtual {v10, v6}, Lcom/coremedia/iso/boxes/TrackBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 938
    new-instance v5, Lcom/coremedia/iso/boxes/MediaHeaderBox;

    invoke-direct {v5}, Lcom/coremedia/iso/boxes/MediaHeaderBox;-><init>()V

    .line 939
    .local v5, "mdhd":Lcom/coremedia/iso/boxes/MediaHeaderBox;
    invoke-virtual/range {p1 .. p1}, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->getCreationTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setCreationTime(Ljava/util/Date;)V

    .line 940
    invoke-virtual/range {p1 .. p1}, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->getCreationTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setModificationTime(Ljava/util/Date;)V

    .line 941
    invoke-virtual/range {p1 .. p1}, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->getDuration()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setDuration(J)V

    .line 942
    invoke-virtual/range {p1 .. p1}, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->getTimeScale()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v5, v12, v13}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setTimescale(J)V

    .line 943
    const-string v12, "eng"

    invoke-virtual {v5, v12}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setLanguage(Ljava/lang/String;)V

    .line 944
    invoke-virtual {v6, v5}, Lcom/coremedia/iso/boxes/MediaBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 945
    new-instance v4, Lcom/coremedia/iso/boxes/HandlerBox;

    invoke-direct {v4}, Lcom/coremedia/iso/boxes/HandlerBox;-><init>()V

    .line 946
    .local v4, "hdlr":Lcom/coremedia/iso/boxes/HandlerBox;
    invoke-virtual/range {p1 .. p1}, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->isAudio()Z

    move-result v12

    if-eqz v12, :cond_1

    const-string v12, "SoundHandle"

    :goto_1
    invoke-virtual {v4, v12}, Lcom/coremedia/iso/boxes/HandlerBox;->setName(Ljava/lang/String;)V

    .line 947
    invoke-virtual/range {p1 .. p1}, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->getHandler()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/coremedia/iso/boxes/HandlerBox;->setHandlerType(Ljava/lang/String;)V

    .line 949
    invoke-virtual {v6, v4}, Lcom/coremedia/iso/boxes/MediaBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 951
    new-instance v7, Lcom/coremedia/iso/boxes/MediaInformationBox;

    invoke-direct {v7}, Lcom/coremedia/iso/boxes/MediaInformationBox;-><init>()V

    .line 952
    .local v7, "minf":Lcom/coremedia/iso/boxes/MediaInformationBox;
    invoke-virtual/range {p1 .. p1}, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 954
    new-instance v2, Lcom/coremedia/iso/boxes/DataInformationBox;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/DataInformationBox;-><init>()V

    .line 955
    .local v2, "dinf":Lcom/coremedia/iso/boxes/DataInformationBox;
    new-instance v3, Lcom/coremedia/iso/boxes/DataReferenceBox;

    invoke-direct {v3}, Lcom/coremedia/iso/boxes/DataReferenceBox;-><init>()V

    .line 956
    .local v3, "dref":Lcom/coremedia/iso/boxes/DataReferenceBox;
    invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/DataInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 957
    new-instance v11, Lcom/coremedia/iso/boxes/DataEntryUrlBox;

    invoke-direct {v11}, Lcom/coremedia/iso/boxes/DataEntryUrlBox;-><init>()V

    .line 958
    .local v11, "url":Lcom/coremedia/iso/boxes/DataEntryUrlBox;
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/coremedia/iso/boxes/DataEntryUrlBox;->setFlags(I)V

    .line 959
    invoke-virtual {v3, v11}, Lcom/coremedia/iso/boxes/DataReferenceBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 960
    invoke-virtual {v7, v2}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 962
    invoke-direct/range {p0 .. p1}, Lnet/ossrs/yasea/SrsMp4Muxer;->createStbl(Lnet/ossrs/yasea/SrsMp4Muxer$Track;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v8

    .line 963
    .local v8, "stbl":Lcom/coremedia/iso/boxes/Box;
    invoke-virtual {v7, v8}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 964
    invoke-virtual {v6, v7}, Lcom/coremedia/iso/boxes/MediaBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 966
    return-object v10

    .line 921
    .end local v2    # "dinf":Lcom/coremedia/iso/boxes/DataInformationBox;
    .end local v3    # "dref":Lcom/coremedia/iso/boxes/DataReferenceBox;
    .end local v4    # "hdlr":Lcom/coremedia/iso/boxes/HandlerBox;
    .end local v5    # "mdhd":Lcom/coremedia/iso/boxes/MediaHeaderBox;
    .end local v6    # "mdia":Lcom/coremedia/iso/boxes/MediaBox;
    .end local v7    # "minf":Lcom/coremedia/iso/boxes/MediaInformationBox;
    .end local v8    # "stbl":Lcom/coremedia/iso/boxes/Box;
    .end local v11    # "url":Lcom/coremedia/iso/boxes/DataEntryUrlBox;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;->getMatrix()Lcom/googlecode/mp4parser/util/Matrix;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setMatrix(Lcom/googlecode/mp4parser/util/Matrix;)V

    goto/16 :goto_0

    .line 946
    .restart local v4    # "hdlr":Lcom/coremedia/iso/boxes/HandlerBox;
    .restart local v5    # "mdhd":Lcom/coremedia/iso/boxes/MediaHeaderBox;
    .restart local v6    # "mdia":Lcom/coremedia/iso/boxes/MediaBox;
    :cond_1
    const-string v12, "VideoHandle"

    goto :goto_1
.end method

.method private finishMovie()V
    .locals 14

    .prologue
    const-wide/16 v10, 0x0

    .line 826
    :try_start_0
    iget-wide v8, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->flushBytes:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 827
    iget-object v8, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 828
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->flushBytes:J

    .line 830
    :cond_0
    iget-object v8, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->mdat:Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;

    invoke-virtual {v8}, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;->getSize()J

    move-result-wide v8

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    .line 832
    iget-object v8, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    .line 833
    .local v4, "oldPosition":J
    iget-object v8, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->fc:Ljava/nio/channels/FileChannel;

    iget-wide v10, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->mdatOffset:J

    invoke-virtual {v8, v10, v11}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 834
    iget-object v8, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->mdat:Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;

    iget-wide v10, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->recFileSize:J

    iget-object v9, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->mdat:Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;

    invoke-virtual {v9}, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;->getHeaderSize()I

    move-result v9

    int-to-long v12, v9

    sub-long/2addr v10, v12

    iget-wide v12, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->mdatOffset:J

    sub-long/2addr v10, v12

    invoke-virtual {v8, v10, v11}, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;->setContentSize(J)V

    .line 835
    iget-object v8, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->mdat:Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;

    iget-object v9, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v8, v9}, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 836
    iget-object v8, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v8, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 837
    iget-object v8, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->mdat:Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v10, v11}, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;->setContentSize(J)V

    .line 838
    iget-object v8, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 841
    .end local v4    # "oldPosition":J
    :cond_1
    iget-object v8, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->mp4Movie:Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;

    invoke-virtual {v8}, Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;->getTracks()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/ossrs/yasea/SrsMp4Muxer$Track;

    .line 842
    .local v7, "track":Lnet/ossrs/yasea/SrsMp4Muxer$Track;
    invoke-virtual {v7}, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->getSamples()Ljava/util/ArrayList;

    move-result-object v3

    .line 843
    .local v3, "samples":Ljava/util/List;, "Ljava/util/List<Lnet/ossrs/yasea/SrsMp4Muxer$Sample;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    new-array v6, v8, [J

    .line 844
    .local v6, "sizes":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v8, v6

    if-ge v1, v8, :cond_2

    .line 845
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/ossrs/yasea/SrsMp4Muxer$Sample;

    invoke-virtual {v8}, Lnet/ossrs/yasea/SrsMp4Muxer$Sample;->getSize()J

    move-result-wide v10

    aput-wide v10, v6, v1

    .line 844
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 847
    :cond_2
    iget-object v8, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->track2SampleSizes:Ljava/util/HashMap;

    invoke-virtual {v8, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 860
    .end local v1    # "i":I
    .end local v3    # "samples":Ljava/util/List;, "Ljava/util/List<Lnet/ossrs/yasea/SrsMp4Muxer$Sample;>;"
    .end local v6    # "sizes":[J
    .end local v7    # "track":Lnet/ossrs/yasea/SrsMp4Muxer$Track;
    :catch_0
    move-exception v0

    .line 861
    .local v0, "e":Ljava/io/IOException;
    iget-object v8, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->mHandler:Lnet/ossrs/yasea/SrsRecordHandler;

    invoke-virtual {v8, v0}, Lnet/ossrs/yasea/SrsRecordHandler;->notifyRecordIOException(Ljava/io/IOException;)V

    .line 863
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 850
    :cond_3
    :try_start_1
    iget-object v8, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->mp4Movie:Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;

    invoke-direct {p0, v8}, Lnet/ossrs/yasea/SrsMp4Muxer;->createMovieBox(Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;)Lcom/coremedia/iso/boxes/MovieBox;

    move-result-object v2

    .line 851
    .local v2, "moov":Lcom/coremedia/iso/boxes/Box;
    iget-object v8, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->fc:Ljava/nio/channels/FileChannel;

    invoke-interface {v2, v8}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 852
    iget-object v8, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 854
    iget-object v8, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    .line 855
    iget-object v8, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 856
    iget-object v8, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->mp4Movie:Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;

    invoke-virtual {v8}, Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;->getTracks()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 857
    iget-object v8, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->track2SampleSizes:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 858
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->recFileSize:J

    .line 859
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->flushBytes:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private getTimescale(Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;)J
    .locals 6
    .param p1, "mp4Movie"    # Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;

    .prologue
    .line 873
    const-wide/16 v0, 0x0

    .line 874
    .local v0, "timescale":J
    invoke-virtual {p1}, Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;->getTracks()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 875
    invoke-virtual {p1}, Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;->getTracks()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/ossrs/yasea/SrsMp4Muxer$Track;

    invoke-virtual {v3}, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->getTimeScale()I

    move-result v3

    int-to-long v0, v3

    .line 877
    :cond_0
    invoke-virtual {p1}, Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;->getTracks()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/ossrs/yasea/SrsMp4Muxer$Track;

    .line 878
    .local v2, "track":Lnet/ossrs/yasea/SrsMp4Muxer$Track;
    invoke-virtual {v2}, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->getTimeScale()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5, v0, v1}, Lcom/googlecode/mp4parser/util/Math;->gcd(JJ)J

    move-result-wide v0

    .line 879
    goto :goto_0

    .line 880
    .end local v2    # "track":Lnet/ossrs/yasea/SrsMp4Muxer$Track;
    :cond_1
    return-wide v0
.end method

.method private writeAudioSample(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "bi"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 306
    iget-boolean v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->aacSpecConfig:Z

    if-nez v0, :cond_0

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->aacSpecConfig:Z

    .line 311
    :goto_0
    return-void

    .line 309
    :cond_0
    const/16 v0, 0x65

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lnet/ossrs/yasea/SrsMp4Muxer;->writeFrameByte(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)V

    goto :goto_0
.end method

.method private writeFrameByte(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)V
    .locals 3
    .param p1, "track"    # I
    .param p2, "bb"    # Ljava/nio/ByteBuffer;
    .param p3, "bi"    # Landroid/media/MediaCodec$BufferInfo;
    .param p4, "isKeyFrame"    # Z

    .prologue
    .line 314
    new-instance v0, Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrame;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrame;-><init>(Lnet/ossrs/yasea/SrsMp4Muxer;Lnet/ossrs/yasea/SrsMp4Muxer$1;)V

    .line 315
    .local v0, "frame":Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrame;
    iput-object p2, v0, Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrame;->bb:Ljava/nio/ByteBuffer;

    .line 316
    iput-object p3, v0, Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrame;->bi:Landroid/media/MediaCodec$BufferInfo;

    .line 317
    iput-boolean p4, v0, Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrame;->isKeyFrame:Z

    .line 318
    iput p1, v0, Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrame;->track:I

    .line 320
    iget-boolean v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->bRecording:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->bPaused:Z

    if-nez v1, :cond_0

    .line 321
    iget-boolean v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->needToFindKeyFrame:Z

    if-eqz v1, :cond_1

    .line 322
    iget-boolean v1, v0, Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrame;->isKeyFrame:Z

    if-eqz v1, :cond_0

    .line 323
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->needToFindKeyFrame:Z

    .line 324
    iget-object v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->frameCache:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 325
    iget-object v2, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->writeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 326
    :try_start_0
    iget-object v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->writeLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 327
    monitor-exit v2

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 327
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 330
    :cond_1
    iget-object v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->frameCache:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v2, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->writeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 332
    :try_start_1
    iget-object v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->writeLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 333
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method private writeSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)V
    .locals 10
    .param p1, "byteBuf"    # Ljava/nio/ByteBuffer;
    .param p2, "bi"    # Landroid/media/MediaCodec$BufferInfo;
    .param p3, "isAudio"    # Z

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 786
    if-eqz p3, :cond_1

    const/16 v2, 0x65

    .line 787
    .local v2, "trackIndex":I
    :goto_0
    iget-object v6, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->mp4Movie:Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;

    invoke-virtual {v6}, Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;->getTracks()Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 822
    :cond_0
    :goto_1
    return-void

    .line 786
    .end local v2    # "trackIndex":I
    :cond_1
    const/16 v2, 0x64

    goto :goto_0

    .line 792
    .restart local v2    # "trackIndex":I
    :cond_2
    :try_start_0
    iget-object v6, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->mdat:Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;

    invoke-static {v6}, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;->access$1600(Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 793
    iget-object v6, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->mdat:Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;->setContentSize(J)V

    .line 794
    iget-object v6, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->mdat:Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;

    iget-object v7, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v6, v7}, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 795
    iget-wide v6, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->recFileSize:J

    iput-wide v6, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->mdatOffset:J

    .line 796
    iget-wide v6, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->recFileSize:J

    iget-object v8, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->mdat:Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;

    invoke-virtual {v8}, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;->getHeaderSize()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->recFileSize:J

    .line 797
    iget-object v6, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->mdat:Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;->access$1602(Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;Z)Z

    .line 800
    :cond_3
    iget-object v6, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->mp4Movie:Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;

    iget-wide v8, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->recFileSize:J

    invoke-virtual {v6, v2, v8, v9, p2}, Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;->addSample(IJLandroid/media/MediaCodec$BufferInfo;)V

    .line 801
    iget v6, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    if-eqz p3, :cond_5

    :goto_2
    add-int/2addr v4, v6

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 802
    iget v4, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v5, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 803
    if-nez p3, :cond_4

    .line 804
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 805
    .local v1, "size":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 806
    iget v4, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 807
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 808
    iget-wide v4, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->recFileSize:J

    iget-object v6, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v6, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->recFileSize:J

    .line 810
    .end local v1    # "size":Ljava/nio/ByteBuffer;
    :cond_4
    iget-object v4, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v4, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 812
    .local v3, "writeBytes":I
    iget-wide v4, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->recFileSize:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->recFileSize:J

    .line 813
    iget-wide v4, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->flushBytes:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->flushBytes:J

    .line 814
    iget-wide v4, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->flushBytes:J

    const-wide/32 v6, 0x10000

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 815
    iget-object v4, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 816
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->flushBytes:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 818
    .end local v3    # "writeBytes":I
    :catch_0
    move-exception v0

    .line 819
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 820
    iget-object v4, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->mHandler:Lnet/ossrs/yasea/SrsRecordHandler;

    invoke-virtual {v4, v0}, Lnet/ossrs/yasea/SrsRecordHandler;->notifyRecordIOException(Ljava/io/IOException;)V

    goto/16 :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    move v4, v5

    .line 801
    goto :goto_2
.end method

.method private writeVideoSample(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 7
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "bi"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    const/4 v6, 0x5

    const/4 v4, 0x1

    .line 273
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit8 v1, v5, 0x1f

    .line 274
    .local v1, "nal_unit_type":I
    if-eq v1, v6, :cond_0

    if-ne v1, v4, :cond_3

    .line 275
    :cond_0
    const/16 v5, 0x64

    if-ne v1, v6, :cond_2

    :goto_0
    invoke-direct {p0, v5, p1, p2, v4}, Lnet/ossrs/yasea/SrsMp4Muxer;->writeFrameByte(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)V

    .line 303
    :cond_1
    return-void

    .line 275
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 277
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    iget v5, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ge v4, v5, :cond_1

    .line 278
    iget-object v4, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->avc:Lnet/ossrs/yasea/SrsMp4Muxer$SrsRawH264Stream;

    invoke-virtual {v4, p1, p2}, Lnet/ossrs/yasea/SrsMp4Muxer$SrsRawH264Stream;->annexb_demux(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrameBytes;

    move-result-object v0

    .line 280
    .local v0, "frame":Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrameBytes;
    iget-object v4, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->avc:Lnet/ossrs/yasea/SrsMp4Muxer$SrsRawH264Stream;

    invoke-virtual {v4, v0}, Lnet/ossrs/yasea/SrsMp4Muxer$SrsRawH264Stream;->is_sps(Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrameBytes;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 281
    iget-object v4, v0, Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrameBytes;->data:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->h264_sps:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 282
    iget v4, v0, Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrameBytes;->size:I

    new-array v3, v4, [B

    .line 283
    .local v3, "sps":[B
    iget-object v4, v0, Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 284
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->h264_sps:Ljava/nio/ByteBuffer;

    .line 285
    iget-object v4, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->spsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 286
    iget-object v4, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->spsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 291
    .end local v3    # "sps":[B
    :cond_4
    iget-object v4, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->avc:Lnet/ossrs/yasea/SrsMp4Muxer$SrsRawH264Stream;

    invoke-virtual {v4, v0}, Lnet/ossrs/yasea/SrsMp4Muxer$SrsRawH264Stream;->is_pps(Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrameBytes;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 292
    iget-object v4, v0, Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrameBytes;->data:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->h264_pps:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 293
    iget v4, v0, Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrameBytes;->size:I

    new-array v2, v4, [B

    .line 294
    .local v2, "pps":[B
    iget-object v4, v0, Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 295
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->h264_pps:Ljava/nio/ByteBuffer;

    .line 296
    iget-object v4, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->ppsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 297
    iget-object v4, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->ppsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public addTrack(Landroid/media/MediaFormat;)I
    .locals 2
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 203
    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "video/avc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iput-object p1, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->videoFormat:Landroid/media/MediaFormat;

    .line 205
    const/16 v0, 0x64

    .line 208
    :goto_0
    return v0

    .line 207
    :cond_0
    iput-object p1, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->audioFormat:Landroid/media/MediaFormat;

    .line 208
    const/16 v0, 0x65

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->bRecording:Z

    if-eqz v0, :cond_0

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->bPaused:Z

    .line 156
    iget-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->mHandler:Lnet/ossrs/yasea/SrsRecordHandler;

    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsRecordHandler;->notifyRecordPause()V

    .line 158
    :cond_0
    return-void
.end method

.method public record(Ljava/io/File;)V
    .locals 3
    .param p1, "outputFile"    # Ljava/io/File;

    .prologue
    .line 116
    iput-object p1, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->mRecFile:Ljava/io/File;

    .line 117
    iget-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->mRecFile:Ljava/io/File;

    invoke-direct {p0, v0}, Lnet/ossrs/yasea/SrsMp4Muxer;->createMovie(Ljava/io/File;)V

    .line 118
    iget-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->mHandler:Lnet/ossrs/yasea/SrsRecordHandler;

    iget-object v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->mRecFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/ossrs/yasea/SrsRecordHandler;->notifyRecordStarted(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->spsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->ppsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->mp4Movie:Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;

    iget-object v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->videoFormat:Landroid/media/MediaFormat;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;->addTrack(Landroid/media/MediaFormat;Z)V

    .line 123
    :cond_0
    iget-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->mp4Movie:Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;

    iget-object v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->audioFormat:Landroid/media/MediaFormat;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;->addTrack(Landroid/media/MediaFormat;Z)V

    .line 125
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/ossrs/yasea/SrsMp4Muxer$1;

    invoke-direct {v1, p0}, Lnet/ossrs/yasea/SrsMp4Muxer$1;-><init>(Lnet/ossrs/yasea/SrsMp4Muxer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->worker:Ljava/lang/Thread;

    .line 147
    iget-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->worker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 148
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->bRecording:Z

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->bPaused:Z

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->needToFindKeyFrame:Z

    .line 167
    iget-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->mHandler:Lnet/ossrs/yasea/SrsRecordHandler;

    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsRecordHandler;->notifyRecordResume()V

    .line 169
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 175
    iput-boolean v2, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->bRecording:Z

    .line 176
    iput-boolean v2, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->bPaused:Z

    .line 177
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->needToFindKeyFrame:Z

    .line 178
    iput-boolean v2, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->aacSpecConfig:Z

    .line 179
    iget-object v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->frameCache:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 181
    iget-object v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->worker:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 183
    :try_start_0
    iget-object v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->worker:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->worker:Ljava/lang/Thread;

    .line 190
    invoke-direct {p0}, Lnet/ossrs/yasea/SrsMp4Muxer;->finishMovie()V

    .line 191
    iget-object v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->mHandler:Lnet/ossrs/yasea/SrsRecordHandler;

    iget-object v2, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->mRecFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/ossrs/yasea/SrsRecordHandler;->notifyRecordFinished(Ljava/lang/String;)V

    .line 193
    :cond_0
    const-string v1, "SrsMp4Muxer"

    const-string v2, "SrsMp4Muxer closed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 186
    iget-object v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer;->worker:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1
    .param p1, "trackIndex"    # I
    .param p2, "byteBuf"    # Ljava/nio/ByteBuffer;
    .param p3, "bufferInfo"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 220
    const/16 v0, 0x64

    if-ne v0, p1, :cond_0

    .line 221
    invoke-direct {p0, p2, p3}, Lnet/ossrs/yasea/SrsMp4Muxer;->writeVideoSample(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-direct {p0, p2, p3}, Lnet/ossrs/yasea/SrsMp4Muxer;->writeAudioSample(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_0
.end method
