.class Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1;
.super Ljava/lang/Object;
.source "LivePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;->play(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;

.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p1, "this$0"    # Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;

    .prologue
    .line 79
    iput-object p1, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1;->this$0:Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;

    iput-object p2, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1;->val$address:Ljava/lang/String;

    iput-object p3, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1;->this$0:Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;

    new-instance v1, Lio/nuwa/live/app/sdk/plugin/liveplayer/PlayerFragment;

    invoke-direct {v1}, Lio/nuwa/live/app/sdk/plugin/liveplayer/PlayerFragment;-><init>()V

    iput-object v1, v0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;->fragment:Lio/nuwa/live/app/sdk/plugin/liveplayer/PlayerFragment;

    .line 84
    iget-object v0, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1;->this$0:Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;

    iget-object v1, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1;->this$0:Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;

    iget-object v1, v1, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;->fragment:Lio/nuwa/live/app/sdk/plugin/liveplayer/PlayerFragment;

    invoke-virtual {v0, v1}, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;->attachFragment(Landroid/app/Fragment;)V

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1;

    invoke-direct {v1, p0}, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1;-><init>(Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 138
    return-void
.end method
