.class Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;
.super Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;
.source "TsExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/extractor/ts/TsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PmtReader"
.end annotation


# instance fields
.field private crc:I

.field private final pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

.field private sectionBytesRead:I

.field private final sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private sectionLength:I

.field final synthetic this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/ts/TsExtractor;)V
    .locals 2

    .prologue
    .line 347
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;-><init>(Lcom/google/android/exoplayer/extractor/ts/TsExtractor$1;)V

    .line 348
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v1, 0x5

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    .line 349
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 350
    return-void
.end method

.method private readPrivateDataStreamType(Lcom/google/android/exoplayer/util/ParsableByteArray;I)I
    .locals 8
    .param p1, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "length"    # I

    .prologue
    .line 496
    const/4 v3, -0x1

    .line 497
    .local v3, "streamType":I
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v6

    add-int v2, v6, p2

    .line 498
    .local v2, "descriptorsEndPosition":I
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v6

    if-ge v6, v2, :cond_0

    .line 499
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 500
    .local v1, "descriptorTag":I
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 501
    .local v0, "descriptorLength":I
    const/4 v6, 0x5

    if-ne v1, v6, :cond_3

    .line 502
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    .line 503
    .local v4, "formatIdentifier":J
    invoke-static {}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->access$400()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-nez v6, :cond_1

    .line 504
    const/16 v3, 0x81

    .line 521
    .end local v0    # "descriptorLength":I
    .end local v1    # "descriptorTag":I
    .end local v4    # "formatIdentifier":J
    :cond_0
    :goto_1
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 522
    return v3

    .line 505
    .restart local v0    # "descriptorLength":I
    .restart local v1    # "descriptorTag":I
    .restart local v4    # "formatIdentifier":J
    :cond_1
    invoke-static {}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->access$500()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    .line 506
    const/16 v3, 0x87

    goto :goto_1

    .line 507
    :cond_2
    invoke-static {}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->access$600()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    .line 508
    const/16 v3, 0x24

    goto :goto_1

    .line 511
    .end local v4    # "formatIdentifier":J
    :cond_3
    const/16 v6, 0x6a

    if-ne v1, v6, :cond_5

    .line 512
    const/16 v3, 0x81

    .line 519
    :cond_4
    :goto_2
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 513
    :cond_5
    const/16 v6, 0x7a

    if-ne v1, v6, :cond_6

    .line 514
    const/16 v3, 0x87

    goto :goto_2

    .line 515
    :cond_6
    const/16 v6, 0x7b

    if-ne v1, v6, :cond_4

    .line 516
    const/16 v3, 0x8a

    goto :goto_2
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer/util/ParsableByteArray;ZLcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .locals 14
    .param p1, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "payloadUnitStartIndicator"    # Z
    .param p3, "output"    # Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .prologue
    .line 360
    if-eqz p2, :cond_0

    .line 362
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 363
    .local v5, "pointerField":I
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 367
    iget-object v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v11, 0x3

    invoke-virtual {p1, v10, v11}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes(Lcom/google/android/exoplayer/util/ParsableBitArray;I)V

    .line 368
    iget-object v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v11, 0xc

    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 369
    iget-object v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v11, 0xc

    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v10

    iput v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionLength:I

    .line 370
    const/4 v10, 0x0

    iput v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionBytesRead:I

    .line 371
    iget-object v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    iget-object v10, v10, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    const/4 v11, 0x0

    const/4 v12, 0x3

    const/4 v13, -0x1

    invoke-static {v10, v11, v12, v13}, Lcom/google/android/exoplayer/util/Util;->crc([BIII)I

    move-result v10

    iput v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->crc:I

    .line 373
    iget-object v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget v11, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionLength:I

    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset(I)V

    .line 376
    .end local v5    # "pointerField":I
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v10

    iget v11, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionLength:I

    iget v12, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionBytesRead:I

    sub-int/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 377
    .local v1, "bytesToRead":I
    iget-object v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v10, v10, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    iget v11, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionBytesRead:I

    invoke-virtual {p1, v10, v11, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 378
    iget v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionBytesRead:I

    add-int/2addr v10, v1

    iput v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionBytesRead:I

    .line 379
    iget v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionBytesRead:I

    iget v11, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionLength:I

    if-ge v10, v11, :cond_2

    .line 484
    :cond_1
    :goto_0
    return-void

    .line 384
    :cond_2
    iget-object v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v10, v10, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v11, 0x0

    iget v12, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionLength:I

    iget v13, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->crc:I

    invoke-static {v10, v11, v12, v13}, Lcom/google/android/exoplayer/util/Util;->crc([BIII)I

    move-result v10

    if-nez v10, :cond_1

    .line 392
    iget-object v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v11, 0x7

    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 395
    iget-object v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v11, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes(Lcom/google/android/exoplayer/util/ParsableBitArray;I)V

    .line 396
    iget-object v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 397
    iget-object v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v11, 0xc

    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 400
    .local v6, "programInfoLength":I
    iget-object v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v10, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 402
    iget-object v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    invoke-static {v10}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->access$100(Lcom/google/android/exoplayer/extractor/ts/TsExtractor;)I

    move-result v10

    and-int/lit8 v10, v10, 0x10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    iget-object v10, v10, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->id3Reader:Lcom/google/android/exoplayer/extractor/ts/Id3Reader;

    if-nez v10, :cond_3

    .line 405
    iget-object v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    new-instance v11, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;

    const/16 v12, 0x15

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    iput-object v11, v10, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->id3Reader:Lcom/google/android/exoplayer/extractor/ts/Id3Reader;

    .line 408
    :cond_3
    iget v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionLength:I

    add-int/lit8 v10, v10, -0x9

    sub-int/2addr v10, v6

    add-int/lit8 v7, v10, -0x4

    .line 410
    .local v7, "remainingEntriesLength":I
    :cond_4
    :goto_1
    if-lez v7, :cond_c

    .line 411
    iget-object v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v11, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v12, 0x5

    invoke-virtual {v10, v11, v12}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes(Lcom/google/android/exoplayer/util/ParsableBitArray;I)V

    .line 412
    iget-object v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 413
    .local v8, "streamType":I
    iget-object v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 414
    iget-object v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v11, 0xd

    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 415
    .local v2, "elementaryPid":I
    iget-object v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 416
    iget-object v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v11, 0xc

    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 417
    .local v3, "esInfoLength":I
    const/4 v10, 0x6

    if-ne v8, v10, :cond_5

    .line 419
    iget-object v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {p0, v10, v3}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->readPrivateDataStreamType(Lcom/google/android/exoplayer/util/ParsableByteArray;I)I

    move-result v8

    .line 423
    :goto_2
    add-int/lit8 v10, v3, 0x5

    sub-int/2addr v7, v10

    .line 424
    iget-object v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    invoke-static {v10}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->access$100(Lcom/google/android/exoplayer/extractor/ts/TsExtractor;)I

    move-result v10

    and-int/lit8 v10, v10, 0x10

    if-eqz v10, :cond_6

    move v9, v8

    .line 425
    .local v9, "trackId":I
    :goto_3
    iget-object v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    iget-object v10, v10, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->trackIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    if-nez v10, :cond_4

    .line 429
    sparse-switch v8, :sswitch_data_0

    .line 472
    const/4 v4, 0x0

    .line 476
    .local v4, "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    :goto_4
    if-eqz v4, :cond_4

    .line 477
    iget-object v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    iget-object v10, v10, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->trackIds:Landroid/util/SparseBooleanArray;

    const/4 v11, 0x1

    invoke-virtual {v10, v9, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 478
    iget-object v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    iget-object v10, v10, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    new-instance v11, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;

    iget-object v12, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    .line 479
    invoke-static {v12}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->access$300(Lcom/google/android/exoplayer/extractor/ts/TsExtractor;)Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;

    move-result-object v12

    invoke-direct {v11, v4, v12}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;-><init>(Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;)V

    .line 478
    invoke-virtual {v10, v2, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 421
    .end local v4    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    .end local v9    # "trackId":I
    :cond_5
    iget-object v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v10, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_2

    :cond_6
    move v9, v2

    .line 424
    goto :goto_3

    .line 431
    .restart local v9    # "trackId":I
    :sswitch_0
    new-instance v4, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v10

    invoke-direct {v4, v10}, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 432
    .restart local v4    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    goto :goto_4

    .line 434
    .end local v4    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    :sswitch_1
    new-instance v4, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v10

    invoke-direct {v4, v10}, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 435
    .restart local v4    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    goto :goto_4

    .line 437
    .end local v4    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    :sswitch_2
    iget-object v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    invoke-static {v10}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->access$100(Lcom/google/android/exoplayer/extractor/ts/TsExtractor;)I

    move-result v10

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_7

    const/4 v4, 0x0

    .line 439
    .restart local v4    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    :goto_5
    goto :goto_4

    .line 437
    .end local v4    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    :cond_7
    new-instance v4, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;

    .line 438
    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v10

    new-instance v11, Lcom/google/android/exoplayer/extractor/DummyTrackOutput;

    invoke-direct {v11}, Lcom/google/android/exoplayer/extractor/DummyTrackOutput;-><init>()V

    invoke-direct {v4, v10, v11}, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    goto :goto_5

    .line 441
    :sswitch_3
    new-instance v4, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v4, v10, v11}, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;Z)V

    .line 442
    .restart local v4    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    goto :goto_4

    .line 444
    .end local v4    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    :sswitch_4
    new-instance v4, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {v4, v10, v11}, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;Z)V

    .line 445
    .restart local v4    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    goto :goto_4

    .line 448
    .end local v4    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    :sswitch_5
    new-instance v4, Lcom/google/android/exoplayer/extractor/ts/DtsReader;

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v10

    invoke-direct {v4, v10}, Lcom/google/android/exoplayer/extractor/ts/DtsReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 449
    .restart local v4    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    goto :goto_4

    .line 451
    .end local v4    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    :sswitch_6
    new-instance v4, Lcom/google/android/exoplayer/extractor/ts/H262Reader;

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v10

    invoke-direct {v4, v10}, Lcom/google/android/exoplayer/extractor/ts/H262Reader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 452
    .restart local v4    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    goto/16 :goto_4

    .line 454
    .end local v4    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    :sswitch_7
    iget-object v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    invoke-static {v10}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->access$100(Lcom/google/android/exoplayer/extractor/ts/TsExtractor;)I

    move-result v10

    and-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_8

    const/4 v4, 0x0

    .line 459
    .restart local v4    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    :goto_6
    goto/16 :goto_4

    .line 454
    .end local v4    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    :cond_8
    new-instance v4, Lcom/google/android/exoplayer/extractor/ts/H264Reader;

    .line 455
    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v12

    new-instance v13, Lcom/google/android/exoplayer/extractor/ts/SeiReader;

    iget-object v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    .line 456
    invoke-static {v10}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->access$208(Lcom/google/android/exoplayer/extractor/ts/TsExtractor;)I

    move-result v10

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v10

    invoke-direct {v13, v10}, Lcom/google/android/exoplayer/extractor/ts/SeiReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    iget-object v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    .line 457
    invoke-static {v10}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->access$100(Lcom/google/android/exoplayer/extractor/ts/TsExtractor;)I

    move-result v10

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_9

    const/4 v10, 0x1

    :goto_7
    iget-object v11, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    .line 458
    invoke-static {v11}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->access$100(Lcom/google/android/exoplayer/extractor/ts/TsExtractor;)I

    move-result v11

    and-int/lit8 v11, v11, 0x8

    if-eqz v11, :cond_a

    const/4 v11, 0x1

    :goto_8
    invoke-direct {v4, v12, v13, v10, v11}, Lcom/google/android/exoplayer/extractor/ts/H264Reader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;Lcom/google/android/exoplayer/extractor/ts/SeiReader;ZZ)V

    goto :goto_6

    .line 457
    :cond_9
    const/4 v10, 0x0

    goto :goto_7

    .line 458
    :cond_a
    const/4 v11, 0x0

    goto :goto_8

    .line 461
    :sswitch_8
    new-instance v4, Lcom/google/android/exoplayer/extractor/ts/H265Reader;

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v10

    new-instance v11, Lcom/google/android/exoplayer/extractor/ts/SeiReader;

    iget-object v12, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    .line 462
    invoke-static {v12}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->access$208(Lcom/google/android/exoplayer/extractor/ts/TsExtractor;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/google/android/exoplayer/extractor/ts/SeiReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    invoke-direct {v4, v10, v11}, Lcom/google/android/exoplayer/extractor/ts/H265Reader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;Lcom/google/android/exoplayer/extractor/ts/SeiReader;)V

    .line 463
    .restart local v4    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    goto/16 :goto_4

    .line 465
    .end local v4    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    :sswitch_9
    iget-object v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    invoke-static {v10}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->access$100(Lcom/google/android/exoplayer/extractor/ts/TsExtractor;)I

    move-result v10

    and-int/lit8 v10, v10, 0x10

    if-eqz v10, :cond_b

    .line 466
    iget-object v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    iget-object v4, v10, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->id3Reader:Lcom/google/android/exoplayer/extractor/ts/Id3Reader;

    .restart local v4    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    goto/16 :goto_4

    .line 468
    .end local v4    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    :cond_b
    new-instance v4, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;

    iget-object v10, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    invoke-static {v10}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->access$208(Lcom/google/android/exoplayer/extractor/ts/TsExtractor;)I

    move-result v10

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v10

    invoke-direct {v4, v10}, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 470
    .restart local v4    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    goto/16 :goto_4

    .line 483
    .end local v2    # "elementaryPid":I
    .end local v3    # "esInfoLength":I
    .end local v4    # "pesPayloadReader":Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
    .end local v8    # "streamType":I
    .end local v9    # "trackId":I
    :cond_c
    invoke-interface/range {p3 .. p3}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->endTracks()V

    goto/16 :goto_0

    .line 429
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_6
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0xf -> :sswitch_2
        0x15 -> :sswitch_9
        0x1b -> :sswitch_7
        0x24 -> :sswitch_8
        0x81 -> :sswitch_3
        0x82 -> :sswitch_5
        0x87 -> :sswitch_4
        0x8a -> :sswitch_5
    .end sparse-switch
.end method

.method public seek()V
    .locals 0

    .prologue
    .line 355
    return-void
.end method
