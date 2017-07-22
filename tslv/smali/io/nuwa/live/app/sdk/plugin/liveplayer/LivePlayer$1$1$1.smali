.class Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1$1;
.super Ljava/lang/Object;
.source "LivePlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1;


# direct methods
.method constructor <init>(Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1;

    .prologue
    .line 89
    iput-object p1, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1$1;->this$2:Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 3
    .param p1, "iMediaPlayer"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1$1;->this$2:Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1;

    iget-object v0, v0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1;->this$1:Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1;

    iget-object v0, v0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v1, Lorg/apache/cordova/PluginResult;

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v1, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 93
    const/4 v0, 0x1

    return v0
.end method
