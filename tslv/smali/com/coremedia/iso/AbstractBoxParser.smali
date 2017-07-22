.class public abstract Lcom/coremedia/iso/AbstractBoxParser;
.super Ljava/lang/Object;
.source "AbstractBoxParser.java"

# interfaces
.implements Lcom/coremedia/iso/BoxParser;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static LOG:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/coremedia/iso/AbstractBoxParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/coremedia/iso/AbstractBoxParser;->$assertionsDisabled:Z

    .line 35
    const-class v0, Lcom/coremedia/iso/AbstractBoxParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/coremedia/iso/AbstractBoxParser;->LOG:Ljava/util/logging/Logger;

    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createBox(Ljava/lang/String;[BLjava/lang/String;)Lcom/coremedia/iso/boxes/Box;
.end method

.method public parseBox(Ljava/nio/channels/ReadableByteChannel;Lcom/coremedia/iso/boxes/ContainerBox;)Lcom/coremedia/iso/boxes/Box;
    .locals 18
    .param p1, "byteChannel"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "parent"    # Lcom/coremedia/iso/boxes/ContainerBox;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    const-wide/16 v14, 0x8

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Lcom/coremedia/iso/ChannelHelper;->readFully(Ljava/nio/channels/ReadableByteChannel;J)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 52
    .local v5, "header":Ljava/nio/ByteBuffer;
    invoke-static {v5}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v10

    .line 54
    .local v10, "size":J
    const-wide/16 v14, 0x8

    cmp-long v4, v10, v14

    if-gez v4, :cond_1

    const-wide/16 v14, 0x1

    cmp-long v4, v10, v14

    if-lez v4, :cond_1

    .line 55
    sget-object v4, Lcom/coremedia/iso/AbstractBoxParser;->LOG:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Plausibility check failed: size < 8 (size = "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, "). Stop parsing!"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 56
    const/4 v3, 0x0

    .line 126
    :cond_0
    return-object v3

    .line 60
    :cond_1
    invoke-static {v5}, Lcom/coremedia/iso/IsoTypeReader;->read4cc(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v9

    .line 61
    .local v9, "type":Ljava/lang/String;
    const/4 v12, 0x0

    .line 64
    .local v12, "usertype":[B
    const-wide/16 v14, 0x1

    cmp-long v4, v10, v14

    if-nez v4, :cond_3

    .line 65
    const/16 v4, 0x8

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 66
    .local v2, "bb":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 67
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 68
    invoke-static {v2}, Lcom/coremedia/iso/IsoTypeReader;->readUInt64(Ljava/nio/ByteBuffer;)J

    move-result-wide v10

    .line 69
    const-wide/16 v14, 0x10

    sub-long v6, v10, v14

    .line 80
    .end local v2    # "bb":Ljava/nio/ByteBuffer;
    .local v6, "contentSize":J
    :goto_0
    const-string v4, "uuid"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 81
    const/16 v4, 0x10

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 82
    .restart local v2    # "bb":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 83
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 84
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    .line 85
    const-wide/16 v14, 0x10

    sub-long/2addr v6, v14

    .line 87
    .end local v2    # "bb":Ljava/nio/ByteBuffer;
    :cond_2
    invoke-interface/range {p2 .. p2}, Lcom/coremedia/iso/boxes/ContainerBox;->getType()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v12, v4}, Lcom/coremedia/iso/AbstractBoxParser;->createBox(Ljava/lang/String;[BLjava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v3

    .line 88
    .local v3, "box":Lcom/coremedia/iso/boxes/Box;
    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Lcom/coremedia/iso/boxes/Box;->setParent(Lcom/coremedia/iso/boxes/ContainerBox;)V

    .line 89
    sget-object v4, Lcom/coremedia/iso/AbstractBoxParser;->LOG:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Parsing "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v3}, Lcom/coremedia/iso/boxes/Box;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 93
    sub-long v14, v10, v6

    invoke-static {v14, v15}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v4

    const/16 v8, 0x8

    if-ne v4, v8, :cond_6

    .line 96
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    :goto_1
    move-object/from16 v4, p1

    move-object/from16 v8, p0

    .line 118
    invoke-interface/range {v3 .. v8}, Lcom/coremedia/iso/boxes/Box;->parse(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/BoxParser;)V

    .line 122
    sget-boolean v4, Lcom/coremedia/iso/AbstractBoxParser;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    invoke-interface {v3}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v14

    cmp-long v4, v10, v14

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Reconstructed Size is not x to the number of parsed bytes! ("

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 124
    invoke-interface {v3}, Lcom/coremedia/iso/boxes/Box;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, ") Actual Box size: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, " Calculated size: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 125
    invoke-interface {v3}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v14

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 70
    .end local v3    # "box":Lcom/coremedia/iso/boxes/Box;
    .end local v6    # "contentSize":J
    :cond_3
    const-wide/16 v14, 0x0

    cmp-long v4, v10, v14

    if-nez v4, :cond_5

    .line 71
    move-object/from16 v0, p1

    instance-of v4, v0, Ljava/nio/channels/FileChannel;

    if-eqz v4, :cond_4

    move-object/from16 v4, p1

    .line 72
    check-cast v4, Ljava/nio/channels/FileChannel;

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v14

    move-object/from16 v4, p1

    check-cast v4, Ljava/nio/channels/FileChannel;

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v16

    sub-long v14, v14, v16

    const-wide/16 v16, 0x8

    sub-long v10, v14, v16

    .line 76
    const-wide/16 v14, 0x8

    sub-long v6, v10, v14

    .restart local v6    # "contentSize":J
    goto/16 :goto_0

    .line 74
    .end local v6    # "contentSize":J
    :cond_4
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v8, "Only FileChannel inputs may use size == 0 (box reaches to the end of file)"

    invoke-direct {v4, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 78
    :cond_5
    const-wide/16 v14, 0x8

    sub-long v6, v10, v14

    .restart local v6    # "contentSize":J
    goto/16 :goto_0

    .line 97
    .restart local v3    # "box":Lcom/coremedia/iso/boxes/Box;
    :cond_6
    sub-long v14, v10, v6

    invoke-static {v14, v15}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v4

    const/16 v8, 0x10

    if-ne v4, v8, :cond_7

    .line 98
    const/16 v4, 0x10

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 99
    const-wide/16 v14, 0x1

    invoke-static {v5, v14, v15}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 100
    invoke-static {v9}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 101
    invoke-static {v5, v10, v11}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    goto/16 :goto_1

    .line 102
    :cond_7
    sub-long v14, v10, v6

    invoke-static {v14, v15}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v4

    const/16 v8, 0x18

    if-ne v4, v8, :cond_8

    .line 103
    const/16 v4, 0x18

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 104
    invoke-static {v5, v10, v11}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 105
    invoke-static {v9}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 106
    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    .line 107
    :cond_8
    sub-long v14, v10, v6

    invoke-static {v14, v15}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v4

    const/16 v8, 0x20

    if-ne v4, v8, :cond_9

    .line 108
    const/16 v4, 0x20

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 109
    invoke-static {v5, v10, v11}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 110
    invoke-static {v9}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 111
    invoke-static {v5, v10, v11}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    .line 112
    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    .line 114
    :cond_9
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v8, "I didn\'t expect that"

    invoke-direct {v4, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
