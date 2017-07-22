.class public Lnet/ossrs/yasea/SrsEncodeHandler;
.super Landroid/os/Handler;
.source "SrsEncodeHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/ossrs/yasea/SrsEncodeHandler$SrsEncodeListener;
    }
.end annotation


# static fields
.field private static final MSG_ENCODE_ILLEGAL_ARGUMENT_EXCEPTION:I = 0x2

.field private static final MSG_ENCODE_NETWORK_RESUME:I = 0x1

.field private static final MSG_ENCODE_NETWORK_WEAK:I


# instance fields
.field private mWeakListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnet/ossrs/yasea/SrsEncodeHandler$SrsEncodeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/ossrs/yasea/SrsEncodeHandler$SrsEncodeListener;)V
    .locals 1
    .param p1, "listener"    # Lnet/ossrs/yasea/SrsEncodeHandler$SrsEncodeListener;

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/ossrs/yasea/SrsEncodeHandler;->mWeakListener:Ljava/lang/ref/WeakReference;

    .line 22
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 38
    iget-object v1, p0, Lnet/ossrs/yasea/SrsEncodeHandler;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/ossrs/yasea/SrsEncodeHandler$SrsEncodeListener;

    .line 39
    .local v0, "listener":Lnet/ossrs/yasea/SrsEncodeHandler$SrsEncodeListener;
    if-nez v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 43
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 53
    :goto_1
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

    .line 45
    :pswitch_0
    invoke-interface {v0}, Lnet/ossrs/yasea/SrsEncodeHandler$SrsEncodeListener;->onNetworkWeak()V

    goto :goto_0

    .line 48
    :pswitch_1
    invoke-interface {v0}, Lnet/ossrs/yasea/SrsEncodeHandler$SrsEncodeListener;->onNetworkResume()V

    goto :goto_0

    .line 51
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/IllegalArgumentException;

    invoke-interface {v0, v1}, Lnet/ossrs/yasea/SrsEncodeHandler$SrsEncodeListener;->onEncodeIllegalArgumentException(Ljava/lang/IllegalArgumentException;)V

    goto :goto_1

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public notifyEncodeIllegalArgumentException(Ljava/lang/IllegalArgumentException;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/IllegalArgumentException;

    .prologue
    .line 33
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lnet/ossrs/yasea/SrsEncodeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 34
    return-void
.end method

.method public notifyNetworkResume()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/ossrs/yasea/SrsEncodeHandler;->sendEmptyMessage(I)Z

    .line 30
    return-void
.end method

.method public notifyNetworkWeak()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/ossrs/yasea/SrsEncodeHandler;->sendEmptyMessage(I)Z

    .line 26
    return-void
.end method
