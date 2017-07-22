.class public Lnet/ossrs/yasea/SrsPublisher;
.super Ljava/lang/Object;
.source "SrsPublisher.java"


# static fields
.field private static aec:Landroid/media/audiofx/AcousticEchoCanceler;

.field private static agc:Landroid/media/audiofx/AutomaticGainControl;

.field private static mic:Landroid/media/AudioRecord;


# instance fields
.field private aloop:Z

.field private aworker:Ljava/lang/Thread;

.field private lastTimeMillis:J

.field private mCameraView:Lnet/ossrs/yasea/SrsCameraView;

.field private mEncoder:Lnet/ossrs/yasea/SrsEncoder;

.field private mFlvMuxer:Lnet/ossrs/yasea/SrsFlvMuxer;

.field private mMp4Muxer:Lnet/ossrs/yasea/SrsMp4Muxer;

.field private mSamplingFps:D

.field private sendAudioOnly:Z

.field private videoFrameCount:I


# direct methods
.method public constructor <init>(Lnet/ossrs/yasea/SrsCameraView;)V
    .locals 2
    .param p1, "view"    # Lnet/ossrs/yasea/SrsCameraView;

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v0, p0, Lnet/ossrs/yasea/SrsPublisher;->aloop:Z

    .line 27
    iput-boolean v0, p0, Lnet/ossrs/yasea/SrsPublisher;->sendAudioOnly:Z

    .line 37
    iput-object p1, p0, Lnet/ossrs/yasea/SrsPublisher;->mCameraView:Lnet/ossrs/yasea/SrsCameraView;

    .line 38
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mCameraView:Lnet/ossrs/yasea/SrsCameraView;

    new-instance v1, Lnet/ossrs/yasea/SrsPublisher$1;

    invoke-direct {v1, p0}, Lnet/ossrs/yasea/SrsPublisher$1;-><init>(Lnet/ossrs/yasea/SrsPublisher;)V

    invoke-virtual {v0, v1}, Lnet/ossrs/yasea/SrsCameraView;->setPreviewCallback(Lnet/ossrs/yasea/SrsCameraView$PreviewCallback;)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lnet/ossrs/yasea/SrsPublisher;)V
    .locals 0
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsPublisher;

    .prologue
    .line 17
    invoke-direct {p0}, Lnet/ossrs/yasea/SrsPublisher;->calcSamplingFps()V

    return-void
.end method

.method static synthetic access$100(Lnet/ossrs/yasea/SrsPublisher;)Z
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsPublisher;

    .prologue
    .line 17
    iget-boolean v0, p0, Lnet/ossrs/yasea/SrsPublisher;->sendAudioOnly:Z

    return v0
.end method

.method static synthetic access$200(Lnet/ossrs/yasea/SrsPublisher;)Lnet/ossrs/yasea/SrsEncoder;
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsPublisher;

    .prologue
    .line 17
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mEncoder:Lnet/ossrs/yasea/SrsEncoder;

    return-object v0
.end method

.method static synthetic access$300(Lnet/ossrs/yasea/SrsPublisher;)V
    .locals 0
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsPublisher;

    .prologue
    .line 17
    invoke-direct {p0}, Lnet/ossrs/yasea/SrsPublisher;->startAudio()V

    return-void
.end method

.method private calcSamplingFps()V
    .locals 6

    .prologue
    const-wide/32 v4, 0xf4240

    .line 51
    iget v2, p0, Lnet/ossrs/yasea/SrsPublisher;->videoFrameCount:I

    if-nez v2, :cond_1

    .line 52
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    div-long/2addr v2, v4

    iput-wide v2, p0, Lnet/ossrs/yasea/SrsPublisher;->lastTimeMillis:J

    .line 53
    iget v2, p0, Lnet/ossrs/yasea/SrsPublisher;->videoFrameCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lnet/ossrs/yasea/SrsPublisher;->videoFrameCount:I

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget v2, p0, Lnet/ossrs/yasea/SrsPublisher;->videoFrameCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lnet/ossrs/yasea/SrsPublisher;->videoFrameCount:I

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    .line 56
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    div-long/2addr v2, v4

    iget-wide v4, p0, Lnet/ossrs/yasea/SrsPublisher;->lastTimeMillis:J

    sub-long v0, v2, v4

    .line 57
    .local v0, "diffTimeMillis":J
    iget v2, p0, Lnet/ossrs/yasea/SrsPublisher;->videoFrameCount:I

    int-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    long-to-double v4, v0

    div-double/2addr v2, v4

    iput-wide v2, p0, Lnet/ossrs/yasea/SrsPublisher;->mSamplingFps:D

    .line 58
    const/4 v2, 0x0

    iput v2, p0, Lnet/ossrs/yasea/SrsPublisher;->videoFrameCount:I

    goto :goto_0
