.class Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;
.super Ljava/lang/Object;
.source "IjkVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;


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
    .line 397
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIII)V
    .locals 3
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "sarNum"    # I
    .param p5, "sarDen"    # I

    .prologue
    .line 399
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$002(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)I

    .line 400
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$102(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)I

    .line 401
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarNum()I

    move-result v1

    invoke-static {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$202(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)I

    .line 402
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarDen()I

    move-result v1

    invoke-static {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$302(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)I

    .line 403
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$000(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$100(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$400(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$400(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$000(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v1

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$100(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->setVideoSize(II)V

    .line 406
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$400(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$200(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v1

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {v2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->access$300(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->setVideoSampleAspectRatio(II)V

    .line 409
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->requestLayout()V

    .line 411
    :cond_1
    return-void
.end method
