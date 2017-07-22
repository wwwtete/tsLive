.class Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;
.super Ljava/lang/Object;
.source "SrsFlvMuxer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/ossrs/yasea/SrsFlvMuxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SrsFlv"
.end annotation


# instance fields
.field private aac_specific_config:[B

.field private achannel:I

.field private asample_rate:I

.field private audioTrack:Landroid/media/MediaFormat;

.field private avc:Lnet/ossrs/yasea/SrsFlvMuxer$SrsRawH264Stream;

.field private h264_pps:Ljava/nio/ByteBuffer;

.field private h264_pps_changed:Z

.field private h264_sps:Ljava/nio/ByteBuffer;

.field private h264_sps_changed:Z

.field private h264_sps_pps_sent:Z

.field final synthetic this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

.field private videoTrack:Landroid/media/MediaFormat;


# direct methods
.method public constructor <init>(Lnet/ossrs/yasea/SrsFlvMuxer;)V
    .locals 1

    .prologue
    .line 792
    iput-object p1, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 793
    new-instance v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsRawH264Stream;

    invoke-direct {v0, p1}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsRawH264Stream;-><init>(Lnet/ossrs/yasea/SrsFlvMuxer;)V

    iput-object v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->avc:Lnet/ossrs/yasea/SrsFlvMuxer$SrsRawH264Stream;

    .line 794
    invoke-virtual {p0}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->reset()V

    .line 795
    return-void
.end method

.method private flvFrameCacheAdd(Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;)V
    .locals 2
    .param p1, "frame"    # Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;

    .prologue
    .line 1065
    iget-object v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    invoke-static {v0}, Lnet/ossrs/yasea/SrsFlvMuxer;->access$100(Lnet/ossrs/yasea/SrsFlvMuxer;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 1066
    invoke-virtual {p1}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;->is_video()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsFlvMuxer;->getVideoFrameCacheNumber()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1069
    :cond_0
    iget-object v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    invoke-static {v0}, Lnet/ossrs/yasea/SrsFlvMuxer;->access$500(Lnet/ossrs/yasea/SrsFlvMuxer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1070
    :try_start_0
    iget-object v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    invoke-static {v0}, Lnet/ossrs/yasea/SrsFlvMuxer;->access$500(Lnet/ossrs/yasea/SrsFlvMuxer;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1071
    monitor-exit v1

    .line 1072
    return-void

    .line 1071
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private rtmp_write_packet(IIIILnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "dts"    # I
    .param p3, "frame_type"    # I
    .param p4, "avc_aac_type"    # I
    .param p5, "tag"    # Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;

    .prologue
    .line 1042
    new-instance v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;

    iget-object v1, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;-><init>(Lnet/ossrs/yasea/SrsFlvMuxer;Lnet/ossrs/yasea/SrsFlvMuxer$1;)V

    .line 1043
    .local v0, "frame":Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;
    iget v1, p5, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;->flvTag:Ljava/nio/ByteBuffer;

    .line 1044
    iget-object v1, v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;->flvTag:Ljava/nio/ByteBuffer;

    iget-object v2, p5, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1045
    iput p1, v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;->type:I

    .line 1046
    iput p2, v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;->dts:I

    .line 1047
    iput p3, v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;->frame_type:I

    .line 1048
    iput p4, v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;->avc_aac_type:I

    .line 1050
    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;->is_video()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1051
    iget-object v1, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    invoke-static {v1}, Lnet/ossrs/yasea/SrsFlvMuxer;->access$1200(Lnet/ossrs/yasea/SrsFlvMuxer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1052
    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;->is_keyframe()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1053
    iget-object v1, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lnet/ossrs/yasea/SrsFlvMuxer;->access$1202(Lnet/ossrs/yasea/SrsFlvMuxer;Z)Z

    .line 1054
    invoke-direct {p0, v0}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->flvFrameCacheAdd(Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;)V

    .line 1062
    :cond_0
    :goto_0
    return-void

    .line 1057
    :cond_1
    invoke-direct {p0, v0}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->flvFrameCacheAdd(Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;)V

    goto :goto_0

    .line 1059
    :cond_2
    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;->is_audio()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1060
    invoke-direct {p0, v0}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->flvFrameCacheAdd(Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;)V

    goto :goto_0
.end method

.method private write_adts_header([BI)V
    .locals 3
    .param p1, "frame"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 899
    const/4 v0, -0x1

    aput-byte v0, p1, p2

    .line 900
    add-int/lit8 v0, p2, 0x1

    const/16 v1, -0x10

    aput-byte v1, p1, v0

    .line 902
    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 904
    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 906
    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 908
    add-int/lit8 v0, p2, 0x2

    const/16 v1, 0x40

    aput-byte v1, p1, v0

    .line 910
    add-int/lit8 v0, p2, 0x2

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 912
    add-int/lit8 v0, p2, 0x2

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 913
    add-int/lit8 v0, p2, 0x3

    const/16 v1, -0x80

    aput-byte v1, p1, v0

    .line 915
    add-int/lit8 v0, p2, 0x3

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 917
    add-int/lit8 v0, p2, 0x3

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 919
    add-int/lit8 v0, p2, 0x3

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 921
    add-int/lit8 v0, p2, 0x3

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 923
    add-int/lit8 v0, p2, 0x3

    aget-byte v1, p1, v0

    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    and-int/lit16 v2, v2, 0x1800

    shr-int/lit8 v2, v2, 0xb

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 924
    add-int/lit8 v0, p2, 0x4

    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    and-int/lit16 v1, v1, 0x7f8

    shr-int/lit8 v1, v1, 0x3

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 925
    add-int/lit8 v0, p2, 0x5

    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x5

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 927
    add-int/lit8 v0, p2, 0x5

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x1f

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 928
    add-int/lit8 v0, p2, 0x6

    const/4 v1, -0x4

    aput-byte v1, p1, v0

    .line 930
    add-int/lit8 v0, p2, 0x6

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 931
    return-void
.end method

.method private write_h264_ipb_frame(Ljava/util/ArrayList;III)V
    .locals 10
    .param p2, "frame_type"    # I
    .param p3, "dts"    # I
    .param p4, "pts"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .line 1030
    .local p1, "ibps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;>;"
    iget-boolean v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->h264_sps_pps_sent:Z

    if-nez v0, :cond_0

    .line 1039
    :goto_0
    return-void

    .line 1034
    :cond_0
    const/4 v3, 0x1

    .line 1035
    .local v3, "avc_packet_type":I
    iget-object v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->avc:Lnet/ossrs/yasea/SrsFlvMuxer$SrsRawH264Stream;

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsRawH264Stream;->mux_avc2flv(Ljava/util/ArrayList;IIII)Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;

    move-result-object v9

    .line 1038
    .local v9, "flv_tag":Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;
    const/16 v5, 0x9

    move-object v4, p0

    move v6, p3

    move v7, p2

    move v8, v3

    invoke-direct/range {v4 .. v9}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->rtmp_write_packet(IIIILnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;)V

    goto :goto_0
.end method

.method private write_h264_sps_pps(II)V
    .locals 14
    .param p1, "dts"    # I
    .param p2, "pts"    # I

    .prologue
    .line 999
    iget-boolean v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->h264_sps_pps_sent:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->h264_sps_changed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->h264_pps_changed:Z

    if-nez v0, :cond_1

    .line 1025
    :cond_0
    :goto_0
    return-void

    .line 1004
    :cond_1
    iget-object v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->h264_pps:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->h264_sps:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 1009
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1010
    .local v5, "frames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;>;"
    iget-object v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->avc:Lnet/ossrs/yasea/SrsFlvMuxer$SrsRawH264Stream;

    iget-object v1, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->h264_sps:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->h264_pps:Ljava/nio/ByteBuffer;

    move v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsRawH264Stream;->mux_sequence_header(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IILjava/util/ArrayList;)V

    .line 1013
    const/4 v6, 0x1

    .line 1014
    .local v6, "frame_type":I
    const/4 v7, 0x0

    .line 1015
    .local v7, "avc_packet_type":I
    iget-object v4, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->avc:Lnet/ossrs/yasea/SrsFlvMuxer$SrsRawH264Stream;

    move v8, p1

    move/from16 v9, p2

    invoke-virtual/range {v4 .. v9}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsRawH264Stream;->mux_avc2flv(Ljava/util/ArrayList;IIII)Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;

    move-result-object v13

    .line 1018
    .local v13, "flv_tag":Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;
    const/16 v9, 0x9

    move-object v8, p0

    move v10, p1

    move v11, v6

    move v12, v7

    invoke-direct/range {v8 .. v13}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->rtmp_write_packet(IIIILnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;)V

    .line 1021
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->h264_sps_changed:Z

    .line 1022
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->h264_pps_changed:Z

    .line 1023
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->h264_sps_pps_sent:Z

    .line 1024
    const-string v0, "SrsFlvMuxer"

    const-string v1, "flv: h264 sps/pps sent, sps=%dB, pps=%dB"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->h264_sps:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->h264_pps:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 798
    iput-boolean v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->h264_sps_changed:Z

    .line 799
    iput-boolean v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->h264_pps_changed:Z

    .line 800
    iput-boolean v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->h264_sps_pps_sent:Z

    .line 801
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->aac_specific_config:[B

    .line 802
    return-void
.end method

.method public setAudioTrack(Landroid/media/MediaFormat;)V
    .locals 1
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 809
    iput-object p1, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->audioTrack:Landroid/media/MediaFormat;

    .line 810
    const-string v0, "channel-count"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->achannel:I

    .line 811
    const-string v0, "sample-rate"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->asample_rate:I

    .line 812
    return-void
.end method

.method public setVideoTrack(Landroid/media/MediaFormat;)V
    .locals 0
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 805
    iput-object p1, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->videoTrack:Landroid/media/MediaFormat;

    .line 806
    return-void
.end method

.method public writeAudioSample(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 20
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "bi"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 815
    move-object/from16 v0, p2

    iget-wide v2, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v18, 0x3e8

    div-long v2, v2, v18

    long-to-int v12, v2

    .line 816
    .local v12, "pts":I
    move v4, v12

    .line 818
    .local v4, "dts":I
    move-object/from16 v0, p2

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v2, v2, 0x2

    new-array v11, v2, [B

    .line 819
    .local v11, "frame":[B
    const/4 v6, 0x1

    .line 820
    .local v6, "aac_packet_type":B
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->aac_specific_config:[B

    if-nez v2, :cond_5

    .line 821
    const/16 v2, 0xb

    new-array v11, v2, [B

    .line 827
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xf8

    int-to-byte v9, v2

    .line 831
    .local v9, "ch":B
    const/4 v13, 0x4

    .line 832
    .local v13, "samplingFrequencyIndex":B
    move-object/from16 v0, p0

    iget v2, v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->asample_rate:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 833
    const/4 v13, 0x7

    .line 837
    :cond_0
    :goto_0
    shr-int/lit8 v2, v13, 0x1

    and-int/lit8 v2, v2, 0x7

    or-int/2addr v2, v9

    int-to-byte v9, v2

    .line 838
    const/4 v2, 0x2

    aput-byte v9, v11, v2

    .line 840
    shl-int/lit8 v2, v13, 0x7

    and-int/lit16 v2, v2, 0x80

    int-to-byte v9, v2

    .line 844
    const/4 v10, 0x1

    .line 845
    .local v10, "channelConfiguration":B
    move-object/from16 v0, p0

    iget v2, v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->achannel:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 846
    const/4 v10, 0x2

    .line 848
    :cond_1
    shl-int/lit8 v2, v10, 0x3

    and-int/lit8 v2, v2, 0x78

    or-int/2addr v2, v9

    int-to-byte v9, v2

    .line 856
    const/4 v2, 0x3

    aput-byte v9, v11, v2

    .line 858
    move-object/from16 v0, p0

    iput-object v11, v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->aac_specific_config:[B

    .line 859
    const/4 v6, 0x0

    .line 861
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->write_adts_header([BI)V

    .line 866
    .end local v9    # "ch":B
    .end local v10    # "channelConfiguration":B
    .end local v13    # "samplingFrequencyIndex":B
    :goto_1
    const/16 v14, 0xa

    .line 867
    .local v14, "sound_format":B
    const/16 v17, 0x0

    .line 868
    .local v17, "sound_type":B
    move-object/from16 v0, p0

    iget v2, v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->achannel:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 869
    const/16 v17, 0x1

    .line 871
    :cond_2
    const/16 v16, 0x1

    .line 872
    .local v16, "sound_size":B
    const/4 v15, 0x3

    .line 873
    .local v15, "sound_rate":B
    move-object/from16 v0, p0

    iget v2, v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->asample_rate:I

    const/16 v3, 0x5622

    if-ne v2, v3, :cond_6

    .line 874
    const/4 v15, 0x2

    .line 882
    :cond_3
    :goto_2
    and-int/lit8 v2, v17, 0x1

    int-to-byte v8, v2

    .line 883
    .local v8, "audio_header":B
    or-int/lit8 v2, v8, 0x2

    int-to-byte v8, v2

    .line 884
    shl-int/lit8 v2, v15, 0x2

    and-int/lit8 v2, v2, 0xc

    or-int/2addr v2, v8

    int-to-byte v8, v2

    .line 885
    or-int/lit16 v2, v8, 0xa0

    int-to-byte v8, v2

    .line 887
    const/4 v2, 0x0

    aput-byte v8, v11, v2

    .line 888
    const/4 v2, 0x1

    aput-byte v6, v11, v2

    .line 890
    new-instance v7, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    const/4 v3, 0x0

    invoke-direct {v7, v2, v3}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;-><init>(Lnet/ossrs/yasea/SrsFlvMuxer;Lnet/ossrs/yasea/SrsFlvMuxer$1;)V

    .line 891
    .local v7, "tag":Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;
    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v7, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    .line 892
    array-length v2, v11

    iput v2, v7, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    .line 894
    const/16 v3, 0x8

    const/4 v5, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->rtmp_write_packet(IIIILnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;)V

    .line 895
    return-void

    .line 834
    .end local v7    # "tag":Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;
    .end local v8    # "audio_header":B
    .end local v14    # "sound_format":B
    .end local v15    # "sound_rate":B
    .end local v16    # "sound_size":B
    .end local v17    # "sound_type":B
    .restart local v9    # "ch":B
    .restart local v13    # "samplingFrequencyIndex":B
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->asample_rate:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 835
    const/16 v13, 0xa

    goto :goto_0

    .line 863
    .end local v9    # "ch":B
    .end local v13    # "samplingFrequencyIndex":B
    :cond_5
    const/4 v2, 0x2

    array-length v3, v11

    add-int/lit8 v3, v3, -0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 875
    .restart local v14    # "sound_format":B
    .restart local v15    # "sound_rate":B
    .restart local v16    # "sound_size":B
    .restart local v17    # "sound_type":B
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->asample_rate:I

    const/16 v3, 0x2b11

    if-ne v2, v3, :cond_3

    .line 876
    const/4 v15, 0x1

    goto :goto_2
.end method

.method public writeVideoSample(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 16
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "bi"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 934
    move-object/from16 v0, p2

    iget-wide v12, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    long-to-int v9, v12

    .line 935
    .local v9, "pts":I
    move v2, v9

    .line 937
    .local v2, "dts":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 938
    .local v5, "ibps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;>;"
    const/4 v4, 0x2

    .line 941
    .local v4, "frame_type":I
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    move-object/from16 v0, p2

    iget v12, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ge v11, v12, :cond_6

    .line 942
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->avc:Lnet/ossrs/yasea/SrsFlvMuxer$SrsRawH264Stream;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v11, v0, v1}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsRawH264Stream;->annexb_demux(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;

    move-result-object v3

    .line 947
    .local v3, "frame":Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;
    iget-object v11, v3, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    and-int/lit8 v6, v11, 0x1f

    .line 948
    .local v6, "nal_unit_type":I
    const/4 v11, 0x7

    if-eq v6, v11, :cond_1

    const/16 v11, 0x8

    if-ne v6, v11, :cond_2

    .line 949
    :cond_1
    const-string v11, "SrsFlvMuxer"

    const-string v12, "annexb demux %dB, pts=%d, frame=%dB, nalu=%d"

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p2

    iget v15, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    iget v15, v3, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    :cond_2
    const/4 v11, 0x5

    if-ne v6, v11, :cond_3

    .line 954
    const/4 v4, 0x1

    .line 958
    :cond_3
    const/16 v11, 0x9

    if-eq v6, v11, :cond_0

    .line 963
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->avc:Lnet/ossrs/yasea/SrsFlvMuxer$SrsRawH264Stream;

    invoke-virtual {v11, v3}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsRawH264Stream;->is_sps(Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 964
    iget-object v11, v3, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->h264_sps:Ljava/nio/ByteBuffer;

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 965
    iget v11, v3, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    new-array v10, v11, [B

    .line 966
    .local v10, "sps":[B
    iget-object v11, v3, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v11, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 967
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->h264_sps_changed:Z

    .line 968
    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->h264_sps:Ljava/nio/ByteBuffer;

    goto/16 :goto_0

    .line 974
    .end local v10    # "sps":[B
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->avc:Lnet/ossrs/yasea/SrsFlvMuxer$SrsRawH264Stream;

    invoke-virtual {v11, v3}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsRawH264Stream;->is_pps(Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 975
    iget-object v11, v3, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->h264_pps:Ljava/nio/ByteBuffer;

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 976
    iget v11, v3, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    new-array v8, v11, [B

    .line 977
    .local v8, "pps":[B
    iget-object v11, v3, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v11, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 978
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->h264_pps_changed:Z

    .line 979
    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->h264_pps:Ljava/nio/ByteBuffer;

    goto/16 :goto_0

    .line 985
    .end local v8    # "pps":[B
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->avc:Lnet/ossrs/yasea/SrsFlvMuxer$SrsRawH264Stream;

    invoke-virtual {v11, v3}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsRawH264Stream;->mux_ibp_frame(Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;)Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;

    move-result-object v7

    .line 986
    .local v7, "nalu_header":Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 987
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 990
    .end local v3    # "frame":Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;
    .end local v6    # "nal_unit_type":I
    .end local v7    # "nalu_header":Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->write_h264_sps_pps(II)V

    .line 992
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4, v2, v9}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlv;->write_h264_ipb_frame(Ljava/util/ArrayList;III)V

    .line 993
    return-void
.end method
