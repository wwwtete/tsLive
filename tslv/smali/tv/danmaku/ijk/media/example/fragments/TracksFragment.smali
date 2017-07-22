.class public Ltv/danmaku/ijk/media/example/fragments/TracksFragment;
.super Landroid/support/v4/app/Fragment;
.source "TracksFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackAdapter;,
        Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackItem;,
        Ltv/danmaku/ijk/media/example/fragments/TracksFragment$ITrackHolder;
    }
.end annotation


# instance fields
.field private mAdapter:Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackAdapter;

.field private mTrackListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ltv/danmaku/ijk/media/example/fragments/TracksFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/fragments/TracksFragment;

    .prologue
    .line 38
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment;->mTrackListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Ltv/danmaku/ijk/media/example/fragments/TracksFragment;)Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackAdapter;
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/fragments/TracksFragment;

    .prologue
    .line 38
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment;->mAdapter:Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackAdapter;

    return-object v0
.end method

.method public static newInstance()Ltv/danmaku/ijk/media/example/fragments/TracksFragment;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/example/fragments/TracksFragment;-><init>()V

    .line 44
    .local v0, "f":Ltv/danmaku/ijk/media/example/fragments/TracksFragment;
    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x1

    .line 57
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/fragments/TracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 61
    .local v0, "activity":Landroid/app/Activity;
    new-instance v5, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackAdapter;

    invoke-direct {v5, p0, v0}, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackAdapter;-><init>(Ltv/danmaku/ijk/media/example/fragments/TracksFragment;Landroid/content/Context;)V

    iput-object v5, p0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment;->mAdapter:Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackAdapter;

    .line 62
    iget-object v5, p0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment;->mTrackListView:Landroid/widget/ListView;

    iget-object v6, p0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment;->mAdapter:Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    instance-of v5, v0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$ITrackHolder;

    if-eqz v5, :cond_3

    move-object v4, v0

    .line 65
    check-cast v4, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$ITrackHolder;

    .line 66
    .local v4, "trackHolder":Ltv/danmaku/ijk/media/example/fragments/TracksFragment$ITrackHolder;
    iget-object v5, p0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment;->mAdapter:Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackAdapter;

    invoke-virtual {v5, v4}, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackAdapter;->setTrackHolder(Ltv/danmaku/ijk/media/example/fragments/TracksFragment$ITrackHolder;)V

    .line 68
    invoke-interface {v4, v7}, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$ITrackHolder;->getSelectedTrack(I)I

    move-result v3

    .line 69
    .local v3, "selectedVideoTrack":I
    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$ITrackHolder;->getSelectedTrack(I)I

    move-result v1

    .line 70
    .local v1, "selectedAudioTrack":I
    const/4 v5, 0x3

    invoke-interface {v4, v5}, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$ITrackHolder;->getSelectedTrack(I)I

    move-result v2

    .line 71
    .local v2, "selectedSubtitleTrack":I
    if-ltz v3, :cond_0

    .line 72
    iget-object v5, p0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment;->mTrackListView:Landroid/widget/ListView;

    invoke-virtual {v5, v3, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 73
    :cond_0
    if-ltz v1, :cond_1

    .line 74
    iget-object v5, p0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment;->mTrackListView:Landroid/widget/ListView;

    invoke-virtual {v5, v1, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 75
    :cond_1
    if-ltz v2, :cond_2

    .line 76
    iget-object v5, p0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment;->mTrackListView:Landroid/widget/ListView;

    invoke-virtual {v5, v2, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 78
    :cond_2
    iget-object v5, p0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment;->mTrackListView:Landroid/widget/ListView;

    new-instance v6, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$1;

    invoke-direct {v6, p0, v4}, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$1;-><init>(Ltv/danmaku/ijk/media/example/fragments/TracksFragment;Ltv/danmaku/ijk/media/example/fragments/TracksFragment$ITrackHolder;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 103
    .end local v1    # "selectedAudioTrack":I
    .end local v2    # "selectedSubtitleTrack":I
    .end local v3    # "selectedVideoTrack":I
    .end local v4    # "trackHolder":Ltv/danmaku/ijk/media/example/fragments/TracksFragment$ITrackHolder;
    :goto_0
    return-void

    .line 101
    :cond_3
    const-string v5, "TracksFragment"

    const-string v6, "activity is not an instance of ITrackHolder."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 50
    const v1, 0x7f040023

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 51
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    const v1, 0x7f0e006d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment;->mTrackListView:Landroid/widget/ListView;

    .line 52
    return-object v0
.end method
