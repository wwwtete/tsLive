.class final Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;
.super Ljava/lang/Object;
.source "SmoothStreamingRendererBuilder.java"

# interfaces
.implements Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AsyncRendererBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback",
        "<",
        "Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;",
        ">;"
    }
.end annotation


# instance fields
.field private canceled:Z

.field private final context:Landroid/content/Context;

.field private final drmCallback:Lcom/google/android/exoplayer/drm/MediaDrmCallback;

.field private final manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/util/ManifestFetcher",
            "<",
            "Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;",
            ">;"
        }
    .end annotation
.end field

.field private final player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer/drm/MediaDrmCallback;Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "drmCallback"    # Lcom/google/android/exoplayer/drm/MediaDrmCallback;
    .param p5, "player"    # Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->userAgent:Ljava/lang/String;

    .line 107
    iput-object p4, p0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->drmCallback:Lcom/google/android/exoplayer/drm/MediaDrmCallback;

    .line 108
    iput-object p5, p0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    .line 109
    new-instance v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser;

    invoke-direct {v0}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser;-><init>()V

    .line 110
    .local v0, "parser":Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser;
    new-instance v1, Lcom/google/android/exoplayer/util/ManifestFetcher;

    new-instance v2, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v3}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/util/Predicate;)V

    invoke-direct {v1, p3, v2, v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/UriDataSource;Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    .line 112
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->canceled:Z

    .line 120
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->singleLoad(Landroid/os/Looper;Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;)V

    .line 116
    return-void
.end method

.method public onSingleManifest(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;)V
    .locals 43
    .param p1, "manifest"    # Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    .prologue
    .line 133
    move-object/from16 v0, p0

    iget-boolean v2, v0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->canceled:Z

    if-eqz v2, :cond_0

    .line 200
    :goto_0
    return-void

    .line 137
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v11

    .line 138
    .local v11, "mainHandler":Landroid/os/Handler;
    new-instance v40, Lcom/google/android/exoplayer/DefaultLoadControl;

    new-instance v2, Lcom/google/android/exoplayer/upstream/DefaultAllocator;

    const/high16 v4, 0x10000

    invoke-direct {v2, v4}, Lcom/google/android/exoplayer/upstream/DefaultAllocator;-><init>(I)V

    move-object/from16 v0, v40

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer/upstream/Allocator;)V

    .line 139
    .local v40, "loadControl":Lcom/google/android/exoplayer/LoadControl;
    new-instance v38, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;

    move-object/from16 v0, p0

    iget-object v2, v0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    move-object/from16 v0, v38

    invoke-direct {v0, v11, v2}, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;)V

    .line 142
    .local v38, "bandwidthMeter":Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;
    const/16 v20, 0x0

    .line 143
    .local v20, "drmSessionManager":Lcom/google/android/exoplayer/drm/DrmSessionManager;, "Lcom/google/android/exoplayer/drm/DrmSessionManager<Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;>;"
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->protectionElement:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;

    if-eqz v2, :cond_2

    .line 144
    sget v2, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v4, 0x12

    if-ge v2, v4, :cond_1

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    new-instance v4, Lcom/google/android/exoplayer/drm/UnsupportedDrmException;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer/drm/UnsupportedDrmException;-><init>(I)V

    invoke-virtual {v2, v4}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->onRenderersError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 150
    :cond_1
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->protectionElement:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;

    iget-object v2, v2, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;->uuid:Ljava/util/UUID;

    move-object/from16 v0, p0

    iget-object v4, v0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    .line 151
    invoke-virtual {v4}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->drmCallback:Lcom/google/android/exoplayer/drm/MediaDrmCallback;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    .line 152
    invoke-virtual {v8}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    .line 150
    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->newFrameworkInstance(Ljava/util/UUID;Landroid/os/Looper;Lcom/google/android/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;)Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;
    :try_end_0
    .catch Lcom/google/android/exoplayer/drm/UnsupportedDrmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v20

    .line 160
    :cond_2
    new-instance v6, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    move-object/from16 v0, p0

    iget-object v2, v0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->userAgent:Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-direct {v6, v2, v0, v4}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)V

    .line 161
    .local v6, "videoDataSource":Lcom/google/android/exoplayer/upstream/DataSource;
    new-instance v3, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;

    move-object/from16 v0, p0

    iget-object v4, v0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    move-object/from16 v0, p0

    iget-object v2, v0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 162
    invoke-static {v2, v5, v8}, Lcom/google/android/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;->newVideoInstance(Landroid/content/Context;ZZ)Lcom/google/android/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;

    move-result-object v5

    new-instance v7, Lcom/google/android/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;

    move-object/from16 v0, v38

    invoke-direct {v7, v0}, Lcom/google/android/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;-><init>(Lcom/google/android/exoplayer/upstream/BandwidthMeter;)V

    const-wide/16 v8, 0x7530

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;J)V

    .line 164
    .local v3, "videoChunkSource":Lcom/google/android/exoplayer/chunk/ChunkSource;
    new-instance v7, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    const/high16 v10, 0xc80000

    move-object/from16 v0, p0

    iget-object v12, v0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    const/4 v13, 0x0

    move-object v8, v3

    move-object/from16 v9, v40

    invoke-direct/range {v7 .. v13}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;I)V

    .line 167
    .local v7, "videoSampleSource":Lcom/google/android/exoplayer/chunk/ChunkSampleSource;
    new-instance v13, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    move-object/from16 v0, p0

    iget-object v14, v0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    sget-object v16, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    const/16 v17, 0x1

    const-wide/16 v18, 0x1388

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    move-object/from16 v23, v0

    const/16 v24, 0x32

    move-object v15, v7

    move-object/from16 v22, v11

    invoke-direct/range {v13 .. v24}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;IJLcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V

    .line 172
    .local v13, "videoRenderer":Lcom/google/android/exoplayer/TrackRenderer;
    new-instance v24, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    move-object/from16 v0, p0

    iget-object v2, v0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->userAgent:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-direct {v0, v2, v1, v4}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)V

    .line 173
    .local v24, "audioDataSource":Lcom/google/android/exoplayer/upstream/DataSource;
    new-instance v21, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    move-object/from16 v22, v0

    .line 174
    invoke-static {}, Lcom/google/android/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;->newAudioInstance()Lcom/google/android/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;

    move-result-object v23

    const/16 v25, 0x0

    const-wide/16 v26, 0x7530

    invoke-direct/range {v21 .. v27}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;J)V

    .line 176
    .local v21, "audioChunkSource":Lcom/google/android/exoplayer/chunk/ChunkSource;
    new-instance v25, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    const/high16 v28, 0x360000

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move-object/from16 v26, v21

    move-object/from16 v27, v40

    move-object/from16 v29, v11

    invoke-direct/range {v25 .. v31}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;I)V

    .line 179
    .local v25, "audioSampleSource":Lcom/google/android/exoplayer/chunk/ChunkSampleSource;
    new-instance v26, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    sget-object v28, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    .line 181
    invoke-static {v2}, Lcom/google/android/exoplayer/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplayer/audio/AudioCapabilities;

    move-result-object v33

    const/16 v34, 0x3

    move-object/from16 v27, v25

    move-object/from16 v29, v20

    move-object/from16 v31, v11

    invoke-direct/range {v26 .. v34}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lcom/google/android/exoplayer/audio/AudioCapabilities;I)V

    .line 184
    .local v26, "audioRenderer":Lcom/google/android/exoplayer/TrackRenderer;
    new-instance v30, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    move-object/from16 v0, p0

    iget-object v2, v0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->userAgent:Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-direct {v0, v2, v1, v4}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)V

    .line 185
    .local v30, "textDataSource":Lcom/google/android/exoplayer/upstream/DataSource;
    new-instance v27, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    move-object/from16 v28, v0

    .line 186
    invoke-static {}, Lcom/google/android/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;->newTextInstance()Lcom/google/android/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;

    move-result-object v29

    const/16 v31, 0x0

    const-wide/16 v32, 0x7530

    invoke-direct/range {v27 .. v33}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingChunkSource;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;J)V

    .line 188
    .local v27, "textChunkSource":Lcom/google/android/exoplayer/chunk/ChunkSource;
    new-instance v31, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    const/high16 v34, 0x20000

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    move-object/from16 v36, v0

    const/16 v37, 0x2

    move-object/from16 v32, v27

    move-object/from16 v33, v40

    move-object/from16 v35, v11

    invoke-direct/range {v31 .. v37}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;I)V

    .line 191
    .local v31, "textSampleSource":Lcom/google/android/exoplayer/chunk/ChunkSampleSource;
    new-instance v42, Lcom/google/android/exoplayer/text/TextTrackRenderer;

    move-object/from16 v0, p0

    iget-object v2, v0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    .line 192
    invoke-virtual {v11}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/google/android/exoplayer/text/SubtitleParser;

    move-object/from16 v0, v42

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/android/exoplayer/text/TextTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/text/TextRenderer;Landroid/os/Looper;[Lcom/google/android/exoplayer/text/SubtitleParser;)V

    .line 195
    .local v42, "textRenderer":Lcom/google/android/exoplayer/TrackRenderer;
    const/4 v2, 0x4

    new-array v0, v2, [Lcom/google/android/exoplayer/TrackRenderer;

    move-object/from16 v41, v0

    .line 196
    .local v41, "renderers":[Lcom/google/android/exoplayer/TrackRenderer;
    const/4 v2, 0x0

    aput-object v13, v41, v2

    .line 197
    const/4 v2, 0x1

    aput-object v26, v41, v2

    .line 198
    const/4 v2, 0x2

    aput-object v42, v41, v2

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    move-object/from16 v0, v41

    move-object/from16 v1, v38

    invoke-virtual {v2, v0, v1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->onRenderers([Lcom/google/android/exoplayer/TrackRenderer;Lcom/google/android/exoplayer/upstream/BandwidthMeter;)V

    goto/16 :goto_0

    .line 153
    .end local v3    # "videoChunkSource":Lcom/google/android/exoplayer/chunk/ChunkSource;
    .end local v6    # "videoDataSource":Lcom/google/android/exoplayer/upstream/DataSource;
    .end local v7    # "videoSampleSource":Lcom/google/android/exoplayer/chunk/ChunkSampleSource;
    .end local v13    # "videoRenderer":Lcom/google/android/exoplayer/TrackRenderer;
    .end local v21    # "audioChunkSource":Lcom/google/android/exoplayer/chunk/ChunkSource;
    .end local v24    # "audioDataSource":Lcom/google/android/exoplayer/upstream/DataSource;
    .end local v25    # "audioSampleSource":Lcom/google/android/exoplayer/chunk/ChunkSampleSource;
    .end local v26    # "audioRenderer":Lcom/google/android/exoplayer/TrackRenderer;
    .end local v27    # "textChunkSource":Lcom/google/android/exoplayer/chunk/ChunkSource;
    .end local v30    # "textDataSource":Lcom/google/android/exoplayer/upstream/DataSource;
    .end local v31    # "textSampleSource":Lcom/google/android/exoplayer/chunk/ChunkSampleSource;
    .end local v41    # "renderers":[Lcom/google/android/exoplayer/TrackRenderer;
    .end local v42    # "textRenderer":Lcom/google/android/exoplayer/TrackRenderer;
    :catch_0
    move-exception v39

    .line 154
    .local v39, "e":Lcom/google/android/exoplayer/drm/UnsupportedDrmException;
    move-object/from16 v0, p0

    iget-object v2, v0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->onRenderersError(Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onSingleManifest(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 92
    check-cast p1, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->onSingleManifest(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;)V

    return-void
.end method

.method public onSingleManifestError(Ljava/io/IOException;)V
    .locals 1
    .param p1, "exception"    # Ljava/io/IOException;

    .prologue
    .line 124
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->canceled:Z

    if-eqz v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/SmoothStreamingRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->onRenderersError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
