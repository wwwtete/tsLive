.class public Lnet/ossrs/yasea/SrsFlvMuxer$SrsUtils;
.super Ljava/lang/Object;
.source "SrsFlvMuxer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/ossrs/yasea/SrsFlvMuxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SrsUtils"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/ossrs/yasea/SrsFlvMuxer;


# direct methods
.method public constructor <init>(Lnet/ossrs/yasea/SrsFlvMuxer;)V
    .locals 0
    .param p1, "this$0"    # Lnet/ossrs/yasea/SrsFlvMuxer;

    .prologue
    .line 444
    iput-object p1, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsUtils;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public srs_aac_startswith_adts(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)Z
    .locals 4
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "bi"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    const/4 v1, 0x0

    .line 472
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 473
    .local v0, "pos":I
    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v2, v0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 483
    :cond_0
    :goto_0
    return v1

    .line 479
    :cond_1
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xf0

    int-to-byte v2, v2

    const/16 v3, -0x10

    if-ne v2, v3, :cond_0

    .line 483
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public srs_avc_startswith_annexb(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)Lnet/ossrs/yasea/SrsFlvMuxer$SrsAnnexbSearch;
    .locals 5
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "bi"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    const/4 v4, 0x1

    .line 447
    new-instance v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsAnnexbSearch;

    iget-object v2, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsUtils;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsAnnexbSearch;-><init>(Lnet/ossrs/yasea/SrsFlvMuxer;Lnet/ossrs/yasea/SrsFlvMuxer$1;)V

    .line 448
    .local v0, "as":Lnet/ossrs/yasea/SrsFlvMuxer$SrsAnnexbSearch;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsAnnexbSearch;->match:Z

    .line 450
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 451
    .local v1, "pos":I
    :goto_0
    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v2, v2, -0x3

    if-ge v1, v2, :cond_0

    .line 453
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-eqz v2, :cond_1

    .line 467
    :cond_0
    :goto_1
    return-object v0

    .line 458
    :cond_1
    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-ne v2, v4, :cond_2

    .line 459
    iput-boolean v4, v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsAnnexbSearch;->match:Z

    .line 460
    add-int/lit8 v2, v1, 0x3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsAnnexbSearch;->nb_start_code:I

    goto :goto_1

    .line 464
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
