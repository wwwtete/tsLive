.class Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1$1;
.super Ljava/lang/Object;
.source "LiveSDKPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;


# direct methods
.method constructor <init>(Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;)V
    .locals 0
    .param p1, "this$1"    # Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;

    .prologue
    .line 129
    iput-object p1, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1$1;->this$1:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 132
    iget-object v3, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1$1;->this$1:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;

    iget-object v3, v3, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;->this$0:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;

    iget-object v3, v3, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 134
    .local v1, "dm":Landroid/util/DisplayMetrics;
    const/4 v0, 0x0

    .line 135
    .local v0, "cameraView":Lnet/ossrs/yasea/SrsCameraView;
    iget-object v3, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1$1;->this$1:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;

    iget-object v3, v3, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;->this$0:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;

    iget-object v3, v3, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->publisher:Lnet/ossrs/yasea/SrsPublisher;

    if-nez v3, :cond_0

    .line 136
    iget-object v3, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1$1;->this$1:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;

    iget-object v3, v3, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;->this$0:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;

    iget-object v3, v3, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->fragment:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0e008e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "cameraView":Lnet/ossrs/yasea/SrsCameraView;
    check-cast v0, Lnet/ossrs/yasea/SrsCameraView;

    .line 138
    .restart local v0    # "cameraView":Lnet/ossrs/yasea/SrsCameraView;
    iget-object v3, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1$1;->this$1:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;

    iget-object v3, v3, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;->this$0:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;

    new-instance v4, Lnet/ossrs/yasea/SrsPublisher;

    invoke-direct {v4, v0}, Lnet/ossrs/yasea/SrsPublisher;-><init>(Lnet/ossrs/yasea/SrsCameraView;)V

    iput-object v4, v3, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->publisher:Lnet/ossrs/yasea/SrsPublisher;

    .line 140
    iget-object v3, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1$1;->this$1:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;

    iget-object v3, v3, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;->this$0:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;

    iget-object v3, v3, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->publisher:Lnet/ossrs/yasea/SrsPublisher;

    new-instance v4, Lnet/ossrs/yasea/SrsEncodeHandler;

    iget-object v5, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1$1;->this$1:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;

    iget-object v5, v5, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;->this$0:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;

    invoke-direct {v4, v5}, Lnet/ossrs/yasea/SrsEncodeHandler;-><init>(Lnet/ossrs/yasea/SrsEncodeHandler$SrsEncodeListener;)V

    invoke-virtual {v3, v4}, Lnet/ossrs/yasea/SrsPublisher;->setEncodeHandler(Lnet/ossrs/yasea/SrsEncodeHandler;)V

    .line 141
    iget-object v3, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1$1;->this$1:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;

    iget-object v3, v3, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;->this$0:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;

    iget-object v3, v3, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->publisher:Lnet/ossrs/yasea/SrsPublisher;

    new-instance v4, Lcom/github/faucamp/simplertmp/RtmpHandler;

    iget-object v5, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1$1;->this$1:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;

    iget-object v5, v5, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;->this$0:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;

    invoke-direct {v4, v5}, Lcom/github/faucamp/simplertmp/RtmpHandler;-><init>(Lcom/github/faucamp/simplertmp/RtmpHandler$RtmpListener;)V

    invoke-virtual {v3, v4}, Lnet/ossrs/yasea/SrsPublisher;->setRtmpHandler(Lcom/github/faucamp/simplertmp/RtmpHandler;)V

    .line 142
    iget-object v3, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1$1;->this$1:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;

    iget-object v3, v3, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;->this$0:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;

    iget-object v3, v3, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->publisher:Lnet/ossrs/yasea/SrsPublisher;

    new-instance v4, Lnet/ossrs/yasea/SrsRecordHandler;

    iget-object v5, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1$1;->this$1:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;

    iget-object v5, v5, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;->this$0:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;

    invoke-direct {v4, v5}, Lnet/ossrs/yasea/SrsRecordHandler;-><init>(Lnet/ossrs/yasea/SrsRecordHandler$SrsRecordListener;)V

    invoke-virtual {v3, v4}, Lnet/ossrs/yasea/SrsPublisher;->setRecordHandler(Lnet/ossrs/yasea/SrsRecordHandler;)V

    .line 143
    iget-object v3, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1$1;->this$1:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;

    iget-object v3, v3, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;->this$0:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;

    iget-object v3, v3, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->publisher:Lnet/ossrs/yasea/SrsPublisher;

    const/16 v4, 0x280

    const/16 v5, 0x1e0

    invoke-virtual {v3, v4, v5}, Lnet/ossrs/yasea/SrsPublisher;->setPreviewResolution(II)V

    .line 145
    :cond_0
    iget-object v3, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1$1;->this$1:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;

    iget-object v3, v3, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;->this$0:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;

    iget-object v3, v3, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->publisher:Lnet/ossrs/yasea/SrsPublisher;

    invoke-virtual {v3}, Lnet/ossrs/yasea/SrsPublisher;->swithToHardEncoder()V

    .line 146
    iget-object v3, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1$1;->this$1:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;

    iget-object v3, v3, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;->this$0:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;

    iget-object v3, v3, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->publisher:Lnet/ossrs/yasea/SrsPublisher;

    const/16 v4, 0x21c

    const/16 v5, 0x3c0

    invoke-virtual {v3, v4, v5}, Lnet/ossrs/yasea/SrsPublisher;->setOutputResolution(II)V

    .line 147
    iget-object v3, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1$1;->this$1:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;

    iget-object v3, v3, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;->this$0:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;

    iget-object v3, v3, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->publisher:Lnet/ossrs/yasea/SrsPublisher;

    invoke-virtual {v3}, Lnet/ossrs/yasea/SrsPublisher;->setVideoHDMode()V

    .line 148
    iget-object v3, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1$1;->this$1:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;

    iget-object v3, v3, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;->this$0:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;

    iget-object v3, v3, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->publisher:Lnet/ossrs/yasea/SrsPublisher;

    iget-object v4, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1$1;->this$1:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;

    iget-object v4, v4, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;->val$address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lnet/ossrs/yasea/SrsPublisher;->startPublish(Ljava/lang/String;)V

    .line 149
    new-instance v2, Lorg/apache/cordova/PluginResult;

    sget-object v3, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v2, v3}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    .line 150
    .local v2, "result":Lorg/apache/cordova/PluginResult;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 151
    iget-object v3, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1$1;->this$1:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;

    iget-object v3, v3, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;->val$context:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v3, v2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 152
    return-void
.end method
