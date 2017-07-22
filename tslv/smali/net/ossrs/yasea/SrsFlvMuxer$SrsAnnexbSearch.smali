.class Lnet/ossrs/yasea/SrsFlvMuxer$SrsAnnexbSearch;
.super Ljava/lang/Object;
.source "SrsFlvMuxer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/ossrs/yasea/SrsFlvMuxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SrsAnnexbSearch"
.end annotation


# instance fields
.field public match:Z

.field public nb_start_code:I

.field final synthetic this$0:Lnet/ossrs/yasea/SrsFlvMuxer;


# direct methods
.method private constructor <init>(Lnet/ossrs/yasea/SrsFlvMuxer;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 490
    iput-object p1, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsAnnexbSearch;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    iput v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsAnnexbSearch;->nb_start_code:I

    .line 492
    iput-boolean v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsAnnexbSearch;->match:Z

    return-void
.end method

.method synthetic constructor <init>(Lnet/ossrs/yasea/SrsFlvMuxer;Lnet/ossrs/yasea/SrsFlvMuxer$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/ossrs/yasea/SrsFlvMuxer;
    .param p2, "x1"    # Lnet/ossrs/yasea/SrsFlvMuxer$1;

    .prologue
    .line 490
    invoke-direct {p0, p1}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsAnnexbSearch;-><init>(Lnet/ossrs/yasea/SrsFlvMuxer;)V

    return-void
.end method
