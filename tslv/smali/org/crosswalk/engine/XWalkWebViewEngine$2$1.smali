.class Lorg/crosswalk/engine/XWalkWebViewEngine$2$1;
.super Lorg/apache/cordova/CordovaPlugin;
.source "XWalkWebViewEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/crosswalk/engine/XWalkWebViewEngine$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/crosswalk/engine/XWalkWebViewEngine$2;


# direct methods
.method constructor <init>(Lorg/crosswalk/engine/XWalkWebViewEngine$2;)V
    .locals 0
    .param p1, "this$1"    # Lorg/crosswalk/engine/XWalkWebViewEngine$2;

    .prologue
    .line 95
    iput-object p1, p0, Lorg/crosswalk/engine/XWalkWebViewEngine$2$1;->this$1:Lorg/crosswalk/engine/XWalkWebViewEngine$2;

    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 104
    const-string v0, "captureXWalkBitmap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine$2$1;->this$1:Lorg/crosswalk/engine/XWalkWebViewEngine$2;

    iget-object v0, v0, Lorg/crosswalk/engine/XWalkWebViewEngine$2;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v0, v0, Lorg/crosswalk/engine/XWalkWebViewEngine;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lorg/crosswalk/engine/XWalkWebViewEngine$2$1$1;

    invoke-direct {v1, p0}, Lorg/crosswalk/engine/XWalkWebViewEngine$2$1$1;-><init>(Lorg/crosswalk/engine/XWalkWebViewEngine$2$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 120
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 98
    const-string v0, "XWalkWebViewEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifPlugin route onNewIntent() to XWalkView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine$2$1;->this$1:Lorg/crosswalk/engine/XWalkWebViewEngine$2;

    iget-object v0, v0, Lorg/crosswalk/engine/XWalkWebViewEngine$2;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v0, v0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v0, p1}, Lorg/crosswalk/engine/XWalkCordovaView;->onNewIntent(Landroid/content/Intent;)Z

    .line 100
    return-void
.end method
