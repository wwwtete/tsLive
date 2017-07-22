.class Lnet/ossrs/yasea/SrsFlvMuxer$1;
.super Ljava/lang/Object;
.source "SrsFlvMuxer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/ossrs/yasea/SrsFlvMuxer;->start(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

.field final synthetic val$rtmpUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/ossrs/yasea/SrsFlvMuxer;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lnet/ossrs/yasea/SrsFlvMuxer;

    .prologue
    .line 152
    iput-object p1, p0, Lnet/ossrs/yasea/SrsFlvMuxer$1;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    iput-object p2, p0, Lnet/ossrs/yasea/SrsFlvMuxer$1;->val$rtmpUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 155
    iget-object v2, p0, Lnet/ossrs/yasea/SrsFlvMuxer$1;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    iget-object v3, p0, Lnet/ossrs/yasea/SrsFlvMuxer$1;->val$rtmpUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lnet/ossrs/yasea/SrsFlvMuxer;->access$000(Lnet/ossrs/yasea/SrsFlvMuxer;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 188
    :cond_0
    return-void

    .line 179
    :cond_1
    iget-object v2, p0, Lnet/ossrs/yasea/SrsFlvMuxer$1;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    invoke-static {v2}, Lnet/ossrs/yasea/SrsFlvMuxer;->access$500(Lnet/ossrs/yasea/SrsFlvMuxer;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 182
    :try_start_0
    iget-object v2, p0, Lnet/ossrs/yasea/SrsFlvMuxer$1;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    invoke-static {v2}, Lnet/ossrs/yasea/SrsFlvMuxer;->access$500(Lnet/ossrs/yasea/SrsFlvMuxer;)Ljava/lang/Object;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 160
    :cond_3
    :goto_1
    iget-object v2, p0, Lnet/ossrs/yasea/SrsFlvMuxer$1;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    invoke-static {v2}, Lnet/ossrs/yasea/SrsFlvMuxer;->access$100(Lnet/ossrs/yasea/SrsFlvMuxer;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 161
    iget-object v2, p0, Lnet/ossrs/yasea/SrsFlvMuxer$1;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    invoke-static {v2}, Lnet/ossrs/yasea/SrsFlvMuxer;->access$100(Lnet/ossrs/yasea/SrsFlvMuxer;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;

    .line 162
    .local v0, "frame":Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;
    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;->is_sequenceHeader()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 163
    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;->is_video()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 164
    iget-object v2, p0, Lnet/ossrs/yasea/SrsFlvMuxer$1;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    invoke-static {v2, v0}, Lnet/ossrs/yasea/SrsFlvMuxer;->access$202(Lnet/ossrs/yasea/SrsFlvMuxer;Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;)Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;

    .line 165
    iget-object v2, p0, Lnet/ossrs/yasea/SrsFlvMuxer$1;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    iget-object v3, p0, Lnet/ossrs/yasea/SrsFlvMuxer$1;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    invoke-static {v3}, Lnet/ossrs/yasea/SrsFlvMuxer;->access$200(Lnet/ossrs/yasea/SrsFlvMuxer;)Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/ossrs/yasea/SrsFlvMuxer;->access$300(Lnet/ossrs/yasea/SrsFlvMuxer;Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;)V

    goto :goto_1

    .line 166
    :cond_4
    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;->is_audio()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 167
    iget-object v2, p0, Lnet/ossrs/yasea/SrsFlvMuxer$1;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    invoke-static {v2, v0}, Lnet/ossrs/yasea/SrsFlvMuxer;->access$402(Lnet/ossrs/yasea/SrsFlvMuxer;Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;)Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;

    .line 168
    iget-object v2, p0, Lnet/ossrs/yasea/SrsFlvMuxer$1;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    iget-object v3, p0, Lnet/ossrs/yasea/SrsFlvMuxer$1;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    invoke-static {v3}, Lnet/ossrs/yasea/SrsFlvMuxer;->access$400(Lnet/ossrs/yasea/SrsFlvMuxer;)Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/ossrs/yasea/SrsFlvMuxer;->access$300(Lnet/ossrs/yasea/SrsFlvMuxer;Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;)V

    goto :goto_1

    .line 171
    :cond_5
    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;->is_video()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lnet/ossrs/yasea/SrsFlvMuxer$1;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    invoke-static {v2}, Lnet/ossrs/yasea/SrsFlvMuxer;->access$200(Lnet/ossrs/yasea/SrsFlvMuxer;)Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 172
    iget-object v2, p0, Lnet/ossrs/yasea/SrsFlvMuxer$1;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    invoke-static {v2, v0}, Lnet/ossrs/yasea/SrsFlvMuxer;->access$300(Lnet/ossrs/yasea/SrsFlvMuxer;Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;)V

    goto :goto_1

    .line 173
    :cond_6
    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;->is_audio()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnet/ossrs/yasea/SrsFlvMuxer$1;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    invoke-static {v2}, Lnet/ossrs/yasea/SrsFlvMuxer;->access$400(Lnet/ossrs/yasea/SrsFlvMuxer;)Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 174
    iget-object v2, p0, Lnet/ossrs/yasea/SrsFlvMuxer$1;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    invoke-static {v2, v0}, Lnet/ossrs/yasea/SrsFlvMuxer;->access$300(Lnet/ossrs/yasea/SrsFlvMuxer;Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;)V

    goto :goto_1

    .line 183
    .end local v0    # "frame":Lnet/ossrs/yasea/SrsFlvMuxer$SrsFlvFrame;
    :catch_0
    move-exception v1

    .line 184
    .local v1, "ie":Ljava/lang/InterruptedException;
    :try_start_2
    iget-object v2, p0, Lnet/ossrs/yasea/SrsFlvMuxer$1;->this$0:Lnet/ossrs/yasea/SrsFlvMuxer;

    invoke-static {v2}, Lnet/ossrs/yasea/SrsFlvMuxer;->access$600(Lnet/ossrs/yasea/SrsFlvMuxer;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_0

    .line 186
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
