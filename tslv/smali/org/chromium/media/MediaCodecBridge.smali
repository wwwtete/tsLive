.class Lorg/chromium/media/MediaCodecBridge;
.super Ljava/lang/Object;
.source "MediaCodecBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/MediaCodecBridge$1;,
        Lorg/chromium/media/MediaCodecBridge$GetOutputFormatResult;,
        Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;,
        Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "media"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final KEY_CROP_BOTTOM:Ljava/lang/String; = "crop-bottom"

.field private static final KEY_CROP_LEFT:Ljava/lang/String; = "crop-left"

.field private static final KEY_CROP_RIGHT:Ljava/lang/String; = "crop-right"

.field private static final KEY_CROP_TOP:Ljava/lang/String; = "crop-top"

.field private static final MAX_PRESENTATION_TIMESTAMP_SHIFT_US:J = 0x186a0L

.field private static final MEDIA_CODEC_ABORT:I = 0x8

.field private static final MEDIA_CODEC_DEQUEUE_INPUT_AGAIN_LATER:I = 0x1

.field private static final MEDIA_CODEC_DEQUEUE_OUTPUT_AGAIN_LATER:I = 0x2

.field private static final MEDIA_CODEC_ERROR:I = 0x9

.field private static final MEDIA_CODEC_INPUT_END_OF_STREAM:I = 0x5

.field private static final MEDIA_CODEC_NO_KEY:I = 0x7

.field private static final MEDIA_CODEC_OK:I = 0x0

.field private static final MEDIA_CODEC_OUTPUT_BUFFERS_CHANGED:I = 0x3

.field private static final MEDIA_CODEC_OUTPUT_END_OF_STREAM:I = 0x6

.field private static final MEDIA_CODEC_OUTPUT_FORMAT_CHANGED:I = 0x4

.field private static final PCM16_BYTES_PER_SAMPLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "cr_media"


# instance fields
.field private mAdaptivePlaybackSupported:Z

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mFlushed:Z

