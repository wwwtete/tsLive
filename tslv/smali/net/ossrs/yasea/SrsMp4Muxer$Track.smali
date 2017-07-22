.class Lnet/ossrs/yasea/SrsMp4Muxer$Track;
.super Ljava/lang/Object;
.source "SrsMp4Muxer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/ossrs/yasea/SrsMp4Muxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Track"
.end annotation


# instance fields
.field private creationTime:Ljava/util/Date;

.field private duration:J

.field private first:Z

.field private handler:Ljava/lang/String;

.field private headerBox:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

.field private height:I

.field private isAudio:Z

.field private lastPresentationTimeUs:J

.field private sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

.field private sampleDurations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private samples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/ossrs/yasea/SrsMp4Muxer$Sample;",
            ">;"
        }
    .end annotation
.end field

.field private syncSamples:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lnet/ossrs/yasea/SrsMp4Muxer;

.field private timeScale:I

.field private trackId:I

.field private volume:F

.field private width:I


# direct methods
.method public constructor <init>(Lnet/ossrs/yasea/SrsMp4Muxer;ILandroid/media/MediaFormat;Z)V
    .locals 14
    .param p2, "id"    # I
    .param p3, "format"    # Landroid/media/MediaFormat;
    .param p4, "audio"    # Z

    .prologue
    .line 489
    iput-object p1, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->this$0:Lnet/ossrs/yasea/SrsMp4Muxer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    const/4 v11, 0x0

    iput v11, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->trackId:I

    .line 473
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->samples:Ljava/util/ArrayList;

    .line 474
    const-wide/16 v12, 0x0

    iput-wide v12, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->duration:J

    .line 476
    const/4 v11, 0x0

    iput-object v11, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->headerBox:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    .line 477
    const/4 v11, 0x0

    iput-object v11, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 478
    const/4 v11, 0x0

    iput-object v11, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->syncSamples:Ljava/util/LinkedList;

    .line 480
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    iput-object v11, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->creationTime:Ljava/util/Date;

    .line 483
    const/4 v11, 0x0

    iput v11, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->volume:F

    .line 484
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->sampleDurations:Ljava/util/ArrayList;

    .line 485
    const/4 v11, 0x0

    iput-boolean v11, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->isAudio:Z

    .line 486
    const-wide/16 v12, 0x0

    iput-wide v12, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->lastPresentationTimeUs:J

    .line 487
    const/4 v11, 0x1

    iput-boolean v11, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->first:Z

    .line 490
    move/from16 v0, p2

    iput v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->trackId:I

    .line 491
    move/from16 v0, p4

    iput-boolean v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->isAudio:Z

    .line 492
    iget-boolean v11, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->isAudio:Z

    if-nez v11, :cond_1

    .line 493
    iget-object v11, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->sampleDurations:Ljava/util/ArrayList;

    const-wide/16 v12, 0xbc7

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    const-wide/16 v12, 0xbc7

    iput-wide v12, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->duration:J

    .line 495
    const-string v11, "width"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->width:I

    .line 496
    const-string v11, "height"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->height:I

    .line 497
    const v11, 0x15f90

    iput v11, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->timeScale:I

    .line 498
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    iput-object v11, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->syncSamples:Ljava/util/LinkedList;

    .line 499
    const-string v11, "vide"

    iput-object v11, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->handler:Ljava/lang/String;

    .line 500
    new-instance v11, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;

    invoke-direct {v11}, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;-><init>()V

    iput-object v11, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->headerBox:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    .line 501
    new-instance v11, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {v11}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    iput-object v11, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 502
    const-string v11, "mime"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "video/avc"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 503
    new-instance v10, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    const-string v11, "avc1"

    invoke-direct {v10, v11}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;-><init>(Ljava/lang/String;)V

    .line 504
    .local v10, "visualSampleEntry":Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setDataReferenceIndex(I)V

    .line 505
    const/16 v11, 0x18

    invoke-virtual {v10, v11}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setDepth(I)V

    .line 506
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setFrameCount(I)V

    .line 507
    const-wide/high16 v12, 0x4052000000000000L    # 72.0

    invoke-virtual {v10, v12, v13}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHorizresolution(D)V

    .line 508
    const-wide/high16 v12, 0x4052000000000000L    # 72.0

    invoke-virtual {v10, v12, v13}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setVertresolution(D)V

    .line 509
    iget v11, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->width:I

    invoke-virtual {v10, v11}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setWidth(I)V

    .line 510
    iget v11, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->height:I

    invoke-virtual {v10, v11}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHeight(I)V

    .line 511
    const-string v11, "AVC Coding"

    invoke-virtual {v10, v11}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setCompressorname(Ljava/lang/String;)V

    .line 513
    new-instance v4, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;

    invoke-direct {v4}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;-><init>()V

    .line 514
    .local v4, "avcConfigurationBox":Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->setConfigurationVersion(I)V

    .line 515
    invoke-static {p1}, Lnet/ossrs/yasea/SrsMp4Muxer;->access$1100(Lnet/ossrs/yasea/SrsMp4Muxer;)Ljava/nio/ByteBuffer;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    invoke-virtual {v4, v11}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->setAvcProfileIndication(I)V

    .line 516
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->setProfileCompatibility(I)V

    .line 517
    invoke-static {p1}, Lnet/ossrs/yasea/SrsMp4Muxer;->access$1100(Lnet/ossrs/yasea/SrsMp4Muxer;)Ljava/nio/ByteBuffer;

    move-result-object v11

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    invoke-virtual {v4, v11}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->setAvcLevelIndication(I)V

    .line 518
    const/4 v11, 0x3

    invoke-virtual {v4, v11}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->setLengthSizeMinusOne(I)V

    .line 519
    invoke-static {p1}, Lnet/ossrs/yasea/SrsMp4Muxer;->access$1200(Lnet/ossrs/yasea/SrsMp4Muxer;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->setSequenceParameterSets(Ljava/util/List;)V

    .line 520
    invoke-static {p1}, Lnet/ossrs/yasea/SrsMp4Muxer;->access$1300(Lnet/ossrs/yasea/SrsMp4Muxer;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->setPictureParameterSets(Ljava/util/List;)V

    .line 521
    const/4 v11, -0x1

    invoke-virtual {v4, v11}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->setBitDepthLumaMinus8(I)V

    .line 522
    const/4 v11, -0x1

    invoke-virtual {v4, v11}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->setBitDepthChromaMinus8(I)V

    .line 523
    const/4 v11, -0x1

    invoke-virtual {v4, v11}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->setChromaFormat(I)V

    .line 524
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->setHasExts(Z)V

    .line 526
    invoke-virtual {v10, v4}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 527
    iget-object v11, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {v11, v10}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 572
    .end local v4    # "avcConfigurationBox":Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;
    .end local v10    # "visualSampleEntry":Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;
    :cond_0
    :goto_0
    return-void

    .line 530
    :cond_1
    iget-object v11, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->sampleDurations:Ljava/util/ArrayList;

    const-wide/16 v12, 0x400

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    const-wide/16 v12, 0x400

    iput-wide v12, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->duration:J

    .line 532
    const/high16 v11, 0x3f800000    # 1.0f

    iput v11, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->volume:F

    .line 533
    const-string v11, "sample-rate"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->timeScale:I

    .line 534
    const-string v11, "soun"

    iput-object v11, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->handler:Ljava/lang/String;

    .line 535
    new-instance v11, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;

    invoke-direct {v11}, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;-><init>()V

    iput-object v11, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->headerBox:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    .line 536
    new-instance v11, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {v11}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    iput-object v11, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 537
    new-instance v2, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    const-string v11, "mp4a"

    invoke-direct {v2, v11}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;-><init>(Ljava/lang/String;)V

    .line 538
    .local v2, "audioSampleEntry":Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
    const-string v11, "channel-count"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v2, v11}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setChannelCount(I)V

    .line 539
    const-string v11, "sample-rate"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v11

    int-to-long v12, v11

    invoke-virtual {v2, v12, v13}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleRate(J)V

    .line 540
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setDataReferenceIndex(I)V

    .line 541
    const/16 v11, 0x10

    invoke-virtual {v2, v11}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleSize(I)V

    .line 543
    new-instance v8, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;

    invoke-direct {v8}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;-><init>()V

    .line 544
    .local v8, "esds":Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;
    new-instance v7, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    invoke-direct {v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;-><init>()V

    .line 545
    .local v7, "descriptor":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->setEsId(I)V

    .line 547
    new-instance v9, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    invoke-direct {v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;-><init>()V

    .line 548
    .local v9, "slConfigDescriptor":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;
    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;->setPredefined(I)V

    .line 549
    invoke-virtual {v7, v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->setSlConfigDescriptor(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;)V

    .line 551
    new-instance v6, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    invoke-direct {v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;-><init>()V

    .line 552
    .local v6, "decoderConfigDescriptor":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;
    const/16 v11, 0x40

    invoke-virtual {v6, v11}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setObjectTypeIndication(I)V

    .line 553
    const/4 v11, 0x5

    invoke-virtual {v6, v11}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setStreamType(I)V

    .line 554
    const/16 v11, 0x600

    invoke-virtual {v6, v11}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setBufferSizeDB(I)V

    .line 555
    const-wide/32 v12, 0x17700

    invoke-virtual {v6, v12, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setMaxBitRate(J)V

    .line 556
    const-wide/32 v12, 0x17700

    invoke-virtual {v6, v12, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setAvgBitRate(J)V

    .line 558
    new-instance v3, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    invoke-direct {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;-><init>()V

    .line 559
    .local v3, "audioSpecificConfig":Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;
    const/4 v11, 0x2

    invoke-virtual {v3, v11}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->setAudioObjectType(I)V

    .line 560
    invoke-static {}, Lnet/ossrs/yasea/SrsMp4Muxer;->access$1400()Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J

    move-result-wide v12

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v3, v11}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->setSamplingFrequencyIndex(I)V

    .line 561
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getChannelCount()I

    move-result v11

    invoke-virtual {v3, v11}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->setChannelConfiguration(I)V

    .line 562
    invoke-virtual {v6, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setAudioSpecificInfo(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;)V

    .line 564
    invoke-virtual {v7, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->setDecoderConfigDescriptor(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;)V

    .line 566
    invoke-virtual {v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->serialize()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 567
    .local v5, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v8, v7}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;->setEsDescriptor(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;)V

    .line 568
    invoke-virtual {v8, v5}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;->setData(Ljava/nio/ByteBuffer;)V

    .line 569
    invoke-virtual {v2, v8}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 570
    iget-object v11, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {v11, v2}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public addSample(JLandroid/media/MediaCodec$BufferInfo;)V
    .locals 11
    .param p1, "offset"    # J
    .param p3, "bi"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    const/4 v9, 0x0

    .line 575
    iget-wide v0, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v2, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->lastPresentationTimeUs:J

    sub-long v6, v0, v2

    .line 576
    .local v6, "delta":J
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-gez v0, :cond_0

    .line 592
    :goto_0
    return-void

    .line 579
    :cond_0
    iget-boolean v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->isAudio:Z

    if-nez v0, :cond_3

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    const/4 v8, 0x1

    .line 580
    .local v8, "isSyncFrame":Z
    :goto_1
    iget-object v10, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->samples:Ljava/util/ArrayList;

    new-instance v0, Lnet/ossrs/yasea/SrsMp4Muxer$Sample;

    iget-object v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->this$0:Lnet/ossrs/yasea/SrsMp4Muxer;

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long v4, v2

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lnet/ossrs/yasea/SrsMp4Muxer$Sample;-><init>(Lnet/ossrs/yasea/SrsMp4Muxer;JJ)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    iget-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->syncSamples:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    if-eqz v8, :cond_1

    .line 582
    iget-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->syncSamples:Ljava/util/LinkedList;

    iget-object v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->samples:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 585
    :cond_1
    iget v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->timeScale:I

    int-to-long v0, v0

    mul-long/2addr v0, v6

    const-wide/32 v2, 0x7a120

    add-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long v6, v0, v2

    .line 586
    iget-wide v0, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->lastPresentationTimeUs:J

    .line 587
    iget-boolean v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->first:Z

    if-nez v0, :cond_2

    .line 588
    iget-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->sampleDurations:Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->sampleDurations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 589
    iget-wide v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->duration:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->duration:J

    .line 591
    :cond_2
    iput-boolean v9, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->first:Z

    goto :goto_0

    .end local v8    # "isSyncFrame":Z
    :cond_3
    move v8, v9

    .line 579
    goto :goto_1
.end method

.method public clearSample()V
    .locals 1

    .prologue
    .line 595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->first:Z

    .line 596
    iget-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->samples:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 597
    iget-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->syncSamples:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 598
    iget-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->sampleDurations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 599
    return-void
.end method

.method public getCreationTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->creationTime:Ljava/util/Date;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 606
    iget-wide v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->duration:J

    return-wide v0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->handler:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 645
    iget v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->height:I

    return v0
.end method

.method public getMediaHeaderBox()Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->headerBox:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    return-object v0
.end method

.method public getSampleDurations()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 653
    iget-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->sampleDurations:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSamples()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/ossrs/yasea/SrsMp4Muxer$Sample;",
            ">;"
        }
    .end annotation

    .prologue
    .line 602
    iget-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->samples:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSyncSamples()[J
    .locals 4

    .prologue
    .line 622
    iget-object v2, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->syncSamples:Ljava/util/LinkedList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->syncSamples:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 623
    :cond_0
    const/4 v1, 0x0

    .line 629
    :cond_1
    return-object v1

    .line 625
    :cond_2
    iget-object v2, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->syncSamples:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    new-array v1, v2, [J

    .line 626
    .local v1, "returns":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->syncSamples:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 627
    iget-object v2, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->syncSamples:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    aput-wide v2, v1, v0

    .line 626
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getTimeScale()I
    .locals 1

    .prologue
    .line 633
    iget v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->timeScale:I

    return v0
.end method

.method public getTrackId()I
    .locals 1

    .prologue
    .line 661
    iget v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->trackId:I

    return v0
.end method

.method public getVolume()F
    .locals 1

    .prologue
    .line 649
    iget v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->volume:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 641
    iget v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->width:I

    return v0
.end method

.method public isAudio()Z
    .locals 1

    .prologue
    .line 657
    iget-boolean v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->isAudio:Z

    return v0
.end method
