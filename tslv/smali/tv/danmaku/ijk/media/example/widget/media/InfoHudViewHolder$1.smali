.class Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;
.super Landroid/os/Handler;
.source "InfoHudViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;


# direct methods
.method constructor <init>(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    .prologue
    .line 102
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 34
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 105
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 107
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    .line 108
    .local v12, "holder":Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;
    const/4 v14, 0x0

    .line 109
    .local v14, "mp":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$000(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v21

    if-eqz v21, :cond_0

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$000(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v21

    move-object/from16 v0, v21

    instance-of v0, v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$000(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v14

    .end local v14    # "mp":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    check-cast v14, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 119
    .restart local v14    # "mp":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    :cond_1
    :goto_1
    if-eqz v14, :cond_0

    .line 122
    invoke-virtual {v14}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoDecoder()I

    move-result v20

    .line 123
    .local v20, "vdec":I
    packed-switch v20, :pswitch_data_1

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    move-object/from16 v21, v0

    const v26, 0x7f0800e3

    const-string v27, ""

    move-object/from16 v0, v21

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$100(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;ILjava/lang/String;)V

    .line 135
    :goto_2
    invoke-virtual {v14}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoOutputFramesPerSecond()F

    move-result v11

    .line 136
    .local v11, "fpsOutput":F
    invoke-virtual {v14}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoDecodeFramesPerSecond()F

    move-result v10

    .line 137
    .local v10, "fpsDecode":F
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    move-object/from16 v21, v0

    const v26, 0x7f080080

    sget-object v27, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v28, "%.2f / %.2f"

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v27 .. v29}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v21

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$100(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;ILjava/lang/String;)V

    .line 139
    invoke-virtual {v14}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoCachedDuration()J

    move-result-wide v24

    .line 140
    .local v24, "videoCachedDuration":J
    invoke-virtual {v14}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getAudioCachedDuration()J

    move-result-wide v6

    .line 141
    .local v6, "audioCachedDuration":J
    invoke-virtual {v14}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoCachedBytes()J

    move-result-wide v22

    .line 142
    .local v22, "videoCachedBytes":J
    invoke-virtual {v14}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getAudioCachedBytes()J

    move-result-wide v4

    .line 143
    .local v4, "audioCachedBytes":J
    invoke-virtual {v14}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getTcpSpeed()J

    move-result-wide v18

    .line 144
    .local v18, "tcpSpeed":J
    invoke-virtual {v14}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getBitRate()J

    move-result-wide v8

    .line 145
    .local v8, "bitRate":J
    invoke-virtual {v14}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getSeekLoadDuration()J

    move-result-wide v16

    .line 147
    .local v16, "seekLoadDuration":J
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    move-object/from16 v21, v0

    const v26, 0x7f0800e2

    sget-object v27, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v28, "%s, %s"

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {v24 .. v25}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$200(J)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    invoke-static/range {v22 .. v23}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$300(J)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v27 .. v29}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v21

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$100(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;ILjava/lang/String;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    move-object/from16 v21, v0

    const v26, 0x7f080065

    sget-object v27, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v28, "%s, %s"

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static {v6, v7}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$200(J)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    invoke-static {v4, v5}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$300(J)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v27 .. v29}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v21

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$100(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;ILjava/lang/String;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    move-object/from16 v21, v0

    const v26, 0x7f08008b

    sget-object v27, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v28, "%d ms"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$400(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v27 .. v29}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v21

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$100(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;ILjava/lang/String;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    move-object/from16 v21, v0

    const v26, 0x7f0800cb

    sget-object v27, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v28, "%d ms"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$500(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v27 .. v29}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v21

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$100(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;ILjava/lang/String;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    move-object/from16 v21, v0

    const v26, 0x7f0800cc

    sget-object v27, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v28, "%d ms"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v27 .. v29}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v21

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$100(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;ILjava/lang/String;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    move-object/from16 v21, v0

    const v26, 0x7f0800dc

    sget-object v27, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v28, "%s"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const-wide/16 v32, 0x3e8

    move-wide/from16 v0, v18

    move-wide/from16 v2, v32

    invoke-static {v0, v1, v2, v3}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$600(JJ)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v27 .. v29}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v21

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$100(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;ILjava/lang/String;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    move-object/from16 v21, v0

    const v26, 0x7f080074

    sget-object v27, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v28, "%.2f kbs"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    long-to-float v0, v8

    move/from16 v31, v0

    const/high16 v32, 0x447a0000    # 1000.0f

    div-float v31, v31, v32

    invoke-static/range {v31 .. v31}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v27 .. v29}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v21

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$100(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;ILjava/lang/String;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$700(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)Landroid/os/Handler;

    move-result-object v21

    const/16 v26, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$700(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)Landroid/os/Handler;

    move-result-object v21

    const/16 v26, 0x1

    const-wide/16 v28, 0x1f4

    move-object/from16 v0, v21

    move/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 113
    .end local v4    # "audioCachedBytes":J
    .end local v6    # "audioCachedDuration":J
    .end local v8    # "bitRate":J
    .end local v10    # "fpsDecode":F
    .end local v11    # "fpsOutput":F
    .end local v16    # "seekLoadDuration":J
    .end local v18    # "tcpSpeed":J
    .end local v20    # "vdec":I
    .end local v22    # "videoCachedBytes":J
    .end local v24    # "videoCachedDuration":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$000(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v21

    move-object/from16 v0, v21

    instance-of v0, v0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$000(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v15

    check-cast v15, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;

    .line 115
    .local v15, "proxy":Ltv/danmaku/ijk/media/player/MediaPlayerProxy;
    invoke-virtual {v15}, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->getInternalMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v13

    .line 116
    .local v13, "internal":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    if-eqz v13, :cond_1

    instance-of v0, v13, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move/from16 v21, v0

    if-eqz v21, :cond_1

    move-object v14, v13

    .line 117
    check-cast v14, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    goto/16 :goto_1

    .line 125
    .end local v13    # "internal":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .end local v15    # "proxy":Ltv/danmaku/ijk/media/player/MediaPlayerProxy;
    .restart local v20    # "vdec":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    move-object/from16 v21, v0

    const v26, 0x7f0800e3

    const-string v27, "avcodec"

    move-object/from16 v0, v21

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$100(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 128
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;->this$0:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    move-object/from16 v21, v0

    const v26, 0x7f0800e3

    const-string v27, "MediaCodec"

    move-object/from16 v0, v21

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->access$100(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 123
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
