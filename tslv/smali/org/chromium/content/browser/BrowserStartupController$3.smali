.class Lorg/chromium/content/browser/BrowserStartupController$3;
.super Ljava/lang/Object;
.source "BrowserStartupController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/BrowserStartupController;->postStartupCompleted(Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/BrowserStartupController;

.field final synthetic val$callback:Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/BrowserStartupController;Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lorg/chromium/content/browser/BrowserStartupController$3;->this$0:Lorg/chromium/content/browser/BrowserStartupController;

    iput-object p2, p0, Lorg/chromium/content/browser/BrowserStartupController$3;->val$callback:Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lorg/chromium/content/browser/BrowserStartupController$3;->this$0:Lorg/chromium/content/browser/BrowserStartupController;

    invoke-static {v0}, Lorg/chromium/content/browser/BrowserStartupController;->access$200(Lorg/chromium/content/browser/BrowserStartupController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lorg/chromium/content/browser/BrowserStartupController$3;->val$callback:Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;->onSuccess(Z)V

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/BrowserStartupController$3;->val$callback:Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;

    invoke-interface {v0}, Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;->onFailure()V

    goto :goto_0
.end method
