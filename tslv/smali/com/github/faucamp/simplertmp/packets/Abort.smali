.class public Lcom/github/faucamp/simplertmp/packets/Abort;
.super Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
.source "Abort.java"


# instance fields
.field private chunkStreamId:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "chunkStreamId"    # I

    .prologue
    .line 24
    new-instance v0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    sget-object v1, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;->TYPE_1_RELATIVE_LARGE:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    const/4 v2, 0x2

    sget-object v3, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;->SET_CHUNK_SIZE:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    invoke-direct {v0, v1, v2, v3}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;-><init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;ILcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;)V

    invoke-direct {p0, v0}, Lcom/github/faucamp/simplertmp/packets/RtmpPacket;-><init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V

    .line 25
    iput p1, p0, Lcom/github/faucamp/simplertmp/packets/Abort;->chunkStreamId:I

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V
    .locals 0
    .param p1, "header"    # Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/github/faucamp/simplertmp/packets/RtmpPacket;-><init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getChunkStreamId()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/github/faucamp/simplertmp/packets/Abort;->chunkStreamId:I

    return v0
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
    .line 41
    invoke-static {p1}, Lcom/github/faucamp/simplertmp/Util;->readUnsignedInt32(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lcom/github/faucamp/simplertmp/packets/Abort;->chunkStreamId:I

    .line 42
    return-void
.end method

.method public setChunkStreamId(I)V
    .locals 0
    .param p1, "chunkStreamId"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/github/faucamp/simplertmp/packets/Abort;->chunkStreamId:I

    .line 36
    return-void
.end method

.method protected writeBody(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    iget v0, p0, Lcom/github/faucamp/simplertmp/packets/Abort;->chunkStreamId:I

    invoke-static {p1, v0}, Lcom/github/faucamp/simplertmp/Util;->writeUnsignedInt32(Ljava/io/OutputStream;I)V

    .line 47
    return-void
.end method
