.class public Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;
.super Ljava/lang/Object;
.source "AvcConfigurationBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVCDecoderConfigurationRecord"
.end annotation


# instance fields
.field public avcLevelIndication:I

.field public avcProfileIndication:I

.field public bitDepthChromaMinus8:I

.field public bitDepthChromaMinus8PaddingBits:I

.field public bitDepthLumaMinus8:I

.field public bitDepthLumaMinus8PaddingBits:I

.field public chromaFormat:I

.field public chromaFormatPaddingBits:I

.field public configurationVersion:I

.field public hasExts:Z

.field public lengthSizeMinusOne:I

.field public lengthSizeMinusOnePaddingBits:I

.field public numberOfSequenceParameterSetsPaddingBits:I

.field public pictureParameterSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field public profileCompatibility:I

.field public sequenceParameterSetExts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field public sequenceParameterSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x1f

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    .line 196
    iput-boolean v3, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->hasExts:Z

    .line 197
    iput v3, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->chromaFormat:I

    .line 198
    iput v2, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    .line 199
    iput v2, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSetExts:Ljava/util/List;

    .line 205
    const/16 v0, 0x3c

    iput v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->lengthSizeMinusOnePaddingBits:I

    .line 206
    const/4 v0, 0x7

    iput v0, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->numberOfSequenceParameterSetsPaddingBits:I

    .line 207
    iput v1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->chromaFormatPaddingBits:I

    .line 208
    iput v1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthLumaMinus8PaddingBits:I

    .line 209
    iput v1, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthChromaMinus8PaddingBits:I

    .line 212
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 18
    .param p1, "content"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 214
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    .line 194
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    .line 196
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->hasExts:Z

    .line 197
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->chromaFormat:I

    .line 198
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    .line 199
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    .line 200
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSetExts:Ljava/util/List;

    .line 205
    const/16 v15, 0x3c

    move-object/from16 v0, p0

    iput v15, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->lengthSizeMinusOnePaddingBits:I

    .line 206
    const/4 v15, 0x7

    move-object/from16 v0, p0

    iput v15, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->numberOfSequenceParameterSetsPaddingBits:I

    .line 207
    const/16 v15, 0x1f

    move-object/from16 v0, p0

    iput v15, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->chromaFormatPaddingBits:I

    .line 208
    const/16 v15, 0x1f

    move-object/from16 v0, p0

    iput v15, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthLumaMinus8PaddingBits:I

    .line 209
    const/16 v15, 0x1f

    move-object/from16 v0, p0

    iput v15, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthChromaMinus8PaddingBits:I

    .line 215
    invoke-static/range {p1 .. p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->configurationVersion:I

    .line 216
    invoke-static/range {p1 .. p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcProfileIndication:I

    .line 217
    invoke-static/range {p1 .. p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->profileCompatibility:I

    .line 218
    invoke-static/range {p1 .. p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcLevelIndication:I

    .line 219
    new-instance v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 220
    .local v2, "brb":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;
    const/4 v15, 0x6

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->lengthSizeMinusOnePaddingBits:I

    .line 221
    const/4 v15, 0x2

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->lengthSizeMinusOne:I

    .line 222
    const/4 v15, 0x3

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->numberOfSequenceParameterSetsPaddingBits:I

    .line 223
    const/4 v15, 0x5

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v8

    .line 224
    .local v8, "numberOfSeuqenceParameterSets":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v8, :cond_0

    .line 225
    invoke-static/range {p1 .. p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v13

    .line 227
    .local v13, "sequenceParameterSetLength":I
    new-array v14, v13, [B

    .line 228
    .local v14, "sequenceParameterSetNALUnit":[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 229
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 231
    .end local v13    # "sequenceParameterSetLength":I
    .end local v14    # "sequenceParameterSetNALUnit":[B
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v15

    int-to-long v6, v15

    .line 232
    .local v6, "numberOfPictureParameterSets":J
    const/4 v3, 0x0

    :goto_1
    int-to-long v0, v3

    move-wide/from16 v16, v0

    cmp-long v15, v16, v6

    if-gez v15, :cond_1

    .line 233
    invoke-static/range {p1 .. p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v9

    .line 234
    .local v9, "pictureParameterSetLength":I
    new-array v10, v9, [B

    .line 235
    .local v10, "pictureParameterSetNALUnit":[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 236
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    invoke-interface {v15, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 238
    .end local v9    # "pictureParameterSetLength":I
    .end local v10    # "pictureParameterSetNALUnit":[B
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v15

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    .line 239
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->hasExts:Z

    .line 241
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->hasExts:Z

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget v15, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v16, 0x64

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v16, 0x6e

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v16, 0x7a

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v16, 0x90

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 244
    :cond_3
    new-instance v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    .end local v2    # "brb":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;
    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 245
    .restart local v2    # "brb":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;
    const/4 v15, 0x6

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->chromaFormatPaddingBits:I

    .line 246
    const/4 v15, 0x2

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->chromaFormat:I

    .line 247
    const/4 v15, 0x5

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthLumaMinus8PaddingBits:I

    .line 248
    const/4 v15, 0x3

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    .line 249
    const/4 v15, 0x5

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthChromaMinus8PaddingBits:I

    .line 250
    const/4 v15, 0x3

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    .line 251
    invoke-static/range {p1 .. p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v15

    int-to-long v4, v15

    .line 252
    .local v4, "numOfSequenceParameterSetExt":J
    const/4 v3, 0x0

    :goto_2
    int-to-long v0, v3

    move-wide/from16 v16, v0

    cmp-long v15, v16, v4

    if-gez v15, :cond_5

    .line 253
    invoke-static/range {p1 .. p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v11

    .line 254
    .local v11, "sequenceParameterSetExtLength":I
    new-array v12, v11, [B

    .line 255
    .local v12, "sequenceParameterSetExtNALUnit":[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 256
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSetExts:Ljava/util/List;

    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 259
    .end local v4    # "numOfSequenceParameterSetExt":J
    .end local v11    # "sequenceParameterSetExtLength":I
    .end local v12    # "sequenceParameterSetExtNALUnit":[B
    :cond_4
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->chromaFormat:I

    .line 260
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    .line 261
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    .line 263
    :cond_5
    return-void
.end method


# virtual methods
.method public getContent(Ljava/nio/ByteBuffer;)V
    .locals 10
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x2

    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 266
    iget v4, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->configurationVersion:I

    invoke-static {p1, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 267
    iget v4, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcProfileIndication:I

    invoke-static {p1, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 268
    iget v4, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->profileCompatibility:I

    invoke-static {p1, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 269
    iget v4, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcLevelIndication:I

    invoke-static {p1, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 270
    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;

    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 271
    .local v0, "bwb":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;
    iget v4, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->lengthSizeMinusOnePaddingBits:I

    invoke-virtual {v0, v4, v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 272
    iget v4, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->lengthSizeMinusOne:I

    invoke-virtual {v0, v4, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 273
    iget v4, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->numberOfSequenceParameterSetsPaddingBits:I

    invoke-virtual {v0, v4, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 274
    iget-object v4, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 275
    iget-object v4, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 276
    .local v3, "sequenceParameterSetNALUnit":[B
    array-length v5, v3

    invoke-static {p1, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 277
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 279
    .end local v3    # "sequenceParameterSetNALUnit":[B
    :cond_0
    iget-object v4, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {p1, v4}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 280
    iget-object v4, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 281
    .local v1, "pictureParameterSetNALUnit":[B
    array-length v5, v1

    invoke-static {p1, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 282
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 284
    .end local v1    # "pictureParameterSetNALUnit":[B
    :cond_1
    iget-boolean v4, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->hasExts:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v5, 0x64

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v5, 0x6e

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v5, 0x7a

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v5, 0x90

    if-ne v4, v5, :cond_3

    .line 286
    :cond_2
    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;

    .end local v0    # "bwb":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;
    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 287
    .restart local v0    # "bwb":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;
    iget v4, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->chromaFormatPaddingBits:I

    invoke-virtual {v0, v4, v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 288
    iget v4, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->chromaFormat:I

    invoke-virtual {v0, v4, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 289
    iget v4, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthLumaMinus8PaddingBits:I

    invoke-virtual {v0, v4, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 290
    iget v4, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthLumaMinus8:I

    invoke-virtual {v0, v4, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 291
    iget v4, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthChromaMinus8PaddingBits:I

    invoke-virtual {v0, v4, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 292
    iget v4, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->bitDepthChromaMinus8:I

    invoke-virtual {v0, v4, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitWriterBuffer;->writeBits(II)V

    .line 293
    iget-object v4, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSetExts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 294
    .local v2, "sequenceParameterSetExtNALUnit":[B
    array-length v5, v2

    invoke-static {p1, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 295
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 298
    .end local v2    # "sequenceParameterSetExtNALUnit":[B
    :cond_3
    return-void
.end method

.method public getContentSize()J
    .locals 12

    .prologue
    const-wide/16 v10, 0x1

    const-wide/16 v8, 0x2

    .line 301
    const-wide/16 v4, 0x5

    .line 302
    .local v4, "size":J
    add-long/2addr v4, v10

    .line 303
    iget-object v3, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 304
    .local v2, "sequenceParameterSetNALUnit":[B
    add-long/2addr v4, v8

    .line 305
    array-length v6, v2

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 306
    goto :goto_0

    .line 307
    .end local v2    # "sequenceParameterSetNALUnit":[B
    :cond_0
    add-long/2addr v4, v10

    .line 308
    iget-object v3, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 309
    .local v0, "pictureParameterSetNALUnit":[B
    add-long/2addr v4, v8

    .line 310
    array-length v6, v0

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 311
    goto :goto_1

    .line 312
    .end local v0    # "pictureParameterSetNALUnit":[B
    :cond_1
    iget-boolean v3, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->hasExts:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v6, 0x64

    if-eq v3, v6, :cond_2

    iget v3, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v6, 0x6e

    if-eq v3, v6, :cond_2

    iget v3, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v6, 0x7a

    if-eq v3, v6, :cond_2

    iget v3, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->avcProfileIndication:I

    const/16 v6, 0x90

    if-ne v3, v6, :cond_3

    .line 313
    :cond_2
    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    .line 314
    iget-object v3, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSetExts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 315
    .local v1, "sequenceParameterSetExtNALUnit":[B
    add-long/2addr v4, v8

    .line 316
    array-length v6, v1

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 317
    goto :goto_2

    .line 320
    .end local v1    # "sequenceParameterSetExtNALUnit":[B
    :cond_3
    return-wide v4
.end method

.method public getPPS()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 324
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v2, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 326
    .local v3, "pictureParameterSet":[B
    const-string v0, "not parsable"

    .line 328
    .local v0, "details":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->read([B)Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 333
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 329
    :catch_0
    move-exception v1

    .line 330
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 335
    .end local v0    # "details":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "pictureParameterSet":[B
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public getPictureParameterSetsAsStrings()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 370
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->pictureParameterSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 371
    .local v0, "parameterSet":[B
    invoke-static {v0}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 373
    .end local v0    # "parameterSet":[B
    :cond_0
    return-object v1
.end method

.method public getSPS()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 339
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 341
    .local v2, "sequenceParameterSet":[B
    const-string v0, "not parsable"

    .line 343
    .local v0, "detail":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v4}, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->read(Ljava/io/InputStream;)Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 347
    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 349
    .end local v0    # "detail":Ljava/lang/String;
    .end local v2    # "sequenceParameterSet":[B
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3

    .line 344
    .restart local v0    # "detail":Ljava/lang/String;
    .restart local v2    # "sequenceParameterSet":[B
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public getSequenceParameterSetExtsAsStrings()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSetExts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 362
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSetExts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 363
    .local v0, "parameterSet":[B
    invoke-static {v0}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 365
    .end local v0    # "parameterSet":[B
    :cond_0
    return-object v1
.end method

.method public getSequenceParameterSetsAsStrings()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 354
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox$AVCDecoderConfigurationRecord;->sequenceParameterSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 355
    .local v0, "parameterSet":[B
    invoke-static {v0}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 357
    .end local v0    # "parameterSet":[B
    :cond_0
    return-object v1
.end method
