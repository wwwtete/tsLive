.class public Lnet/ossrs/yasea/SrsEncoder;
.super Ljava/lang/Object;
.source "SrsEncoder.java"


# static fields
.field public static final ABITRATE:I = 0x7d00

.field public static final ACODEC:Ljava/lang/String; = "audio/mp4a-latm"

.field public static final ASAMPLERATE:I = 0xac44

.field private static final TAG:Ljava/lang/String; = "SrsEncoder"

.field public static final VCODEC:Ljava/lang/String; = "video/avc"

.field public static final VFPS:I = 0x18

.field public static final VGOP:I = 0x30

.field public static aChannelConfig:I

.field public static vBitrate:I

.field public static vLandscapeHeight:I

.field public static vLandscapeWidth:I

.field public static vOutHeight:I

.field public static vOutWidth:I

.field public static vPortraitHeight:I

.field public static vPortraitWidth:I

.field public static vPrevHeight:I

.field public static vPrevWidth:I

.field public static x264Preset:Ljava/lang/String;


# instance fields
.field private aebi:Landroid/media/MediaCodec$BufferInfo;

.field private aencoder:Landroid/media/MediaCodec;

.field private audioFlvTrack:I

.field private audioMp4Track:I

.field private flvMuxer:Lnet/ossrs/yasea/SrsFlvMuxer;

.field private mCameraFaceFront:Z

.field private mHandler:Lnet/ossrs/yasea/SrsEncodeHandler;

.field private mPresentTimeUs:J

.field private mVideoColorFormat:I

.field private mp4Muxer:Lnet/ossrs/yasea/SrsMp4Muxer;

.field private networkWeakTriggered:Z

.field private useSoftEncoder:Z

.field private vebi:Landroid/media/MediaCodec$BufferInfo;

.field private vencoder:Landroid/media/MediaCodec;

.field private videoFlvTrack:I

.field private videoMp4Track:I

.field private vmci:Landroid/media/MediaCodecInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x500

    const/16 v1, 0x2d0

    .line 25
    const-string v0, "veryfast"

    sput-object v0, Lnet/ossrs/yasea/SrsEncoder;->x264Preset:Ljava/lang/String;

    .line 26
    const/16 v0, 0x280

    sput v0, Lnet/ossrs/yasea/SrsEncoder;->vPrevWidth:I

    .line 27
    const/16 v0, 0x1e0

    sput v0, Lnet/ossrs/yasea/SrsEncoder;->vPrevHeight:I

    .line 28
    sput v1, Lnet/ossrs/yasea/SrsEncoder;->vPortraitWidth:I

    .line 29
    sput v2, Lnet/ossrs/yasea/SrsEncoder;->vPortraitHeight:I

    .line 30
    sput v2, Lnet/ossrs/yasea/SrsEncoder;->vLandscapeWidth:I

    .line 31
    sput v1, Lnet/ossrs/yasea/SrsEncoder;->vLandscapeHeight:I

    .line 32
    sput v1, Lnet/ossrs/yasea/SrsEncoder;->vOutWidth:I

    .line 33
    sput v2, Lnet/ossrs/yasea/SrsEncoder;->vOutHeight:I

    .line 34
    const v0, 0x124f80

    sput v0, Lnet/ossrs/yasea/SrsEncoder;->vBitrate:I

    .line 38
    const/16 v0, 0xc

    sput v0, Lnet/ossrs/yasea/SrsEncoder;->aChannelConfig:I

    .line 483
    const-string v0, "yuv"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 484
    const-string v0, "enc"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 485
    return-void
.end method

.method public constructor <init>(Lnet/ossrs/yasea/SrsEncodeHandler;)V
    .locals 2
    .param p1, "handler"    # Lnet/ossrs/yasea/SrsEncodeHandler;

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lnet/ossrs/yasea/SrsEncoder;->vebi:Landroid/media/MediaCodec$BufferInfo;

    .line 50
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lnet/ossrs/yasea/SrsEncoder;->aebi:Landroid/media/MediaCodec$BufferInfo;

    .line 52
    iput-boolean v1, p0, Lnet/ossrs/yasea/SrsEncoder;->networkWeakTriggered:Z

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/ossrs/yasea/SrsEncoder;->mCameraFaceFront:Z

    .line 54
    iput-boolean v1, p0, Lnet/ossrs/yasea/SrsEncoder;->useSoftEncoder:Z

    .line 77
    iput-object p1, p0, Lnet/ossrs/yasea/SrsEncoder;->mHandler:Lnet/ossrs/yasea/SrsEncodeHandler;

    .line 78
    invoke-direct {p0}, Lnet/ossrs/yasea/SrsEncoder;->chooseVideoEncoder()I

    move-result v0

    iput v0, p0, Lnet/ossrs/yasea/SrsEncoder;->mVideoColorFormat:I

    .line 79
    return-void
