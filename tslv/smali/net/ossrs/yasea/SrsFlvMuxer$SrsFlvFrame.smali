.class Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;
.super Ljava/lang/Object;
.source "SrsFlvMuxer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/ossrs/yasea/SrsFlvMuxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SrsFlvFrame"
.end annotation


# instance fields
.field public avc_aac_type:I

.field public dts:I

.field public flvTag:Ljava/nio/ByteBuffer;

.field public frame_type:I

.field final synthetic this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

.field public type:I


# direct methods
.method private constructor <init>(Lnet/ossrs/yasea/SrsFlvMuxer;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/ossrs/yasea/SrsFlvMuxer;Lnet/ossrs/yasea/SrsFlvMuxer$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/ossrs/yasea/SrsFlvMuxer;
    .param p2, "x1"    # Lnet/ossrs/yasea/SrsFlvMuxer$1;

    .prologue
    .line 506
    invoke-direct {p0, p1}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;-><init>(Lnet/ossrs/yasea/SrsFlvMuxer;)V

    return-void
.end method


# virtual methods
.method public is_audio()Z
    .locals 2

    .prologue
    .line 531
    iget v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;->type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public is_keyframe()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 519
    invoke-virtual {p0}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;->is_video()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;->frame_type:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public is_sequenceHeader()Z
    .locals 1

    .prologue
    .line 523
    iget v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;->avc_aac_type:I

    if-nez v0, :cond_0

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
    .line 527
    iget v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;->type:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
