.class Lorg/chromium/content/browser/BrowserStartupController$4;
.super Ljava/lang/Object;
.source "BrowserStartupController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/BrowserStartupController;->prepareToStartBrowserProcess(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/BrowserStartupController;

.field final synthetic val$completionCallback:Ljava/lang/Runnable;

.field final synthetic val$singleProcess:Z


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/BrowserStartupController;ZLjava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lorg/chromium/content/browser/BrowserStartupController$4;->this$0:Lorg/chromium/content/browser/BrowserStartupController;

    iput-boolean p2, p0, Lorg/chromium/content/browser/BrowserStartupController$4;->val$singleProcess:Z

    iput-object p3, p0, Lorg/chromium/content/browser/BrowserStartupController$4;->val$completionCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lorg/chromium/content/browser/BrowserStartupController$4;->this$0:Lorg/chromium/content/browser/BrowserStartupController;

    invoke-static {v0}, Lorg/chromium/content/browser/BrowserStartupController;->access$300(Lorg/chromium/content/browser/BrowserStartupController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lorg/chromium/content/browser/BrowserStartupController$4;->this$0:Lorg/chromium/content/browser/BrowserStartupController;

    invoke-static {v0}, Lorg/chromium/content/browser/BrowserStartupController;->access$400(Lorg/chromium/content/browser/BrowserStartupController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/content/browser/DeviceUtils;->addDeviceSpecificUserAgentSwitch(Landroid/content/Context;)V

    .line 305
    iget-boolean v1, p0, Lorg/chromium/content/browser/BrowserStartupController$4;->val$singleProcess:Z

    invoke-static {}, Lorg/chromium/content/browser/BrowserStartupController;->access$500()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/BrowserStartupController$4;->this$0:Lorg/chromium/content/browser/BrowserStartupController;

    invoke-static {v0}, Lorg/chromium/content/browser/BrowserStartupController;->access$600(Lorg/chromium/content/browser/BrowserStartupController;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lorg/chromium/content/browser/BrowserStartupController;->access$700(ZLjava/lang/String;)V

    .line 307
    iget-object v0, p0, Lorg/chromium/content/browser/BrowserStartupController$4;->this$0:Lorg/chromium/content/browser/BrowserStartupController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/chromium/content/browser/BrowserStartupController;->access$302(Lorg/chromium/content/browser/BrowserStartupController;Z)Z

    .line 310
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/BrowserStartupController$4;->val$completionCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/BrowserStartupController$4;->val$completionCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 311
    :cond_1
    return-void

    .line 305
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
