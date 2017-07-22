.class public Lcom/github/faucamp/simplertmp/RtmpHandler;
.super Landroid/os/Handler;
.source "RtmpHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/faucamp/simplertmp/RtmpHandler$RtmpListener;
    }
.end annotation


# static fields
.field private static final MSG_RTMP_AUDIO_BITRATE_CHANGED:I = 0x8

.field private static final MSG_RTMP_AUDIO_STREAMING:I = 0x3

.field private static final MSG_RTMP_CONNECTED:I = 0x1

.field private static final MSG_RTMP_CONNECTING:I = 0x0

.field private static final MSG_RTMP_DISCONNECTED:I = 0x5

.field private static final MSG_RTMP_ILLEGAL_ARGUMENT_EXCEPTION:I = 0xb

.field private static final MSG_RTMP_ILLEGAL_STATE_EXCEPTION:I = 0xc

.field private static final MSG_RTMP_IO_EXCEPTION:I = 0xa

.field private static final MSG_RTMP_SOCKET_EXCEPTION:I = 0x9

.field private static final MSG_RTMP_STOPPED:I = 0x4

.field private static final MSG_RTMP_VIDEO_BITRATE_CHANGED:I = 0x7

.field private static final MSG_RTMP_VIDEO_FPS_CHANGED:I = 0x6

.field private static final MSG_RTMP_VIDEO_STREAMING:I = 0x2


# instance fields
.field private mWeakListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/github/faucamp/simplertmp/RtmpHandler$RtmpListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/faucamp/simplertmp/RtmpHandler$RtmpListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/github/faucamp/simplertmp/RtmpHandler$RtmpListener;

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/github/faucamp/simplertmp/RtmpHandler;->mWeakListener:Ljava/lang/ref/WeakReference;

    .line 35
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 91
    iget-object v1, p0, Lcom/github/faucamp/simplertmp/RtmpHandler;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/faucamp/simplertmp/RtmpHandler$RtmpListener;

    .line 92
    .local v0, "listener":Lcom/github/faucamp/simplertmp/RtmpHandler$RtmpListener;
    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 96
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 137
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown msg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/github/faucamp/simplertmp/RtmpHandler$RtmpListener;->onRtmpConnecting(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/github/faucamp/simplertmp/RtmpHandler$RtmpListener;->onRtmpConnected(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :pswitch_2
    invoke-interface {v0}, Lcom/github/faucamp/simplertmp/RtmpHandler$RtmpListener;->onRtmpVideoStreaming()V

    goto :goto_0

    .line 107
    :pswitch_3
    invoke-interface {v0}, Lcom/github/faucamp/simplertmp/RtmpHandler$RtmpListener;->onRtmpAudioStreaming()V

    goto :goto_0

    .line 110
    :pswitch_4
    invoke-interface {v0}, Lcom/github/faucamp/simplertmp/RtmpHandler$RtmpListener;->onRtmpStopped()V

    goto :goto_0

    .line 113
    :pswitch_5
    invoke-interface {v0}, Lcom/github/faucamp/simplertmp/RtmpHandler$RtmpListener;->onRtmpDisconnected()V

    goto :goto_0

    .line 116
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/github/faucamp/simplertmp/RtmpHandler$RtmpListener;->onRtmpVideoFpsChanged(D)V

    goto :goto_0

    .line 119
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/github/faucamp/simplertmp/RtmpHandler$RtmpListener;->onRtmpVideoBitrateChanged(D)V

    goto :goto_0

    .line 122
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/github/faucamp/simplertmp/RtmpHandler$RtmpListener;->onRtmpAudioBitrateChanged(D)V

    goto :goto_0

    .line 125
    :pswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/net/SocketException;

    invoke-interface {v0, v1}, Lcom/github/faucamp/simplertmp/RtmpHandler$RtmpListener;->onRtmpSocketException(Ljava/net/SocketException;)V

    goto :goto_0

    .line 128
    :pswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/io/IOException;

    invoke-interface {v0, v1}, Lcom/github/faucamp/simplertmp/RtmpHandler$RtmpListener;->onRtmpIOException(Ljava/io/IOException;)V

    goto :goto_0

    .line 131
    :pswitch_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/IllegalArgumentException;

    invoke-interface {v0, v1}, Lcom/github/faucamp/simplertmp/RtmpHandler$RtmpListener;->onRtmpIllegalArgumentException(Ljava/lang/IllegalArgumentException;)V

    goto :goto_0

    .line 134
    :pswitch_c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/IllegalStateException;

    invoke-interface {v0, v1}, Lcom/github/faucamp/simplertmp/RtmpHandler$RtmpListener;->onRtmpIllegalStateException(Ljava/lang/IllegalStateException;)V

    goto/16 :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public notifyRtmpAudioBitrateChanged(D)V
    .locals 3
    .param p1, "bitrate"    # D

    .prologue
    .line 70
    const/16 v0, 0x8

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/github/faucamp/simplertmp/RtmpHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 71
    return-void
.end method

.method public notifyRtmpAudioStreaming()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/github/faucamp/simplertmp/RtmpHandler;->sendEmptyMessage(I)Z

    .line 51
    return-void
.end method

.method public notifyRtmpConnected(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/github/faucamp/simplertmp/RtmpHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 43
    return-void
.end method

.method public notifyRtmpConnecting(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/github/faucamp/simplertmp/RtmpHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 39
    return-void
.end method

.method public notifyRtmpDisconnected()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/github/faucamp/simplertmp/RtmpHandler;->sendEmptyMessage(I)Z

    .line 59
    return-void
.end method

.method public notifyRtmpIOException(Ljava/io/IOException;)V
    .locals 1
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 78
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/github/faucamp/simplertmp/RtmpHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 79
    return-void
.end method

.method public notifyRtmpIllegalArgumentException(Ljava/lang/IllegalArgumentException;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/IllegalArgumentException;

    .prologue
    .line 82
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Lcom/github/faucamp/simplertmp/RtmpHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 83
    return-void
.end method

.method public notifyRtmpIllegalStateException(Ljava/lang/IllegalStateException;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/IllegalStateException;

    .prologue
    .line 86
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lcom/github/faucamp/simplertmp/RtmpHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 87
    return-void
.end method

.method public notifyRtmpSocketException(Ljava/net/SocketException;)V
    .locals 1
    .param p1, "e"    # Ljava/net/SocketException;

    .prologue
    .line 74
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/github/faucamp/simplertmp/RtmpHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 75
    return-void
.end method

.method public notifyRtmpStopped()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/github/faucamp/simplertmp/RtmpHandler;->sendEmptyMessage(I)Z

    .line 55
    return-void
.end method

.method public notifyRtmpVideoBitrateChanged(D)V
    .locals 3
    .param p1, "bitrate"    # D

    .prologue
    .line 66
    const/4 v0, 0x7

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/github/faucamp/simplertmp/RtmpHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 67
    return-void
.end method

.method public notifyRtmpVideoFpsChanged(D)V
    .locals 3
    .param p1, "fps"    # D

    .prologue
    .line 62
    const/4 v0, 0x6

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/github/faucamp/simplertmp/RtmpHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 63
    return-void
.end method

.method public notifyRtmpVideoStreaming()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/github/faucamp/simplertmp/RtmpHandler;->sendEmptyMessage(I)Z

    .line 47
    return-void
.end method
