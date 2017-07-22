.class public Lorg/crosswalk/engine/XWalkWebViewEngine;
.super Ljava/lang/Object;
.source "XWalkWebViewEngine.java"

# interfaces
.implements Lorg/apache/cordova/CordovaWebViewEngine;


# static fields
.field public static final TAG:Ljava/lang/String; = "XWalkWebViewEngine"

.field private static final XWALK_EXTENSIONS_FOLDER:Ljava/lang/String; = "xwalk-extensions"

.field public static final XWALK_USER_AGENT:Ljava/lang/String; = "xwalkUserAgent"

.field public static final XWALK_Z_ORDER_ON_TOP:Ljava/lang/String; = "xwalkZOrderOnTop"


# instance fields
.field protected activityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

.field protected bridge:Lorg/apache/cordova/CordovaBridge;

.field protected client:Lorg/apache/cordova/CordovaWebViewEngine$Client;

.field protected cookieManager:Lorg/crosswalk/engine/XWalkCordovaCookieManager;

.field protected cordova:Lorg/apache/cordova/CordovaInterface;

.field protected nativeToJsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

.field protected parentWebView:Lorg/apache/cordova/CordovaWebView;

.field protected pluginManager:Lorg/apache/cordova/PluginManager;

.field protected preferences:Lorg/apache/cordova/CordovaPreferences;

.field protected resourceApi:Lorg/apache/cordova/CordovaResourceApi;

.field protected startUrl:Ljava/lang/String;

.field protected final webView:Lorg/crosswalk/engine/XWalkCordovaView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/apache/cordova/CordovaPreferences;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferences"    # Lorg/apache/cordova/CordovaPreferences;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p2, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->preferences:Lorg/apache/cordova/CordovaPreferences;

    .line 80
    new-instance v0, Lorg/crosswalk/engine/XWalkWebViewEngine$1;

    invoke-direct {v0, p0}, Lorg/crosswalk/engine/XWalkWebViewEngine$1;-><init>(Lorg/crosswalk/engine/XWalkWebViewEngine;)V

    .line 86
    .local v0, "cancelCommand":Ljava/lang/Runnable;
    new-instance v1, Lorg/crosswalk/engine/XWalkWebViewEngine$2;

    invoke-direct {v1, p0}, Lorg/crosswalk/engine/XWalkWebViewEngine$2;-><init>(Lorg/crosswalk/engine/XWalkWebViewEngine;)V

    .line 135
    .local v1, "completeCommand":Ljava/lang/Runnable;
    new-instance v3, Lorg/xwalk/core/XWalkActivityDelegate;

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    invoke-direct {v3, v2, v0, v1}, Lorg/xwalk/core/XWalkActivityDelegate;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v3, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->activityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    .line 137
    new-instance v2, Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-direct {v2, p1, p2}, Lorg/crosswalk/engine/XWalkCordovaView;-><init>(Landroid/content/Context;Lorg/apache/cordova/CordovaPreferences;)V

    iput-object v2, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    .line 138
    return-void
.end method

.method static synthetic access$000(Lorg/crosswalk/engine/XWalkWebViewEngine;)V
    .locals 0
    .param p0, "x0"    # Lorg/crosswalk/engine/XWalkWebViewEngine;

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/crosswalk/engine/XWalkWebViewEngine;->initWebViewSettings()V

    return-void
.end method

.method static synthetic access$100(Lorg/xwalk/core/XWalkView;Lorg/apache/cordova/CordovaBridge;)V
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/XWalkView;
    .param p1, "x1"    # Lorg/apache/cordova/CordovaBridge;

    .prologue
    .line 56
    invoke-static {p0, p1}, Lorg/crosswalk/engine/XWalkWebViewEngine;->exposeJsInterface(Lorg/xwalk/core/XWalkView;Lorg/apache/cordova/CordovaBridge;)V

    return-void
.end method

.method static synthetic access$200(Lorg/crosswalk/engine/XWalkWebViewEngine;)V
    .locals 0
    .param p0, "x0"    # Lorg/crosswalk/engine/XWalkWebViewEngine;

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/crosswalk/engine/XWalkWebViewEngine;->loadExtensions()V

    return-void
