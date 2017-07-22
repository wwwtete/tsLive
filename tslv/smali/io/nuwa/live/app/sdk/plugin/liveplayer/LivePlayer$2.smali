.class Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$2;
.super Ljava/lang/Object;
.source "LivePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;->stop(Lorg/apache/cordova/CallbackContext;Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$Callback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;

.field final synthetic val$callback:Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$Callback;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$Callback;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p1, "this$0"    # Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;

    .prologue
    .line 144
    iput-object p1, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$2;->this$0:Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;

    iput-object p2, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$2;->val$callback:Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$Callback;

    iput-object p3, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$2;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$2;->this$0:Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;

    iget-object v0, v0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;->fragment:Lio/nuwa/live/app/sdk/plugin/liveplayer/PlayerFragment;

    invoke-virtual {v0}, Lio/nuwa/live/app/sdk/plugin/liveplayer/PlayerFragment;->stop()V

    .line 148
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_profileEnd()V

    .line 149
    iget-object v0, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$2;->this$0:Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;

    invoke-virtual {v0}, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;->detachFragment()V

    .line 150
    iget-object v0, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$2;->val$callback:Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$Callback;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$2;->val$callback:Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$Callback;

    invoke-interface {v0}, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$Callback;->onCallback()V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$2;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_0
.end method
