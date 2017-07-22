.class Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$3;
.super Ljava/lang/Object;
.source "LivePlayer.java"

# interfaces
.implements Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;->reconnect(Lorg/apache/cordova/CallbackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p1, "this$0"    # Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;

    .prologue
    .line 171
    iput-object p1, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$3;->this$0:Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;

    iput-object p2, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback()V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$3;->this$0:Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;

    iget-object v1, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$3;->this$0:Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;

    iget-object v1, v1, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;->address:Ljava/lang/String;

    iget-object v2, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, v1, v2}, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;->play(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z

    .line 175
    return-void
.end method
