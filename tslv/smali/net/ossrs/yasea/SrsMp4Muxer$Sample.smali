.class Lnet/ossrs/yasea/SrsMp4Muxer$Sample;
.super Ljava/lang/Object;
.source "SrsMp4Muxer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/ossrs/yasea/SrsMp4Muxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Sample"
.end annotation


# instance fields
.field private offset:J

.field private size:J

.field final synthetic this$0:Lnet/ossrs/yasea/SrsMp4Muxer;


# direct methods
.method public constructor <init>(Lnet/ossrs/yasea/SrsMp4Muxer;JJ)V
    .locals 2
    .param p2, "offset"    # J
    .param p4, "size"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 457
    iput-object p1, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Sample;->this$0:Lnet/ossrs/yasea/SrsMp4Muxer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    iput-wide v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Sample;->offset:J

    .line 455
    iput-wide v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Sample;->size:J

    .line 458
    iput-wide p2, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Sample;->offset:J

    .line 459
    iput-wide p4, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Sample;->size:J

    .line 460
    return-void
.end method


# virtual methods
.method public getOffset()J
    .locals 2

    .prologue
    .line 463
    iget-wide v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Sample;->offset:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 467
    iget-wide v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$Sample;->size:J

    return-wide v0
.end method
