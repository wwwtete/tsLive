.class Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;


# direct methods
.method constructor <init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V
    .locals 0
    .param p1, "this$0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .prologue
    .line 492
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 6
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .prologue
    .line 496
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1802(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;J)J

    .line 497
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$600(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$600(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1800(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)J

    move-result-wide v2

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1900(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->updateSeekCost(J)V

    .line 499
    :cond_0
    return-void
.end method
