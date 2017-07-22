.class Lnet/ossrs/yasea/SrsPublisher$1;
.super Ljava/lang/Object;
.source "SrsPublisher.java"

# interfaces
.implements Lnet/ossrs/yasea/SrsCameraView$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/ossrs/yasea/SrsPublisher;-><init>(Lnet/ossrs/yasea/SrsCameraView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/ossrs/yasea/SrsPublisher;


# direct methods
.method constructor <init>(Lnet/ossrs/yasea/SrsPublisher;)V
    .locals 0
    .param p1, "this$0"    # Lnet/ossrs/yasea/SrsPublisher;

    .prologue
    .line 38
    iput-object p1, p0, Lnet/ossrs/yasea/SrsPublisher$1;->this$0:Lnet/ossrs/yasea/SrsPublisher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetRgbaFrame([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher$1;->this$0:Lnet/ossrs/yasea/SrsPublisher;

    invoke-static {v0}, Lnet/ossrs/yasea/SrsPublisher;->access$000(Lnet/ossrs/yasea/SrsPublisher;)V

    .line 42
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher$1;->this$0:Lnet/ossrs/yasea/SrsPublisher;

    invoke-static {v0}, Lnet/ossrs/yasea/SrsPublisher;->access$100(Lnet/ossrs/yasea/SrsPublisher;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher$1;->this$0:Lnet/ossrs/yasea/SrsPublisher;

    invoke-static {v0}, Lnet/ossrs/yasea/SrsPublisher;->access$200(Lnet/ossrs/yasea/SrsPublisher;)Lnet/ossrs/yasea/SrsEncoder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lnet/ossrs/yasea/SrsEncoder;->onGetRgbaFrame([BII)V

    .line 45
    :cond_0
    return-void
.end method
