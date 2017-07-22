.class Lnet/ossrs/yasea/SrsFlvMuxer$SrsRawH264Stream;
.super Ljava/lang/Object;
.source "SrsFlvMuxer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/ossrs/yasea/SrsFlvMuxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SrsRawH264Stream"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SrsFlvMuxer"


# instance fields
.field final synthetic this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

.field private utils:Lnet/ossrs/yasea/SrsFlvMuxer$SrsUtils;


# direct methods
.method public constructor <init>(Lnet/ossrs/yasea/SrsFlvMuxer;)V
    .locals 1

    .prologue
    .line 542
    iput-object p1, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsRawH264Stream;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    new-instance v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsUtils;

    invoke-direct {v0, p1}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsUtils;-><init>(Lnet/ossrs/yasea/SrsFlvMuxer;)V

    iput-object v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsRawH264Stream;->utils:Lnet/ossrs/yasea/SrsFlvMuxer$SrsUtils;

    .line 544
    return-void
.end method


# virtual methods
.method public annexb_demux(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;
    .locals 12
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "bi"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 719
    new-instance v3, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v6, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsRawH264Stream;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;-><init>(Lnet/ossrs/yasea/SrsFlvMuxer;Lnet/ossrs/yasea/SrsFlvMuxer$1;)V

    .line 721
    .local v3, "tbb":Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    iget v7, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ge v6, v7, :cond_4

    .line 724
    iget-object v6, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsRawH264Stream;->utils:Lnet/ossrs/yasea/SrsFlvMuxer$SrsUtils;

    invoke-virtual {v6, p1, p2}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsUtils;->srs_avc_startswith_annexb(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)Lnet/ossrs/yasea/SrsFlvMuxer$SrsAnnexbSearch;

    move-result-object v5

    .line 725
    .local v5, "tbbsc":Lnet/ossrs/yasea/SrsFlvMuxer$SrsAnnexbSearch;
    iget-boolean v6, v5, Lnet/ossrs/yasea/SrsFlvMuxer$SrsAnnexbSearch;->match:Z

    if-eqz v6, :cond_0

    iget v6, v5, Lnet/ossrs/yasea/SrsFlvMuxer$SrsAnnexbSearch;->nb_start_code:I

    const/4 v7, 0x3

    if-ge v6, v7, :cond_1

    .line 726
    :cond_0
    const-string v6, "SrsFlvMuxer"

    const-string v7, "annexb not match."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const-string v6, "SrsFlvMuxer"

    const/16 v7, 0x10

    invoke-static {v6, p1, v7}, Lnet/ossrs/yasea/SrsFlvMuxer;->srs_print_bytes(Ljava/lang/String;Ljava/nio/ByteBuffer;I)V

    .line 728
    iget-object v6, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsRawH264Stream;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    invoke-static {v6}, Lnet/ossrs/yasea/SrsFlvMuxer;->access$1000(Lnet/ossrs/yasea/SrsFlvMuxer;)Lcom/github/faucamp/simplertmp/RtmpHandler;

    move-result-object v6

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "annexb not match for %dB, pos=%d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 729
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 728
    invoke-virtual {v6, v7}, Lcom/github/faucamp/simplertmp/RtmpHandler;->notifyRtmpIllegalArgumentException(Ljava/lang/IllegalArgumentException;)V

    .line 733
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 734
    .local v4, "tbbs":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v6, v5, Lnet/ossrs/yasea/SrsFlvMuxer$SrsAnnexbSearch;->nb_start_code:I

    if-ge v1, v6, :cond_2

    .line 735
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 734
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 739
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v6

    iput-object v6, v3, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    .line 740
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 741
    .local v2, "pos":I
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    iget v7, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ge v6, v7, :cond_3

    .line 742
    iget-object v6, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsRawH264Stream;->utils:Lnet/ossrs/yasea/SrsFlvMuxer$SrsUtils;

    invoke-virtual {v6, p1, p2}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsUtils;->srs_avc_startswith_annexb(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)Lnet/ossrs/yasea/SrsFlvMuxer$SrsAnnexbSearch;

    move-result-object v0

    .line 743
    .local v0, "bsc":Lnet/ossrs/yasea/SrsFlvMuxer$SrsAnnexbSearch;
    iget-boolean v6, v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsAnnexbSearch;->match:Z

    if-eqz v6, :cond_5

    .line 749
    .end local v0    # "bsc":Lnet/ossrs/yasea/SrsFlvMuxer$SrsAnnexbSearch;
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    sub-int/2addr v6, v2

    iput v6, v3, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    .line 753
    .end local v1    # "i":I
    .end local v2    # "pos":I
    .end local v4    # "tbbs":Ljava/nio/ByteBuffer;
    .end local v5    # "tbbsc":Lnet/ossrs/yasea/SrsFlvMuxer$SrsAnnexbSearch;
    :cond_4
    return-object v3

    .line 746
    .restart local v0    # "bsc":Lnet/ossrs/yasea/SrsFlvMuxer$SrsAnnexbSearch;
    .restart local v1    # "i":I
    .restart local v2    # "pos":I
    .restart local v4    # "tbbs":Ljava/nio/ByteBuffer;
    .restart local v5    # "tbbsc":Lnet/ossrs/yasea/SrsFlvMuxer$SrsAnnexbSearch;
    :cond_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    goto :goto_1
.end method

.method public is_pps(Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;)Z
    .locals 4
    .param p1, "frame"    # Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 554
    iget v2, p1, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    if-ge v2, v0, :cond_0

    .line 557
    :goto_0
    return v1

    :cond_0
    iget-object v2, p1, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit8 v2, v2, 0x1f

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public is_sps(Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;)Z
    .locals 4
    .param p1, "frame"    # Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 547
    iget v2, p1, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    if-ge v2, v0, :cond_0

    .line 550
    :goto_0
    return v1

    :cond_0
    iget-object v2, p1, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit8 v2, v2, 0x1f

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public mux_avc2flv(Ljava/util/ArrayList;IIII)Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;
    .locals 7
    .param p2, "frame_type"    # I
    .param p3, "avc_packet_type"    # I
    .param p4, "dts"    # I
    .param p5, "pts"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;",
            ">;IIII)",
            "Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;"
        }
    .end annotation

    .prologue
    .line 672
    .local p1, "frames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;>;"
    new-instance v1, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v5, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsRawH264Stream;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    const/4 v6, 0x0

    invoke-direct {v1, v5, v6}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;-><init>(Lnet/ossrs/yasea/SrsFlvMuxer;Lnet/ossrs/yasea/SrsFlvMuxer$1;)V

    .line 679
    .local v1, "flv_tag":Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;
    const/4 v5, 0x5

    iput v5, v1, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    .line 680
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 681
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;

    .line 682
    .local v2, "frame":Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;
    iget v5, v1, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    iget v6, v2, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    add-int/2addr v5, v6

    iput v5, v1, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    .line 680
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 685
    .end local v2    # "frame":Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;
    :cond_0
    iget v5, v1, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, v1, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    .line 691
    iget-object v5, v1, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    shl-int/lit8 v6, p2, 0x4

    or-int/lit8 v6, v6, 0x7

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 694
    iget-object v5, v1, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    int-to-byte v6, p3

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 700
    sub-int v0, p5, p4

    .line 701
    .local v0, "cts":I
    iget-object v5, v1, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    shr-int/lit8 v6, v0, 0x10

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 702
    iget-object v5, v1, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    shr-int/lit8 v6, v0, 0x8

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 703
    iget-object v5, v1, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    int-to-byte v6, v0

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 706
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 707
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;

    .line 708
    .restart local v2    # "frame":Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;
    iget v5, v2, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    new-array v3, v5, [B

    .line 709
    .local v3, "frame_bytes":[B
    iget-object v5, v2, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 710
    iget-object v5, v1, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 706
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 714
    .end local v2    # "frame":Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;
    .end local v3    # "frame_bytes":[B
    :cond_1
    iget-object v5, v1, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 715
    return-object v1
.end method

.method public mux_ibp_frame(Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;)Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;
    .locals 4
    .param p1, "frame"    # Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;

    .prologue
    .line 561
    new-instance v1, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v2, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsRawH264Stream;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;-><init>(Lnet/ossrs/yasea/SrsFlvMuxer;Lnet/ossrs/yasea/SrsFlvMuxer$1;)V

    .line 562
    .local v1, "nalu_header":Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;
    const/4 v2, 0x4

    iput v2, v1, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    .line 563
    iget v2, v1, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v1, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    .line 567
    iget v0, p1, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    .line 572
    .local v0, "NAL_unit_length":I
    iget-object v2, v1, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 575
    iget-object v2, v1, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 576
    return-object v1
.end method

.method public mux_sequence_header(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IILjava/util/ArrayList;)V
    .locals 9
    .param p1, "sps"    # Ljava/nio/ByteBuffer;
    .param p2, "pps"    # Ljava/nio/ByteBuffer;
    .param p3, "dts"    # I
    .param p4, "pts"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/nio/ByteBuffer;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 595
    .local p5, "frames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;>;"
    new-instance v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v7, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsRawH264Stream;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    const/4 v8, 0x0

    invoke-direct {v0, v7, v8}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;-><init>(Lnet/ossrs/yasea/SrsFlvMuxer;Lnet/ossrs/yasea/SrsFlvMuxer$1;)V

    .line 596
    .local v0, "hdr":Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;
    const/4 v7, 0x5

    iput v7, v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    .line 597
    iget v7, v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    .line 603
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    .line 605
    .local v4, "profile_idc":B
    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    .line 610
    .local v1, "level_idc":B
    iget-object v7, v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 612
    iget-object v7, v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 614
    iget-object v7, v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 616
    iget-object v7, v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 619
    iget-object v7, v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 622
    iget-object v7, v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 623
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    new-instance v6, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v7, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsRawH264Stream;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;-><init>(Lnet/ossrs/yasea/SrsFlvMuxer;Lnet/ossrs/yasea/SrsFlvMuxer$1;)V

    .line 629
    .local v6, "sps_hdr":Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;
    const/4 v7, 0x3

    iput v7, v6, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    .line 630
    iget v7, v6, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, v6, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    .line 634
    iget-object v7, v6, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 636
    iget-object v7, v6, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    array-length v8, v8

    int-to-short v8, v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 638
    iget-object v7, v6, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 639
    invoke-virtual {p5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    new-instance v5, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v7, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsRawH264Stream;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;-><init>(Lnet/ossrs/yasea/SrsFlvMuxer;Lnet/ossrs/yasea/SrsFlvMuxer$1;)V

    .line 643
    .local v5, "sps_bb":Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    array-length v7, v7

    iput v7, v5, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    .line 644
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, v5, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    .line 645
    invoke-virtual {p5, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    new-instance v3, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v7, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsRawH264Stream;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    const/4 v8, 0x0

    invoke-direct {v3, v7, v8}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;-><init>(Lnet/ossrs/yasea/SrsFlvMuxer;Lnet/ossrs/yasea/SrsFlvMuxer$1;)V

    .line 651
    .local v3, "pps_hdr":Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;
    const/4 v7, 0x3

    iput v7, v3, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    .line 652
    iget v7, v3, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, v3, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    .line 656
    iget-object v7, v3, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 658
    iget-object v7, v3, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    array-length v8, v8

    int-to-short v8, v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 660
    iget-object v7, v3, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 661
    invoke-virtual {p5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    new-instance v2, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;

    iget-object v7, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsRawH264Stream;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    const/4 v8, 0x0

    invoke-direct {v2, v7, v8}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;-><init>(Lnet/ossrs/yasea/SrsFlvMuxer;Lnet/ossrs/yasea/SrsFlvMuxer$1;)V

    .line 665
    .local v2, "pps_bb":Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    array-length v7, v7

    iput v7, v2, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->size:I

    .line 666
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, v2, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->data:Ljava/nio/ByteBuffer;

    .line 667
    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    return-void
.end method