.end method

.method private static exposeJsInterface(Lorg/xwalk/core/XWalkView;Lorg/apache/cordova/CordovaBridge;)V
    .locals 2
    .param p0, "webView"    # Lorg/xwalk/core/XWalkView;
    .param p1, "bridge"    # Lorg/apache/cordova/CordovaBridge;

    .prologue
    .line 215
    new-instance v0, Lorg/crosswalk/engine/XWalkExposedJsApi;

    invoke-direct {v0, p1}, Lorg/crosswalk/engine/XWalkExposedJsApi;-><init>(Lorg/apache/cordova/CordovaBridge;)V

    .line 216
    .local v0, "exposedJsApi":Lorg/crosswalk/engine/XWalkExposedJsApi;
    const-string v1, "_cordovaNative"

    invoke-virtual {p0, v0, v1}, Lorg/xwalk/core/XWalkView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method private initWebViewSettings()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 192
    iget-object v4, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v4, v3}, Lorg/crosswalk/engine/XWalkCordovaView;->setVerticalScrollBarEnabled(Z)V

    .line 194
    iget-object v4, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->preferences:Lorg/apache/cordova/CordovaPreferences;

    if-nez v4, :cond_3

    .line 195
    .local v3, "zOrderOnTop":Z
    :goto_0
    iget-object v4, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v4, v3}, Lorg/crosswalk/engine/XWalkCordovaView;->setZOrderOnTop(Z)V

    .line 198
    iget-object v4, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->preferences:Lorg/apache/cordova/CordovaPreferences;

    if-nez v4, :cond_4

    const-string v2, ""

    .line 199
    .local v2, "xwalkUserAgent":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 200
    iget-object v4, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v4, v2}, Lorg/crosswalk/engine/XWalkCordovaView;->setUserAgentString(Ljava/lang/String;)V

    .line 203
    :cond_0
    iget-object v4, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v5, "AppendUserAgent"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "appendUserAgent":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 205
    iget-object v4, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v6}, Lorg/crosswalk/engine/XWalkCordovaView;->getUserAgentString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/crosswalk/engine/XWalkCordovaView;->setUserAgentString(Ljava/lang/String;)V

    .line 208
    :cond_1
    iget-object v4, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v5, "BackgroundColor"

    invoke-virtual {v4, v5}, Lorg/apache/cordova/CordovaPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 209
    iget-object v4, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v5, "BackgroundColor"

    const/high16 v6, -0x1000000

    invoke-virtual {v4, v5, v6}, Lorg/apache/cordova/CordovaPreferences;->getInteger(Ljava/lang/String;I)I

    move-result v1

    .line 210
    .local v1, "backgroundColor":I
    iget-object v4, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v4, v1}, Lorg/crosswalk/engine/XWalkCordovaView;->setBackgroundColor(I)V

    .line 212
    .end local v1    # "backgroundColor":I
    :cond_2
    return-void

    .line 194
    .end local v0    # "appendUserAgent":Ljava/lang/String;
    .end local v2    # "xwalkUserAgent":Ljava/lang/String;
    .end local v3    # "zOrderOnTop":Z
    :cond_3
    iget-object v4, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v5, "xwalkZOrderOnTop"

    invoke-virtual {v4, v5, v3}, Lorg/apache/cordova/CordovaPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_0

    .line 198
    .restart local v3    # "zOrderOnTop":Z
    :cond_4
    iget-object v4, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v5, "xwalkUserAgent"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private loadExtensions()V
    .locals 9

    .prologue
    .line 220
    iget-object v4, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 223
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    :try_start_0
    const-string v4, "XWalkWebViewEngine"

    const-string v5, "Iterate assets/xwalk-extensions folder"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v4, "xwalk-extensions"

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 230
    .local v2, "extList":[Ljava/lang/String;
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v2, v4

    .line 232
    .local v3, "path":Ljava/lang/String;
    const-string v6, "XWalkWebViewEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Start to load extension: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v6, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v6}, Lorg/crosswalk/engine/XWalkCordovaView;->getExtensionManager()Lorg/xwalk/core/XWalkExternalExtensionManager;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "xwalk-extensions"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/xwalk/core/XWalkExternalExtensionManager;->loadExtension(Ljava/lang/String;)V

    .line 230
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 225
    .end local v2    # "extList":[Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 226
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "XWalkWebViewEngine"

    const-string v5, "Failed to iterate assets/xwalk-extensions folder"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    return-void
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->activityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkActivityDelegate;->isXWalkReady()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 240
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v0}, Lorg/crosswalk/engine/XWalkCordovaView;->getNavigationHistory()Lorg/xwalk/core/XWalkNavigationHistory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkNavigationHistory;->canGoBack()Z

    move-result v0

    goto :goto_0
