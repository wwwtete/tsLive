.class final Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;
.super Ljava/lang/Object;
.source "HlsRendererBuilder.java"

# interfaces
.implements Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder;
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
        "Lcom/google/android/exoplayer/hls/HlsPlaylist;",
        ">;"
    }
.end annotation


# instance fields
.field private canceled:Z

.field private final context:Landroid/content/Context;

.field private final player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

.field private final playlistFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/util/ManifestFetcher",
            "<",
            "Lcom/google/android/exoplayer/hls/HlsPlaylist;",
            ">;"
        }
    .end annotation
.end field

.field private final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "player"    # Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->userAgent:Ljava/lang/String;

    .line 100
    iput-object p4, p0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    .line 101
    new-instance v0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;

    invoke-direct {v0}, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;-><init>()V

    .line 102
    .local v0, "parser":Lcom/google/android/exoplayer/hls/HlsPlaylistParser;
    new-instance v1, Lcom/google/android/exoplayer/util/ManifestFetcher;

    new-instance v2, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    invoke-direct {v2, p1, p2}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v1, p3, v2, v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/UriDataSource;Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->playlistFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    .line 104
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->canceled:Z

    .line 112
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->playlistFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    iget-object v1, p0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->singleLoad(Landroid/os/Looper;Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;)V

    .line 108
    return-void
.end method

