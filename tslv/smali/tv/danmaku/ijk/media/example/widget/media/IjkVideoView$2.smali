.class Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;


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
    .line 414
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 7
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .prologue
    const/4 v6, 0x3

    .line 416
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$502(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;J)J

    .line 417
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$600(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 418
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$600(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    move-result-object v1

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$500(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)J

    move-result-wide v2

    iget-object v4, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v4}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$700(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->updateLoadCost(J)V

    .line 419
    :cond_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$802(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)I

    .line 424
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$900(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 425
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$900(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    move-result-object v1

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1000(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 427
    :cond_1
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1100(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 428
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1100(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->setEnabled(Z)V

    .line 430
    :cond_2
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v2

    invoke-static {v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$002(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)I

    .line 431
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-static {v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$102(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)I

    .line 433
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1200(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v0

    .line 434
    .local v0, "seekToPosition":I
    if-eqz v0, :cond_3

    .line 435
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v1, v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->seekTo(I)V

    .line 437
    :cond_3
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$000(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$100(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v1

    if-eqz v1, :cond_8

    .line 440
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$400(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 441
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$400(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v1

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$000(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v2

    iget-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$100(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->setVideoSize(II)V

    .line 442
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$400(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v1

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$200(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v2

    iget-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$300(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->setVideoSampleAspectRatio(II)V

    .line 443
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$400(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v1

    invoke-interface {v1}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->shouldWaitForResize()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1300(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v1

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$000(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1400(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v1

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$100(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 447
    :cond_4
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1500(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v1

    if-ne v1, v6, :cond_6

    .line 448
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    .line 449
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1100(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 450
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1100(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    move-result-object v1

    invoke-interface {v1}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->show()V

    .line 468
    :cond_5
    :goto_0
    return-void

    .line 452
    :cond_6
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_5

    if-nez v0, :cond_7

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .line 453
    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getCurrentPosition()I

    move-result v1

    if-lez v1, :cond_5

    .line 454
    :cond_7
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1100(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 456
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1100(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->show(I)V

    goto :goto_0

    .line 464
    :cond_8
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1500(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v1

    if-ne v1, v6, :cond_5

    .line 465
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    goto :goto_0
.end method
