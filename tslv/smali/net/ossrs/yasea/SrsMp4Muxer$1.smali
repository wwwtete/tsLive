.class Lnet/ossrs/yasea/SrsMp4Muxer$1;
.super Ljava/lang/Object;
.source "SrsMp4Muxer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/ossrs/yasea/SrsMp4Muxer;->record(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/ossrs/yasea/SrsMp4Muxer;


# direct methods
.method constructor <init>(Lnet/ossrs/yasea/SrsMp4Muxer;)V
    .locals 0
    .param p1, "this$0"    # Lnet/ossrs/yasea/SrsMp4Muxer;

    .prologue
    .line 125
    iput-object p1, p0, Lnet/ossrs/yasea/SrsMp4Muxer$1;->this$0:Lnet/ossrs/yasea/SrsMp4Muxer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 128
    iget-object v2, p0, Lnet/ossrs/yasea/SrsMp4Muxer$1;->this$0:Lnet/ossrs/yasea/SrsMp4Muxer;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lnet/ossrs/yasea/SrsMp4Muxer;->access$202(Lnet/ossrs/yasea/SrsMp4Muxer;Z)Z

    .line 129
    :goto_0
    iget-object v2, p0, Lnet/ossrs/yasea/SrsMp4Muxer$1;->this$0:Lnet/ossrs/yasea/SrsMp4Muxer;

    invoke-static {v2}, Lnet/ossrs/yasea/SrsMp4Muxer;->access$200(Lnet/ossrs/yasea/SrsMp4Muxer;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    :goto_1
    iget-object v2, p0, Lnet/ossrs/yasea/SrsMp4Muxer$1;->this$0:Lnet/ossrs/yasea/SrsMp4Muxer;

    invoke-static {v2}, Lnet/ossrs/yasea/SrsMp4Muxer;->access$300(Lnet/ossrs/yasea/SrsMp4Muxer;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    iget-object v2, p0, Lnet/ossrs/yasea/SrsMp4Muxer$1;->this$0:Lnet/ossrs/yasea/SrsMp4Muxer;

    invoke-static {v2}, Lnet/ossrs/yasea/SrsMp4Muxer;->access$300(Lnet/ossrs/yasea/SrsMp4Muxer;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrame;

    .line 133
    .local v0, "frame":Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrame;
    iget-object v2, p0, Lnet/ossrs/yasea/SrsMp4Muxer$1;->this$0:Lnet/ossrs/yasea/SrsMp4Muxer;

    iget-object v3, v0, Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrame;->bb:Ljava/nio/ByteBuffer;

    iget-object v4, v0, Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrame;->bi:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrame;->is_audio()Z

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lnet/ossrs/yasea/SrsMp4Muxer;->access$400(Lnet/ossrs/yasea/SrsMp4Muxer;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)V

    goto :goto_1

    .line 136
    .end local v0    # "frame":Lnet/ossrs/yasea/SrsMp4Muxer$SrsEsFrame;
    :cond_0
    iget-object v2, p0, Lnet/ossrs/yasea/SrsMp4Muxer$1;->this$0:Lnet/ossrs/yasea/SrsMp4Muxer;

    invoke-static {v2}, Lnet/ossrs/yasea/SrsMp4Muxer;->access$500(Lnet/ossrs/yasea/SrsMp4Muxer;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 139
    :try_start_0
    iget-object v2, p0, Lnet/ossrs/yasea/SrsMp4Muxer$1;->this$0:Lnet/ossrs/yasea/SrsMp4Muxer;

    invoke-static {v2}, Lnet/ossrs/yasea/SrsMp4Muxer;->access$500(Lnet/ossrs/yasea/SrsMp4Muxer;)Ljava/lang/Object;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
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

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, "ie":Ljava/lang/InterruptedException;
    :try_start_2
    iget-object v2, p0, Lnet/ossrs/yasea/SrsMp4Muxer$1;->this$0:Lnet/ossrs/yasea/SrsMp4Muxer;

    invoke-static {v2}, Lnet/ossrs/yasea/SrsMp4Muxer;->access$600(Lnet/ossrs/yasea/SrsMp4Muxer;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 145
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    :cond_1
    return-void
.end method
