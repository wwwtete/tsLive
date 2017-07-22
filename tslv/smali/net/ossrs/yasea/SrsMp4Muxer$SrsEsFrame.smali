.class Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrame;
.super Ljava/lang/Object;
.source "SrsMp4Muxer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/ossrs/yasea/SrsMp4Muxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SrsEsFrame"
.end annotation


# instance fields
.field public bb:Ljava/nio/ByteBuffer;

.field public bi:Landroid/media/MediaCodec$BufferInfo;

.field public isKeyFrame:Z

.field final synthetic this$0:Lnet/ossrs/yasea/SrsMp4Muxer;

.field public track:I


# direct methods
.method private constructor <init>(Lnet/ossrs/yasea/SrsMp4Muxer;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrame;->this$0:Lnet/ossrs/yasea/SrsMp4Muxer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/ossrs/yasea/SrsMp4Muxer;Lnet/ossrs/yasea/SrsMp4Muxer$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/ossrs/yasea/SrsMp4Muxer;
    .param p2, "x1"    # Lnet/ossrs/yasea/SrsMp4Muxer$1;

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrame;-><init>(Lnet/ossrs/yasea/SrsMp4Muxer;)V

    return-void
.end method


# virtual methods
.method public is_audio()Z
    .locals 2

    .prologue
    .line 368
    iget v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrame;->track:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public is_video()Z
    .locals 2

    .prologue
    .line 364
    iget v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrame;->track:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