.end method

.method public clearCache()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->activityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkActivityDelegate;->isXWalkReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/crosswalk/engine/XWalkCordovaView;->clearCache(Z)V

    goto :goto_0
.end method

.method public clearHistory()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->activityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkActivityDelegate;->isXWalkReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v0}, Lorg/crosswalk/engine/XWalkCordovaView;->getNavigationHistory()Lorg/xwalk/core/XWalkNavigationHistory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkNavigationHistory;->clear()V

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->activityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkActivityDelegate;->isXWalkReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v0}, Lorg/crosswalk/engine/XWalkCordovaView;->onDestroy()V

    goto :goto_0
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .param p1, "js"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 314
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v0, p1, p2}, Lorg/crosswalk/engine/XWalkCordovaView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 315
    return-void
.end method

.method public getCookieManager()Lorg/apache/cordova/ICordovaCookieManager;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->cookieManager:Lorg/crosswalk/engine/XWalkCordovaCookieManager;

    return-object v0
.end method

.method public getCordovaWebView()Lorg/apache/cordova/CordovaWebView;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->parentWebView:Lorg/apache/cordova/CordovaWebView;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->activityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkActivityDelegate;->isXWalkReady()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 290
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v0}, Lorg/crosswalk/engine/XWalkCordovaView;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    return-object v0
.end method

