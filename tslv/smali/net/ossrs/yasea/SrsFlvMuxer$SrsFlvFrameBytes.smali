.class Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;
.super Ljava/lang/Object;
.source "SrsFlvMuxer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/ossrs/yasea/SrsFlvMuxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SrsFlvFrameBytes"
.end annotation


# instance fields
.field public data:Ljava/nio/ByteBuffer;

.field public size:I

.field final synthetic this$0:Lnet/ossrs/yasea/SrsFlvMuxer;


# direct methods
.method private constructor <init>(Lnet/ossrs/yasea/SrsFlvMuxer;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/ossrs/yasea/SrsFlvMuxer;Lnet/ossrs/yasea/SrsFlvMuxer$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/ossrs/yasea/SrsFlvMuxer;
    .param p2, "x1"    # Lnet/ossrs/yasea/SrsFlvMuxer$1;

    .prologue
    .line 498
    invoke-direct {p0, p1}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrameBytes;-><init>(Lnet/ossrs/yasea/SrsFlvMuxer;)V

    return-void
.end method
