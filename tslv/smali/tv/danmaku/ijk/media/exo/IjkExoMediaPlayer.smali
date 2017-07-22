.class public Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;
.super Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;
.source "IjkExoMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;
    }
.end annotation


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mDataSource:Ljava/lang/String;

.field private mDemoListener:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;

.field private mEventLogger:Ltv/danmaku/ijk/media/exo/demo/EventLogger;

.field private mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

.field private mRendererBuilder:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$RendererBuilder;

.field private mSurface:Landroid/view/Surface;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mAppContext:Landroid/content/Context;

    .line 56
    new-instance v0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;-><init>(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$1;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mDemoListener:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;

    .line 58
    new-instance v0, Ltv/danmaku/ijk/media/exo/demo/EventLogger;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/exo/demo/EventLogger;-><init>()V

    iput-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mEventLogger:Ltv/danmaku/ijk/media/exo/demo/EventLogger;

    .line 59
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mEventLogger:Ltv/danmaku/ijk/media/exo/demo/EventLogger;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo/demo/EventLogger;->startSession()V

    .line 60
    return-void
.end method

.method static synthetic access$100(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    .prologue
    .line 42
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    return-object v0
.end method

.method static synthetic access$1000(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;IIII)V
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2, p3, p4}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->notifyOnVideoSizeChanged(IIII)V

    return-void
.end method

.method static synthetic access$1100(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;II)Z
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->notifyOnInfo(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;II)Z
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->notifyOnInfo(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)V
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    .prologue
    .line 42
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->notifyOnPrepared()V

    return-void
.end method

.method static synthetic access$400(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)V
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    .prologue
    .line 42
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->notifyOnCompletion()V

    return-void
.end method

.method static synthetic access$500(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;II)Z
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->notifyOnInfo(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)V
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    .prologue
    .line 42
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->notifyOnCompletion()V

    return-void
.end method

.method static synthetic access$700(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;II)Z
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->notifyOnError(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$802(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;I)I
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$902(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;I)I
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mVideoHeight:I

    return p1
.end method

.method private getRendererBuilder()Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$RendererBuilder;
    .locals 7

    .prologue
    .line 305
    iget-object v3, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mDataSource:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 306
    .local v1, "contentUri":Landroid/net/Uri;
    iget-object v3, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mAppContext:Landroid/content/Context;

    const-string v4, "IjkExoMediaPlayer"

    invoke-static {v3, v4}, Lcom/google/android/exoplayer/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, "userAgent":Ljava/lang/String;
    invoke-static {v1}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->inferContentType(Landroid/net/Uri;)I

    move-result v0

    .line 308
    .local v0, "contentType":I
    packed-switch v0, :pswitch_data_0

    .line 319
    new-instance v3, Ltv/danmaku/ijk/media/exo/demo/player/ExtractorRendererBuilder;

    iget-object v4, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mAppContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2, v1}, Ltv/danmaku/ijk/media/exo/demo/player/ExtractorRendererBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V

    :goto_0
    return-object v3

    .line 310
    :pswitch_0
    new-instance v3, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder;

    iget-object v4, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ltv/danmaku/ijk/media/exo/demo/SmoothStreamingTestMediaDrmCallback;

    invoke-direct {v6}, Ltv/danmaku/ijk/media/exo/demo/SmoothStreamingTestMediaDrmCallback;-><init>()V

    invoke-direct {v3, v4, v2, v5, v6}, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer/drm/MediaDrmCallback;)V

    goto :goto_0

    .line 316
    :pswitch_1
    new-instance v3, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder;

    iget-object v4, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v2, v5}, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static inferContentType(Landroid/net/Uri;)I
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 330
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "lastPathSegment":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->inferContentType(Ljava/lang/String;)I

    move-result v1

    return v1
.end method


# virtual methods
.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferedPercentage()I
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    if-nez v0, :cond_0

    .line 299
    const/4 v0, 0x0

    .line 301
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getBufferedPercentage()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    if-nez v0, :cond_0

    .line 197
    const-wide/16 v0, 0x0

    .line 198
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mDataSource:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    if-nez v0, :cond_0

    .line 204
    const-wide/16 v0, 0x0

    .line 205
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getDuration()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mVideoHeight:I

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x1

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mVideoWidth:I

    return v0
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public isPlayable()Z
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x1

    return v0
