.class Lnet/ossrs/yasea/SrsFlvMuxer$2;
.super Ljava/lang/Object;
.source "SrsFlvMuxer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/ossrs/yasea/SrsFlvMuxer;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/ossrs/yasea/SrsFlvMuxer;


# direct methods
.method constructor <init>(Lnet/ossrs/yasea/SrsFlvMuxer;)V
    .locals 0
    .param p1, "this$0"    # Lnet/ossrs/yasea/SrsFlvMuxer;

    .prologue
    .line 212
    iput-object p1, p0, Lnet/ossrs/yasea/SrsFlvMuxer$2;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lnet/ossrs/yasea/SrsFlvMuxer$2;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    invoke-static {v0}, Lnet/ossrs/yasea/SrsFlvMuxer;->access$700(Lnet/ossrs/yasea/SrsFlvMuxer;)V

    .line 216
    return-void
.end method
