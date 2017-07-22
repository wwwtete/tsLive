.class final Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;
.super Ljava/lang/Object;
.source "DashRendererBuilder.java"

# interfaces
.implements Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;
.implements Lcom/google/android/exoplayer/dash/mpd/UtcTimingElementResolver$UtcTimingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder;
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
        "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
        ">;",
        "Lcom/google/android/exoplayer/dash/mpd/UtcTimingElementResolver$UtcTimingCallback;"
    }
.end annotation


# instance fields
.field private canceled:Z

.field private final context:Landroid/content/Context;

.field private final drmCallback:Lcom/google/android/exoplayer/drm/MediaDrmCallback;

.field private elapsedRealtimeOffset:J

.field private manifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

.field private final manifestDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

.field private final manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/util/ManifestFetcher",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer/drm/MediaDrmCallback;Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "drmCallback"    # Lcom/google/android/exoplayer/drm/MediaDrmCallback;
    .param p5, "player"    # Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->userAgent:Ljava/lang/String;

    .line 121
    iput-object p4, p0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->drmCallback:Lcom/google/android/exoplayer/drm/MediaDrmCallback;

    .line 122
    iput-object p5, p0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    .line 123
    new-instance v0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;

    invoke-direct {v0}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;-><init>()V

    .line 124
    .local v0, "parser":Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;
    new-instance v1, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->manifestDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    .line 125
    new-instance v1, Lcom/google/android/exoplayer/util/ManifestFetcher;

    iget-object v2, p0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->manifestDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    invoke-direct {v1, p3, v2, v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/UriDataSource;Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    .line 126
    return-void
.end method

.method private buildRenderers()V
    .locals 48

    .prologue
    .line 182
    move-object/from16 v0, p0

    iget-object v4, v0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->manifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->getPeriod(I)Lcom/google/android/exoplayer/dash/mpd/Period;

    move-result-object v45

    .line 183
    .local v45, "period":Lcom/google/android/exoplayer/dash/mpd/Period;
    move-object/from16 v0, p0

    iget-object v4, v0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v4}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v12

    .line 184
    .local v12, "mainHandler":Landroid/os/Handler;
    new-instance v44, Lcom/google/android/exoplayer/DefaultLoadControl;

    new-instance v4, Lcom/google/android/exoplayer/upstream/DefaultAllocator;

    const/high16 v5, 0x10000

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer/upstream/DefaultAllocator;-><init>(I)V

    move-object/from16 v0, v44

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer/upstream/Allocator;)V

    .line 185
    .local v44, "loadControl":Lcom/google/android/exoplayer/LoadControl;
    new-instance v39, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;

    move-object/from16 v0, p0

    iget-object v4, v0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    move-object/from16 v0, v39

    invoke-direct {v0, v12, v4}, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;)V

    .line 187
    .local v39, "bandwidthMeter":Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;
    const/16 v42, 0x0

    .line 188
    .local v42, "hasContentProtection":Z
    const/16 v43, 0x0

    .local v43, "i":I
    :goto_0
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/mpd/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v43

    if-ge v0, v4, :cond_1

    .line 189
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/mpd/Period;->adaptationSets:Ljava/util/List;

    move/from16 v0, v43

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    .line 190
    .local v2, "adaptationSet":Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;
    iget v4, v2, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->type:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 191
    invoke-virtual {v2}, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->hasContentProtection()Z

    move-result v4

    or-int v42, v42, v4

    .line 188
    :cond_0
    add-int/lit8 v43, v43, 0x1

    goto :goto_0

    .line 196
    .end local v2    # "adaptationSet":Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;
    :cond_1
    const/16 v41, 0x0

    .line 197
    .local v41, "filterHdContent":Z
    const/16 v20, 0x0

    .line 198
    .local v20, "drmSessionManager":Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;, "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager<Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;>;"
    if-eqz v42, :cond_3

    .line 199
    sget v4, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v5, 0x12

    if-ge v4, v5, :cond_2

    .line 200
    move-object/from16 v0, p0

    iget-object v4, v0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    new-instance v5, Lcom/google/android/exoplayer/drm/UnsupportedDrmException;

    const/4 v7, 0x1

    invoke-direct {v5, v7}, Lcom/google/android/exoplayer/drm/UnsupportedDrmException;-><init>(I)V

    invoke-virtual {v4, v5}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->onRenderersError(Ljava/lang/Exception;)V

    .line 256
    :goto_1
    return-void

    .line 205
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    .line 206
    invoke-virtual {v4}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->drmCallback:Lcom/google/android/exoplayer/drm/MediaDrmCallback;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v9}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    .line 205
    invoke-static {v4, v5, v7, v9, v10}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->newWidevineInstance(Landroid/os/Looper;Lcom/google/android/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;)Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    move-result-object v20

    .line 207
    invoke-static/range {v20 .. v20}, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->getWidevineSecurityLevel(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)I
    :try_end_0
    .catch Lcom/google/android/exoplayer/drm/UnsupportedDrmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/16 v41, 0x1

    .line 215
    :cond_3
    :goto_2
    new-instance v6, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    move-object/from16 v0, p0

    iget-object v4, v0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->userAgent:Ljava/lang/String;

    move-object/from16 v0, v39

    invoke-direct {v6, v4, v0, v5}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)V

    .line 216
    .local v6, "videoDataSource":Lcom/google/android/exoplayer/upstream/DataSource;
    new-instance v3, Lcom/google/android/exoplayer/dash/DashChunkSource;

    move-object/from16 v0, p0

    iget-object v4, v0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    const/4 v7, 0x1

    .line 217
    move/from16 v0, v41

    invoke-static {v5, v7, v0}, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;->newVideoInstance(Landroid/content/Context;ZZ)Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;

    move-result-object v5

    new-instance v7, Lcom/google/android/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;

    move-object/from16 v0, v39

    invoke-direct {v7, v0}, Lcom/google/android/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;-><init>(Lcom/google/android/exoplayer/upstream/BandwidthMeter;)V

    const-wide/16 v8, 0x7530

    move-object/from16 v0, p0

    iget-wide v10, v0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->elapsedRealtimeOffset:J

    move-object/from16 v0, p0

    iget-object v13, v0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    const/4 v14, 0x0

    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/dash/DashTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;JJLandroid/os/Handler;Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;I)V

    .line 220
    .local v3, "videoChunkSource":Lcom/google/android/exoplayer/chunk/ChunkSource;
    new-instance v8, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    const/high16 v11, 0xc80000

    move-object/from16 v0, p0

    iget-object v13, v0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    const/4 v14, 0x0

    move-object v9, v3

    move-object/from16 v10, v44

    invoke-direct/range {v8 .. v14}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;I)V

    .line 223
    .local v8, "videoSampleSource":Lcom/google/android/exoplayer/chunk/ChunkSampleSource;
    new-instance v13, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    move-object/from16 v0, p0

    iget-object v14, v0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    sget-object v16, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    const/16 v17, 0x1

    const-wide/16 v18, 0x1388

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    move-object/from16 v23, v0

    const/16 v24, 0x32

    move-object v15, v8

    move-object/from16 v22, v12

    invoke-direct/range {v13 .. v24}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;IJLcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V

    .line 228
    .local v13, "videoRenderer":Lcom/google/android/exoplayer/TrackRenderer;
    new-instance v24, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    move-object/from16 v0, p0

    iget-object v4, v0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->userAgent:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v39

    invoke-direct {v0, v4, v1, v5}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)V

    .line 229
    .local v24, "audioDataSource":Lcom/google/android/exoplayer/upstream/DataSource;
    new-instance v21, Lcom/google/android/exoplayer/dash/DashChunkSource;

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    move-object/from16 v22, v0

    .line 230
    invoke-static {}, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;->newAudioInstance()Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;

    move-result-object v23

    const/16 v25, 0x0

    const-wide/16 v26, 0x7530

    move-object/from16 v0, p0

    iget-wide v0, v0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->elapsedRealtimeOffset:J

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v30, v12

    invoke-direct/range {v21 .. v32}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/dash/DashTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;JJLandroid/os/Handler;Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;I)V

    .line 232
    .local v21, "audioChunkSource":Lcom/google/android/exoplayer/chunk/ChunkSource;
    new-instance v25, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    const/high16 v28, 0x360000

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move-object/from16 v26, v21

    move-object/from16 v27, v44

    move-object/from16 v29, v12

    invoke-direct/range {v25 .. v31}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;I)V

    .line 235
    .local v25, "audioSampleSource":Lcom/google/android/exoplayer/chunk/ChunkSampleSource;
    new-instance v26, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    sget-object v28, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    .line 237
    invoke-static {v4}, Lcom/google/android/exoplayer/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplayer/audio/AudioCapabilities;

    move-result-object v33

    const/16 v34, 0x3

    move-object/from16 v27, v25

    move-object/from16 v29, v20

    move-object/from16 v31, v12

    invoke-direct/range {v26 .. v34}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lcom/google/android/exoplayer/audio/AudioCapabilities;I)V

    .line 240
    .local v26, "audioRenderer":Lcom/google/android/exoplayer/TrackRenderer;
    new-instance v30, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    move-object/from16 v0, p0

    iget-object v4, v0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->userAgent:Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v39

    invoke-direct {v0, v4, v1, v5}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)V

    .line 241
    .local v30, "textDataSource":Lcom/google/android/exoplayer/upstream/DataSource;
    new-instance v27, Lcom/google/android/exoplayer/dash/DashChunkSource;

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    move-object/from16 v28, v0

    .line 242
    invoke-static {}, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;->newTextInstance()Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;

    move-result-object v29

    const/16 v31, 0x0

    const-wide/16 v32, 0x7530

    move-object/from16 v0, p0

    iget-wide v0, v0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->elapsedRealtimeOffset:J

    move-wide/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    move-object/from16 v37, v0

    const/16 v38, 0x2

    move-object/from16 v36, v12

    invoke-direct/range {v27 .. v38}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/dash/DashTrackSelector;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;JJLandroid/os/Handler;Lcom/google/android/exoplayer/dash/DashChunkSource$EventListener;I)V

    .line 244
    .local v27, "textChunkSource":Lcom/google/android/exoplayer/chunk/ChunkSource;
    new-instance v31, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    const/high16 v34, 0x20000

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    move-object/from16 v36, v0

    const/16 v37, 0x2

    move-object/from16 v32, v27

    move-object/from16 v33, v44

    move-object/from16 v35, v12

    invoke-direct/range {v31 .. v37}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;-><init>(Lcom/google/android/exoplayer/chunk/ChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;I)V

    .line 247
    .local v31, "textSampleSource":Lcom/google/android/exoplayer/chunk/ChunkSampleSource;
    new-instance v47, Lcom/google/android/exoplayer/text/TextTrackRenderer;

    move-object/from16 v0, p0

    iget-object v4, v0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    .line 248
    invoke-virtual {v12}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Lcom/google/android/exoplayer/text/SubtitleParser;

    move-object/from16 v0, v47

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v4, v5, v7}, Lcom/google/android/exoplayer/text/TextTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/text/TextRenderer;Landroid/os/Looper;[Lcom/google/android/exoplayer/text/SubtitleParser;)V

    .line 251
    .local v47, "textRenderer":Lcom/google/android/exoplayer/TrackRenderer;
    const/4 v4, 0x4

    new-array v0, v4, [Lcom/google/android/exoplayer/TrackRenderer;

    move-object/from16 v46, v0

    .line 252
    .local v46, "renderers":[Lcom/google/android/exoplayer/TrackRenderer;
    const/4 v4, 0x0

    aput-object v13, v46, v4

    .line 253
    const/4 v4, 0x1

    aput-object v26, v46, v4

    .line 254
    const/4 v4, 0x2

    aput-object v47, v46, v4

    .line 255
    move-object/from16 v0, p0

    iget-object v4, v0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    move-object/from16 v0, v46

    move-object/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->onRenderers([Lcom/google/android/exoplayer/TrackRenderer;Lcom/google/android/exoplayer/upstream/BandwidthMeter;)V

    goto/16 :goto_1

    .line 207
    .end local v3    # "videoChunkSource":Lcom/google/android/exoplayer/chunk/ChunkSource;
    .end local v6    # "videoDataSource":Lcom/google/android/exoplayer/upstream/DataSource;
    .end local v8    # "videoSampleSource":Lcom/google/android/exoplayer/chunk/ChunkSampleSource;
    .end local v13    # "videoRenderer":Lcom/google/android/exoplayer/TrackRenderer;
    .end local v21    # "audioChunkSource":Lcom/google/android/exoplayer/chunk/ChunkSource;
    .end local v24    # "audioDataSource":Lcom/google/android/exoplayer/upstream/DataSource;
    .end local v25    # "audioSampleSource":Lcom/google/android/exoplayer/chunk/ChunkSampleSource;
    .end local v26    # "audioRenderer":Lcom/google/android/exoplayer/TrackRenderer;
    .end local v27    # "textChunkSource":Lcom/google/android/exoplayer/chunk/ChunkSource;
    .end local v30    # "textDataSource":Lcom/google/android/exoplayer/upstream/DataSource;
    .end local v31    # "textSampleSource":Lcom/google/android/exoplayer/chunk/ChunkSampleSource;
    .end local v46    # "renderers":[Lcom/google/android/exoplayer/TrackRenderer;
    .end local v47    # "textRenderer":Lcom/google/android/exoplayer/TrackRenderer;
    :cond_4
    const/16 v41, 0x0

    goto/16 :goto_2

    .line 208
    :catch_0
    move-exception v40

    .line 209
    .local v40, "e":Lcom/google/android/exoplayer/drm/UnsupportedDrmException;
    move-object/from16 v0, p0

    iget-object v4, v0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->onRenderersError(Ljava/lang/Exception;)V

    goto/16 :goto_1
.end method

.method private static getWidevineSecurityLevel(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)I
    .locals 2
    .param p0, "sessionManager"    # Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    .prologue
    .line 259
    const-string v1, "securityLevel"

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "securityLevelProperty":Ljava/lang/String;
    const-string v1, "L1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string v1, "L3"

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->canceled:Z

    .line 134
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->singleLoad(Landroid/os/Looper;Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;)V

    .line 130
    return-void
.end method

.method public onSingleManifest(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;)V
    .locals 4
    .param p1, "manifest"    # Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    .prologue
    .line 138
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->canceled:Z

    if-eqz v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 142
    :cond_0
    iput-object p1, p0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->manifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    .line 143
    iget-boolean v0, p1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->dynamic:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->utcTiming:Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->manifestDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    iget-object v1, p1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->utcTiming:Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;

    iget-object v2, p0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    .line 145
    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ManifestFetcher;->getManifestLoadCompleteTimestamp()J

    move-result-wide v2

    .line 144
    invoke-static {v0, v1, v2, v3, p0}, Lcom/google/android/exoplayer/dash/mpd/UtcTimingElementResolver;->resolveTimingElement(Lcom/google/android/exoplayer/upstream/UriDataSource;Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;JLcom/google/android/exoplayer/dash/mpd/UtcTimingElementResolver$UtcTimingCallback;)V

    goto :goto_0

    .line 147
    :cond_1
    invoke-direct {p0}, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->buildRenderers()V

    goto :goto_0
.end method

.method public bridge synthetic onSingleManifest(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 103
    check-cast p1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->onSingleManifest(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;)V

    return-void
.end method

.method public onSingleManifestError(Ljava/io/IOException;)V
    .locals 1
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 153
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->canceled:Z

    if-eqz v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->onRenderersError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onTimestampError(Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;Ljava/io/IOException;)V
    .locals 3
    .param p1, "utcTiming"    # Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 172
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->canceled:Z

    if-eqz v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 176
    :cond_0
    const-string v0, "DashRendererBuilder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to resolve UtcTiming element ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    invoke-direct {p0}, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->buildRenderers()V

    goto :goto_0
.end method

.method public onTimestampResolved(Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;J)V
    .locals 2
    .param p1, "utcTiming"    # Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;
    .param p2, "elapsedRealtimeOffset"    # J

    .prologue
    .line 162
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->canceled:Z

    if-eqz v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    iput-wide p2, p0, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->elapsedRealtimeOffset:J

    .line 167
    invoke-direct {p0}, Ltv/danmaku/ijk/media/exo/demo/player/DashRendererBuilder$AsyncRendererBuilder;->buildRenderers()V

    goto :goto_0
.end method
