.class Lnet/ossrs/yasea/SrsCameraView$4;
.super Ljava/lang/Object;
.source "SrsCameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/ossrs/yasea/SrsCameraView;->startCamera()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/ossrs/yasea/SrsCameraView;


# direct methods
.method constructor <init>(Lnet/ossrs/yasea/SrsCameraView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/ossrs/yasea/SrsCameraView;

    .prologue
    .line 219
    iput-object p1, p0, Lnet/ossrs/yasea/SrsCameraView$4;->this$0:Lnet/ossrs/yasea/SrsCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 222
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 223
    :goto_1
    iget-object v2, p0, Lnet/ossrs/yasea/SrsCameraView$4;->this$0:Lnet/ossrs/yasea/SrsCameraView;

    invoke-static {v2}, Lnet/ossrs/yasea/SrsCameraView;->access$600(Lnet/ossrs/yasea/SrsCameraView;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 224
    iget-object v2, p0, Lnet/ossrs/yasea/SrsCameraView$4;->this$0:Lnet/ossrs/yasea/SrsCameraView;

    invoke-static {v2}, Lnet/ossrs/yasea/SrsCameraView;->access$600(Lnet/ossrs/yasea/SrsCameraView;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/IntBuffer;

    .line 225
    .local v1, "picture":Ljava/nio/IntBuffer;
    iget-object v2, p0, Lnet/ossrs/yasea/SrsCameraView$4;->this$0:Lnet/ossrs/yasea/SrsCameraView;

    invoke-static {v2}, Lnet/ossrs/yasea/SrsCameraView;->access$700(Lnet/ossrs/yasea/SrsCameraView;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 226
    iget-object v2, p0, Lnet/ossrs/yasea/SrsCameraView$4;->this$0:Lnet/ossrs/yasea/SrsCameraView;

    invoke-static {v2}, Lnet/ossrs/yasea/SrsCameraView;->access$800(Lnet/ossrs/yasea/SrsCameraView;)Lnet/ossrs/yasea/SrsCameraView$PreviewCallback;

    move-result-object v2

    iget-object v3, p0, Lnet/ossrs/yasea/SrsCameraView$4;->this$0:Lnet/ossrs/yasea/SrsCameraView;

    invoke-static {v3}, Lnet/ossrs/yasea/SrsCameraView;->access$700(Lnet/ossrs/yasea/SrsCameraView;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    iget-object v4, p0, Lnet/ossrs/yasea/SrsCameraView$4;->this$0:Lnet/ossrs/yasea/SrsCameraView;

    invoke-static {v4}, Lnet/ossrs/yasea/SrsCameraView;->access$100(Lnet/ossrs/yasea/SrsCameraView;)I

    move-result v4

    iget-object v5, p0, Lnet/ossrs/yasea/SrsCameraView$4;->this$0:Lnet/ossrs/yasea/SrsCameraView;

    invoke-static {v5}, Lnet/ossrs/yasea/SrsCameraView;->access$200(Lnet/ossrs/yasea/SrsCameraView;)I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lnet/ossrs/yasea/SrsCameraView$PreviewCallback;->onGetRgbaFrame([BII)V

    goto :goto_1

    .line 229
    .end local v1    # "picture":Ljava/nio/IntBuffer;
    :cond_0
    iget-object v2, p0, Lnet/ossrs/yasea/SrsCameraView$4;->this$0:Lnet/ossrs/yasea/SrsCameraView;

    invoke-static {v2}, Lnet/ossrs/yasea/SrsCameraView;->access$900(Lnet/ossrs/yasea/SrsCameraView;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 232
    :try_start_0
    iget-object v2, p0, Lnet/ossrs/yasea/SrsCameraView$4;->this$0:Lnet/ossrs/yasea/SrsCameraView;

    invoke-static {v2}, Lnet/ossrs/yasea/SrsCameraView;->access$900(Lnet/ossrs/yasea/SrsCameraView;)Ljava/lang/Object;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :goto_2
    :try_start_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "ie":Ljava/lang/InterruptedException;
    :try_start_2
    iget-object v2, p0, Lnet/ossrs/yasea/SrsCameraView$4;->this$0:Lnet/ossrs/yasea/SrsCameraView;

    invoke-static {v2}, Lnet/ossrs/yasea/SrsCameraView;->access$1000(Lnet/ossrs/yasea/SrsCameraView;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 238
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :cond_1
    return-void
.end method
