.class final Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TracksFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/example/fragments/TracksFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TrackAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mTrackHolder:Ltv/danmaku/ijk/media/example/fragments/TracksFragment$ITrackHolder;

.field private mTrackInfos:[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

.field final synthetic this$0:Ltv/danmaku/ijk/media/example/fragments/TracksFragment;


# direct methods
.method public constructor <init>(Ltv/danmaku/ijk/media/example/fragments/TracksFragment;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Ltv/danmaku/ijk/media/example/fragments/TracksFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackAdapter;->this$0:Ltv/danmaku/ijk/media/example/fragments/TracksFragment;

    .line 134
    const v0, 0x1090005

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 135
    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 152
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 157
    move-object v2, p2

    .line 158
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_0

    .line 159
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 160
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x1090005

    const/4 v5, 0x0

    invoke-virtual {v0, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 163
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackAdapter$ViewHolder;

    .line 164
    .local v3, "viewHolder":Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackAdapter$ViewHolder;
    if-nez v3, :cond_1

    .line 165
    new-instance v3, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackAdapter$ViewHolder;

    .end local v3    # "viewHolder":Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackAdapter$ViewHolder;
    invoke-direct {v3, p0}, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackAdapter$ViewHolder;-><init>(Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackAdapter;)V

    .line 166
    .restart local v3    # "viewHolder":Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackAdapter$ViewHolder;
    const v4, 0x1020014

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackAdapter$ViewHolder;->mNameTextView:Landroid/widget/TextView;

    .line 169
    :cond_1
    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackItem;

    .line 170
    .local v1, "item":Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackItem;
    iget-object v4, v3, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackAdapter$ViewHolder;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackItem;->getInfoInline()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    return-object v2
.end method

.method public setTrackHolder(Ltv/danmaku/ijk/media/example/fragments/TracksFragment$ITrackHolder;)V
    .locals 7
    .param p1, "trackHolder"    # Ltv/danmaku/ijk/media/example/fragments/TracksFragment$ITrackHolder;

    .prologue
    .line 138
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackAdapter;->clear()V

    .line 139
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackAdapter;->mTrackHolder:Ltv/danmaku/ijk/media/example/fragments/TracksFragment$ITrackHolder;

    .line 140
    iget-object v3, p0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackAdapter;->mTrackHolder:Ltv/danmaku/ijk/media/example/fragments/TracksFragment$ITrackHolder;

    invoke-interface {v3}, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$ITrackHolder;->getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    move-result-object v3

    iput-object v3, p0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackAdapter;->mTrackInfos:[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    .line 141
    iget-object v3, p0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackAdapter;->mTrackInfos:[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    if-eqz v3, :cond_0

    .line 142
    iget-object v4, p0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackAdapter;->mTrackInfos:[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v2, v4, v3

    .line 143
    .local v2, "trackInfo":Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackAdapter;->getCount()I

    move-result v0

    .line 144
    .local v0, "index":I
    new-instance v1, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackItem;

    iget-object v6, p0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackAdapter;->this$0:Ltv/danmaku/ijk/media/example/fragments/TracksFragment;

    invoke-direct {v1, v6, v0, v2}, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackItem;-><init>(Ltv/danmaku/ijk/media/example/fragments/TracksFragment;ILtv/danmaku/ijk/media/player/misc/ITrackInfo;)V

    .line 145
    .local v1, "item":Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackItem;
    invoke-virtual {p0, v1}, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackAdapter;->add(Ljava/lang/Object;)V

    .line 142
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    .end local v0    # "index":I
    .end local v1    # "item":Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackItem;
    .end local v2    # "trackInfo":Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    :cond_0
    return-void
.end method
