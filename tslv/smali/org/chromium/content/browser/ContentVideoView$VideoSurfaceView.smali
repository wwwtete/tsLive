.class Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;
.super Landroid/view/SurfaceView;
.source "ContentVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/ContentVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoSurfaceView"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/ContentVideoView;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/ContentVideoView;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    .line 83
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 84
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 90
    const/4 v1, 0x1

    .line 91
    .local v1, "width":I
    const/4 v0, 0x1

    .line 92
    .local v0, "height":I
    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    invoke-static {v2}, Lorg/chromium/content/browser/ContentVideoView;->access$000(Lorg/chromium/content/browser/ContentVideoView;)I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    invoke-static {v2}, Lorg/chromium/content/browser/ContentVideoView;->access$100(Lorg/chromium/content/browser/ContentVideoView;)I

    move-result v2

    if-lez v2, :cond_0

    .line 93
    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    invoke-static {v2}, Lorg/chromium/content/browser/ContentVideoView;->access$000(Lorg/chromium/content/browser/ContentVideoView;)I

    move-result v2

    invoke-static {v2, p1}, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->getDefaultSize(II)I

    move-result v1

    .line 94
    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    invoke-static {v2}, Lorg/chromium/content/browser/ContentVideoView;->access$100(Lorg/chromium/content/browser/ContentVideoView;)I

    move-result v2

    invoke-static {v2, p2}, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->getDefaultSize(II)I

    move-result v0

    .line 95
    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    invoke-static {v2}, Lorg/chromium/content/browser/ContentVideoView;->access$000(Lorg/chromium/content/browser/ContentVideoView;)I

    move-result v2

    mul-int/2addr v2, v0

    iget-object v3, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    invoke-static {v3}, Lorg/chromium/content/browser/ContentVideoView;->access$100(Lorg/chromium/content/browser/ContentVideoView;)I

    move-result v3

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_2

    .line 96
    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    invoke-static {v2}, Lorg/chromium/content/browser/ContentVideoView;->access$100(Lorg/chromium/content/browser/ContentVideoView;)I

    move-result v2

    mul-int/2addr v2, v1

    iget-object v3, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    invoke-static {v3}, Lorg/chromium/content/browser/ContentVideoView;->access$000(Lorg/chromium/content/browser/ContentVideoView;)I

    move-result v3

    div-int v0, v2, v3

    .line 101
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    invoke-static {v2}, Lorg/chromium/content/browser/ContentVideoView;->access$200(Lorg/chromium/content/browser/ContentVideoView;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    invoke-static {v2}, Lorg/chromium/content/browser/ContentVideoView;->access$300(Lorg/chromium/content/browser/ContentVideoView;)J

    move-result-wide v2

    iget-object v4, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    invoke-static {v4}, Lorg/chromium/content/browser/ContentVideoView;->access$400(Lorg/chromium/content/browser/ContentVideoView;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 105
    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    invoke-static {v2}, Lorg/chromium/content/browser/ContentVideoView;->access$500(Lorg/chromium/content/browser/ContentVideoView;)Z

    move-result v2

    iget-object v3, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    invoke-static {v3}, Lorg/chromium/content/browser/ContentVideoView;->access$600(Lorg/chromium/content/browser/ContentVideoView;)Z

    move-result v3

    if-eq v2, v3, :cond_1

    .line 106
    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lorg/chromium/content/browser/ContentVideoView;->access$402(Lorg/chromium/content/browser/ContentVideoView;J)J

    .line 118
    :cond_1
    :goto_1
    invoke-virtual {p0, v1, v0}, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->setMeasuredDimension(II)V

    .line 119
    return-void

    .line 97
    :cond_2
    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    invoke-static {v2}, Lorg/chromium/content/browser/ContentVideoView;->access$000(Lorg/chromium/content/browser/ContentVideoView;)I

    move-result v2

    mul-int/2addr v2, v0

    iget-object v3, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    invoke-static {v3}, Lorg/chromium/content/browser/ContentVideoView;->access$100(Lorg/chromium/content/browser/ContentVideoView;)I

    move-result v3

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    .line 98
    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    invoke-static {v2}, Lorg/chromium/content/browser/ContentVideoView;->access$000(Lorg/chromium/content/browser/ContentVideoView;)I

    move-result v2

    mul-int/2addr v2, v0

    iget-object v3, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    invoke-static {v3}, Lorg/chromium/content/browser/ContentVideoView;->access$100(Lorg/chromium/content/browser/ContentVideoView;)I

    move-result v3

    div-int v1, v2, v3

    goto :goto_0

    .line 111
    :cond_3
    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    invoke-static {v2}, Lorg/chromium/content/browser/ContentVideoView;->access$700(Lorg/chromium/content/browser/ContentVideoView;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    invoke-static {v2}, Lorg/chromium/content/browser/ContentVideoView;->access$500(Lorg/chromium/content/browser/ContentVideoView;)Z

    move-result v2

    iget-object v3, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    invoke-static {v3}, Lorg/chromium/content/browser/ContentVideoView;->access$600(Lorg/chromium/content/browser/ContentVideoView;)Z

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    invoke-static {v4}, Lorg/chromium/content/browser/ContentVideoView;->access$400(Lorg/chromium/content/browser/ContentVideoView;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 114
    iget-object v2, p0, Lorg/chromium/content/browser/ContentVideoView$VideoSurfaceView;->this$0:Lorg/chromium/content/browser/ContentVideoView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/chromium/content/browser/ContentVideoView;->access$702(Lorg/chromium/content/browser/ContentVideoView;Z)Z

    goto :goto_1
.end method