.method public onSingleManifest(Lcom/google/android/exoplayer/hls/HlsPlaylist;)V
    .locals 37
    .param p1, "manifest"    # Lcom/google/android/exoplayer/hls/HlsPlaylist;

    .prologue
    .line 125
    move-object/from16 v0, p0

    iget-boolean v3, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->canceled:Z

    if-eqz v3, :cond_0

    .line 195
    :goto_0
    return-void

    .line 129
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v3}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v13

    .line 130
    .local v13, "mainHandler":Landroid/os/Handler;
    new-instance v11, Lcom/google/android/exoplayer/DefaultLoadControl;

    new-instance v3, Lcom/google/android/exoplayer/upstream/DefaultAllocator;

    const/high16 v5, 0x10000

    invoke-direct {v3, v5}, Lcom/google/android/exoplayer/upstream/DefaultAllocator;-><init>(I)V

    invoke-direct {v11, v3}, Lcom/google/android/exoplayer/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer/upstream/Allocator;)V

    .line 131
    .local v11, "loadControl":Lcom/google/android/exoplayer/LoadControl;
    new-instance v7, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;

    invoke-direct {v7}, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;-><init>()V

    .line 132
    .local v7, "bandwidthMeter":Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;
    new-instance v8, Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;

    invoke-direct {v8}, Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;-><init>()V

    .line 134
    .local v8, "timestampAdjusterProvider":Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;
    const/16 v32, 0x0

    .line 135
    .local v32, "haveSubtitles":Z
    const/16 v31, 0x0

    .line 136
    .local v31, "haveAudios":Z
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;

    if-eqz v3, :cond_1

    move-object/from16 v34, p1

    .line 137
    check-cast v34, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;

    .line 138
    .local v34, "masterPlaylist":Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;
    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;->subtitles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v32, 0x1

    .line 139
    :goto_1
    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;->audios:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v31, 0x1

    .line 143
    .end local v34    # "masterPlaylist":Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;
    :cond_1
    :goto_2
    new-instance v4, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    move-object/from16 v0, p0

    iget-object v3, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->userAgent:Ljava/lang/String;

    invoke-direct {v4, v3, v7, v5}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)V

    .line 144
    .local v4, "dataSource":Lcom/google/android/exoplayer/upstream/DataSource;
    new-instance v2, Lcom/google/android/exoplayer/hls/HlsChunkSource;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    .line 145
    invoke-static {v5}, Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;->newDefaultInstance(Landroid/content/Context;)Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;

    move-result-object v6

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer/hls/HlsChunkSource;-><init>(ZLcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/hls/HlsPlaylist;Lcom/google/android/exoplayer/hls/HlsTrackSelector;Lcom/google/android/exoplayer/upstream/BandwidthMeter;Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;)V

    .line 147
    .local v2, "chunkSource":Lcom/google/android/exoplayer/hls/HlsChunkSource;
    new-instance v9, Lcom/google/android/exoplayer/hls/HlsSampleSource;

    const/high16 v12, 0xfe0000

    move-object/from16 v0, p0

    iget-object v14, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    const/4 v15, 0x0

    move-object v10, v2

    invoke-direct/range {v9 .. v15}, Lcom/google/android/exoplayer/hls/HlsSampleSource;-><init>(Lcom/google/android/exoplayer/hls/HlsChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;I)V

    .line 149
    .local v9, "sampleSource":Lcom/google/android/exoplayer/hls/HlsSampleSource;
    new-instance v15, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    sget-object v18, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    const/16 v19, 0x1

    const-wide/16 v20, 0x1388

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    move-object/from16 v23, v0

    const/16 v24, 0x32

    move-object/from16 v17, v9

    move-object/from16 v22, v13

    invoke-direct/range {v15 .. v24}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;IJLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V

    .line 152
    .local v15, "videoRenderer":Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;
    new-instance v33, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;

    new-instance v3, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;

    invoke-direct {v3}, Lcom/google/android/exoplayer/metadata/id3/Id3Parser;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    .line 153
    invoke-virtual {v13}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-direct {v0, v9, v3, v5, v6}, Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/metadata/MetadataParser;Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer$MetadataRenderer;Landroid/os/Looper;)V

    .line 157
    .local v33, "id3Renderer":Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;, "Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer<Ljava/util/List<Lcom/google/android/exoplayer/metadata/id3/Id3Frame;>;>;"
    if-eqz v31, :cond_4

    .line 158
    new-instance v18, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    move-object/from16 v0, p0

    iget-object v3, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->userAgent:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v7, v5}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)V

    .line 159
    .local v18, "audioDataSource":Lcom/google/android/exoplayer/upstream/DataSource;
    new-instance v16, Lcom/google/android/exoplayer/hls/HlsChunkSource;

    const/16 v17, 0x0

    .line 160
    invoke-static {}, Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;->newAudioInstance()Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;

    move-result-object v20

    move-object/from16 v19, p1

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    invoke-direct/range {v16 .. v22}, Lcom/google/android/exoplayer/hls/HlsChunkSource;-><init>(ZLcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/hls/HlsPlaylist;Lcom/google/android/exoplayer/hls/HlsTrackSelector;Lcom/google/android/exoplayer/upstream/BandwidthMeter;Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;)V

    .line 162
    .local v16, "audioChunkSource":Lcom/google/android/exoplayer/hls/HlsChunkSource;
    new-instance v19, Lcom/google/android/exoplayer/hls/HlsSampleSource;

    const/high16 v22, 0x360000

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v20, v16

    move-object/from16 v21, v11

    move-object/from16 v23, v13

    invoke-direct/range {v19 .. v25}, Lcom/google/android/exoplayer/hls/HlsSampleSource;-><init>(Lcom/google/android/exoplayer/hls/HlsChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;I)V

    .line 165
    .local v19, "audioSampleSource":Lcom/google/android/exoplayer/hls/HlsSampleSource;
    new-instance v20, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    const/4 v3, 0x2

    new-array v0, v3, [Lcom/google/android/exoplayer/SampleSource;

    move-object/from16 v21, v0

    const/4 v3, 0x0

    aput-object v9, v21, v3

    const/4 v3, 0x1

    aput-object v19, v21, v3

    sget-object v22, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    .line 167
    invoke-virtual {v3}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/exoplayer/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplayer/audio/AudioCapabilities;

    move-result-object v27

    const/16 v28, 0x3

    invoke-direct/range {v20 .. v28}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>([Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lcom/google/android/exoplayer/audio/AudioCapabilities;I)V

    .line 177
    .end local v16    # "audioChunkSource":Lcom/google/android/exoplayer/hls/HlsChunkSource;
    .end local v18    # "audioDataSource":Lcom/google/android/exoplayer/upstream/DataSource;
    .end local v19    # "audioSampleSource":Lcom/google/android/exoplayer/hls/HlsSampleSource;
    .local v20, "audioRenderer":Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;
    :goto_3
    if-eqz v32, :cond_5

    .line 178
    new-instance v23, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    move-object/from16 v0, p0

    iget-object v3, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->userAgent:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v0, v3, v7, v5}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)V

    .line 179
    .local v23, "textDataSource":Lcom/google/android/exoplayer/upstream/DataSource;
    new-instance v21, Lcom/google/android/exoplayer/hls/HlsChunkSource;

    const/16 v22, 0x0

    .line 180
    invoke-static {}, Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;->newSubtitleInstance()Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;

    move-result-object v25

    move-object/from16 v24, p1

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    invoke-direct/range {v21 .. v27}, Lcom/google/android/exoplayer/hls/HlsChunkSource;-><init>(ZLcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/hls/HlsPlaylist;Lcom/google/android/exoplayer/hls/HlsTrackSelector;Lcom/google/android/exoplayer/upstream/BandwidthMeter;Lcom/google/android/exoplayer/hls/PtsTimestampAdjusterProvider;)V

    .line 182
    .local v21, "textChunkSource":Lcom/google/android/exoplayer/hls/HlsChunkSource;
    new-instance v24, Lcom/google/android/exoplayer/hls/HlsSampleSource;

    const/high16 v27, 0x20000

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    move-object/from16 v29, v0

    const/16 v30, 0x2

    move-object/from16 v25, v21

    move-object/from16 v26, v11

    move-object/from16 v28, v13

    invoke-direct/range {v24 .. v30}, Lcom/google/android/exoplayer/hls/HlsSampleSource;-><init>(Lcom/google/android/exoplayer/hls/HlsChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;I)V

    .line 184
    .local v24, "textSampleSource":Lcom/google/android/exoplayer/hls/HlsSampleSource;
    new-instance v36, Lcom/google/android/exoplayer/text/TextTrackRenderer;

    move-object/from16 v0, p0

    iget-object v3, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v13}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/google/android/exoplayer/text/SubtitleParser;

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v3, v5, v6}, Lcom/google/android/exoplayer/text/TextTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/text/TextRenderer;Landroid/os/Looper;[Lcom/google/android/exoplayer/text/SubtitleParser;)V

    .line 189
    .end local v21    # "textChunkSource":Lcom/google/android/exoplayer/hls/HlsChunkSource;
    .end local v23    # "textDataSource":Lcom/google/android/exoplayer/upstream/DataSource;
    .end local v24    # "textSampleSource":Lcom/google/android/exoplayer/hls/HlsSampleSource;
    .local v36, "textRenderer":Lcom/google/android/exoplayer/TrackRenderer;
    :goto_4
    const/4 v3, 0x4

    new-array v0, v3, [Lcom/google/android/exoplayer/TrackRenderer;

    move-object/from16 v35, v0

    .line 190
    .local v35, "renderers":[Lcom/google/android/exoplayer/TrackRenderer;
    const/4 v3, 0x0

    aput-object v15, v35, v3

    .line 191
    const/4 v3, 0x1

    aput-object v20, v35, v3

    .line 192
    const/4 v3, 0x3

    aput-object v33, v35, v3

    .line 193
    const/4 v3, 0x2

    aput-object v36, v35, v3

    .line 194
    move-object/from16 v0, p0

    iget-object v3, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    move-object/from16 v0, v35

    invoke-virtual {v3, v0, v7}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->onRenderers([Lcom/google/android/exoplayer/TrackRenderer;Lcom/google/android/exoplayer/upstream/BandwidthMeter;)V

    goto/16 :goto_0

    .line 138
    .end local v2    # "chunkSource":Lcom/google/android/exoplayer/hls/HlsChunkSource;
    .end local v4    # "dataSource":Lcom/google/android/exoplayer/upstream/DataSource;
    .end local v9    # "sampleSource":Lcom/google/android/exoplayer/hls/HlsSampleSource;
    .end local v15    # "videoRenderer":Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;
    .end local v20    # "audioRenderer":Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;
    .end local v33    # "id3Renderer":Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;, "Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer<Ljava/util/List<Lcom/google/android/exoplayer/metadata/id3/Id3Frame;>;>;"
    .end local v35    # "renderers":[Lcom/google/android/exoplayer/TrackRenderer;
    .end local v36    # "textRenderer":Lcom/google/android/exoplayer/TrackRenderer;
    .restart local v34    # "masterPlaylist":Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;
    :cond_2
    const/16 v32, 0x0

    goto/16 :goto_1

    .line 139
    :cond_3
    const/16 v31, 0x0

    goto/16 :goto_2

    .line 170
    .end local v34    # "masterPlaylist":Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;
    .restart local v2    # "chunkSource":Lcom/google/android/exoplayer/hls/HlsChunkSource;
    .restart local v4    # "dataSource":Lcom/google/android/exoplayer/upstream/DataSource;
    .restart local v9    # "sampleSource":Lcom/google/android/exoplayer/hls/HlsSampleSource;
    .restart local v15    # "videoRenderer":Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;
    .restart local v33    # "id3Renderer":Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer;, "Lcom/google/android/exoplayer/metadata/MetadataTrackRenderer<Ljava/util/List<Lcom/google/android/exoplayer/metadata/id3/Id3Frame;>;>;"
    :cond_4
    new-instance v20, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    sget-object v22, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    .line 171
    invoke-virtual {v3}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    .line 172
    invoke-static {v3}, Lcom/google/android/exoplayer/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplayer/audio/AudioCapabilities;

    move-result-object v27

    const/16 v28, 0x3

    move-object/from16 v21, v9

    invoke-direct/range {v20 .. v28}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lcom/google/android/exoplayer/audio/AudioCapabilities;I)V

    .restart local v20    # "audioRenderer":Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;
    goto/16 :goto_3

    .line 186
    :cond_5
    new-instance v36, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;

    move-object/from16 v0, p0

    iget-object v3, v0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v13}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-direct {v0, v9, v3, v5}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/text/TextRenderer;Landroid/os/Looper;)V

    .restart local v36    # "textRenderer":Lcom/google/android/exoplayer/TrackRenderer;
    goto :goto_4
.end method

.method public bridge synthetic onSingleManifest(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 88
    check-cast p1, Lcom/google/android/exoplayer/hls/HlsPlaylist;

    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->onSingleManifest(Lcom/google/android/exoplayer/hls/HlsPlaylist;)V

    return-void
.end method

.method public onSingleManifestError(Ljava/io/IOException;)V
    .locals 1
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 116
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->canceled:Z

    if-eqz v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/demo/player/HlsRendererBuilder$AsyncRendererBuilder;->player:Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->onRenderersError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
