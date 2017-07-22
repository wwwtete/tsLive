.class Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1$2;
.super Ljava/lang/Object;
.source "LivePlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field started:Z

.field final synthetic this$2:Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1;


# direct methods
.method constructor <init>(Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1;)V
    .locals 1
    .param p1, "this$2"    # Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1;

    .prologue
    .line 95
    iput-object p1, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1$2;->this$2:Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1$2;->started:Z

    return-void
.end method


# virtual methods
.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 4
    .param p1, "iMediaPlayer"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .prologue
    const/4 v3, 0x1

    .line 99
    sparse-switch p2, :sswitch_data_0

    .line 133
    :goto_0
    return v3

    .line 102
    :sswitch_0
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    const-string v2, "playing"

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    .line 103
    .local v0, "result":Lorg/apache/cordova/PluginResult;
    invoke-virtual {v0, v3}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 104
    iget-object v1, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1$2;->this$2:Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1;

    iget-object v1, v1, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1;->this$1:Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1;

    iget-object v1, v1, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_0

    .line 108
    .end local v0    # "result":Lorg/apache/cordova/PluginResult;
    :sswitch_1
    iget-boolean v1, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1$2;->started:Z

    if-eqz v1, :cond_0

    .line 109
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    const-string v2, "buffering"

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    .line 110
    .restart local v0    # "result":Lorg/apache/cordova/PluginResult;
    invoke-virtual {v0, v3}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 111
    iget-object v1, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1$2;->this$2:Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1;

    iget-object v1, v1, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1;->this$1:Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1;

    iget-object v1, v1, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_0

    .line 113
    .end local v0    # "result":Lorg/apache/cordova/PluginResult;
    :cond_0
    iput-boolean v3, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1$2;->started:Z

    .line 114
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v0, v1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    .line 115
    .restart local v0    # "result":Lorg/apache/cordova/PluginResult;
    invoke-virtual {v0, v3}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 116
    iget-object v1, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1$2;->this$2:Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1;

    iget-object v1, v1, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1;->this$1:Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1;

    iget-object v1, v1, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_0

    .line 121
    .end local v0    # "result":Lorg/apache/cordova/PluginResult;
    :sswitch_2
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    const-string v2, "bufferingend"

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    .line 122
    .restart local v0    # "result":Lorg/apache/cordova/PluginResult;
    invoke-virtual {v0, v3}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 123
    iget-object v1, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1$2;->this$2:Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1;

    iget-object v1, v1, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1;->this$1:Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1;

    iget-object v1, v1, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_0

    .line 127
    .end local v0    # "result":Lorg/apache/cordova/PluginResult;
    :sswitch_3
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    const-string v2, "timeout"

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    .line 128
    .restart local v0    # "result":Lorg/apache/cordova/PluginResult;
    invoke-virtual {v0, v3}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 129
    iget-object v1, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1$2;->this$2:Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1;

    iget-object v1, v1, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1;->this$1:Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1;

    iget-object v1, v1, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_0

    .line 99
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x2bd -> :sswitch_1
        0x2be -> :sswitch_2
        0x386 -> :sswitch_3
        0x2712 -> :sswitch_0
    .end sparse-switch
.end method
