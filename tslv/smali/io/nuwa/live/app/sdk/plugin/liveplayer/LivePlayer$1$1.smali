.class Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1;
.super Ljava/lang/Object;
.source "LivePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1;


# direct methods
.method constructor <init>(Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1;)V
    .locals 0
    .param p1, "this$1"    # Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1;

    .prologue
    .line 86
    iput-object p1, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1;->this$1:Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 89
    iget-object v0, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1;->this$1:Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1;

    iget-object v0, v0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1;->this$0:Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;

    iget-object v0, v0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;->fragment:Lio/nuwa/live/app/sdk/plugin/liveplayer/PlayerFragment;

    iget-object v1, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1;->this$1:Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1;

    iget-object v1, v1, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1;->val$address:Ljava/lang/String;

    new-instance v2, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1$1;

    invoke-direct {v2, p0}, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1$1;-><init>(Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1;)V

    new-instance v3, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1$2;

    invoke-direct {v3, p0}, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1$2;-><init>(Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lio/nuwa/live/app/sdk/plugin/liveplayer/PlayerFragment;->play(Ljava/lang/String;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 136
    return-void
.end method
