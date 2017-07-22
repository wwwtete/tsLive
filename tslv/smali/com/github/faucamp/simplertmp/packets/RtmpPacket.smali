.class public abstract Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
.super Ljava/lang/Object;
.source "RtmpPacket.java"


# instance fields
.field protected header:Lcom/github/faucamp/simplertmp/packets/RtmpHeader;


# direct methods
.method public constructor <init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V
    .locals 0
    .param p1, "header"    # Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/github/faucamp/simplertmp/packets/RtmpPacket;->header:Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    .line 20
    return-void
.end method


# virtual methods
.method public getHeader()Lcom/github/faucamp/simplertmp/packets/RtmpHeader;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/github/faucamp/simplertmp/packets/RtmpPacket;->header:Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    return-object v0
.end method

.method public abstract readBody(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract writeBody(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public writeTo(Ljava/io/OutputStream;ILcom/github/faucamp/simplertmp/io/ChunkStreamInfo;)V
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "chunkSize"    # I
    .param p3, "chunkStreamInfo"    # Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 32
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0}, Lcom/github/faucamp/simplertmp/packets/RtmpPacket;->writeBody(Ljava/io/OutputStream;)V

    .line 33
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 34
    .local v1, "body":[B
    iget-object v4, p0, Lcom/github/faucamp/simplertmp/packets/RtmpPacket;->header:Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    array-length v5, v1

    invoke-virtual {v4, v5}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->setPacketLength(I)V

    .line 36
    iget-object v4, p0, Lcom/github/faucamp/simplertmp/packets/RtmpPacket;->header:Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    sget-object v5, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;->TYPE_0_FULL:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    invoke-virtual {v4, p1, v5, p3}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->writeTo(Ljava/io/OutputStream;Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;)V

    .line 37
    array-length v3, v1

    .line 38
    .local v3, "remainingBytes":I
    const/4 v2, 0x0

    .line 39
    .local v2, "pos":I
    :goto_0
    if-le v3, p2, :cond_0

    .line 41
    invoke-virtual {p1, v1, v2, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 42
    sub-int/2addr v3, p2

    .line 43
    add-int/2addr v2, p2

    .line 45
    iget-object v4, p0, Lcom/github/faucamp/simplertmp/packets/RtmpPacket;->header:Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    sget-object v5, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;->TYPE_3_RELATIVE_SINGLE_BYTE:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    invoke-virtual {v4, p1, v5, p3}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;->writeTo(Ljava/io/OutputStream;Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;Lcom/github/faucamp/simplertmp/io/ChunkStreamInfo;)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p1, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 48
    return-void
.end method
