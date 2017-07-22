.class public Lnet/ossrs/yasea/SrsRecordHandler;
.super Landroid/os/Handler;
.source "SrsRecordHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/ossrs/yasea/SrsRecordHandler$SrsRecordListener;
    }
.end annotation


# static fields
.field private static final MSG_RECORD_FINISHED:I = 0x3

.field private static final MSG_RECORD_ILLEGEL_ARGUMENT_EXCEPTION:I = 0x4

.field private static final MSG_RECORD_IO_EXCEPTION:I = 0x5

.field private static final MSG_RECORD_PAUSE:I = 0x0

.field private static final MSG_RECORD_RESUME:I = 0x1

.field private static final MSG_RECORD_STARTED:I = 0x2


# instance fields
.field private mWeakListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnet/ossrs/yasea/SrsRecordHandler$SrsRecordListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/ossrs/yasea/SrsRecordHandler$SrsRecordListener;)V
    .locals 1
    .param p1, "listener"    # Lnet/ossrs/yasea/SrsRecordHandler$SrsRecordListener;

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/ossrs/yasea/SrsRecordHandler;->mWeakListener:Ljava/lang/ref/WeakReference;

    .line 27
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 55
    iget-object v1, p0, Lnet/ossrs/yasea/SrsRecordHandler;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/ossrs/yasea/SrsRecordHandler$SrsRecordListener;

    .line 56
    .local v0, "listener":Lnet/ossrs/yasea/SrsRecordHandler$SrsRecordListener;
    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 60
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 80
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown msg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :pswitch_0
    invoke-interface {v0}, Lnet/ossrs/yasea/SrsRecordHandler$SrsRecordListener;->onRecordPause()V

    goto :goto_0

    .line 65
    :pswitch_1
    invoke-interface {v0}, Lnet/ossrs/yasea/SrsRecordHandler$SrsRecordListener;->onRecordResume()V

    goto :goto_0

    .line 68
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lnet/ossrs/yasea/SrsRecordHandler$SrsRecordListener;->onRecordStarted(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lnet/ossrs/yasea/SrsRecordHandler$SrsRecordListener;->onRecordFinished(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/IllegalArgumentException;

    invoke-interface {v0, v1}, Lnet/ossrs/yasea/SrsRecordHandler$SrsRecordListener;->onRecordIllegalArgumentException(Ljava/lang/IllegalArgumentException;)V

    goto :goto_0

    .line 77
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/io/IOException;

    invoke-interface {v0, v1}, Lnet/ossrs/yasea/SrsRecordHandler$SrsRecordListener;->onRecordIOException(Ljava/io/IOException;)V

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public notifyRecordFinished(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 42
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lnet/ossrs/yasea/SrsRecordHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 43
    return-void
.end method

.method public notifyRecordIOException(Ljava/io/IOException;)V
    .locals 1
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 50
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lnet/ossrs/yasea/SrsRecordHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 51
    return-void
.end method

.method public notifyRecordIllegalArgumentException(Ljava/lang/IllegalArgumentException;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/IllegalArgumentException;

    .prologue
    .line 46
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lnet/ossrs/yasea/SrsRecordHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 47
    return-void
.end method

.method public notifyRecordPause()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/ossrs/yasea/SrsRecordHandler;->sendEmptyMessage(I)Z

    .line 31
    return-void
.end method

.method public notifyRecordResume()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/ossrs/yasea/SrsRecordHandler;->sendEmptyMessage(I)Z

    .line 35
    return-void
.end method

.method public notifyRecordStarted(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 38
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lnet/ossrs/yasea/SrsRecordHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 39
    return-void
.end method
