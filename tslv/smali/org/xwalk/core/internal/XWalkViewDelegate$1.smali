.class final Lorg/xwalk/core/internal/XWalkViewDelegate$1;
.super Ljava/lang/Object;
.source "XWalkViewDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/internal/XWalkViewDelegate;->startBrowserProcess(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkViewDelegate$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 192
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Lorg/chromium/base/library_loader/LibraryLoader;->get(I)Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewDelegate$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lorg/chromium/base/library_loader/LibraryLoader;->ensureInitialized(Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewDelegate$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lorg/chromium/content/browser/DeviceUtils;->addDeviceSpecificUserAgentSwitch(Landroid/content/Context;)V

    .line 197
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v1

    const-string v2, "profile-name"

    const-string v3, "profile-name"

    invoke-static {v3}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/chromium/base/CommandLine;->appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v1, "animatable-xwalk-view"

    invoke-static {v1}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->getValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v1

    const-string v2, "disable-gpu-rasterization"

    invoke-virtual {v1, v2}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v1

    const-string v2, "disable-gpu-rasterization"

    invoke-virtual {v1, v2}, Lorg/chromium/base/CommandLine;->appendSwitch(Ljava/lang/String;)V

    .line 207
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewDelegate$1;->val$context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/chromium/content/browser/BrowserStartupController;->get(Landroid/content/Context;I)Lorg/chromium/content/browser/BrowserStartupController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/BrowserStartupController;->startBrowserProcessesSync(Z)V
    :try_end_1
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_1 .. :try_end_1} :catch_1

    .line 212
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Lorg/chromium/base/library_loader/ProcessInitException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot initialize Crosswalk Core"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 209
    .end local v0    # "e":Lorg/chromium/base/library_loader/ProcessInitException;
    :catch_1
    move-exception v0

    .line 210
    .restart local v0    # "e":Lorg/chromium/base/library_loader/ProcessInitException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot initialize Crosswalk Core"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
