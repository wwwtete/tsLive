.class Lorg/crosswalk/engine/XWalkWebViewEngine$4;
.super Ljava/lang/Object;
.source "XWalkWebViewEngine.java"

# interfaces
.implements Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode$OnlineEventsBridgeModeDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/crosswalk/engine/XWalkWebViewEngine;->init(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebViewEngine$Client;Lorg/apache/cordova/CordovaResourceApi;Lorg/apache/cordova/PluginManager;Lorg/apache/cordova/NativeToJsMessageQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;


# direct methods
.method constructor <init>(Lorg/crosswalk/engine/XWalkWebViewEngine;)V
    .locals 0
    .param p1, "this$0"    # Lorg/crosswalk/engine/XWalkWebViewEngine;

    .prologue
    .line 167
    iput-object p1, p0, Lorg/crosswalk/engine/XWalkWebViewEngine$4;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 174
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine$4;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v0, v0, Lorg/crosswalk/engine/XWalkWebViewEngine;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 175
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 170
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine$4;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v0, v0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v0, p1}, Lorg/crosswalk/engine/XWalkCordovaView;->setNetworkAvailable(Z)V

    .line 171
    return-void
.end method
