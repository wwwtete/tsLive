.class public Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;
.super Lio/nuwa/live/app/sdk/plugin/AbstractPreviewCordovaPlugin;
.source "LivePlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LivePlayer"


# instance fields
.field address:Ljava/lang/String;

.field fragment:Lio/nuwa/live/app/sdk/plugin/liveplayer/PlayerFragment;

.field playing:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lio/nuwa/live/app/sdk/plugin/AbstractPreviewCordovaPlugin;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;->playing:Z

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/CallbackContext;)Z
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/apache/cordova/CordovaArgs;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 56
    const-string v2, "play"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 57
    iget-boolean v2, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;->playing:Z

    if-eqz v2, :cond_0

    .line 58
    const-string v0, "playing"

    invoke-virtual {p3, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    move v0, v1

    .line 74
    :goto_0
    return v0

    .line 61
    :cond_0
    iput-boolean v1, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;->playing:Z

    .line 62
    invoke-virtual {p2, v3}, Lorg/apache/cordova/CordovaArgs;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2, v3}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-ne v1, v2, :cond_2

    :cond_1
    :goto_1
    invoke-virtual {p0, v0, p3}, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;->play(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v3}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 63
    :cond_3
    const-string v1, "stop"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 64
    iput-boolean v3, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;->playing:Z

    .line 65
    invoke-virtual {p0, p3, v0}, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;->stop(Lorg/apache/cordova/CallbackContext;Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$Callback;)Z

    move-result v0

    goto :goto_0

    .line 66
    :cond_4
    const-string v0, "pause"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 67
    invoke-virtual {p0, p3}, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;->pause(Lorg/apache/cordova/CallbackContext;)Z

    move-result v0

    goto :goto_0

    .line 68
    :cond_5
    const-string v0, "resume"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 69
    invoke-virtual {p0, p3}, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;->resume(Lorg/apache/cordova/CallbackContext;)Z

    move-result v0

    goto :goto_0

    .line 70
    :cond_6
    const-string v0, "reconnect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 71
    invoke-virtual {p0, p3}, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;->reconnect(Lorg/apache/cordova/CallbackContext;)Z

    move-result v0

    goto :goto_0

    .line 74
    :cond_7
    invoke-super {p0, p1, p2, p3}, Lio/nuwa/live/app/sdk/plugin/AbstractPreviewCordovaPlugin;->execute(Ljava/lang/String;Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/CallbackContext;)Z

    move-result v0

    goto :goto_0
.end method

.method public initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
    .locals 1
    .param p1, "cordova"    # Lorg/apache/cordova/CordovaInterface;
    .param p2, "webView"    # Lorg/apache/cordova/CordovaWebView;

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lio/nuwa/live/app/sdk/plugin/AbstractPreviewCordovaPlugin;->initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    .line 50
    const/4 v0, 0x0

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->loadLibrariesOnce(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V

    .line 51
    const-string v0, "libijkplayer.so"

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_profileBegin(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method pause(Lorg/apache/cordova/CallbackContext;)Z
    .locals 1
    .param p1, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;->stop(Lorg/apache/cordova/CallbackContext;Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$Callback;)Z

    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method play(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 78
    iput-object p1, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;->address:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1;

    invoke-direct {v1, p0, p1, p2}, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$1;-><init>(Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method reconnect(Lorg/apache/cordova/CallbackContext;)Z
    .locals 1
    .param p1, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 171
    new-instance v0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$3;

    invoke-direct {v0, p0, p1}, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$3;-><init>(Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {p0, p1, v0}, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;->stop(Lorg/apache/cordova/CallbackContext;Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$Callback;)Z

    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method resume(Lorg/apache/cordova/CallbackContext;)Z
    .locals 1
    .param p1, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;->reconnect(Lorg/apache/cordova/CallbackContext;)Z

    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method stop(Lorg/apache/cordova/CallbackContext;Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$Callback;)Z
    .locals 2
    .param p1, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .param p2, "callback"    # Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$Callback;

    .prologue
    .line 144
    iget-object v0, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$2;

    invoke-direct {v1, p0, p2, p1}, Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$2;-><init>(Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer;Lio/nuwa/live/app/sdk/plugin/liveplayer/LivePlayer$Callback;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 157
    const/4 v0, 0x1

    return v0
.end method