.end method

.method private native RGBASoftEncode([BIIZIJ)I
.end method

.method private native RGBAToI420([BIIZI)[B
.end method

.method private native RGBAToNV12([BIIZI)[B
.end method

.method private chooseVideoEncoder()I
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 443
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lnet/ossrs/yasea/SrsEncoder;->chooseVideoEncoder(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v5

    iput-object v5, p0, Lnet/ossrs/yasea/SrsEncoder;->vmci:Landroid/media/MediaCodecInfo;

    .line 447
    const/4 v3, 0x0

    .line 448
    .local v3, "matchedColorFormat":I
    iget-object v5, p0, Lnet/ossrs/yasea/SrsEncoder;->vmci:Landroid/media/MediaCodecInfo;

    const-string v6, "video/avc"

    invoke-virtual {v5, v6}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    .line 449
    .local v0, "cc":Landroid/media/MediaCodecInfo$CodecCapabilities;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 450
    iget-object v5, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    aget v1, v5, v2

    .line 451
    .local v1, "cf":I
    const-string v5, "SrsEncoder"

    const-string v6, "vencoder %s supports color fomart 0x%x(%d)"

    new-array v7, v12, [Ljava/lang/Object;

    iget-object v8, p0, Lnet/ossrs/yasea/SrsEncoder;->vmci:Landroid/media/MediaCodecInfo;

    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const/16 v5, 0x13

    if-lt v1, v5, :cond_0

    const/16 v5, 0x15

    if-gt v1, v5, :cond_0

    .line 456
    if-le v1, v3, :cond_0

    .line 457
    move v3, v1

    .line 449
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 462
    .end local v1    # "cf":I
    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-object v5, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v5, v5

    if-ge v2, v5, :cond_2

    .line 463
    iget-object v5, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    aget-object v4, v5, v2

    .line 464
    .local v4, "pl":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const-string v5, "SrsEncoder"

    const-string v6, "vencoder %s support profile %d, level %d"

    new-array v7, v12, [Ljava/lang/Object;

    iget-object v8, p0, Lnet/ossrs/yasea/SrsEncoder;->vmci:Landroid/media/MediaCodecInfo;

    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    iget v8, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    iget v8, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 467
    .end local v4    # "pl":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_2
    const-string v5, "SrsEncoder"

    const-string v6, "vencoder %s choose color format 0x%x(%d)"

    new-array v7, v12, [Ljava/lang/Object;

    iget-object v8, p0, Lnet/ossrs/yasea/SrsEncoder;->vmci:Landroid/media/MediaCodecInfo;

    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    return v3
.end method

.method private chooseVideoEncoder(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 412
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v3

    .line 413
    .local v3, "nbCodecs":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_5

    .line 414
    invoke-static {v0}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v2

    .line 415
    .local v2, "mci":Landroid/media/MediaCodecInfo;
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-nez v5, :cond_1

    .line 413
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 419
    :cond_1
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    .line 420
    .local v4, "types":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_0

    .line 421
    aget-object v5, v4, v1

    const-string v6, "video/avc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 422
    const-string v5, "SrsEncoder"

    const-string v6, "vencoder %s types: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aget-object v9, v4, v1

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    if-nez p1, :cond_3

    .line 434
    .end local v1    # "j":I
    .end local v2    # "mci":Landroid/media/MediaCodecInfo;
    .end local v4    # "types":[Ljava/lang/String;
    :cond_2
    :goto_2
    return-object v2

    .line 427
    .restart local v1    # "j":I
    .restart local v2    # "mci":Landroid/media/MediaCodecInfo;
    .restart local v4    # "types":[Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 420
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 434
    .end local v1    # "j":I
    .end local v2    # "mci":Landroid/media/MediaCodecInfo;
    .end local v4    # "types":[Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private native closeSoftEncoder()V
.end method

.method private hwRgbaFrame([BII)[B
    .locals 6
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/16 v5, 0xb4

    const/4 v4, 0x1

    .line 379
    iget v0, p0, Lnet/ossrs/yasea/SrsEncoder;->mVideoColorFormat:I

    packed-switch v0, :pswitch_data_0

    .line 385
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported color format!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 381
    invoke-direct/range {v0 .. v5}, Lnet/ossrs/yasea/SrsEncoder;->RGBAToI420([BIIZI)[B

    move-result-object v0

    .line 383
    :goto_0
    return-object v0

    :pswitch_2
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lnet/ossrs/yasea/SrsEncoder;->RGBAToNV12([BIIZI)[B

    move-result-object v0

    goto :goto_0

    .line 379
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onEncodedAacFrame(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 3
    .param p1, "es"    # Ljava/nio/ByteBuffer;
    .param p2, "bi"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 321
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 322
    .local v0, "record":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lnet/ossrs/yasea/SrsEncoder;->mp4Muxer:Lnet/ossrs/yasea/SrsMp4Muxer;

    iget v2, p0, Lnet/ossrs/yasea/SrsEncoder;->audioMp4Track:I

    invoke-virtual {v1, v2, v0, p2}, Lnet/ossrs/yasea/SrsMp4Muxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 323
    iget-object v1, p0, Lnet/ossrs/yasea/SrsEncoder;->flvMuxer:Lnet/ossrs/yasea/SrsFlvMuxer;

    iget v2, p0, Lnet/ossrs/yasea/SrsEncoder;->audioFlvTrack:I

    invoke-virtual {v1, v2, p1, p2}, Lnet/ossrs/yasea/SrsFlvMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 324
    return-void
.end method

.method private onEncodedAnnexbFrame(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 3
    .param p1, "es"    # Ljava/nio/ByteBuffer;
    .param p2, "bi"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 314
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 315
    .local v0, "record":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lnet/ossrs/yasea/SrsEncoder;->mp4Muxer:Lnet/ossrs/yasea/SrsMp4Muxer;

    iget v2, p0, Lnet/ossrs/yasea/SrsEncoder;->videoMp4Track:I

    invoke-virtual {v1, v2, v0, p2}, Lnet/ossrs/yasea/SrsMp4Muxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 316
    iget-object v1, p0, Lnet/ossrs/yasea/SrsEncoder;->flvMuxer:Lnet/ossrs/yasea/SrsFlvMuxer;

    iget v2, p0, Lnet/ossrs/yasea/SrsEncoder;->videoFlvTrack:I

    invoke-virtual {v1, v2, p1, p2}, Lnet/ossrs/yasea/SrsFlvMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 317
    return-void
.end method

.method private onProcessedYuvFrame([BJ)V
    .locals 12
    .param p1, "yuvFrame"    # [B
    .param p2, "pts"    # J

    .prologue
    const/4 v2, 0x0

    .line 280
    iget-object v0, p0, Lnet/ossrs/yasea/SrsEncoder;->vencoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 281
    .local v8, "inBuffers":[Ljava/nio/ByteBuffer;
    iget-object v0, p0, Lnet/ossrs/yasea/SrsEncoder;->vencoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 283
    .local v10, "outBuffers":[Ljava/nio/ByteBuffer;
    iget-object v0, p0, Lnet/ossrs/yasea/SrsEncoder;->vencoder:Landroid/media/MediaCodec;

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 284
    .local v1, "inBufferIndex":I
    if-ltz v1, :cond_0

    .line 285
    aget-object v7, v8, v1

    .line 286
    .local v7, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 287
    array-length v0, p1

    invoke-virtual {v7, p1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 288
    iget-object v0, p0, Lnet/ossrs/yasea/SrsEncoder;->vencoder:Landroid/media/MediaCodec;

    array-length v3, p1

    move-wide v4, p2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 292
    .end local v7    # "bb":Ljava/nio/ByteBuffer;
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/ossrs/yasea/SrsEncoder;->vencoder:Landroid/media/MediaCodec;

    iget-object v3, p0, Lnet/ossrs/yasea/SrsEncoder;->vebi:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v9

    .line 293
    .local v9, "outBufferIndex":I
    if-ltz v9, :cond_1

    .line 294
    aget-object v7, v10, v9

    .line 295
    .restart local v7    # "bb":Ljava/nio/ByteBuffer;
    iget-object v0, p0, Lnet/ossrs/yasea/SrsEncoder;->vebi:Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p0, v7, v0}, Lnet/ossrs/yasea/SrsEncoder;->onEncodedAnnexbFrame(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 296
    iget-object v0, p0, Lnet/ossrs/yasea/SrsEncoder;->vencoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v9, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_0

    .line 301
    .end local v7    # "bb":Ljava/nio/ByteBuffer;
    :cond_1
    return-void
.end method

.method private onSoftEncodedData([BJZ)V
    .locals 4
    .param p1, "es"    # [B
    .param p2, "pts"    # J
    .param p4, "isKeyFrame"    # Z

    .prologue
    const/4 v1, 0x0

    .line 304
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 305
    .local v0, "bb":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lnet/ossrs/yasea/SrsEncoder;->vebi:Landroid/media/MediaCodec$BufferInfo;

    iput v1, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 306
    iget-object v2, p0, Lnet/ossrs/yasea/SrsEncoder;->vebi:Landroid/media/MediaCodec$BufferInfo;

    array-length v3, p1

    iput v3, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 307
    iget-object v2, p0, Lnet/ossrs/yasea/SrsEncoder;->vebi:Landroid/media/MediaCodec$BufferInfo;

    iput-wide p2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 308
    iget-object v2, p0, Lnet/ossrs/yasea/SrsEncoder;->vebi:Landroid/media/MediaCodec$BufferInfo;

    if-eqz p4, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput v1, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 309
    iget-object v1, p0, Lnet/ossrs/yasea/SrsEncoder;->vebi:Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p0, v0, v1}, Lnet/ossrs/yasea/SrsEncoder;->onEncodedAnnexbFrame(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 310
    return-void
.end method

.method private native openSoftEncoder()Z
.end method

.method private native setEncoderBitrate(I)V
.end method

.method private native setEncoderFps(I)V
.end method

.method private native setEncoderGop(I)V
.end method

.method private native setEncoderPreset(Ljava/lang/String;)V
.end method

.method private native setEncoderResolution(II)V
.end method

.method private swRgbaFrame([BIIJ)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "pts"    # J

    .prologue
    .line 390
    const/4 v4, 0x1

    const/16 v5, 0xb4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lnet/ossrs/yasea/SrsEncoder;->RGBASoftEncode([BIIZIJ)I

    .line 391
    return-void
.end method


# virtual methods
.method public chooseAudioRecord()Landroid/media/AudioRecord;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    const v2, 0xac44

    const/16 v3, 0xc

    const/4 v4, 0x2

    .line 394
    invoke-static {v2, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    .line 395
    .local v5, "minBufferSize":I
    new-instance v0, Landroid/media/AudioRecord;

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 396
    .local v0, "mic":Landroid/media/AudioRecord;
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v6

    if-eq v6, v7, :cond_1

    .line 397
    new-instance v0, Landroid/media/AudioRecord;

    .end local v0    # "mic":Landroid/media/AudioRecord;
    const/16 v3, 0x10

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 398
    .restart local v0    # "mic":Landroid/media/AudioRecord;
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    if-eq v1, v7, :cond_0

    .line 399
    const/4 v0, 0x0

    .line 407
    :goto_0
    return-object v0

    .line 401
    :cond_0
    const/16 v1, 0x10

    sput v1, Lnet/ossrs/yasea/SrsEncoder;->aChannelConfig:I

    goto :goto_0

    .line 404
    :cond_1
    sput v3, Lnet/ossrs/yasea/SrsEncoder;->aChannelConfig:I

    goto :goto_0
.end method

.method public getOutputHeight()I
    .locals 1

    .prologue
    .line 256
    sget v0, Lnet/ossrs/yasea/SrsEncoder;->vOutHeight:I

    return v0
.end method

.method public getOutputWidth()I
    .locals 1

    .prologue
    .line 252
    sget v0, Lnet/ossrs/yasea/SrsEncoder;->vOutWidth:I

    return v0
.end method

.method public getPreviewHeight()I
    .locals 1

    .prologue
    .line 248
    sget v0, Lnet/ossrs/yasea/SrsEncoder;->vPrevHeight:I

    return v0
.end method

.method public getPreviewWidth()I
    .locals 1

    .prologue
    .line 244
    sget v0, Lnet/ossrs/yasea/SrsEncoder;->vPrevWidth:I

    return v0
.end method

.method public isSoftEncoder()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lnet/ossrs/yasea/SrsEncoder;->useSoftEncoder:Z

    return v0
.end method

.method public onGetPcmFrame([BI)V
    .locals 16
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .prologue
    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/ossrs/yasea/SrsEncoder;->aencoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 328
    .local v10, "inBuffers":[Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/ossrs/yasea/SrsEncoder;->aencoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 330
    .local v12, "outBuffers":[Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/ossrs/yasea/SrsEncoder;->aencoder:Landroid/media/MediaCodec;

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    .line 331
    .local v3, "inBufferIndex":I
    if-ltz v3, :cond_0

    .line 332
    aget-object v9, v10, v3

    .line 333
    .local v9, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 334
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v9, v0, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 335
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/16 v14, 0x3e8

    div-long/2addr v4, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Lnet/ossrs/yasea/SrsEncoder;->mPresentTimeUs:J

    sub-long v6, v4, v14

    .line 336
    .local v6, "pts":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/ossrs/yasea/SrsEncoder;->aencoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    const/4 v8, 0x0

    move/from16 v5, p2

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 340
    .end local v6    # "pts":J
    .end local v9    # "bb":Ljava/nio/ByteBuffer;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/ossrs/yasea/SrsEncoder;->aencoder:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/ossrs/yasea/SrsEncoder;->aebi:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v14, 0x0

    invoke-virtual {v2, v4, v14, v15}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v11

    .line 341
    .local v11, "outBufferIndex":I
    if-ltz v11, :cond_1

    .line 342
    aget-object v9, v12, v11

    .line 343
    .restart local v9    # "bb":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/ossrs/yasea/SrsEncoder;->aebi:Landroid/media/MediaCodec$BufferInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2}, Lnet/ossrs/yasea/SrsEncoder;->onEncodedAacFrame(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/ossrs/yasea/SrsEncoder;->aencoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    invoke-virtual {v2, v11, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_0

    .line 349
    .end local v9    # "bb":Ljava/nio/ByteBuffer;
    :cond_1
    return-void
.end method

.method public onGetRgbaFrame([BII)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 354
    iget-object v0, p0, Lnet/ossrs/yasea/SrsEncoder;->flvMuxer:Lnet/ossrs/yasea/SrsFlvMuxer;

    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsFlvMuxer;->getVideoFrameCacheNumber()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v7

    .line 355
    .local v7, "videoFrameCacheNumber":Ljava/util/concurrent/atomic/AtomicInteger;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/16 v1, 0x30

    if-ge v0, v1, :cond_3

    .line 356
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lnet/ossrs/yasea/SrsEncoder;->mPresentTimeUs:J

    sub-long v4, v0, v2

    .line 357
    .local v4, "pts":J
    iget-boolean v0, p0, Lnet/ossrs/yasea/SrsEncoder;->useSoftEncoder:Z

    if-eqz v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 358
    invoke-direct/range {v0 .. v5}, Lnet/ossrs/yasea/SrsEncoder;->swRgbaFrame([BIIJ)V

    .line 368
    :goto_0
    iget-boolean v0, p0, Lnet/ossrs/yasea/SrsEncoder;->networkWeakTriggered:Z

    if-eqz v0, :cond_0

    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/ossrs/yasea/SrsEncoder;->networkWeakTriggered:Z

    .line 370
    iget-object v0, p0, Lnet/ossrs/yasea/SrsEncoder;->mHandler:Lnet/ossrs/yasea/SrsEncodeHandler;

    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsEncodeHandler;->notifyNetworkResume()V

    .line 376
    .end local v4    # "pts":J
    :cond_0
    :goto_1
    return-void

    .line 360
    .restart local v4    # "pts":J
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lnet/ossrs/yasea/SrsEncoder;->hwRgbaFrame([BII)[B

    move-result-object v6

    .line 361
    .local v6, "processedData":[B
    if-eqz v6, :cond_2

    .line 362
    invoke-direct {p0, v6, v4, v5}, Lnet/ossrs/yasea/SrsEncoder;->onProcessedYuvFrame([BJ)V

    goto :goto_0

    .line 364
    :cond_2
    iget-object v0, p0, Lnet/ossrs/yasea/SrsEncoder;->mHandler:Lnet/ossrs/yasea/SrsEncodeHandler;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "libyuv failure"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnet/ossrs/yasea/SrsEncodeHandler;->notifyEncodeIllegalArgumentException(Ljava/lang/IllegalArgumentException;)V

    goto :goto_0

    .line 373
    .end local v4    # "pts":J
    .end local v6    # "processedData":[B
    :cond_3
    iget-object v0, p0, Lnet/ossrs/yasea/SrsEncoder;->mHandler:Lnet/ossrs/yasea/SrsEncodeHandler;

    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsEncodeHandler;->notifyNetworkWeak()V

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/ossrs/yasea/SrsEncoder;->networkWeakTriggered:Z

    goto :goto_1
.end method

.method public setCameraBackFace()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/ossrs/yasea/SrsEncoder;->mCameraFaceFront:Z

    .line 196
    return-void
.end method

.method public setCameraFrontFace()V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/ossrs/yasea/SrsEncoder;->mCameraFaceFront:Z

    .line 192
    return-void
.end method

.method public setFlvMuxer(Lnet/ossrs/yasea/SrsFlvMuxer;)V
    .locals 0
    .param p1, "flvMuxer"    # Lnet/ossrs/yasea/SrsFlvMuxer;

    .prologue
    .line 82
    iput-object p1, p0, Lnet/ossrs/yasea/SrsEncoder;->flvMuxer:Lnet/ossrs/yasea/SrsFlvMuxer;

    .line 83
    return-void
.end method

.method public setLandscapeResolution(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 225
    sput p1, Lnet/ossrs/yasea/SrsEncoder;->vOutWidth:I

    .line 226
    sput p2, Lnet/ossrs/yasea/SrsEncoder;->vOutHeight:I

    .line 227
    sput p1, Lnet/ossrs/yasea/SrsEncoder;->vLandscapeWidth:I

    .line 228
    sput p2, Lnet/ossrs/yasea/SrsEncoder;->vLandscapeHeight:I

    .line 229
    sput p2, Lnet/ossrs/yasea/SrsEncoder;->vPortraitWidth:I

    .line 230
    sput p1, Lnet/ossrs/yasea/SrsEncoder;->vPortraitHeight:I

    .line 231
    return-void
.end method

.method public setMp4Muxer(Lnet/ossrs/yasea/SrsMp4Muxer;)V
    .locals 0
    .param p1, "mp4Muxer"    # Lnet/ossrs/yasea/SrsMp4Muxer;

    .prologue
    .line 86
    iput-object p1, p0, Lnet/ossrs/yasea/SrsEncoder;->mp4Muxer:Lnet/ossrs/yasea/SrsMp4Muxer;

    .line 87
    return-void
.end method

.method public setPortraitResolution(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 216
    sput p1, Lnet/ossrs/yasea/SrsEncoder;->vOutWidth:I

    .line 217
    sput p2, Lnet/ossrs/yasea/SrsEncoder;->vOutHeight:I

    .line 218
    sput p1, Lnet/ossrs/yasea/SrsEncoder;->vPortraitWidth:I

    .line 219
    sput p2, Lnet/ossrs/yasea/SrsEncoder;->vPortraitHeight:I

    .line 220
    sput p2, Lnet/ossrs/yasea/SrsEncoder;->vLandscapeWidth:I

    .line 221
    sput p1, Lnet/ossrs/yasea/SrsEncoder;->vLandscapeHeight:I

    .line 222
    return-void
.end method

.method public setPreviewResolution(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 211
    sput p1, Lnet/ossrs/yasea/SrsEncoder;->vPrevWidth:I

    .line 212
    sput p2, Lnet/ossrs/yasea/SrsEncoder;->vPrevHeight:I

    .line 213
    return-void
.end method

.method public setScreenOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 260
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 261
    sget v0, Lnet/ossrs/yasea/SrsEncoder;->vPortraitWidth:I

    sput v0, Lnet/ossrs/yasea/SrsEncoder;->vOutWidth:I

    .line 262
    sget v0, Lnet/ossrs/yasea/SrsEncoder;->vPortraitHeight:I

    sput v0, Lnet/ossrs/yasea/SrsEncoder;->vOutHeight:I

    .line 270
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lnet/ossrs/yasea/SrsEncoder;->useSoftEncoder:Z

    if-nez v0, :cond_1

    sget v0, Lnet/ossrs/yasea/SrsEncoder;->vOutWidth:I

    rem-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_2

    :cond_1
    sget v0, Lnet/ossrs/yasea/SrsEncoder;->vOutHeight:I

    rem-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 271
    :cond_2
    iget-object v0, p0, Lnet/ossrs/yasea/SrsEncoder;->vmci:Landroid/media/MediaCodecInfo;

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MTK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 272
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "MTK encoding revolution stride must be 32x"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 263
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 264
    sget v0, Lnet/ossrs/yasea/SrsEncoder;->vLandscapeWidth:I

    sput v0, Lnet/ossrs/yasea/SrsEncoder;->vOutWidth:I

    .line 265
    sget v0, Lnet/ossrs/yasea/SrsEncoder;->vLandscapeHeight:I

    sput v0, Lnet/ossrs/yasea/SrsEncoder;->vOutHeight:I

    goto :goto_0

    .line 276
    :cond_4
    sget v0, Lnet/ossrs/yasea/SrsEncoder;->vOutWidth:I

    sget v1, Lnet/ossrs/yasea/SrsEncoder;->vOutHeight:I

    invoke-direct {p0, v0, v1}, Lnet/ossrs/yasea/SrsEncoder;->setEncoderResolution(II)V

    .line 277
    return-void
.end method

.method public setVideoHDMode()V
    .locals 1

    .prologue
    .line 234
    const v0, 0x124f80

    sput v0, Lnet/ossrs/yasea/SrsEncoder;->vBitrate:I

    .line 235
    const-string v0, "veryfast"

    sput-object v0, Lnet/ossrs/yasea/SrsEncoder;->x264Preset:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public setVideoSmoothMode()V
    .locals 1

    .prologue
    .line 239
    const v0, 0x7a120

    sput v0, Lnet/ossrs/yasea/SrsEncoder;->vBitrate:I

    .line 240
    const-string v0, "superfast"

    sput-object v0, Lnet/ossrs/yasea/SrsEncoder;->x264Preset:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public start()Z
    .locals 14

    .prologue
    const/16 v13, 0x18

    const/4 v4, 0x2

    const/4 v12, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 90
    iget-object v7, p0, Lnet/ossrs/yasea/SrsEncoder;->flvMuxer:Lnet/ossrs/yasea/SrsFlvMuxer;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lnet/ossrs/yasea/SrsEncoder;->mp4Muxer:Lnet/ossrs/yasea/SrsMp4Muxer;

    if-nez v7, :cond_1

    :cond_0
    move v5, v6

    .line 167
    :goto_0
    return v5

    .line 95
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    iput-wide v8, p0, Lnet/ossrs/yasea/SrsEncoder;->mPresentTimeUs:J

    .line 99
    iget-boolean v7, p0, Lnet/ossrs/yasea/SrsEncoder;->useSoftEncoder:Z

    if-nez v7, :cond_2

    sget v7, Lnet/ossrs/yasea/SrsEncoder;->vOutWidth:I

    rem-int/lit8 v7, v7, 0x20

    if-nez v7, :cond_3

    :cond_2
    sget v7, Lnet/ossrs/yasea/SrsEncoder;->vOutHeight:I

    rem-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_4

    .line 100
    :cond_3
    iget-object v7, p0, Lnet/ossrs/yasea/SrsEncoder;->vmci:Landroid/media/MediaCodecInfo;

    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MTK"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 105
    :cond_4
    sget v7, Lnet/ossrs/yasea/SrsEncoder;->vOutWidth:I

    sget v8, Lnet/ossrs/yasea/SrsEncoder;->vOutHeight:I

    invoke-direct {p0, v7, v8}, Lnet/ossrs/yasea/SrsEncoder;->setEncoderResolution(II)V

    .line 106
    invoke-direct {p0, v13}, Lnet/ossrs/yasea/SrsEncoder;->setEncoderFps(I)V

    .line 107
    const/16 v7, 0x30

    invoke-direct {p0, v7}, Lnet/ossrs/yasea/SrsEncoder;->setEncoderGop(I)V

    .line 113
    sget v7, Lnet/ossrs/yasea/SrsEncoder;->vBitrate:I

    invoke-direct {p0, v7}, Lnet/ossrs/yasea/SrsEncoder;->setEncoderBitrate(I)V

    .line 114
    sget-object v7, Lnet/ossrs/yasea/SrsEncoder;->x264Preset:Ljava/lang/String;

    invoke-direct {p0, v7}, Lnet/ossrs/yasea/SrsEncoder;->setEncoderPreset(Ljava/lang/String;)V

    .line 116
    iget-boolean v7, p0, Lnet/ossrs/yasea/SrsEncoder;->useSoftEncoder:Z

    if-eqz v7, :cond_5

    invoke-direct {p0}, Lnet/ossrs/yasea/SrsEncoder;->openSoftEncoder()Z

    move-result v7

    if-nez v7, :cond_5

    move v5, v6

    .line 117
    goto :goto_0

    .line 123
    :cond_5
    :try_start_0
    const-string v7, "audio/mp4a-latm"

    invoke-static {v7}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v7

    iput-object v7, p0, Lnet/ossrs/yasea/SrsEncoder;->aencoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    sget v7, Lnet/ossrs/yasea/SrsEncoder;->aChannelConfig:I

    const/16 v8, 0xc

    if-ne v7, v8, :cond_6

    move v0, v4

    .line 133
    .local v0, "ach":I
    :goto_1
    const-string v7, "audio/mp4a-latm"

    const v8, 0xac44

    invoke-static {v7, v8, v0}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    .line 134
    .local v1, "audioFormat":Landroid/media/MediaFormat;
    const-string v7, "bitrate"

    const/16 v8, 0x7d00

    invoke-virtual {v1, v7, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 135
    const-string v7, "max-input-size"

    invoke-virtual {v1, v7, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 136
    iget-object v7, p0, Lnet/ossrs/yasea/SrsEncoder;->aencoder:Landroid/media/MediaCodec;

    invoke-virtual {v7, v1, v12, v12, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 138
    iget-object v7, p0, Lnet/ossrs/yasea/SrsEncoder;->flvMuxer:Lnet/ossrs/yasea/SrsFlvMuxer;

    invoke-virtual {v7, v1}, Lnet/ossrs/yasea/SrsFlvMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v7

    iput v7, p0, Lnet/ossrs/yasea/SrsEncoder;->audioFlvTrack:I

    .line 139
    iget-object v7, p0, Lnet/ossrs/yasea/SrsEncoder;->mp4Muxer:Lnet/ossrs/yasea/SrsMp4Muxer;

    invoke-virtual {v7, v1}, Lnet/ossrs/yasea/SrsMp4Muxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v7

    iput v7, p0, Lnet/ossrs/yasea/SrsEncoder;->audioMp4Track:I

    .line 144
    :try_start_1
    iget-object v7, p0, Lnet/ossrs/yasea/SrsEncoder;->vmci:Landroid/media/MediaCodecInfo;

    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v7

    iput-object v7, p0, Lnet/ossrs/yasea/SrsEncoder;->vencoder:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    const-string v7, "video/avc"

    sget v8, Lnet/ossrs/yasea/SrsEncoder;->vOutWidth:I

    sget v9, Lnet/ossrs/yasea/SrsEncoder;->vOutHeight:I

    invoke-static {v7, v8, v9}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v3

    .line 154
    .local v3, "videoFormat":Landroid/media/MediaFormat;
    const-string v7, "color-format"

    iget v8, p0, Lnet/ossrs/yasea/SrsEncoder;->mVideoColorFormat:I

    invoke-virtual {v3, v7, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 155
    const-string v7, "max-input-size"

    invoke-virtual {v3, v7, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 156
    const-string v6, "bitrate"

    sget v7, Lnet/ossrs/yasea/SrsEncoder;->vBitrate:I

    invoke-virtual {v3, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 157
    const-string v6, "frame-rate"

    invoke-virtual {v3, v6, v13}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 158
    const-string v6, "i-frame-interval"

    invoke-virtual {v3, v6, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 159
    iget-object v4, p0, Lnet/ossrs/yasea/SrsEncoder;->vencoder:Landroid/media/MediaCodec;

    invoke-virtual {v4, v3, v12, v12, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 161
    iget-object v4, p0, Lnet/ossrs/yasea/SrsEncoder;->flvMuxer:Lnet/ossrs/yasea/SrsFlvMuxer;

    invoke-virtual {v4, v3}, Lnet/ossrs/yasea/SrsFlvMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v4

    iput v4, p0, Lnet/ossrs/yasea/SrsEncoder;->videoFlvTrack:I

    .line 162
    iget-object v4, p0, Lnet/ossrs/yasea/SrsEncoder;->mp4Muxer:Lnet/ossrs/yasea/SrsMp4Muxer;

    invoke-virtual {v4, v3}, Lnet/ossrs/yasea/SrsMp4Muxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v4

    iput v4, p0, Lnet/ossrs/yasea/SrsEncoder;->videoMp4Track:I

    .line 165
    iget-object v4, p0, Lnet/ossrs/yasea/SrsEncoder;->vencoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 166
    iget-object v4, p0, Lnet/ossrs/yasea/SrsEncoder;->aencoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    goto/16 :goto_0

    .line 124
    .end local v0    # "ach":I
    .end local v1    # "audioFormat":Landroid/media/MediaFormat;
    .end local v3    # "videoFormat":Landroid/media/MediaFormat;
    :catch_0
    move-exception v2

    .line 125
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "SrsEncoder"

    const-string v5, "create aencoder failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move v5, v6

    .line 127
    goto/16 :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    :cond_6
    move v0, v5

    .line 132
    goto/16 :goto_1

    .line 145
    .restart local v0    # "ach":I
    .restart local v1    # "audioFormat":Landroid/media/MediaFormat;
    :catch_1
    move-exception v2

    .line 146
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v4, "SrsEncoder"

    const-string v5, "create vencoder failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move v5, v6

    .line 148
    goto/16 :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 171
    iget-boolean v0, p0, Lnet/ossrs/yasea/SrsEncoder;->useSoftEncoder:Z

    if-eqz v0, :cond_0

    .line 172
    invoke-direct {p0}, Lnet/ossrs/yasea/SrsEncoder;->closeSoftEncoder()V

    .line 175
    :cond_0
    iget-object v0, p0, Lnet/ossrs/yasea/SrsEncoder;->aencoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    .line 176
    const-string v0, "SrsEncoder"

    const-string v1, "stop aencoder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lnet/ossrs/yasea/SrsEncoder;->aencoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 178
    iget-object v0, p0, Lnet/ossrs/yasea/SrsEncoder;->aencoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 179
    iput-object v2, p0, Lnet/ossrs/yasea/SrsEncoder;->aencoder:Landroid/media/MediaCodec;

    .line 182
    :cond_1
    iget-object v0, p0, Lnet/ossrs/yasea/SrsEncoder;->vencoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_2

    .line 183
    const-string v0, "SrsEncoder"

    const-string v1, "stop vencoder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lnet/ossrs/yasea/SrsEncoder;->vencoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 185
    iget-object v0, p0, Lnet/ossrs/yasea/SrsEncoder;->vencoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 186
    iput-object v2, p0, Lnet/ossrs/yasea/SrsEncoder;->vencoder:Landroid/media/MediaCodec;

    .line 188
    :cond_2
    return-void
.end method

.method public swithToHardEncoder()V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/ossrs/yasea/SrsEncoder;->useSoftEncoder:Z

    .line 204
    return-void
.end method

.method public swithToSoftEncoder()V
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/ossrs/yasea/SrsEncoder;->useSoftEncoder:Z

    .line 200
    return-void
.end method
