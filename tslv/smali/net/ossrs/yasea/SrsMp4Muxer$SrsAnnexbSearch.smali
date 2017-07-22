.class Lnet/ossrs/yasea/SrsMp4Muxer$SrsAnnexbSearch;
.super Ljava/lang/Object;
.source "SrsMp4Muxer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/ossrs/yasea/SrsMp4Muxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SrsAnnexbSearch"
.end annotation


# instance fields
.field public match:Z

.field public nb_start_code:I

.field final synthetic this$0:Lnet/ossrs/yasea/SrsMp4Muxer;


# direct methods
.method private constructor <init>(Lnet/ossrs/yasea/SrsMp4Muxer;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 341
    iput-object p1, p0, Lnet/ossrs/yasea/SrsMp4Muxer$SrsAnnexbSearch;->this$0:Lnet/ossrs/yasea/SrsMp4Muxer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    iput v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$SrsAnnexbSearch;->nb_start_code:I

    .line 343
    iput-boolean v0, p0, Lnet/ossrs/yasea/SrsMp4Muxer$SrsAnnexbSearch;->match:Z

    return-void
.end method

.method synthetic constructor <init>(Lnet/ossrs/yasea/SrsMp4Muxer;Lnet/ossrs/yasea/SrsMp4Muxer$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/ossrs/yasea/SrsMp4Muxer;
    .param p2, "x1"    # Lnet/ossrs/yasea/SrsMp4Muxer$1;

    .prologue
    .line 341
    invoke-direct {p0, p1}, Lnet/ossrs/yasea/SrsMp4Muxer$SrsAnnexbSearch;-><init>(Lnet/ossrs/yasea/SrsMp4Muxer;)V

    return-void
.end method
