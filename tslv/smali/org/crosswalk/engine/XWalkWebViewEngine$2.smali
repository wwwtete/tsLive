.class Lorg/crosswalk/engine/XWalkWebViewEngine$2;
.super Ljava/lang/Object;
.source "XWalkWebViewEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/crosswalk/engine/XWalkWebViewEngine;-><init>(Landroid/content/Context;Lorg/apache/cordova/CordovaPreferences;)V
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
    .line 86
    iput-object p1, p0, Lorg/crosswalk/engine/XWalkWebViewEngine$2;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 89
    iget-object v1, p0, Lorg/crosswalk/engine/XWalkWebViewEngine$2;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    new-instance v2, Lorg/crosswalk/engine/XWalkCordovaCookieManager;

    invoke-direct {v2}, Lorg/crosswalk/engine/XWalkCordovaCookieManager;-><init>()V

    iput-object v2, v1, Lorg/crosswalk/engine/XWalkWebViewEngine;->cookieManager:Lorg/crosswalk/engine/XWalkCordovaCookieManager;

    .line 91
    iget-object v1, p0, Lorg/crosswalk/engine/XWalkWebViewEngine$2;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    invoke-static {v1}, Lorg/crosswalk/engine/XWalkWebViewEngine;->access$000(Lorg/crosswalk/engine/XWalkWebViewEngine;)V

    .line 92
    iget-object v1, p0, Lorg/crosswalk/engine/XWalkWebViewEngine$2;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    iget-object v2, p0, Lorg/crosswalk/engine/XWalkWebViewEngine$2;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v2, v2, Lorg/crosswalk/engine/XWalkWebViewEngine;->bridge:Lorg/apache/cordova/CordovaBridge;

    invoke-static {v1, v2}, Lorg/crosswalk/engine/XWalkWebViewEngine;->access$100(Lorg/xwalk/core/XWalkView;Lorg/apache/cordova/CordovaBridge;)V

    .line 93
    iget-object v1, p0, Lorg/crosswalk/engine/XWalkWebViewEngine$2;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    invoke-static {v1}, Lorg/crosswalk/engine/XWalkWebViewEngine;->access$200(Lorg/crosswalk/engine/XWalkWebViewEngine;)V

    .line 95
    new-instance v0, Lorg/crosswalk/engine/XWalkWebViewEngine$2$1;

    invoke-direct {v0, p0}, Lorg/crosswalk/engine/XWalkWebViewEngine$2$1;-><init>(Lorg/crosswalk/engine/XWalkWebViewEngine$2;)V

    .line 123
    .local v0, "notifPlugin":Lorg/apache/cordova/CordovaPlugin;
    iget-object v1, p0, Lorg/crosswalk/engine/XWalkWebViewEngine$2;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine;->pluginManager:Lorg/apache/cordova/PluginManager;

    new-instance v2, Lorg/apache/cordova/PluginEntry;

    const-string v3, "XWalkNotif"

    invoke-direct {v2, v3, v0}, Lorg/apache/cordova/PluginEntry;-><init>(Ljava/lang/String;Lorg/apache/cordova/CordovaPlugin;)V

    invoke-virtual {v1, v2}, Lorg/apache/cordova/PluginManager;->addService(Lorg/apache/cordova/PluginEntry;)V

    .line 126
    iget-object v1, p0, Lorg/crosswalk/engine/XWalkWebViewEngine$2;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine;->pluginManager:Lorg/apache/cordova/PluginManager;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lorg/crosswalk/engine/XWalkWebViewEngine$2;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine;->pluginManager:Lorg/apache/cordova/PluginManager;

    const-string v2, "onXWalkReady"

    invoke-virtual {v1, v2, p0}, Lorg/apache/cordova/PluginManager;->postMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_0
    iget-object v1, p0, Lorg/crosswalk/engine/XWalkWebViewEngine$2;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine;->startUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 131
    iget-object v1, p0, Lorg/crosswalk/engine/XWalkWebViewEngine$2;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v1, v1, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    iget-object v2, p0, Lorg/crosswalk/engine/XWalkWebViewEngine$2;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v2, v2, Lorg/crosswalk/engine/XWalkWebViewEngine;->startUrl:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/crosswalk/engine/XWalkCordovaView;->load(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_1
    return-void
.end method
