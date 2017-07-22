.class Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;
.super Ljava/lang/Object;
.source "SrsMp4Muxer.java"

# interfaces
.implements Lcom/coremedia/iso/boxes/Box;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/ossrs/yasea/SrsMp4Muxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterleaveChunkMdat"
.end annotation


# instance fields
.field private contentSize:J

.field private first:Z

.field private header:Ljava/nio/ByteBuffer;

.field private parent:Lcom/coremedia/iso/boxes/ContainerBox;

.field final synthetic this$0:Lnet/ossrs/yasea/SrsMp4Muxer;


# direct methods
.method private constructor <init>(Lnet/ossrs/yasea/SrsMp4Muxer;)V
    .locals 2

    .prologue
    .line 695
    iput-object p1, p0, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;->this$0:Lnet/ossrs/yasea/SrsMp4Muxer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 696
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;->first:Z

    .line 698
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;->header:Ljava/nio/ByteBuffer;

    .line 699
    const-wide/32 v0, 0x40000000

    iput-wide v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;->contentSize:J

    return-void
.end method

.method synthetic constructor <init>(Lnet/ossrs/yasea/SrsMp4Muxer;Lnet/ossrs/yasea/SrsMp4Muxer$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/ossrs/yasea/SrsMp4Muxer;
    .param p2, "x1"    # Lnet/ossrs/yasea/SrsMp4Muxer$1;

    .prologue
    .line 695
    invoke-direct {p0, p1}, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;-><init>(Lnet/ossrs/yasea/SrsMp4Muxer;)V

    return-void
.end method

.method static synthetic access$1600(Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;)Z
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;

    .prologue
    .line 695
    iget-boolean v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;->first:Z

    return v0
.end method

.method static synthetic access$1602(Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;
    .param p1, "x1"    # Z

    .prologue
    .line 695
    iput-boolean p1, p0, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;->first:Z

    return p1
.end method

.method private isSmallBox(J)Z
    .locals 5
    .param p1, "contentSize"    # J

    .prologue
    .line 730
    iget-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p1

    const-wide v2, 0x100000000L

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBox(Ljava/nio/channels/WritableByteChannel;)V
    .locals 6
    .param p1, "writableByteChannel"    # Ljava/nio/channels/WritableByteChannel;

    .prologue
    .line 734
    iget-object v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 735
    invoke-virtual {p0}, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;->getSize()J

    move-result-wide v2

    .line 736
    .local v2, "size":J
    invoke-direct {p0, v2, v3}, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;->isSmallBox(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 737
    iget-object v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;->header:Ljava/nio/ByteBuffer;

    invoke-static {v1, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 741
    :goto_0
    iget-object v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;->header:Ljava/nio/ByteBuffer;

    const-string v4, "mdat"

    invoke-static {v4}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 742
    invoke-direct {p0, v2, v3}, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;->isSmallBox(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 743
    iget-object v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;->header:Ljava/nio/ByteBuffer;

    const/16 v4, 0x8

    new-array v4, v4, [B

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 747
    :goto_1
    iget-object v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 750
    :try_start_0
    iget-object v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;->header:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    :goto_2
    return-void

    .line 739
    :cond_0
    iget-object v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;->header:Ljava/nio/ByteBuffer;

    const-wide/16 v4, 0x1

    invoke-static {v1, v4, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    goto :goto_0

    .line 745
    :cond_1
    iget-object v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;->header:Ljava/nio/ByteBuffer;

    invoke-static {v1, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    goto :goto_1

    .line 751
    :catch_0
    move-exception v0

    .line 752
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;->this$0:Lnet/ossrs/yasea/SrsMp4Muxer;

    invoke-static {v1}, Lnet/ossrs/yasea/SrsMp4Muxer;->access$1000(Lnet/ossrs/yasea/SrsMp4Muxer;)Lnet/ossrs/yasea/SrsRecordHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/ossrs/yasea/SrsRecordHandler;->notifyRecordIOException(Ljava/io/IOException;)V

    goto :goto_2
.end method

.method public getContentSize()J
    .locals 2

    .prologue
    .line 714
    iget-wide v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;->contentSize:J

    return-wide v0
.end method

.method public getHeaderSize()I
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    return v0
.end method

.method public getParent()Lcom/coremedia/iso/boxes/ContainerBox;
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;->parent:Lcom/coremedia/iso/boxes/ContainerBox;

    return-object v0
.end method

.method public getSize()J
    .locals 4

    .prologue
    .line 722
    iget-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;->contentSize:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 718
    const-string v0, "mdat"

    return-object v0
.end method

.method public parse(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/BoxParser;)V
    .locals 0
    .param p1, "readableByteChannel"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "header"    # Ljava/nio/ByteBuffer;
    .param p3, "contentSize"    # J
    .param p5, "boxParser"    # Lcom/coremedia/iso/BoxParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 758
    return-void
.end method

.method public setContentSize(J)V
    .locals 1
    .param p1, "contentSize"    # J

    .prologue
    .line 710
    iput-wide p1, p0, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;->contentSize:J

    .line 711
    return-void
.end method

.method public setParent(Lcom/coremedia/iso/boxes/ContainerBox;)V
    .locals 0
    .param p1, "parent"    # Lcom/coremedia/iso/boxes/ContainerBox;

    .prologue
    .line 706
    iput-object p1, p0, Lnet/ossrs/yasea/SrsMp4Muxer$InterleaveChunkMdat;->parent:Lcom/coremedia/iso/boxes/ContainerBox;

    .line 707
    return-void
.end method
