.class public Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;
.super Ljava/lang/Object;
.source "DefaultRtmpPublisher.java"

# interfaces
.implements Lcom/github/faucamp/simplertmp/RtmpPublisher;


# instance fields
.field private rtmpConnection:Lcom/github/faucamp/simplertmp/io/RtmpConnection;


# direct methods
.method public constructor <init>(Lcom/github/faucamp/simplertmp/RtmpHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/github/faucamp/simplertmp/RtmpHandler;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/github/faucamp/simplertmp/io/RtmpConnection;

    invoke-direct {v0, p1}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;-><init>(Lcom/github/faucamp/simplertmp/RtmpHandler;)V

    iput-object v0, p0, Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;->rtmpConnection:Lcom/github/faucamp/simplertmp/io/RtmpConnection;

    .line 19
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;->rtmpConnection:Lcom/github/faucamp/simplertmp/io/RtmpConnection;

    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->close()V

    .line 34
    return-void
.end method

.method public connect(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;->rtmpConnection:Lcom/github/faucamp/simplertmp/io/RtmpConnection;

    invoke-virtual {v0, p1}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->connect(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getServerId()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;->rtmpConnection:Lcom/github/faucamp/simplertmp/io/RtmpConnection;

    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->getServerId()I

    move-result v0

    return v0
.end method

.method public final getServerIpAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;->rtmpConnection:Lcom/github/faucamp/simplertmp/io/RtmpConnection;

    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->getServerIpAddr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getServerPid()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;->rtmpConnection:Lcom/github/faucamp/simplertmp/io/RtmpConnection;

    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->getServerPid()I

    move-result v0

    return v0
.end method

.method public getVideoFrameCacheNumber()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;->rtmpConnection:Lcom/github/faucamp/simplertmp/io/RtmpConnection;

    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->getVideoFrameCacheNumber()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    return-object v0
.end method

.method public publish(Ljava/lang/String;)Z
    .locals 1
    .param p1, "publishType"    # Ljava/lang/String;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;->rtmpConnection:Lcom/github/faucamp/simplertmp/io/RtmpConnection;

    invoke-virtual {v0, p1}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publish(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public publishAudioData([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "dts"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;->rtmpConnection:Lcom/github/faucamp/simplertmp/io/RtmpConnection;

    invoke-virtual {v0, p1, p2}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publishAudioData([BI)V

    .line 44
    return-void
.end method

.method public publishVideoData([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "dts"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;->rtmpConnection:Lcom/github/faucamp/simplertmp/io/RtmpConnection;

    invoke-virtual {v0, p1, p2}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->publishVideoData([BI)V

    .line 39
    return-void
.end method

.method public setVideoResolution(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/DefaultRtmpPublisher;->rtmpConnection:Lcom/github/faucamp/simplertmp/io/RtmpConnection;

    invoke-virtual {v0, p1, p2}, Lcom/github/faucamp/simplertmp/io/RtmpConnection;->setVideoResolution(II)V

    .line 69
    return-void
.end method