.method public goBack()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 245
    iget-object v1, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v1}, Lorg/crosswalk/engine/XWalkCordovaView;->getNavigationHistory()Lorg/xwalk/core/XWalkNavigationHistory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xwalk/core/XWalkNavigationHistory;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v1}, Lorg/crosswalk/engine/XWalkCordovaView;->getNavigationHistory()Lorg/xwalk/core/XWalkNavigationHistory;

    move-result-object v1

    sget-object v2, Lorg/xwalk/core/XWalkNavigationHistory$Direction;->BACKWARD:Lorg/xwalk/core/XWalkNavigationHistory$Direction;

    invoke-virtual {v1, v2, v0}, Lorg/xwalk/core/XWalkNavigationHistory;->navigate(Lorg/xwalk/core/XWalkNavigationHistory$Direction;I)V

    .line 249
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebViewEngine$Client;Lorg/apache/cordova/CordovaResourceApi;Lorg/apache/cordova/PluginManager;Lorg/apache/cordova/NativeToJsMessageQueue;)V
    .locals 3
    .param p1, "parentWebView"    # Lorg/apache/cordova/CordovaWebView;
    .param p2, "cordova"    # Lorg/apache/cordova/CordovaInterface;
    .param p3, "client"    # Lorg/apache/cordova/CordovaWebViewEngine$Client;
    .param p4, "resourceApi"    # Lorg/apache/cordova/CordovaResourceApi;
    .param p5, "pluginManager"    # Lorg/apache/cordova/PluginManager;
    .param p6, "nativeToJsMessageQueue"    # Lorg/apache/cordova/NativeToJsMessageQueue;

    .prologue
    .line 146
    iget-object v1, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->cordova:Lorg/apache/cordova/CordovaInterface;

    if-eqz v1, :cond_0

    .line 147
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 149
    :cond_0
    iput-object p1, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->parentWebView:Lorg/apache/cordova/CordovaWebView;

    .line 150
    iput-object p2, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 151
    iput-object p3, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->client:Lorg/apache/cordova/CordovaWebViewEngine$Client;

    .line 152
    iput-object p4, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    .line 153
    iput-object p5, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->pluginManager:Lorg/apache/cordova/PluginManager;

    .line 154
    iput-object p6, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->nativeToJsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

    .line 156
    new-instance v0, Lorg/crosswalk/engine/XWalkWebViewEngine$3;

    invoke-direct {v0, p0}, Lorg/crosswalk/engine/XWalkWebViewEngine$3;-><init>(Lorg/crosswalk/engine/XWalkWebViewEngine;)V

    .line 162
    .local v0, "activityDelegatePlugin":Lorg/apache/cordova/CordovaPlugin;
    new-instance v1, Lorg/apache/cordova/PluginEntry;

    const-string v2, "XWalkActivityDelegate"

    invoke-direct {v1, v2, v0}, Lorg/apache/cordova/PluginEntry;-><init>(Ljava/lang/String;Lorg/apache/cordova/CordovaPlugin;)V

    invoke-virtual {p5, v1}, Lorg/apache/cordova/PluginManager;->addService(Lorg/apache/cordova/PluginEntry;)V

    .line 164
    iget-object v1, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v1, p0}, Lorg/crosswalk/engine/XWalkCordovaView;->init(Lorg/crosswalk/engine/XWalkWebViewEngine;)V

    .line 166
    new-instance v1, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;

    new-instance v2, Lorg/crosswalk/engine/XWalkWebViewEngine$4;

    invoke-direct {v2, p0}, Lorg/crosswalk/engine/XWalkWebViewEngine$4;-><init>(Lorg/crosswalk/engine/XWalkWebViewEngine;)V

    invoke-direct {v1, v2}, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;-><init>(Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode$OnlineEventsBridgeModeDelegate;)V

    invoke-virtual {p6, v1}, Lorg/apache/cordova/NativeToJsMessageQueue;->addBridgeMode(Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;)V

    .line 177
    new-instance v1, Lorg/apache/cordova/NativeToJsMessageQueue$EvalBridgeMode;

    invoke-direct {v1, p0, p2}, Lorg/apache/cordova/NativeToJsMessageQueue$EvalBridgeMode;-><init>(Lorg/apache/cordova/CordovaWebViewEngine;Lorg/apache/cordova/CordovaInterface;)V

    invoke-virtual {p6, v1}, Lorg/apache/cordova/NativeToJsMessageQueue;->addBridgeMode(Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;)V

    .line 178
    new-instance v1, Lorg/apache/cordova/CordovaBridge;

    invoke-direct {v1, p5, p6}, Lorg/apache/cordova/CordovaBridge;-><init>(Lorg/apache/cordova/PluginManager;Lorg/apache/cordova/NativeToJsMessageQueue;)V

    iput-object v1, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->bridge:Lorg/apache/cordova/CordovaBridge;

    .line 179
    return-void
.end method

.method public isXWalkReady()Z
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->activityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkActivityDelegate;->isXWalkReady()Z

    move-result v0

    return v0
.end method

.method public loadUrl(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "clearNavigationStack"    # Z

    .prologue
    .line 300
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->activityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkActivityDelegate;->isXWalkReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    iput-object p1, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->startUrl:Ljava/lang/String;

    .line 305
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/crosswalk/engine/XWalkCordovaView;->load(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPaused(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 254
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->activityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkActivityDelegate;->isXWalkReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 255
    :cond_0
    if-eqz p1, :cond_1

    .line 257
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v0}, Lorg/crosswalk/engine/XWalkCordovaView;->pauseTimersForReal()V

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v0}, Lorg/crosswalk/engine/XWalkCordovaView;->resumeTimers()V

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->activityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkActivityDelegate;->isXWalkReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    invoke-virtual {v0}, Lorg/crosswalk/engine/XWalkCordovaView;->stopLoading()V

    goto :goto_0
.end method