.end method

.method public isPlaying()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 172
    iget-object v2, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    if-nez v2, :cond_0

    .line 183
    :goto_0
    return v1

    .line 174
    :cond_0
    iget-object v2, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getPlaybackState()I

    move-result v0

    .line 175
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 178
    :pswitch_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getPlayWhenReady()Z

    move-result v1

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->setPlayWhenReady(Z)V

    goto :goto_0
.end method

.method public prepareAsync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t prepare a prepared player"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    new-instance v0, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mRendererBuilder:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$RendererBuilder;

    invoke-direct {v0, v1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;-><init>(Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$RendererBuilder;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    .line 111
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mDemoListener:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->addListener(Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$Listener;)V

    .line 112
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mEventLogger:Ltv/danmaku/ijk/media/exo/demo/EventLogger;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->addListener(Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$Listener;)V

    .line 113
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mEventLogger:Ltv/danmaku/ijk/media/exo/demo/EventLogger;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->setInfoListener(Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InfoListener;)V

    .line 114
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mEventLogger:Ltv/danmaku/ijk/media/exo/demo/EventLogger;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->setInternalErrorListener(Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InternalErrorListener;)V

    .line 116
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->setSurface(Landroid/view/Surface;)V

    .line 119
    :cond_1
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->prepare()V

    .line 120
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->setPlayWhenReady(Z)V

    .line 121
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 287
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->reset()V

    .line 290
    iput-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mDemoListener:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;

    .line 292
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mEventLogger:Ltv/danmaku/ijk/media/exo/demo/EventLogger;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo/demo/EventLogger;->endSession()V

    .line 293
    iput-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mEventLogger:Ltv/danmaku/ijk/media/exo/demo/EventLogger;

    .line 295
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 220
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->release()V

    .line 222
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mDemoListener:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->removeListener(Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$Listener;)V

    .line 223
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mEventLogger:Ltv/danmaku/ijk/media/exo/demo/EventLogger;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->removeListener(Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$Listener;)V

    .line 224
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v0, v2}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->setInfoListener(Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InfoListener;)V

    .line 225
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v0, v2}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->setInternalErrorListener(Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$InternalErrorListener;)V

    .line 226
    iput-object v2, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    .line 229
    :cond_0
    iput-object v2, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mSurface:Landroid/view/Surface;

    .line 230
    iput-object v2, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mDataSource:Ljava/lang/String;

    .line 231
    iput v3, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mVideoWidth:I

    .line 232
    iput v3, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mVideoHeight:I

    .line 233
    return-void
.end method

.method public seekTo(J)V
    .locals 1
    .param p1, "msec"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    if-nez v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v0, p1, p2}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->seekTo(J)V

    goto :goto_0
.end method

.method public setAudioStreamType(I)V
    .locals 0
    .param p1, "streamtype"    # I

    .prologue
    .line 278
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 79
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mDataSource:Ljava/lang/String;

    .line 80
    invoke-direct {p0}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->getRendererBuilder()Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$RendererBuilder;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mRendererBuilder:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$RendererBuilder;

    .line 81
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 87
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 97
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "no support"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 91
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 92
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "sh"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 68
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public setKeepInBackground(Z)V
    .locals 0
    .param p1, "keepInBackground"    # Z

    .prologue
    .line 283
    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 268
    return-void
.end method

.method public setLooping(Z)V
    .locals 2
    .param p1, "looping"    # Z

    .prologue
    .line 238
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "no support"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 0
    .param p1, "screenOn"    # Z

    .prologue
    .line 152
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 72
    iput-object p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mSurface:Landroid/view/Surface;

    .line 73
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->setSurface(Landroid/view/Surface;)V

    .line 75
    :cond_0
    return-void
.end method

.method public setVolume(FF)V
    .locals 0
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .prologue
    .line 250
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 147
    return-void
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->setPlayWhenReady(Z)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    if-nez v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->mInternalPlayer:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->release()V

    goto :goto_0
.end method
