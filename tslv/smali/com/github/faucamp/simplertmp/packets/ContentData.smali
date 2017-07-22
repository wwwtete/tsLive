.class public abstract Lcom/github/faucamp/simplertmp/packets/ContentData;
.super Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
.source "ContentData.java"


# instance fields
.field protected data:[B


# direct methods
.method public constructor <init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V
    .locals 0
    .param p1, "header"    # Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/github/faucamp/simplertmp/packets/RtmpPacket;-><init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/packets/ContentData;->data:[B

    return-object v0
.end method

.method public readBody(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/packets/ContentData;->header:Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    invoke-virtual {v0}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->getPacketLength()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/github/faucamp/simplertmp/packets/ContentData;->data:[B

    .line 33
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/packets/ContentData;->data:[B

    invoke-static {p1, v0}, Lcom/github/faucamp/simplertmp/Util;->readBytesUntilFull(Ljava/io/InputStream;[B)V

    .line 34
    return-void
.end method

.method public setData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 27
    iput-object p1, p0, Lcom/github/faucamp/simplertmp/packets/ContentData;->data:[B

    .line 28
    return-void
.end method

.method public writeBody(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/packets/ContentData;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 44
    return-void
.end method
