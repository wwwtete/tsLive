.class public Ltv/danmaku/ijk/media/exo/demo/player/ExtractorRendererBuilder;
.super Ljava/lang/Object;
.source "ExtractorRendererBuilder.java"

# interfaces
.implements Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$RendererBuilder;


# static fields
.field private static final BUFFER_SEGMENT_COUNT:I = 0x100

.field private static final BUFFER_SEGMENT_SIZE:I = 0x10000


# instance fields
.field private final context:Landroid/content/Context;

.field private final uri:Landroid/net/Uri;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Ltv/danmaku/ijk/media/exo/demo/player/ExtractorRendererBuilder;->context:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Ltv/danmaku/ijk/media/exo/demo/player/ExtractorRendererBuilder;->userAgent:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Ltv/danmaku/ijk/media/exo/demo/player/ExtractorRendererBuilder;->uri:Landroid/net/Uri;

    .line 54
    return-void
.end method


# virtual methods
.method public buildRenderers(Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;)V
    .locals 24
    .param p1, "player"    # Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    .prologue
    .line 58
    new-instance v7, Lcom/google/android/exoplayer/upstream/DefaultAllocator;

    const/high16 v5, 0x10000

    invoke-direct {v7, v5}, Lcom/google/android/exoplayer/upstream/DefaultAllocator;-><init>(I)V

    .line 59
    .local v7, "allocator":Lcom/google/android/exoplayer/upstream/Allocator;
    invoke-virtual/range {p1 .. p1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v9

    .line 62
    .local v9, "mainHandler":Landroid/os/Handler;
    new-instance v21, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v9, v5}, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;)V

    .line 63
    .local v21, "bandwidthMeter":Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;
    new-instance v6, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    move-object/from16 v0, p0

    iget-object v5, v0, Ltv/danmaku/ijk/media/exo/demo/player/ExtractorRendererBuilder;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Ltv/danmaku/ijk/media/exo/demo/player/ExtractorRendererBuilder;->userAgent:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v6, v5, v0, v8}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)V

    .line 64
    .local v6, "dataSource":Lcom/google/android/exoplayer/upstream/DataSource;
    new-instance v4, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;

    move-object/from16 v0, p0

    iget-object v5, v0, Ltv/danmaku/ijk/media/exo/demo/player/ExtractorRendererBuilder;->uri:Landroid/net/Uri;

    const/high16 v8, 0x1000000

    const/4 v11, 0x0

    const/4 v10, 0x0

    new-array v12, v10, [Lcom/google/android/exoplayer/extractor/Extractor;

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v12}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/Allocator;ILandroid/os/Handler;Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$EventListener;I[Lcom/google/android/exoplayer/extractor/Extractor;)V

    .line 66
    .local v4, "sampleSource":Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;
    new-instance v11, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    move-object/from16 v0, p0

    iget-object v12, v0, Ltv/danmaku/ijk/media/exo/demo/player/ExtractorRendererBuilder;->context:Landroid/content/Context;

    sget-object v14, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    const/4 v15, 0x1

    const-wide/16 v16, 0x1388

    const/16 v20, 0x32

    move-object v13, v4

    move-object/from16 v18, v9

    move-object/from16 v19, p1

    invoke-direct/range {v11 .. v20}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;IJLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V

    .line 69
    .local v11, "videoRenderer":Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;
    new-instance v12, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    sget-object v14, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Ltv/danmaku/ijk/media/exo/demo/player/ExtractorRendererBuilder;->context:Landroid/content/Context;

    .line 71
    invoke-static {v5}, Lcom/google/android/exoplayer/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplayer/audio/AudioCapabilities;

    move-result-object v19

    const/16 v20, 0x3

    move-object v13, v4

    move-object/from16 v17, v9

    move-object/from16 v18, p1

    invoke-direct/range {v12 .. v20}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lcom/google/android/exoplayer/audio/AudioCapabilities;I)V

    .line 72
    .local v12, "audioRenderer":Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;
    new-instance v23, Lcom/google/android/exoplayer/text/TextTrackRenderer;

    .line 73
    invoke-virtual {v9}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    const/4 v8, 0x0

    new-array v8, v8, [Lcom/google/android/exoplayer/text/SubtitleParser;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5, v8}, Lcom/google/android/exoplayer/text/TextTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/text/TextRenderer;Landroid/os/Looper;[Lcom/google/android/exoplayer/text/SubtitleParser;)V

    .line 76
    .local v23, "textRenderer":Lcom/google/android/exoplayer/TrackRenderer;
    const/4 v5, 0x4

    new-array v0, v5, [Lcom/google/android/exoplayer/TrackRenderer;

    move-object/from16 v22, v0

    .line 77
    .local v22, "renderers":[Lcom/google/android/exoplayer/TrackRenderer;
    const/4 v5, 0x0

    aput-object v11, v22, v5

    .line 78
    const/4 v5, 0x1

    aput-object v12, v22, v5

    .line 79
    const/4 v5, 0x2

    aput-object v23, v22, v5

    .line 80
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->onRenderers([Lcom/google/android/exoplayer/TrackRenderer;Lcom/google/android/exoplayer/upstream/BandwidthMeter;)V

    .line 81
    return-void
.end method

.method public cancel()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method
