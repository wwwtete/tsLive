.class Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;
.super Ljava/lang/Object;
.source "IjkExoMediaPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DemoPlayerListener"
.end annotation


# instance fields
.field private mDidPrepare:Z

.field private mIsBuffering:Z

.field private mIsPrepareing:Z

.field final synthetic this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;


# direct methods
.method private constructor <init>(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 334
    iput-object p1, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-boolean v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->mIsPrepareing:Z

    .line 336
    iput-boolean v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->mDidPrepare:Z

    .line 337
    iput-boolean v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->mIsBuffering:Z

    return-void
.end method

.method synthetic constructor <init>(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$1;)V
    .locals 0
    .param p1, "x0"    # Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;
    .param p2, "x1"    # Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$1;

    .prologue
    .line 334
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;-><init>(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v1, 0x1

    .line 384
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    invoke-static {v0, v1, v1}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$700(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;II)Z

    .line 385
    return-void
.end method

.method public onStateChanged(ZI)V
    .locals 5
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 341
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->mIsBuffering:Z

    if-eqz v0, :cond_0

    .line 342
    packed-switch p2, :pswitch_data_0

    .line 351
    :cond_0
    :goto_0
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->mIsPrepareing:Z

    if-eqz v0, :cond_1

    .line 352
    packed-switch p2, :pswitch_data_1

    .line 361
    :cond_1
    :goto_1
    packed-switch p2, :pswitch_data_2

    .line 380
    :goto_2
    :pswitch_0
    return-void

    .line 345
    :pswitch_1
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    const/16 v1, 0x2be

    iget-object v2, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    invoke-static {v2}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$100(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getBufferedPercentage()I

    move-result v2

    invoke-static {v0, v1, v2}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$200(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;II)Z

    .line 346
    iput-boolean v3, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->mIsBuffering:Z

    goto :goto_0

    .line 354
    :pswitch_2
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    invoke-static {v0}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$300(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)V

    .line 355
    iput-boolean v3, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->mIsPrepareing:Z

    .line 356
    iput-boolean v3, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->mDidPrepare:Z

    goto :goto_1

    .line 363
    :pswitch_3
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    invoke-static {v0}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$400(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)V

    goto :goto_2

    .line 366
    :pswitch_4
    iput-boolean v4, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->mIsPrepareing:Z

    goto :goto_2

    .line 369
    :pswitch_5
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    const/16 v1, 0x2bd

    iget-object v2, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    invoke-static {v2}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$100(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;

    move-result-object v2

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/exo/demo/player/DemoPlayer;->getBufferedPercentage()I

    move-result v2

    invoke-static {v0, v1, v2}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$500(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;II)Z

    .line 370
    iput-boolean v4, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->mIsBuffering:Z

    goto :goto_2

    .line 375
    :pswitch_6
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    invoke-static {v0}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$600(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;)V

    goto :goto_2

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 352
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_2
    .end packed-switch

    .line 361
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    const/4 v1, 0x1

    .line 390
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    invoke-static {v0, p1}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$802(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;I)I

    .line 391
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    invoke-static {v0, p2}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$902(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;I)I

    .line 392
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    invoke-static {v0, p1, p2, v1, v1}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$1000(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;IIII)V

    .line 393
    if-lez p3, :cond_0

    .line 394
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer$DemoPlayerListener;->this$0:Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    const/16 v1, 0x2711

    invoke-static {v0, v1, p3}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;->access$1100(Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;II)Z

    .line 395
    :cond_0
    return-void
.end method
