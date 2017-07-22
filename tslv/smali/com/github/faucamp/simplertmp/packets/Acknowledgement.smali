.class public Lcom/github/faucamp/simplertmp/packets/Acknowledgement;
.super Lcom/github/faucamp/simplertmp/packets/RtmpPacket;
.source "Acknowledgement.java"


# instance fields
.field private sequenceNumber:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "numBytesReadThusFar"    # I

    .prologue
    .line 31
    new-instance v0, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    sget-object v1, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;->TYPE_0_FULL:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;

    const/4 v2, 0x2

    sget-object v3, Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;->ACKNOWLEDGEMENT:Lcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;

    invoke-direct {v0, v1, v2, v3}, Lcom/github/faucamp/simplertmp/packets/RtmpHeader;-><init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader$ChunkType;ILcom/github/faucamp/simplertmp/packets/RtmpHeader$MessageType;)V

    invoke-direct {p0, v0}, Lcom/github/faucamp/simplertmp/packets/RtmpPacket;-><init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V

    .line 32
    iput p1, p0, Lcom/github/faucamp/simplertmp/packets/Acknowledgement;->sequenceNumber:I

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V
    .locals 0
    .param p1, "header"    # Lcom/github/faucamp/simplertmp/packets/RtmpHeader;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/github/faucamp/simplertmp/packets/RtmpPacket;-><init>(Lcom/github/faucamp/simplertmp/packets/RtmpHeader;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getAcknowledgementWindowSize()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/github/faucamp/simplertmp/packets/Acknowledgement;->sequenceNumber:I

    return v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/github/faucamp/simplertmp/packets/Acknowledgement;->sequenceNumber:I

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
    .line 51
    invoke-static {p1}, Lcom/github/faucamp/simplertmp/Util;->readUnsignedInt32(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lcom/github/faucamp/simplertmp/packets/Acknowledgement;->sequenceNumber:I

    .line 52
    return-void
.end method

.method public setSequenceNumber(I)V
    .locals 0
    .param p1, "numBytesRead"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/github/faucamp/simplertmp/packets/Acknowledgement;->sequenceNumber:I

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RTMP Acknowledgment (sequence number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/github/faucamp/simplertmp/packets/Acknowledgement;->sequenceNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 56
    iget v0, p0, Lcom/github/faucamp/simplertmp/packets/Acknowledgement;->sequenceNumber:I

    invoke-static {p1, v0}, Lcom/github/faucamp/simplertmp/Util;->writeUnsignedInt32(Ljava/io/OutputStream;I)V

    .line 57
    return-void
.end method
