.class Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;


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
    .line 568
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceChanged(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;III)V
    .locals 6
    .param p1, "holder"    # Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 571
    invoke-interface {p1}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;->getRenderView()Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v4

    iget-object v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v5}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$400(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v5

    if-eq v4, v5, :cond_1

    .line 572
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$2000(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onSurfaceChanged: unmatched render callback\n"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    iget-object v4, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v4, p3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1302(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)I

    .line 577
    iget-object v4, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v4, p4}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1402(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)I

    .line 578
    iget-object v4, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v4}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1500(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    move v1, v2

    .line 579
    .local v1, "isValidState":Z
    :goto_1
    iget-object v4, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v4}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$400(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v4

    invoke-interface {v4}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->shouldWaitForResize()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v4}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$000(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v4

    if-ne v4, p3, :cond_5

    iget-object v4, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v4}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$100(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v4

    if-ne v4, p4, :cond_5

    :cond_2
    move v0, v2

    .line 580
    .local v0, "hasValidSize":Z
    :goto_2
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1000(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 581
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1200(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 582
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    iget-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1200(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->seekTo(I)V

    .line 584
    :cond_3
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    goto :goto_0

    .end local v0    # "hasValidSize":Z
    .end local v1    # "isValidState":Z
    :cond_4
    move v1, v3

    .line 578
    goto :goto_1

    .restart local v1    # "isValidState":Z
    :cond_5
    move v0, v3

    .line 579
    goto :goto_2
.end method

.method public onSurfaceCreated(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;II)V
    .locals 2
    .param p1, "holder"    # Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 590
    invoke-interface {p1}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;->getRenderView()Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$400(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 591
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$2000(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSurfaceCreated: unmatched render callback\n"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :goto_0
    return-void

    .line 595
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0, p1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$2102(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

    .line 596
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1000(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 597
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$1000(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$2200(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;Ltv/danmaku/ijk/media/player/IMediaPlayer;Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;)V

    goto :goto_0

    .line 599
    :cond_1
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$2300(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    goto :goto_0
.end method

.method public onSurfaceDestroyed(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 604
    invoke-interface {p1}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;->getRenderView()Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$400(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 605
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$2000(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSurfaceDestroyed: unmatched render callback\n"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :goto_0
    return-void

    .line 610
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$2102(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

    .line 613
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->releaseWithoutStop()V

    goto :goto_0
.end method