.end method

.method private startAudio()V
    .locals 5

    .prologue
    .line 222
    sget-object v2, Lnet/ossrs/yasea/SrsPublisher;->mic:Landroid/media/AudioRecord;

    if-eqz v2, :cond_0

    .line 223
    sget-object v2, Lnet/ossrs/yasea/SrsPublisher;->mic:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V

    .line 225
    const/16 v2, 0x1000

    new-array v0, v2, [B

    .line 226
    .local v0, "pcmBuffer":[B
    :goto_0
    iget-boolean v2, p0, Lnet/ossrs/yasea/SrsPublisher;->aloop:Z

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 227
    sget-object v2, Lnet/ossrs/yasea/SrsPublisher;->mic:Landroid/media/AudioRecord;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Landroid/media/AudioRecord;->read([BII)I

    move-result v1

    .line 228
    .local v1, "size":I
    if-gtz v1, :cond_1

    .line 234
    .end local v0    # "pcmBuffer":[B
    .end local v1    # "size":I
    :cond_0
    return-void

    .line 231
    .restart local v0    # "pcmBuffer":[B
    .restart local v1    # "size":I
    :cond_1
    iget-object v2, p0, Lnet/ossrs/yasea/SrsPublisher;->mEncoder:Lnet/ossrs/yasea/SrsEncoder;

    invoke-virtual {v2, v0, v1}, Lnet/ossrs/yasea/SrsEncoder;->onGetPcmFrame([BI)V

    goto :goto_0
.end method

.method private stopAudio()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 237
    iput-boolean v3, p0, Lnet/ossrs/yasea/SrsPublisher;->aloop:Z

    .line 238
    iget-object v1, p0, Lnet/ossrs/yasea/SrsPublisher;->aworker:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lnet/ossrs/yasea/SrsPublisher;->aworker:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 241
    :try_start_0
    iget-object v1, p0, Lnet/ossrs/yasea/SrsPublisher;->aworker:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    iput-object v2, p0, Lnet/ossrs/yasea/SrsPublisher;->aworker:Ljava/lang/Thread;

    .line 248
    :cond_0
    sget-object v1, Lnet/ossrs/yasea/SrsPublisher;->mic:Landroid/media/AudioRecord;

    if-eqz v1, :cond_1

    .line 249
    sget-object v1, Lnet/ossrs/yasea/SrsPublisher;->mic:Landroid/media/AudioRecord;

    invoke-virtual {v1, v2}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;)V

    .line 250
    sget-object v1, Lnet/ossrs/yasea/SrsPublisher;->mic:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 251
    sget-object v1, Lnet/ossrs/yasea/SrsPublisher;->mic:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 252
    sput-object v2, Lnet/ossrs/yasea/SrsPublisher;->mic:Landroid/media/AudioRecord;

    .line 255
    :cond_1
    sget-object v1, Lnet/ossrs/yasea/SrsPublisher;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v1, :cond_2

    .line 256
    sget-object v1, Lnet/ossrs/yasea/SrsPublisher;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v1, v3}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I

    .line 257
    sget-object v1, Lnet/ossrs/yasea/SrsPublisher;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v1}, Landroid/media/audiofx/AcousticEchoCanceler;->release()V

    .line 258
    sput-object v2, Lnet/ossrs/yasea/SrsPublisher;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 261
    :cond_2
    sget-object v1, Lnet/ossrs/yasea/SrsPublisher;->agc:Landroid/media/audiofx/AutomaticGainControl;

    if-eqz v1, :cond_3

    .line 262
    sget-object v1, Lnet/ossrs/yasea/SrsPublisher;->agc:Landroid/media/audiofx/AutomaticGainControl;

    invoke-virtual {v1, v3}, Landroid/media/audiofx/AutomaticGainControl;->setEnabled(Z)I

    .line 263
    sget-object v1, Lnet/ossrs/yasea/SrsPublisher;->agc:Landroid/media/audiofx/AutomaticGainControl;

    invoke-virtual {v1}, Landroid/media/audiofx/AutomaticGainControl;->release()V

    .line 264
    sput-object v2, Lnet/ossrs/yasea/SrsPublisher;->agc:Landroid/media/audiofx/AutomaticGainControl;

    .line 266
    :cond_3
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lnet/ossrs/yasea/SrsPublisher;->aworker:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method


# virtual methods
.method public getCamraId()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mCameraView:Lnet/ossrs/yasea/SrsCameraView;

    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsCameraView;->getCameraId()I

    move-result v0

    return v0
.end method

.method public getPreviewHeight()I
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mEncoder:Lnet/ossrs/yasea/SrsEncoder;

    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsEncoder;->getPreviewHeight()I

    move-result v0

    return v0
.end method

.method public getPreviewWidth()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mEncoder:Lnet/ossrs/yasea/SrsEncoder;

    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsEncoder;->getPreviewWidth()I

    move-result v0

    return v0
.end method

.method public getmSamplingFps()D
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mSamplingFps:D

    return-wide v0
.end method

.method public isSoftEncoder()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mEncoder:Lnet/ossrs/yasea/SrsEncoder;

    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsEncoder;->isSoftEncoder()Z

    move-result v0

    return v0
.end method

.method public pauseRecord()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mMp4Muxer:Lnet/ossrs/yasea/SrsMp4Muxer;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mMp4Muxer:Lnet/ossrs/yasea/SrsMp4Muxer;

    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsMp4Muxer;->pause()V

    .line 140
    :cond_0
    return-void
.end method

.method public resumeRecord()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mMp4Muxer:Lnet/ossrs/yasea/SrsMp4Muxer;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mMp4Muxer:Lnet/ossrs/yasea/SrsMp4Muxer;

    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsMp4Muxer;->resume()V

    .line 146
    :cond_0
    return-void
.end method

.method public setEncodeHandler(Lnet/ossrs/yasea/SrsEncodeHandler;)V
    .locals 2
    .param p1, "handler"    # Lnet/ossrs/yasea/SrsEncodeHandler;

    .prologue
    .line 292
    new-instance v0, Lnet/ossrs/yasea/SrsEncoder;

    invoke-direct {v0, p1}, Lnet/ossrs/yasea/SrsEncoder;-><init>(Lnet/ossrs/yasea/SrsEncodeHandler;)V

    iput-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mEncoder:Lnet/ossrs/yasea/SrsEncoder;

    .line 293
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mFlvMuxer:Lnet/ossrs/yasea/SrsFlvMuxer;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mEncoder:Lnet/ossrs/yasea/SrsEncoder;

    iget-object v1, p0, Lnet/ossrs/yasea/SrsPublisher;->mFlvMuxer:Lnet/ossrs/yasea/SrsFlvMuxer;

    invoke-virtual {v0, v1}, Lnet/ossrs/yasea/SrsEncoder;->setFlvMuxer(Lnet/ossrs/yasea/SrsFlvMuxer;)V

    .line 296
    :cond_0
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mMp4Muxer:Lnet/ossrs/yasea/SrsMp4Muxer;

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mEncoder:Lnet/ossrs/yasea/SrsEncoder;

    iget-object v1, p0, Lnet/ossrs/yasea/SrsPublisher;->mMp4Muxer:Lnet/ossrs/yasea/SrsMp4Muxer;

    invoke-virtual {v0, v1}, Lnet/ossrs/yasea/SrsEncoder;->setMp4Muxer(Lnet/ossrs/yasea/SrsMp4Muxer;)V

    .line 299
    :cond_1
    return-void
.end method

.method public setOutputResolution(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 182
    if-gt p1, p2, :cond_0

    .line 183
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mEncoder:Lnet/ossrs/yasea/SrsEncoder;

    invoke-virtual {v0, p1, p2}, Lnet/ossrs/yasea/SrsEncoder;->setPortraitResolution(II)V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mEncoder:Lnet/ossrs/yasea/SrsEncoder;

    invoke-virtual {v0, p1, p2}, Lnet/ossrs/yasea/SrsEncoder;->setLandscapeResolution(II)V

    goto :goto_0
.end method

.method public setPreviewResolution(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 177
    iget-object v1, p0, Lnet/ossrs/yasea/SrsPublisher;->mCameraView:Lnet/ossrs/yasea/SrsCameraView;

    invoke-virtual {v1, p1, p2}, Lnet/ossrs/yasea/SrsCameraView;->setPreviewResolution(II)[I

    move-result-object v0

    .line 178
    .local v0, "resolution":[I
    iget-object v1, p0, Lnet/ossrs/yasea/SrsPublisher;->mEncoder:Lnet/ossrs/yasea/SrsEncoder;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lnet/ossrs/yasea/SrsEncoder;->setPreviewResolution(II)V

    .line 179
    return-void
.end method

.method public setRecordHandler(Lnet/ossrs/yasea/SrsRecordHandler;)V
    .locals 2
    .param p1, "handler"    # Lnet/ossrs/yasea/SrsRecordHandler;

    .prologue
    .line 285
    new-instance v0, Lnet/ossrs/yasea/SrsMp4Muxer;

    invoke-direct {v0, p1}, Lnet/ossrs/yasea/SrsMp4Muxer;-><init>(Lnet/ossrs/yasea/SrsRecordHandler;)V

    iput-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mMp4Muxer:Lnet/ossrs/yasea/SrsMp4Muxer;

    .line 286
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mEncoder:Lnet/ossrs/yasea/SrsEncoder;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mEncoder:Lnet/ossrs/yasea/SrsEncoder;

    iget-object v1, p0, Lnet/ossrs/yasea/SrsPublisher;->mMp4Muxer:Lnet/ossrs/yasea/SrsMp4Muxer;

    invoke-virtual {v0, v1}, Lnet/ossrs/yasea/SrsEncoder;->setMp4Muxer(Lnet/ossrs/yasea/SrsMp4Muxer;)V

    .line 289
    :cond_0
    return-void
.end method

.method public setRtmpHandler(Lcom/github/faucamp/simplertmp/RtmpHandler;)V
    .locals 2
    .param p1, "handler"    # Lcom/github/faucamp/simplertmp/RtmpHandler;

    .prologue
    .line 278
    new-instance v0, Lnet/ossrs/yasea/SrsFlvMuxer;

    invoke-direct {v0, p1}, Lnet/ossrs/yasea/SrsFlvMuxer;-><init>(Lcom/github/faucamp/simplertmp/RtmpHandler;)V

    iput-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mFlvMuxer:Lnet/ossrs/yasea/SrsFlvMuxer;

    .line 279
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mEncoder:Lnet/ossrs/yasea/SrsEncoder;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mEncoder:Lnet/ossrs/yasea/SrsEncoder;

    iget-object v1, p0, Lnet/ossrs/yasea/SrsPublisher;->mFlvMuxer:Lnet/ossrs/yasea/SrsFlvMuxer;

    invoke-virtual {v0, v1}, Lnet/ossrs/yasea/SrsEncoder;->setFlvMuxer(Lnet/ossrs/yasea/SrsFlvMuxer;)V

    .line 282
    :cond_0
    return-void
.end method

.method public setScreenOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mCameraView:Lnet/ossrs/yasea/SrsCameraView;

    invoke-virtual {v0, p1}, Lnet/ossrs/yasea/SrsCameraView;->setPreviewOrientation(I)V

    .line 191
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mEncoder:Lnet/ossrs/yasea/SrsEncoder;

    invoke-virtual {v0, p1}, Lnet/ossrs/yasea/SrsEncoder;->setScreenOrientation(I)V

    .line 192
    return-void
.end method

.method public setSendAudioOnly(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 203
    iput-boolean p1, p0, Lnet/ossrs/yasea/SrsPublisher;->sendAudioOnly:Z

    .line 204
    return-void
.end method

.method public setVideoHDMode()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mEncoder:Lnet/ossrs/yasea/SrsEncoder;

    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsEncoder;->setVideoHDMode()V

    .line 196
    return-void
.end method

.method public setVideoSmoothMode()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mEncoder:Lnet/ossrs/yasea/SrsEncoder;

    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsEncoder;->setVideoSmoothMode()V

    .line 200
    return-void
.end method

.method public startEncode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 64
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mEncoder:Lnet/ossrs/yasea/SrsEncoder;

    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsEncoder;->start()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mEncoder:Lnet/ossrs/yasea/SrsEncoder;

    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsEncoder;->chooseAudioRecord()Landroid/media/AudioRecord;

    move-result-object v0

    sput-object v0, Lnet/ossrs/yasea/SrsPublisher;->mic:Landroid/media/AudioRecord;

    .line 69
    sget-object v0, Lnet/ossrs/yasea/SrsPublisher;->mic:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    sget-object v0, Lnet/ossrs/yasea/SrsPublisher;->mic:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v0

    invoke-static {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->create(I)Landroid/media/audiofx/AcousticEchoCanceler;

    move-result-object v0

    sput-object v0, Lnet/ossrs/yasea/SrsPublisher;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 75
    sget-object v0, Lnet/ossrs/yasea/SrsPublisher;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v0, :cond_2

    .line 76
    sget-object v0, Lnet/ossrs/yasea/SrsPublisher;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v0, v2}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I

    .line 80
    :cond_2
    invoke-static {}, Landroid/media/audiofx/AutomaticGainControl;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    sget-object v0, Lnet/ossrs/yasea/SrsPublisher;->mic:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v0

    invoke-static {v0}, Landroid/media/audiofx/AutomaticGainControl;->create(I)Landroid/media/audiofx/AutomaticGainControl;

    move-result-object v0

    sput-object v0, Lnet/ossrs/yasea/SrsPublisher;->agc:Landroid/media/audiofx/AutomaticGainControl;

    .line 82
    sget-object v0, Lnet/ossrs/yasea/SrsPublisher;->agc:Landroid/media/audiofx/AutomaticGainControl;

    if-eqz v0, :cond_3

    .line 83
    sget-object v0, Lnet/ossrs/yasea/SrsPublisher;->agc:Landroid/media/audiofx/AutomaticGainControl;

    invoke-virtual {v0, v2}, Landroid/media/audiofx/AutomaticGainControl;->setEnabled(Z)I

    .line 87
    :cond_3
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mCameraView:Lnet/ossrs/yasea/SrsCameraView;

    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsCameraView;->startCamera()Z

    move-result v0

    if-nez v0, :cond_4

    .line 88
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mEncoder:Lnet/ossrs/yasea/SrsEncoder;

    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsEncoder;->stop()V

    goto :goto_0

    .line 92
    :cond_4
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/ossrs/yasea/SrsPublisher$2;

    invoke-direct {v1, p0}, Lnet/ossrs/yasea/SrsPublisher$2;-><init>(Lnet/ossrs/yasea/SrsPublisher;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->aworker:Ljava/lang/Thread;

    .line 99
    iput-boolean v2, p0, Lnet/ossrs/yasea/SrsPublisher;->aloop:Z

    .line 100
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->aworker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public startPublish(Ljava/lang/String;)V
    .locals 3
    .param p1, "rtmpUrl"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mFlvMuxer:Lnet/ossrs/yasea/SrsFlvMuxer;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mFlvMuxer:Lnet/ossrs/yasea/SrsFlvMuxer;

    invoke-virtual {v0, p1}, Lnet/ossrs/yasea/SrsFlvMuxer;->start(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mFlvMuxer:Lnet/ossrs/yasea/SrsFlvMuxer;

    iget-object v1, p0, Lnet/ossrs/yasea/SrsPublisher;->mEncoder:Lnet/ossrs/yasea/SrsEncoder;

    invoke-virtual {v1}, Lnet/ossrs/yasea/SrsEncoder;->getOutputWidth()I

    move-result v1

    iget-object v2, p0, Lnet/ossrs/yasea/SrsPublisher;->mEncoder:Lnet/ossrs/yasea/SrsEncoder;

    invoke-virtual {v2}, Lnet/ossrs/yasea/SrsEncoder;->getOutputHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lnet/ossrs/yasea/SrsFlvMuxer;->setVideoResolution(II)V

    .line 113
    invoke-virtual {p0}, Lnet/ossrs/yasea/SrsPublisher;->startEncode()V

    .line 115
    :cond_0
    return-void
.end method

.method public startRecord(Ljava/lang/String;)V
    .locals 2
    .param p1, "recPath"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mMp4Muxer:Lnet/ossrs/yasea/SrsMp4Muxer;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mMp4Muxer:Lnet/ossrs/yasea/SrsMp4Muxer;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnet/ossrs/yasea/SrsMp4Muxer;->record(Ljava/io/File;)V

    .line 128
    :cond_0
    return-void
.end method

.method public stopEncode()V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Lnet/ossrs/yasea/SrsPublisher;->stopAudio()V

    .line 105
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mCameraView:Lnet/ossrs/yasea/SrsCameraView;

    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsCameraView;->stopCamera()V

    .line 106
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mEncoder:Lnet/ossrs/yasea/SrsEncoder;

    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsEncoder;->stop()V

    .line 107
    return-void
.end method

.method public stopPublish()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mFlvMuxer:Lnet/ossrs/yasea/SrsFlvMuxer;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lnet/ossrs/yasea/SrsPublisher;->stopEncode()V

    .line 120
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mFlvMuxer:Lnet/ossrs/yasea/SrsFlvMuxer;

    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsFlvMuxer;->stop()V

    .line 122
    :cond_0
    return-void
.end method

.method public stopRecord()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mMp4Muxer:Lnet/ossrs/yasea/SrsMp4Muxer;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mMp4Muxer:Lnet/ossrs/yasea/SrsMp4Muxer;

    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsMp4Muxer;->stop()V

    .line 134
    :cond_0
    return-void
.end method

.method public switchCameraFace(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 211
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mCameraView:Lnet/ossrs/yasea/SrsCameraView;

    invoke-virtual {v0, p1}, Lnet/ossrs/yasea/SrsCameraView;->setCameraId(I)V

    .line 212
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mCameraView:Lnet/ossrs/yasea/SrsCameraView;

    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsCameraView;->stopCamera()V

    .line 213
    if-nez p1, :cond_0

    .line 214
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mEncoder:Lnet/ossrs/yasea/SrsEncoder;

    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsEncoder;->setCameraBackFace()V

    .line 218
    :goto_0
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mCameraView:Lnet/ossrs/yasea/SrsCameraView;

    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsCameraView;->startCamera()Z

    .line 219
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mEncoder:Lnet/ossrs/yasea/SrsEncoder;

    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsEncoder;->setCameraFrontFace()V

    goto :goto_0
.end method

.method public switchCameraFilter(Lcom/seu/magicfilter/utils/MagicFilterType;)Z
    .locals 1
    .param p1, "type"    # Lcom/seu/magicfilter/utils/MagicFilterType;

    .prologue
    .line 207
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mCameraView:Lnet/ossrs/yasea/SrsCameraView;

    invoke-virtual {v0, p1}, Lnet/ossrs/yasea/SrsCameraView;->setFilter(Lcom/seu/magicfilter/utils/MagicFilterType;)Z

    move-result v0

    return v0
.end method

.method public switchMute()V
    .locals 5

    .prologue
    .line 269
    iget-object v3, p0, Lnet/ossrs/yasea/SrsPublisher;->mCameraView:Lnet/ossrs/yasea/SrsCameraView;

    invoke-virtual {v3}, Lnet/ossrs/yasea/SrsCameraView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 270
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    .line 271
    .local v2, "oldMode":I
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 272
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    .line 273
    .local v1, "isMute":Z
    :goto_0
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 274
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 275
    return-void

    .line 272
    .end local v1    # "isMute":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public swithToHardEncoder()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mEncoder:Lnet/ossrs/yasea/SrsEncoder;

    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsEncoder;->swithToHardEncoder()V

    .line 154
    return-void
.end method

.method public swithToSoftEncoder()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher;->mEncoder:Lnet/ossrs/yasea/SrsEncoder;

    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsEncoder;->swithToSoftEncoder()V

    .line 150
    return-void
.end method
