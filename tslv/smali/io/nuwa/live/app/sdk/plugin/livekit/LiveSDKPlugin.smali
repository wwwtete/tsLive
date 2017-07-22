.class public Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;
.super Lorg/apache/cordova/CordovaPlugin;
.source "LiveSDKPlugin.java"

# interfaces
.implements Lcom/github/faucamp/simplertmp/RtmpHandler$RtmpListener;
.implements Lnet/ossrs/yasea/SrsRecordHandler$SrsRecordListener;
.implements Lnet/ossrs/yasea/SrsEncodeHandler$SrsEncodeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "LiveSDKPlugin"


# instance fields
.field private final containerViewId:I

.field fragment:Landroid/app/Fragment;

.field publisher:Lnet/ossrs/yasea/SrsPublisher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->containerViewId:I

    return-void
.end method

.method private static getRandomAlphaDigitString(I)Ljava/lang/String;
    .locals 6
    .param p0, "length"    # I

    .prologue
    .line 86
    const-string v0, "abcdefghijklmnopqrstuvwxyz0123456789"

    .line 87
    .local v0, "base":Ljava/lang/String;
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 88
    .local v3, "random":Ljava/util/Random;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 91
    .local v2, "number":I
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v2    # "number":I
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static getRandomAlphaString(I)Ljava/lang/String;
    .locals 6
    .param p0, "length"    # I

    .prologue
    .line 75
    const-string v0, "abcdefghijklmnopqrstuvwxyz"

    .line 76
    .local v0, "base":Ljava/lang/String;
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 77
    .local v3, "random":Ljava/util/Random;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 79
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 80
    .local v2, "number":I
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v2    # "number":I
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private handleException(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 190
    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->publisher:Lnet/ossrs/yasea/SrsPublisher;

    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsPublisher;->stopPublish()V

    .line 192
    iget-object v0, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->publisher:Lnet/ossrs/yasea/SrsPublisher;

    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsPublisher;->stopRecord()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public destory(Lorg/apache/cordova/CallbackContext;)Z
    .locals 4
    .param p1, "context"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 177
    iget-object v2, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 178
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 179
    .local v1, "fragmentTransaction":Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->fragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 180
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 181
    iput-object v3, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->fragment:Landroid/app/Fragment;

    .line 182
    iput-object v3, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->publisher:Lnet/ossrs/yasea/SrsPublisher;

    .line 183
    invoke-virtual {p1}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 184
    const/4 v2, 0x1

    return v2
.end method

.method public execute(Ljava/lang/String;Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/CallbackContext;)Z
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/apache/cordova/CordovaArgs;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 52
    const-string v0, "startRecord"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    invoke-virtual {p2, v2}, Lorg/apache/cordova/CordovaArgs;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, v2}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, p3}, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->startRecord(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z

    move-result v0

    .line 66
    :goto_1
    return v0

    .line 53
    :cond_1
    invoke-virtual {p2, v2}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_2
    const-string v0, "startLive"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55
    invoke-virtual {p2, v2}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->startLive(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z

    move-result v0

    goto :goto_1

    .line 56
    :cond_3
    const-string v0, "stopLive"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 57
    invoke-virtual {p0, p3}, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->stopLive(Lorg/apache/cordova/CallbackContext;)Z

    move-result v0

    goto :goto_1

    .line 58
    :cond_4
    const-string v0, "setBeautyLevel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 59
    invoke-virtual {p2, v2}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0, p3}, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->setBeautyLevel(FLorg/apache/cordova/CallbackContext;)Z

    move-result v0

    goto :goto_1

    .line 60
    :cond_5
    const-string v0, "setDevicePosition"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 61
    invoke-virtual {p2, v2}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->setDevicePosition(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z

    move-result v0

    goto :goto_1

    .line 62
    :cond_6
    const-string v0, "destory"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 63
    invoke-virtual {p0, p3}, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->destory(Lorg/apache/cordova/CallbackContext;)Z

    move-result v0

    goto :goto_1

    .line 66
    :cond_7
    invoke-super {p0, p1, p2, p3}, Lorg/apache/cordova/CordovaPlugin;->execute(Ljava/lang/String;Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/CallbackContext;)Z

    move-result v0

    goto :goto_1
.end method

.method public onEncodeIllegalArgumentException(Ljava/lang/IllegalArgumentException;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/IllegalArgumentException;

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->handleException(Ljava/lang/Exception;)V

    .line 330
    return-void
.end method

.method public onNetworkResume()V
    .locals 2

    .prologue
    .line 324
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Network resume"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public onNetworkWeak()V
    .locals 2

    .prologue
    .line 318
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Network weak"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method public onRecordFinished(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 300
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MP4 file saved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public onRecordIOException(Ljava/io/IOException;)V
    .locals 0
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->handleException(Ljava/lang/Exception;)V

    .line 306
    return-void
.end method

.method public onRecordIllegalArgumentException(Ljava/lang/IllegalArgumentException;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/IllegalArgumentException;

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->handleException(Ljava/lang/Exception;)V

    .line 311
    return-void
.end method

.method public onRecordPause()V
    .locals 2

    .prologue
    .line 282
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Record paused"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public onRecordResume()V
    .locals 2

    .prologue
    .line 288
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Record resumed"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public onRecordStarted(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 294
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recording file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public onRtmpAudioBitrateChanged(D)V
    .locals 7
    .param p1, "bitrate"    # D

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 249
    double-to-int v0, p1

    .line 250
    .local v0, "rate":I
    div-int/lit16 v1, v0, 0x3e8

    if-lez v1, :cond_0

    .line 251
    const-string v1, "LiveSDKPlugin"

    const-string v2, "Audio bitrate: %f kbps"

    new-array v3, v3, [Ljava/lang/Object;

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    const-string v1, "LiveSDKPlugin"

    const-string v2, "Audio bitrate: %d bps"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRtmpAudioStreaming()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method public onRtmpConnected(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 209
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public onRtmpConnecting(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 203
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public onRtmpDisconnected()V
    .locals 2

    .prologue
    .line 229
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Disconnected"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public onRtmpIOException(Ljava/io/IOException;)V
    .locals 0
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->handleException(Ljava/lang/Exception;)V

    .line 265
    return-void
.end method

.method public onRtmpIllegalArgumentException(Ljava/lang/IllegalArgumentException;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/IllegalArgumentException;

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->handleException(Ljava/lang/Exception;)V

    .line 270
    return-void
.end method

.method public onRtmpIllegalStateException(Ljava/lang/IllegalStateException;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/IllegalStateException;

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->handleException(Ljava/lang/Exception;)V

    .line 275
    return-void
.end method

.method public onRtmpSocketException(Ljava/net/SocketException;)V
    .locals 0
    .param p1, "e"    # Ljava/net/SocketException;

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->handleException(Ljava/lang/Exception;)V

    .line 260
    return-void
.end method

.method public onRtmpStopped()V
    .locals 2

    .prologue
    .line 223
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Stopped"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public onRtmpVideoBitrateChanged(D)V
    .locals 7
    .param p1, "bitrate"    # D

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 239
    double-to-int v0, p1

    .line 240
    .local v0, "rate":I
    div-int/lit16 v1, v0, 0x3e8

    if-lez v1, :cond_0

    .line 241
    const-string v1, "LiveSDKPlugin"

    const-string v2, "Video bitrate: %f kbps"

    new-array v3, v3, [Ljava/lang/Object;

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    const-string v1, "LiveSDKPlugin"

    const-string v2, "Video bitrate: %d bps"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRtmpVideoFpsChanged(D)V
    .locals 5
    .param p1, "fps"    # D

    .prologue
    .line 234
    const-string v0, "LiveSDKPlugin"

    const-string v1, "Output Fps: %f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void
.end method

.method public onRtmpVideoStreaming()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method public setBeautyLevel(FLorg/apache/cordova/CallbackContext;)Z
    .locals 1
    .param p1, "level"    # F
    .param p2, "context"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method public setDevicePosition(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z
    .locals 3
    .param p1, "position"    # Ljava/lang/String;
    .param p2, "context"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 171
    iget-object v2, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->publisher:Lnet/ossrs/yasea/SrsPublisher;

    const-string v0, "front"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lnet/ossrs/yasea/SrsPublisher;->switchCameraFace(I)V

    .line 172
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 173
    return v1

    .line 171
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startLive(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "context"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;

    invoke-direct {v1, p0, p1, p2}, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;-><init>(Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public startRecord(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z
    .locals 1
    .param p1, "position"    # Ljava/lang/String;
    .param p2, "context"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 70
    const-string v0, "notsupport"

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public stopLive(Lorg/apache/cordova/CallbackContext;)Z
    .locals 1
    .param p1, "context"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->publisher:Lnet/ossrs/yasea/SrsPublisher;

    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsPublisher;->stopPublish()V

    .line 161
    invoke-virtual {p1}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 162
    const/4 v0, 0x1

    return v0
.end method
