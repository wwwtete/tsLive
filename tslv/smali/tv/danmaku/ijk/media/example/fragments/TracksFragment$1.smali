.class Ltv/danmaku/ijk/media/example/fragments/TracksFragment$1;
.super Ljava/lang/Object;
.source "TracksFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/danmaku/ijk/media/example/fragments/TracksFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/ijk/media/example/fragments/TracksFragment;

.field final synthetic val$trackHolder:Ltv/danmaku/ijk/media/example/fragments/TracksFragment$ITrackHolder;


# direct methods
.method constructor <init>(Ltv/danmaku/ijk/media/example/fragments/TracksFragment;Ltv/danmaku/ijk/media/example/fragments/TracksFragment$ITrackHolder;)V
    .locals 0
    .param p1, "this$0"    # Ltv/danmaku/ijk/media/example/fragments/TracksFragment;

    .prologue
    .line 78
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$1;->this$0:Ltv/danmaku/ijk/media/example/fragments/TracksFragment;

    iput-object p2, p0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$1;->val$trackHolder:Ltv/danmaku/ijk/media/example/fragments/TracksFragment$ITrackHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$1;->this$0:Ltv/danmaku/ijk/media/example/fragments/TracksFragment;

    invoke-static {v3}, Ltv/danmaku/ijk/media/example/fragments/TracksFragment;->access$000(Ltv/danmaku/ijk/media/example/fragments/TracksFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackItem;

    .line 82
    .local v2, "trackItem":Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackItem;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$1;->this$0:Ltv/danmaku/ijk/media/example/fragments/TracksFragment;

    invoke-static {v3}, Ltv/danmaku/ijk/media/example/fragments/TracksFragment;->access$100(Ltv/danmaku/ijk/media/example/fragments/TracksFragment;)Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackAdapter;

    move-result-object v3

    invoke-virtual {v3}, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 83
    iget-object v3, p0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$1;->this$0:Ltv/danmaku/ijk/media/example/fragments/TracksFragment;

    invoke-static {v3}, Ltv/danmaku/ijk/media/example/fragments/TracksFragment;->access$100(Ltv/danmaku/ijk/media/example/fragments/TracksFragment;)Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackItem;

    .line 84
    .local v0, "compareItem":Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackItem;
    iget v3, v0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackItem;->mIndex:I

    iget v4, v2, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackItem;->mIndex:I

    if-ne v3, v4, :cond_1

    .line 82
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_1
    iget-object v3, v0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackItem;->mTrackInfo:Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    invoke-interface {v3}, Ltv/danmaku/ijk/media/player/misc/ITrackInfo;->getTrackType()I

    move-result v3

    iget-object v4, v2, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackItem;->mTrackInfo:Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    invoke-interface {v4}, Ltv/danmaku/ijk/media/player/misc/ITrackInfo;->getTrackType()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 90
    iget-object v3, p0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$1;->this$0:Ltv/danmaku/ijk/media/example/fragments/TracksFragment;

    invoke-static {v3}, Ltv/danmaku/ijk/media/example/fragments/TracksFragment;->access$000(Ltv/danmaku/ijk/media/example/fragments/TracksFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    iget-object v3, p0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$1;->this$0:Ltv/danmaku/ijk/media/example/fragments/TracksFragment;

    invoke-static {v3}, Ltv/danmaku/ijk/media/example/fragments/TracksFragment;->access$000(Ltv/danmaku/ijk/media/example/fragments/TracksFragment;)Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_1

    .line 93
    .end local v0    # "compareItem":Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackItem;
    :cond_2
    iget-object v3, p0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$1;->this$0:Ltv/danmaku/ijk/media/example/fragments/TracksFragment;

    invoke-static {v3}, Ltv/danmaku/ijk/media/example/fragments/TracksFragment;->access$000(Ltv/danmaku/ijk/media/example/fragments/TracksFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 94
    iget-object v3, p0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$1;->val$trackHolder:Ltv/danmaku/ijk/media/example/fragments/TracksFragment$ITrackHolder;

    iget v4, v2, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackItem;->mIndex:I

    invoke-interface {v3, v4}, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$ITrackHolder;->selectTrack(I)V

    .line 98
    :goto_2
    return-void

    .line 96
    :cond_3
    iget-object v3, p0, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$1;->val$trackHolder:Ltv/danmaku/ijk/media/example/fragments/TracksFragment$ITrackHolder;

    iget v4, v2, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$TrackItem;->mIndex:I

    invoke-interface {v3, v4}, Ltv/danmaku/ijk/media/example/fragments/TracksFragment$ITrackHolder;->deselectTrack(I)V

    goto :goto_2
.end method
