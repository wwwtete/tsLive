.class Lnet/ossrs/yasea/SrsPublisher$2;
.super Ljava/lang/Object;
.source "SrsPublisher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/ossrs/yasea/SrsPublisher;->startEncode()V
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
    .line 92
    iput-object p1, p0, Lnet/ossrs/yasea/SrsPublisher$2;->this$0:Lnet/ossrs/yasea/SrsPublisher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 95
    const/16 v0, -0x10

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 96
    iget-object v0, p0, Lnet/ossrs/yasea/SrsPublisher$2;->this$0:Lnet/ossrs/yasea/SrsPublisher;

    invoke-static {v0}, Lnet/ossrs/yasea/SrsPublisher;->access$300(Lnet/ossrs/yasea/SrsPublisher;)V

    .line 97
    return-void
.end method
