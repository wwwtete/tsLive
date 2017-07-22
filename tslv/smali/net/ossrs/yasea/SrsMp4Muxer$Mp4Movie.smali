.class Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;
.super Ljava/lang/Object;
.source "SrsMp4Muxer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/ossrs/yasea/SrsMp4Muxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Mp4Movie"
.end annotation


# instance fields
.field private matrix:Lcom/googlecode/mp4parser/util/Matrix;

.field final synthetic this$0:Lnet/ossrs/yasea/SrsMp4Muxer;

.field private tracks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lnet/ossrs/yasea/SrsMp4Muxer$Track;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lnet/ossrs/yasea/SrsMp4Muxer;)V
    .locals 1

    .prologue
    .line 665
    iput-object p1, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;->this$0:Lnet/ossrs/yasea/SrsMp4Muxer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 666
    sget-object v0, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_0:Lcom/googlecode/mp4parser/util/Matrix;

    iput-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;->matrix:Lcom/googlecode/mp4parser/util/Matrix;

    .line 667
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;->tracks:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lnet/ossrs/yasea/SrsMp4Muxer;Lnet/ossrs/yasea/SrsMp4Muxer$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/ossrs/yasea/SrsMp4Muxer;
    .param p2, "x1"    # Lnet/ossrs/yasea/SrsMp4Muxer$1;

    .prologue
    .line 665
    invoke-direct {p0, p1}, Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;-><init>(Lnet/ossrs/yasea/SrsMp4Muxer;)V

    return-void
.end method


# virtual methods
.method public addSample(IJLandroid/media/MediaCodec$BufferInfo;)V
    .locals 4
    .param p1, "trackIndex"    # I
    .param p2, "offset"    # J
    .param p4, "bi"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 678
    iget-object v1, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;->tracks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/ossrs/yasea/SrsMp4Muxer$Track;

    .line 679
    .local v0, "track":Lnet/ossrs/yasea/SrsMp4Muxer$Track;
    invoke-virtual {v0, p2, p3, p4}, Lnet/ossrs/yasea/SrsMp4Muxer$Track;->addSample(JLandroid/media/MediaCodec$BufferInfo;)V

    .line 680
    return-void
.end method

.method public addTrack(Landroid/media/MediaFormat;Z)V
    .locals 6
    .param p1, "format"    # Landroid/media/MediaFormat;
    .param p2, "isAudio"    # Z

    .prologue
    .line 683
    if-eqz p2, :cond_0

    .line 684
    iget-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;->tracks:Ljava/util/HashMap;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lnet/ossrs/yasea/SrsMp4Muxer$Track;

    iget-object v3, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;->this$0:Lnet/ossrs/yasea/SrsMp4Muxer;

    iget-object v4, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;->tracks:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, p1, v5}, Lnet/ossrs/yasea/SrsMp4Muxer$Track;-><init>(Lnet/ossrs/yasea/SrsMp4Muxer;ILandroid/media/MediaFormat;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    :goto_0
    return-void

    .line 686
    :cond_0
    iget-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;->tracks:Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lnet/ossrs/yasea/SrsMp4Muxer$Track;

    iget-object v3, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;->this$0:Lnet/ossrs/yasea/SrsMp4Muxer;

    iget-object v4, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;->tracks:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, p1, v5}, Lnet/ossrs/yasea/SrsMp4Muxer$Track;-><init>(Lnet/ossrs/yasea/SrsMp4Muxer;ILandroid/media/MediaFormat;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getMatrix()Lcom/googlecode/mp4parser/util/Matrix;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;->matrix:Lcom/googlecode/mp4parser/util/Matrix;

    return-object v0
.end method

.method public getTracks()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lnet/ossrs/yasea/SrsMp4Muxer$Track;",
            ">;"
        }
    .end annotation

    .prologue
    .line 674
    iget-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;->tracks:Ljava/util/HashMap;

    return-object v0
.end method

.method public removeTrack(I)V
    .locals 2
    .param p1, "trackIndex"    # I

    .prologue
    .line 691
    iget-object v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Mp4Movie;->tracks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    return-void
.end method
