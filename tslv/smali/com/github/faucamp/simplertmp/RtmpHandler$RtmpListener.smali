.class public interface abstract Lcom/github/faucamp/simplertmp/RtmpHandler$RtmpListener;
.super Ljava/lang/Object;
.source "RtmpHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/faucamp/simplertmp/RtmpHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RtmpListener"
.end annotation


# virtual methods
.method public abstract onRtmpAudioBitrateChanged(D)V
.end method

.method public abstract onRtmpAudioStreaming()V
.end method

.method public abstract onRtmpConnected(Ljava/lang/String;)V
.end method

.method public abstract onRtmpConnecting(Ljava/lang/String;)V
.end method

.method public abstract onRtmpDisconnected()V
.end method

.method public abstract onRtmpIOException(Ljava/io/IOException;)V
.end method

.method public abstract onRtmpIllegalArgumentException(Ljava/lang/IllegalArgumentException;)V
.end method

.method public abstract onRtmpIllegalStateException(Ljava/lang/IllegalStateException;)V
.end method

.method public abstract onRtmpSocketException(Ljava/net/SocketException;)V
.end method

.method public abstract onRtmpStopped()V
.end method

.method public abstract onRtmpVideoBitrateChanged(D)V
.end method

.method public abstract onRtmpVideoFpsChanged(D)V
.end method

.method public abstract onRtmpVideoStreaming()V
.end method
