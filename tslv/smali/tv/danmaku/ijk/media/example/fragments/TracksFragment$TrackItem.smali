.class final Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackItem;
.super Ljava/lang/Object;
.source "TracksFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/example/fragments/TracksFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TrackItem"
.end annotation


# instance fields
.field public mIndex:I

.field public mInfoInline:Ljava/lang/String;

.field public mTrackInfo:Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

.field final synthetic this$0:Ltv/danmaku/ijk/media/example/fragments/TracksFragment;


# direct methods
.method public constructor <init>(Ltv/danmaku/ijk/media/example/fragments/TracksFragment;ILtv/danmaku/ijk/media/player/misc/ITrackInfo;)V
    .locals 5
    .param p1, "this$0"    # Ltv/danmaku/ijk/media/example/fragments/TracksFragment;
    .param p2, "index"    # I
    .param p3, "trackInfo"    # Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    .prologue
    .line 118
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackItem;->this$0:Ltv/danmaku/ijk/media/example/fragments/TracksFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput p2, p0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackItem;->mIndex:I

    .line 120
    iput-object p3, p0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackItem;->mTrackInfo:Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    .line 121
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "# %d: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackItem;->mIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackItem;->mTrackInfo:Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    invoke-interface {v4}, Ltv/danmaku/ijk/media/player/misc/ITrackInfo;->getInfoInline()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackItem;->mInfoInline:Ljava/lang/String;

    .line 122
    return-void
.end method


# virtual methods
.method public getInfoInline()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackItem;->mInfoInline:Ljava/lang/String;

    return-object v0
.end method
