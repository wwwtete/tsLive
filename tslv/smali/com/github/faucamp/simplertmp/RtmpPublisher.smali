.class public interface abstract Lcom/github/faucamp/simplertmp/RtmpPublisher;
.super Ljava/lang/Object;
.source "RtmpPublisher.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract connect(Ljava/lang/String;)Z
.end method

.method public abstract getServerId()I
.end method

.method public abstract getServerIpAddr()Ljava/lang/String;
.end method

.method public abstract getServerPid()I
.end method

.method public abstract getVideoFrameCacheNumber()Ljava/util/concurrent/atomic/AtomicInteger;
.end method

.method public abstract publish(Ljava/lang/String;)Z
.end method

.method public abstract publishAudioData([BI)V
.end method

.method public abstract publishVideoData([BI)V
.end method

.method public abstract setVideoResolution(II)V
.end method
