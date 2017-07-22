.class Lnet/ossrs/yasea/SrsMp4Muxer$SrsRawH264Stream;
.super Ljava/lang/Object;
.source "SrsMp4Muxer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/ossrs/yasea/SrsMp4Muxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SrsRawH264Stream"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/ossrs/yasea/SrsMp4Muxer;


# direct methods
.method private constructor <init>(Lnet/ossrs/yasea/SrsMp4Muxer;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lnet/ossrs/yasea/SrsMp4Muxer$SrsRawH264Stream;->this$0:Lnet/ossrs/yasea/SrsMp4Muxer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/ossrs/yasea/SrsMp4Muxer;Lnet/ossrs/yasea/SrsMp4Muxer$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/ossrs/yasea/SrsMp4Muxer;
    .param p2, "x1"    # Lnet/ossrs/yasea/SrsMp4Muxer$1;

    .prologue
    .line 375
    invoke-direct {p0, p1}, Lnet/ossrs/yasea/SrsMp4Muxer$SrsRawH264Stream;-><init>(Lnet/ossrs/yasea/SrsMp4Muxer;)V

    return-void
.end method


# virtual methods
.method public annexb_demux(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrameBytes;
    .locals 12
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "bi"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 416
    new-instance v3, Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrameBytes;

    iget-object v6, p0, Lnet/ossrs/yasea/SrsMp4Muxer$SrsRawH264Stream;->this$0:Lnet/ossrs/yasea/SrsMp4Muxer;

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrameBytes;-><init>(Lnet/ossrs/yasea/SrsMp4Muxer;Lnet/ossrs/yasea/SrsMp4Muxer$1;)V

    .line 418
    .local v3, "tbb":Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrameBytes;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    iget v7, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ge v6, v7, :cond_4

    .line 421
    invoke-virtual {p0, p1, p2}, Lnet/ossrs/yasea/SrsMp4Muxer$SrsRawH264Stream;->srs_avc_startswith_annexb(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)Lnet/ossrs/yasea/SrsMp4Muxer$SrsAnnexbSearch;

    move-result-object v5

    .line 422
    .local v5, "tbbsc":Lnet/ossrs/yasea/SrsMp4Muxer$SrsAnnexbSearch;
    iget-boolean v6, v5, Lnet/ossrs/yasea/SrsMp4Muxer$SrsAnnexbSearch;->match:Z

    if-eqz v6, :cond_0

    iget v6, v5, Lnet/ossrs/yasea/SrsMp4Muxer$SrsAnnexbSearch;->nb_start_code:I

    const/4 v7, 0x3

    if-ge v6, v7, :cond_1

    .line 423
    :cond_0
    const-string v6, "SrsMp4Muxer"

    const-string v7, "annexb not match."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v6, p0, Lnet/ossrs/yasea/SrsMp4Muxer$SrsRawH264Stream;->this$0:Lnet/ossrs/yasea/SrsMp4Muxer;

    invoke-static {v6}, Lnet/ossrs/yasea/SrsMp4Muxer;->access$1000(Lnet/ossrs/yasea/SrsMp4Muxer;)Lnet/ossrs/yasea/SrsRecordHandler;

    move-result-object v6

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "annexb not match for %dB, pos=%d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 425
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

    .line 424
    invoke-virtual {v6, v7}, Lnet/ossrs/yasea/SrsRecordHandler;->notifyRecordIllegalArgumentException(Ljava/lang/IllegalArgumentException;)V

    .line 429
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 430
    .local v4, "tbbs":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v6, v5, Lnet/ossrs/yasea/SrsMp4Muxer$SrsAnnexbSearch;->nb_start_code:I

    if-ge v1, v6, :cond_2

    .line 431
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 430
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 435
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v6

    iput-object v6, v3, Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrameBytes;->data:Ljava/nio/ByteBuffer;

    .line 436
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 437
    .local v2, "pos":I
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    iget v7, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ge v6, v7, :cond_3

    .line 438
    invoke-virtual {p0, p1, p2}, Lnet/ossrs/yasea/SrsMp4Muxer$SrsRawH264Stream;->srs_avc_startswith_annexb(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)Lnet/ossrs/yasea/SrsMp4Muxer$SrsAnnexbSearch;

    move-result-object v0

    .line 439
    .local v0, "bsc":Lnet/ossrs/yasea/SrsMp4Muxer$SrsAnnexbSearch;
    iget-boolean v6, v0, Lnet/ossrs/yasea/SrsMp4Muxer$SrsAnnexbSearch;->match:Z

    if-eqz v6, :cond_5

    .line 445
    .end local v0    # "bsc":Lnet/ossrs/yasea/SrsMp4Muxer$SrsAnnexbSearch;
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    sub-int/2addr v6, v2

    iput v6, v3, Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrameBytes;->size:I

    .line 449
    .end local v1    # "i":I
    .end local v2    # "pos":I
    .end local v4    # "tbbs":Ljava/nio/ByteBuffer;
    .end local v5    # "tbbsc":Lnet/ossrs/yasea/SrsMp4Muxer$SrsAnnexbSearch;
    :cond_4
    return-object v3

    .line 442
    .restart local v0    # "bsc":Lnet/ossrs/yasea/SrsMp4Muxer$SrsAnnexbSearch;
    .restart local v1    # "i":I
    .restart local v2    # "pos":I
    .restart local v4    # "tbbs":Ljava/nio/ByteBuffer;
    .restart local v5    # "tbbsc":Lnet/ossrs/yasea/SrsMp4Muxer$SrsAnnexbSearch;
    :cond_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    goto :goto_1
.end method

.method public is_pps(Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrameBytes;)Z
    .locals 4
    .param p1, "frame"    # Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrameBytes;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 385
    iget v2, p1, Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrameBytes;->size:I

    if-ge v2, v0, :cond_0

    .line 388
    :goto_0
    return v1

    :cond_0
    iget-object v2, p1, Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrameBytes;->data:Ljava/nio/ByteBuffer;

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

.method public is_sps(Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrameBytes;)Z
    .locals 4
    .param p1, "frame"    # Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrameBytes;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 377
    iget v2, p1, Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrameBytes;->size:I

    if-ge v2, v0, :cond_0

    .line 381
    :goto_0
    return v1

    :cond_0
    iget-object v2, p1, Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrameBytes;->data:Ljava/nio/ByteBuffer;

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

.method public srs_avc_startswith_annexb(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)Lnet/ossrs/yasea/SrsMp4Muxer$SrsAnnexbSearch;
    .locals 5
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "bi"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    const/4 v4, 0x1

    .line 392
    new-instance v0, Lnet/ossrs/yasea/SrsMp4Muxer$SrsAnnexbSearch;

    iget-object v2, p0, Lnet/ossrs/yasea/SrsMp4Muxer$SrsRawH264Stream;->this$0:Lnet/ossrs/yasea/SrsMp4Muxer;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lnet/ossrs/yasea/SrsMp4Muxer$SrsAnnexbSearch;-><init>(Lnet/ossrs/yasea/SrsMp4Muxer;Lnet/ossrs/yasea/SrsMp4Muxer$1;)V

    .line 393
    .local v0, "as":Lnet/ossrs/yasea/SrsMp4Muxer$SrsAnnexbSearch;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lnet/ossrs/yasea/SrsMp4Muxer$SrsAnnexbSearch;->match:Z

    .line 395
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 396
    .local v1, "pos":I
    :goto_0
    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v2, v2, -0x3

    if-ge v1, v2, :cond_0

    .line 398
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-eqz v2, :cond_1

    .line 412
    :cond_0
    :goto_1
    return-object v0

    .line 403
    :cond_1
    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-ne v2, v4, :cond_2

    .line 404
    iput-boolean v4, v0, Lnet/ossrs/yasea/SrsMp4Muxer$SrsAnnexbSearch;->match:Z

    .line 405
    add-int/lit8 v2, v1, 0x3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Lnet/ossrs/yasea/SrsMp4Muxer$SrsAnnexbSearch;->nb_start_code:I

    goto :goto_1

    .line 409
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