.field private mInputBuffers:[Ljava/nio/ByteBuffer;

.field private mLastPresentationTimeUs:J

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private mMime:Ljava/lang/String;

.field private mOutputBuffers:[Ljava/nio/ByteBuffer;

.field private mPendingAudioBuffer:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/chromium/media/MediaCodecBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/media/MediaCodecBridge;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/media/MediaCodec;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "mediaCodec"    # Landroid/media/MediaCodec;
    .param p2, "mime"    # Ljava/lang/String;
    .param p3, "adaptivePlaybackSupported"    # Z

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    sget-boolean v0, Lorg/chromium/media/MediaCodecBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 196
    :cond_0
    iput-object p1, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingAudioBuffer:[B

    .line 198
    iput-object p2, p0, Lorg/chromium/media/MediaCodecBridge;->mMime:Ljava/lang/String;

    .line 199
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/media/MediaCodecBridge;->mLastPresentationTimeUs:J

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/media/MediaCodecBridge;->mFlushed:Z

    .line 201
    iput-boolean p3, p0, Lorg/chromium/media/MediaCodecBridge;->mAdaptivePlaybackSupported:Z

    .line 202
    return-void
.end method

.method private configureAudio(Landroid/media/MediaFormat;Landroid/media/MediaCrypto;IZ)Z
    .locals 7
    .param p1, "format"    # Landroid/media/MediaFormat;
    .param p2, "crypto"    # Landroid/media/MediaCrypto;
    .param p3, "flags"    # I
    .param p4, "playAudio"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 609
    :try_start_0
    iget-object v5, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6, p2, p3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 610
    if-eqz p4, :cond_0

    .line 611
    const-string v5, "sample-rate"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 612
    .local v2, "sampleRate":I
    const-string v5, "channel-count"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 613
    .local v0, "channelCount":I
    invoke-direct {p0, v2, v0}, Lorg/chromium/media/MediaCodecBridge;->createAudioTrack(II)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v5

    if-nez v5, :cond_0

    .line 625
    .end local v0    # "channelCount":I
    .end local v2    # "sampleRate":I
    :goto_0
    return v3

    :cond_0
    move v3, v4

    .line 615
    goto :goto_0

    .line 616
    :catch_0
    move-exception v1

    .line 617
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "cr_media"

    const-string v6, "Cannot configure the audio codec"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    invoke-static {v5, v6, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 618
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 619
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v5, "cr_media"

    const-string v6, "Cannot configure the audio codec"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    invoke-static {v5, v6, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 620
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v1

    .line 621
    .local v1, "e":Landroid/media/MediaCodec$CryptoException;
    const-string v5, "cr_media"

    const-string v6, "Cannot configure the audio codec: DRM error"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    invoke-static {v5, v6, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 622
    .end local v1    # "e":Landroid/media/MediaCodec$CryptoException;
    :catch_3
    move-exception v1

    .line 623
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "cr_media"

    const-string v6, "Cannot configure the audio codec"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    invoke-static {v5, v6, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private configureVideo(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;IZ)Z
    .locals 5
    .param p1, "format"    # Landroid/media/MediaFormat;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "crypto"    # Landroid/media/MediaCrypto;
    .param p4, "flags"    # I
    .param p5, "allowAdaptivePlayback"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 472
    if-nez p5, :cond_0

    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lorg/chromium/media/MediaCodecBridge;->mAdaptivePlaybackSupported:Z

    .line 474
    :cond_0
    iget-boolean v3, p0, Lorg/chromium/media/MediaCodecBridge;->mAdaptivePlaybackSupported:Z

    if-eqz v3, :cond_1

    .line 479
    const-string v3, "max-width"

    const-string v4, "width"

    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 481
    const-string v3, "max-height"

    const-string v4, "height"

    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 484
    :cond_1
    invoke-direct {p0, p1}, Lorg/chromium/media/MediaCodecBridge;->maybeSetMaxInputSize(Landroid/media/MediaFormat;)V

    .line 485
    iget-object v3, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move v1, v2

    .line 496
    :goto_0
    return v1

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "cr_media"

    const-string v4, "Cannot configure the video codec, wrong format or surface"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v3, v4, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 489
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 490
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v3, "cr_media"

    const-string v4, "Cannot configure the video codec"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v3, v4, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 491
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 492
    .local v0, "e":Landroid/media/MediaCodec$CryptoException;
    const-string v3, "cr_media"

    const-string v4, "Cannot configure the video codec: DRM error"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v3, v4, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 493
    .end local v0    # "e":Landroid/media/MediaCodec$CryptoException;
    :catch_3
    move-exception v0

    .line 494
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "cr_media"

    const-string v4, "Cannot configure the video codec"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v3, v4, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static create(Ljava/lang/String;ZIZ)Lorg/chromium/media/MediaCodecBridge;
    .locals 7
    .param p0, "mime"    # Ljava/lang/String;
    .param p1, "isSecure"    # Z
    .param p2, "direction"    # I
    .param p3, "requireSoftwareCodec"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 207
    new-instance v1, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;

    invoke-direct {v1}, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;-><init>()V

    .line 209
    .local v1, "info":Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;
    if-ne p2, v6, :cond_0

    .line 210
    :try_start_0
    invoke-static {p0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->mediaCodec:Landroid/media/MediaCodec;

    .line 211
    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->supportsAdaptivePlayback:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    iget-object v2, v1, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->mediaCodec:Landroid/media/MediaCodec;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 223
    :goto_1
    return-object v2

    .line 214
    :cond_0
    :try_start_1
    invoke-static {p0, p1, p3}, Lorg/chromium/media/MediaCodecUtil;->createDecoder(Ljava/lang/String;ZZ)Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "cr_media"

    const-string v3, "Failed to create MediaCodec: %s, isSecure: %s, direction: %d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 223
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v2, Lorg/chromium/media/MediaCodecBridge;

    iget-object v3, v1, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->mediaCodec:Landroid/media/MediaCodec;

    iget-boolean v4, v1, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->supportsAdaptivePlayback:Z

    invoke-direct {v2, v3, p0, v4}, Lorg/chromium/media/MediaCodecBridge;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private static createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;
    .locals 1
    .param p0, "mime"    # Ljava/lang/String;
    .param p1, "sampleRate"    # I
    .param p2, "channelCount"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 501
    invoke-static {p0, p1, p2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method private createAudioTrack(II)Z
    .locals 12
    .param p1, "sampleRate"    # I
    .param p2, "channelCount"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 630
    const-string v0, "cr_media"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createAudioTrack: sampleRate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " channelCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-direct {p0, p2}, Lorg/chromium/media/MediaCodecBridge;->getAudioFormat(I)I

    move-result v3

    .line 636
    .local v3, "channelConfig":I
    invoke-static {p1, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v7

    .line 648
    .local v7, "minBufferSize":I
    div-int/lit8 v0, v7, 0x2

    div-int v8, v0, p2

    .line 649
    .local v8, "minBufferSizeInFrames":I
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    int-to-double v10, v8

    mul-double/2addr v0, v10

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    mul-int v5, v0, p2

    .line 652
    .local v5, "bufferSize":I
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 654
    :cond_0
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    move v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    .line 656
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-nez v0, :cond_1

    .line 657
    const-string v0, "cr_media"

    const-string v1, "Cannot create AudioTrack"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 658
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    move v6, v9

    .line 661
    :cond_1
    return v6
.end method

.method private static createVideoDecoderFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;
    .locals 1
    .param p0, "mime"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 506
    invoke-static {p0, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method private static createVideoEncoderFormat(Ljava/lang/String;IIIIII)Landroid/media/MediaFormat;
    .locals 2
    .param p0, "mime"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "bitRate"    # I
    .param p4, "frameRate"    # I
    .param p5, "iFrameInterval"    # I
    .param p6, "colorFormat"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 560
    invoke-static {p0, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 561
    .local v0, "format":Landroid/media/MediaFormat;
    const-string v1, "bitrate"

    invoke-virtual {v0, v1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 562
    const-string v1, "frame-rate"

    invoke-virtual {v0, v1, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 563
    const-string v1, "i-frame-interval"

    invoke-virtual {v0, v1, p5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 564
    const-string v1, "color-format"

    invoke-virtual {v0, v1, p6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 565
    return-object v0
.end method

.method private dequeueInputBuffer(J)Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;
    .locals 9
    .param p1, "timeoutUs"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 268
    const/16 v3, 0x9

    .line 269
    .local v3, "status":I
    const/4 v1, -0x1

    .line 271
    .local v1, "index":I
    :try_start_0
    iget-object v4, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4, p1, p2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 272
    .local v2, "indexOrStatus":I
    if-ltz v2, :cond_1

    .line 273
    const/4 v3, 0x0

    .line 274
    move v1, v2

    .line 284
    .end local v2    # "indexOrStatus":I
    :cond_0
    :goto_0
    new-instance v4, Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v1, v5}, Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;-><init>(IILorg/chromium/media/MediaCodecBridge$1;)V

    return-object v4

    .line 275
    .restart local v2    # "indexOrStatus":I
    :cond_1
    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 276
    const/4 v3, 0x1

    goto :goto_0

    .line 278
    :cond_2
    :try_start_1
    const-string v4, "cr_media"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected index_or_status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    sget-boolean v4, Lorg/chromium/media/MediaCodecBridge;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 281
    .end local v2    # "indexOrStatus":I
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "cr_media"

    const-string v5, "Failed to dequeue input buffer"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private dequeueOutputBuffer(J)Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;
    .locals 17
    .param p1, "timeoutUs"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 421
    new-instance v13, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v13}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 422
    .local v13, "info":Landroid/media/MediaCodec$BufferInfo;
    const/16 v4, 0x9

    .line 423
    .local v4, "status":I
    const/4 v5, -0x1

    .line 425
    .local v5, "index":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    move-wide/from16 v0, p1

    invoke-virtual {v3, v13, v0, v1}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v12

    .line 426
    .local v12, "indexOrStatus":I
    iget-wide v6, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/chromium/media/MediaCodecBridge;->mLastPresentationTimeUs:J

    cmp-long v3, v6, v8

    if-gez v3, :cond_0

    .line 430
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/chromium/media/MediaCodecBridge;->mLastPresentationTimeUs:J

    iput-wide v6, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 432
    :cond_0
    iget-wide v6, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/chromium/media/MediaCodecBridge;->mLastPresentationTimeUs:J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    if-ltz v12, :cond_2

    .line 435
    const/4 v4, 0x0

    .line 436
    move v5, v12

    .line 460
    .end local v12    # "indexOrStatus":I
    :cond_1
    :goto_0
    new-instance v3, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;

    iget v6, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget v7, v13, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-wide v8, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v10, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v11}, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;-><init>(IIIIJILorg/chromium/media/MediaCodecBridge$1;)V

    return-object v3

    .line 437
    .restart local v12    # "indexOrStatus":I
    :cond_2
    const/4 v3, -0x3

    if-ne v12, v3, :cond_4

    .line 438
    :try_start_1
    sget-boolean v3, Lorg/chromium/media/MediaCodecBridge;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-le v3, v6, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 456
    .end local v12    # "indexOrStatus":I
    :catch_0
    move-exception v2

    .line 457
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v3, "cr_media"

    const-string v6, "Failed to dequeue output buffer"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v3, v6, v7}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 439
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    .restart local v12    # "indexOrStatus":I
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/chromium/media/MediaCodecBridge;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 440
    const/4 v4, 0x3

    goto :goto_0

    .line 441
    :cond_4
    const/4 v3, -0x2

    if-ne v12, v3, :cond_5

    .line 442
    const/4 v4, 0x4

    .line 443
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v14

    .line 444
    .local v14, "newFormat":Landroid/media/MediaFormat;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v3, :cond_1

    const-string v3, "sample-rate"

    invoke-virtual {v14, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 445
    const-string v3, "sample-rate"

    invoke-virtual {v14, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v15

    .line 446
    .local v15, "newSampleRate":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v3, v15}, Landroid/media/AudioTrack;->setPlaybackRate(I)I

    move-result v3

    if-eqz v3, :cond_1

    .line 447
    const/16 v4, 0x9

    goto :goto_0

    .line 450
    .end local v14    # "newFormat":Landroid/media/MediaFormat;
    .end local v15    # "newSampleRate":I
    :cond_5
    const/4 v3, -0x1

    if-ne v12, v3, :cond_6

    .line 451
    const/4 v4, 0x2

    goto :goto_0

    .line 453
    :cond_6
    const-string v3, "cr_media"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected index_or_status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 454
    sget-boolean v3, Lorg/chromium/media/MediaCodecBridge;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
.end method

.method private flush()I
    .locals 5
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 290
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lorg/chromium/media/MediaCodecBridge;->mFlushed:Z

    .line 291
    iget-object v2, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v2, :cond_0

    .line 293
    iget-object v2, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->pause()V

    .line 294
    iget-object v2, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->flush()V

    .line 295
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingAudioBuffer:[B

    .line 297
    :cond_0
    iget-object v2, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->flush()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    return v1

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "cr_media"

    const-string v3, "Failed to flush MediaCodec"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    const/16 v1, 0x9

    goto :goto_0
.end method

.method private getAudioFormat(I)I
    .locals 2
    .param p1, "channelCount"    # I

    .prologue
    .line 738
    packed-switch p1, :pswitch_data_0

    .line 754
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 740
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 742
    :pswitch_2
    const/16 v0, 0xc

    goto :goto_0

    .line 744
    :pswitch_3
    const/16 v0, 0xcc

    goto :goto_0

    .line 746
    :pswitch_4
    const/16 v0, 0xfc

    goto :goto_0

    .line 748
    :pswitch_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 749
    const/16 v0, 0x18fc

    goto :goto_0

    .line 751
    :cond_0
    const/16 v0, 0x3fc

    goto :goto_0

    .line 738
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private getInputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 5
    .param p1, "index"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 329
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-le v1, v2, :cond_0

    .line 331
    :try_start_0
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 337
    :goto_0
    return-object v1

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "cr_media"

    const-string v2, "Failed to get input buffer"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    const/4 v1, 0x0

    goto :goto_0

    .line 337
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v1, v1, p1

    goto :goto_0
.end method

.method private getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 5
    .param p1, "index"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 343
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-le v1, v2, :cond_0

    .line 345
    :try_start_0
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 351
    :goto_0
    return-object v1

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "cr_media"

    const-string v2, "Failed to get output buffer"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    const/4 v1, 0x0

    goto :goto_0

    .line 351
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v1, v1, p1

    goto :goto_0
.end method

.method private getOutputFormat()Lorg/chromium/media/MediaCodecBridge$GetOutputFormatResult;
    .locals 7
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 315
    const/4 v1, 0x0

    .line 316
    .local v1, "format":Landroid/media/MediaFormat;
    const/4 v2, 0x0

    .line 318
    .local v2, "status":I
    :try_start_0
    iget-object v3, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 323
    :goto_0
    new-instance v3, Lorg/chromium/media/MediaCodecBridge$GetOutputFormatResult;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v1, v4}, Lorg/chromium/media/MediaCodecBridge$GetOutputFormatResult;-><init>(ILandroid/media/MediaFormat;Lorg/chromium/media/MediaCodecBridge$1;)V

    return-object v3

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v3, "cr_media"

    const-string v4, "Failed to get output format"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    const/16 v2, 0x9

    goto :goto_0
.end method

.method private isAdaptivePlaybackSupported(II)Z
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 572
    iget-boolean v0, p0, Lorg/chromium/media/MediaCodecBridge;->mAdaptivePlaybackSupported:Z

    return v0
.end method

.method private maybeSetMaxInputSize(Landroid/media/MediaFormat;)V
    .locals 8
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 513
    const-string v5, "max-input-size"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    const-string v5, "height"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 518
    .local v0, "maxHeight":I
    iget-boolean v5, p0, Lorg/chromium/media/MediaCodecBridge;->mAdaptivePlaybackSupported:Z

    if-eqz v5, :cond_2

    const-string v5, "max-height"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 519
    const-string v5, "max-height"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 521
    :cond_2
    const-string v5, "width"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 522
    .local v3, "maxWidth":I
    iget-boolean v5, p0, Lorg/chromium/media/MediaCodecBridge;->mAdaptivePlaybackSupported:Z

    if-eqz v5, :cond_3

    const-string v5, "max-width"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 523
    const-string v5, "max-width"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 527
    :cond_3
    const-string v5, "mime"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v5, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_4
    :goto_1
    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 529
    :pswitch_0
    const-string v5, "BRAVIA 4K 2015"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 535
    add-int/lit8 v5, v3, 0xf

    div-int/lit8 v5, v5, 0x10

    add-int/lit8 v6, v0, 0xf

    div-int/lit8 v6, v6, 0x10

    mul-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x10

    mul-int/lit8 v2, v5, 0x10

    .line 536
    .local v2, "maxPixels":I
    const/4 v4, 0x2

    .line 553
    .local v4, "minCompressionRatio":I
    :goto_2
    mul-int/lit8 v5, v2, 0x3

    mul-int/lit8 v6, v4, 0x2

    div-int v1, v5, v6

    .line 554
    .local v1, "maxInputSize":I
    const-string v5, "max-input-size"

    invoke-virtual {p1, v5, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    .line 527
    .end local v1    # "maxInputSize":I
    .end local v2    # "maxPixels":I
    .end local v4    # "minCompressionRatio":I
    :sswitch_0
    const-string v7, "video/avc"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_1
    const-string v7, "video/x-vnd.on2.vp8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :sswitch_2
    const-string v7, "video/hevc"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_3
    const-string v7, "video/x-vnd.on2.vp9"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x3

    goto :goto_1

    .line 540
    :pswitch_1
    mul-int v2, v3, v0

    .line 541
    .restart local v2    # "maxPixels":I
    const/4 v4, 0x2

    .line 542
    .restart local v4    # "minCompressionRatio":I
    goto :goto_2

    .line 545
    .end local v2    # "maxPixels":I
    .end local v4    # "minCompressionRatio":I
    :pswitch_2
    mul-int v2, v3, v0

    .line 546
    .restart local v2    # "maxPixels":I
    const/4 v4, 0x4

    .line 547
    .restart local v4    # "minCompressionRatio":I
    goto :goto_2

    .line 527
    nop

    :sswitch_data_0
    .sparse-switch
        -0x63185e82 -> :sswitch_2
        0x4f62373a -> :sswitch_0
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private playOutputBuffer([BZ)J
    .locals 6
    .param p1, "buf"    # [B
    .param p2, "postpone"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 676
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v1, :cond_0

    .line 717
    :goto_0
    return-wide v2

    .line 680
    :cond_0
    if-eqz p2, :cond_2

    .line 681
    sget-boolean v1, Lorg/chromium/media/MediaCodecBridge;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingAudioBuffer:[B

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 682
    :cond_1
    iput-object p1, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingAudioBuffer:[B

    goto :goto_0

    .line 686
    :cond_2
    const/4 v1, 0x3

    iget-object v2, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 687
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V

    .line 690
    :cond_3
    const/4 v0, 0x0

    .line 691
    .local v0, "size":I
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingAudioBuffer:[B

    if-eqz v1, :cond_5

    .line 692
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    iget-object v2, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingAudioBuffer:[B

    iget-object v3, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingAudioBuffer:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Landroid/media/AudioTrack;->write([BII)I

    move-result v0

    .line 693
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingAudioBuffer:[B

    array-length v1, v1

    if-eq v1, v0, :cond_4

    .line 694
    const-string v1, "cr_media"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send all data to audio output, expected size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingAudioBuffer:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actual size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 697
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingAudioBuffer:[B

    .line 700
    :cond_5
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    array-length v2, p1

    invoke-virtual {v1, p1, v4, v2}, Landroid/media/AudioTrack;->write([BII)I

    move-result v0

    .line 701
    array-length v1, p1

    if-eq v1, v0, :cond_6

    .line 702
    const-string v1, "cr_media"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send all data to audio output, expected size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actual size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 717
    :cond_6
    const-wide v2, 0xffffffffL

    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v1

    int-to-long v4, v1

    and-long/2addr v2, v4

    goto/16 :goto_0
.end method

.method private queueInputBuffer(IIIJI)I
    .locals 10
    .param p1, "index"    # I
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "presentationTimeUs"    # J
    .param p6, "flags"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 357
    invoke-direct {p0, p4, p5}, Lorg/chromium/media/MediaCodecBridge;->resetLastPresentationTimeIfNeeded(J)V

    .line 359
    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v8

    .line 364
    :goto_0
    return v0

    .line 360
    :catch_0
    move-exception v7

    .line 361
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "cr_media"

    const-string v1, "Failed to queue input buffer"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v7, v2, v8

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    const/16 v0, 0x9

    goto :goto_0
.end method

.method private queueSecureInputBuffer(II[B[B[I[IIJ)I
    .locals 12
    .param p1, "index"    # I
    .param p2, "offset"    # I
    .param p3, "iv"    # [B
    .param p4, "keyId"    # [B
    .param p5, "numBytesOfClearData"    # [I
    .param p6, "numBytesOfEncryptedData"    # [I
    .param p7, "numSubSamples"    # I
    .param p8, "presentationTimeUs"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 387
    move-wide/from16 v0, p8

    invoke-direct {p0, v0, v1}, Lorg/chromium/media/MediaCodecBridge;->resetLastPresentationTimeIfNeeded(J)V

    .line 389
    :try_start_0
    new-instance v2, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    .line 390
    .local v2, "cryptoInfo":Landroid/media/MediaCodec$CryptoInfo;
    const/4 v8, 0x1

    move/from16 v3, p7

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p4

    move-object v7, p3

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec$CryptoInfo;->set(I[I[I[B[BI)V

    .line 392
    iget-object v4, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v10, 0x0

    move v5, p1

    move v6, p2

    move-object v7, v2

    move-wide/from16 v8, p8

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 405
    const/4 v3, 0x0

    .end local v2    # "cryptoInfo":Landroid/media/MediaCodec$CryptoInfo;
    :goto_0
    return v3

    .line 393
    :catch_0
    move-exception v11

    .line 394
    .local v11, "e":Landroid/media/MediaCodec$CryptoException;
    invoke-virtual {v11}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 395
    const-string v3, "cr_media"

    const-string v4, "Failed to queue secure input buffer: CryptoException.ERROR_NO_KEY"

    invoke-static {v3, v4}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const/4 v3, 0x7

    goto :goto_0

    .line 398
    :cond_0
    const-string v3, "cr_media"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to queue secure input buffer, CryptoException with error code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    const/16 v3, 0x9

    goto :goto_0

    .line 401
    .end local v11    # "e":Landroid/media/MediaCodec$CryptoException;
    :catch_1
    move-exception v11

    .line 402
    .local v11, "e":Ljava/lang/IllegalStateException;
    const-string v3, "cr_media"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to queue secure input buffer, IllegalStateException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    const/16 v3, 0x9

    goto :goto_0
.end method

.method private release()V
    .locals 7
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 229
    :try_start_0
    const-string v0, "unknown"

    .line 230
    .local v0, "codecName":Ljava/lang/String;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_0

    .line 231
    iget-object v2, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v0

    .line 233
    :cond_0
    const-string v2, "cr_media"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling MediaCodec.release() on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    iget-object v2, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v0    # "codecName":Ljava/lang/String;
    :goto_0
    iput-object v6, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    .line 241
    iget-object v2, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v2, :cond_1

    .line 242
    iget-object v2, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    .line 244
    :cond_1
    iput-object v6, p0, Lorg/chromium/media/MediaCodecBridge;->mPendingAudioBuffer:[B

    .line 245
    return-void

    .line 235
    :catch_0
    move-exception v1

    .line 238
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "cr_media"

    const-string v3, "Cannot release media codec"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private releaseOutputBuffer(IZ)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "render"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 411
    :try_start_0
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :goto_0
    return-void

    .line 412
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "cr_media"

    const-string v2, "Failed to release output buffer"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private requestKeyFrameSoon()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 378
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 379
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "request-sync"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 380
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 381
    return-void
.end method

.method private resetLastPresentationTimeIfNeeded(J)V
    .locals 5
    .param p1, "presentationTimeUs"    # J

    .prologue
    .line 729
    iget-boolean v0, p0, Lorg/chromium/media/MediaCodecBridge;->mFlushed:Z

    if-eqz v0, :cond_0

    .line 730
    const-wide/32 v0, 0x186a0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/media/MediaCodecBridge;->mLastPresentationTimeUs:J

    .line 732
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/media/MediaCodecBridge;->mFlushed:Z

    .line 734
    :cond_0
    return-void
.end method

.method private static setCodecSpecificData(Landroid/media/MediaFormat;I[B)V
    .locals 2
    .param p0, "format"    # Landroid/media/MediaFormat;
    .param p1, "index"    # I
    .param p2, "bytes"    # [B
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 581
    packed-switch p1, :pswitch_data_0

    .line 592
    const/4 v0, 0x0

    .line 595
    .local v0, "name":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 596
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 598
    :cond_0
    return-void

    .line 583
    .end local v0    # "name":Ljava/lang/String;
    :pswitch_0
    const-string v0, "csd-0"

    .line 584
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 586
    .end local v0    # "name":Ljava/lang/String;
    :pswitch_1
    const-string v0, "csd-1"

    .line 587
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 589
    .end local v0    # "name":Ljava/lang/String;
    :pswitch_2
    const-string v0, "csd-2"

    .line 590
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 581
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static setFrameHasADTSHeader(Landroid/media/MediaFormat;)V
    .locals 2
    .param p0, "format"    # Landroid/media/MediaFormat;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 602
    const-string v0, "is-adts"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 603
    return-void
.end method

.method private setVideoBitrate(I)V
    .locals 2
    .param p1, "bps"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 370
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 371
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "video-bitrate"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 372
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 373
    return-void
.end method

.method private setVolume(D)V
    .locals 3
    .param p1, "volume"    # D
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 723
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    double-to-float v1, p1

    double-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 726
    :cond_0
    return-void
.end method

.method private start()Z
    .locals 5
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 251
    :try_start_0
    iget-object v3, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->start()V

    .line 252
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-gt v3, v4, :cond_0

    .line 253
    iget-object v3, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/chromium/media/MediaCodecBridge;->mInputBuffers:[Ljava/nio/ByteBuffer;

    .line 254
    iget-object v3, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/chromium/media/MediaCodecBridge;->mOutputBuffers:[Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 263
    :cond_0
    :goto_0
    return v1

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v3, "cr_media"

    const-string v4, "Cannot start the media codec"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v3, v4, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 258
    goto :goto_0

    .line 259
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "cr_media"

    const-string v4, "Cannot start the media codec"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v3, v4, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 261
    goto :goto_0
.end method

.method private stop()V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 308
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 311
    :cond_0
    return-void
.end method
