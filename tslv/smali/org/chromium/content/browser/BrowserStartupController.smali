.class public Lorg/chromium/content/browser/BrowserStartupController;
.super Ljava/lang/Object;
.source "BrowserStartupController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "content"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ALREADY_STARTED:Z = true

.field private static final NOT_ALREADY_STARTED:Z = false

.field static final STARTUP_FAILURE:I = 0x1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation
.end field

.field static final STARTUP_SUCCESS:I = -0x1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "cr.BrowserStartup"

.field private static sBrowserMayStartAsynchronously:Z

.field private static sInstance:Lorg/chromium/content/browser/BrowserStartupController;

.field private static sShouldStartGpuProcessOnBrowserStartup:Z


# instance fields
.field private final mAsyncStartupCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHasStartedInitializingBrowserProcess:Z

.field private mLibraryProcessType:I

.field private mPostResourceExtractionTasksCompleted:Z

.field private mStartupDone:Z

.field private mStartupSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    const-class v0, Lorg/chromium/content/browser/BrowserStartupController;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/BrowserStartupController;->$assertionsDisabled:Z

    .line 63
    sput-boolean v2, Lorg/chromium/content/browser/BrowserStartupController;->sBrowserMayStartAsynchronously:Z

    .line 64
    sput-boolean v1, Lorg/chromium/content/browser/BrowserStartupController;->sShouldStartGpuProcessOnBrowserStartup:Z

    return-void

    :cond_0
    move v0, v2

    .line 38
    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "libraryProcessType"    # I

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/BrowserStartupController;->mContext:Landroid/content/Context;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/BrowserStartupController;->mAsyncStartupCallbacks:Ljava/util/List;

    .line 121
    iput p2, p0, Lorg/chromium/content/browser/BrowserStartupController;->mLibraryProcessType:I

    .line 122
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/BrowserStartupController;IZ)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/BrowserStartupController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/BrowserStartupController;->enqueueCallbackExecution(IZ)V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/BrowserStartupController;IZ)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/BrowserStartupController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/BrowserStartupController;->executeEnqueuedCallbacks(IZ)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/BrowserStartupController;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/BrowserStartupController;

    .prologue
    .line 39
    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupController;->mStartupSuccess:Z

    return v0
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/BrowserStartupController;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/BrowserStartupController;

    .prologue
    .line 39
    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupController;->mPostResourceExtractionTasksCompleted:Z

    return v0
.end method

.method static synthetic access$302(Lorg/chromium/content/browser/BrowserStartupController;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/BrowserStartupController;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lorg/chromium/content/browser/BrowserStartupController;->mPostResourceExtractionTasksCompleted:Z

    return p1
.end method

.method static synthetic access$400(Lorg/chromium/content/browser/BrowserStartupController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/BrowserStartupController;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/chromium/content/browser/BrowserStartupController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lorg/chromium/content/browser/BrowserStartupController;->nativeIsPluginEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lorg/chromium/content/browser/BrowserStartupController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/BrowserStartupController;

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/chromium/content/browser/BrowserStartupController;->getPlugins()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Z
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {p0, p1}, Lorg/chromium/content/browser/BrowserStartupController;->nativeSetCommandLineFlags(ZLjava/lang/String;)V

    return-void
.end method

.method static browserMayStartAsynchonously()Z
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 77
    sget-boolean v0, Lorg/chromium/content/browser/BrowserStartupController;->sBrowserMayStartAsynchronously:Z

    return v0
.end method

.method static browserStartupComplete(I)V
    .locals 2
    .param p0, "result"    # I
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 83
    sget-object v0, Lorg/chromium/content/browser/BrowserStartupController;->sInstance:Lorg/chromium/content/browser/BrowserStartupController;

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lorg/chromium/content/browser/BrowserStartupController;->sInstance:Lorg/chromium/content/browser/BrowserStartupController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/content/browser/BrowserStartupController;->executeEnqueuedCallbacks(IZ)V

    .line 86
    :cond_0
    return-void
.end method

.method private enqueueCallbackExecution(IZ)V
    .locals 2
    .param p1, "startupFailure"    # I
    .param p2, "alreadyStarted"    # Z

    .prologue
    .line 262
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/chromium/content/browser/BrowserStartupController$2;

    invoke-direct {v1, p0, p1, p2}, Lorg/chromium/content/browser/BrowserStartupController$2;-><init>(Lorg/chromium/content/browser/BrowserStartupController;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 268
    return-void
.end method

.method private executeEnqueuedCallbacks(IZ)V
    .locals 4
    .param p1, "startupResult"    # I
    .param p2, "alreadyStarted"    # Z

    .prologue
    const/4 v2, 0x1

    .line 245
    sget-boolean v3, Lorg/chromium/content/browser/BrowserStartupController;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Callback from browser startup from wrong thread."

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 246
    :cond_0
    iput-boolean v2, p0, Lorg/chromium/content/browser/BrowserStartupController;->mStartupDone:Z

    .line 247
    if-gtz p1, :cond_1

    :goto_0
    iput-boolean v2, p0, Lorg/chromium/content/browser/BrowserStartupController;->mStartupSuccess:Z

    .line 248
    iget-object v2, p0, Lorg/chromium/content/browser/BrowserStartupController;->mAsyncStartupCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;

    .line 249
    .local v0, "asyncStartupCallback":Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;
    iget-boolean v2, p0, Lorg/chromium/content/browser/BrowserStartupController;->mStartupSuccess:Z

    if-eqz v2, :cond_2

    .line 250
    invoke-interface {v0, p2}, Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;->onSuccess(Z)V

    goto :goto_1

    .line 247
    .end local v0    # "asyncStartupCallback":Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 252
    .restart local v0    # "asyncStartupCallback":Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;->onFailure()V

    goto :goto_1

    .line 256
    .end local v0    # "asyncStartupCallback":Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;
    :cond_3
    iget-object v2, p0, Lorg/chromium/content/browser/BrowserStartupController;->mAsyncStartupCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 257
    return-void
.end method

.method public static get(Landroid/content/Context;I)Lorg/chromium/content/browser/BrowserStartupController;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "libraryProcessType"    # I

    .prologue
    .line 134
    sget-boolean v0, Lorg/chromium/content/browser/BrowserStartupController;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Tried to start the browser on the wrong thread."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 135
    :cond_0
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 136
    sget-object v0, Lorg/chromium/content/browser/BrowserStartupController;->sInstance:Lorg/chromium/content/browser/BrowserStartupController;

    if-nez v0, :cond_2

    .line 137
    sget-boolean v0, Lorg/chromium/content/browser/BrowserStartupController;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-eq v0, p1, :cond_1

    const/4 v0, 0x3

    if-eq v0, p1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 139
    :cond_1
    new-instance v0, Lorg/chromium/content/browser/BrowserStartupController;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/BrowserStartupController;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lorg/chromium/content/browser/BrowserStartupController;->sInstance:Lorg/chromium/content/browser/BrowserStartupController;

    .line 141
    :cond_2
    sget-boolean v0, Lorg/chromium/content/browser/BrowserStartupController;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    sget-object v0, Lorg/chromium/content/browser/BrowserStartupController;->sInstance:Lorg/chromium/content/browser/BrowserStartupController;

    iget v0, v0, Lorg/chromium/content/browser/BrowserStartupController;->mLibraryProcessType:I

    if-eq v0, p1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Wrong process type"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 142
    :cond_3
    sget-object v0, Lorg/chromium/content/browser/BrowserStartupController;->sInstance:Lorg/chromium/content/browser/BrowserStartupController;

    return-object v0
.end method

.method private getPlugins()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lorg/chromium/content/browser/BrowserStartupController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/content/browser/PepperPluginManager;->getPlugins(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native nativeIsOfficialBuild()Z
.end method

.method private static native nativeIsPluginEnabled()Z
.end method

.method private static native nativeSetCommandLineFlags(ZLjava/lang/String;)V
.end method

.method static overrideInstanceForTest(Lorg/chromium/content/browser/BrowserStartupController;)Lorg/chromium/content/browser/BrowserStartupController;
    .locals 1
    .param p0, "controller"    # Lorg/chromium/content/browser/BrowserStartupController;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 147
    sget-object v0, Lorg/chromium/content/browser/BrowserStartupController;->sInstance:Lorg/chromium/content/browser/BrowserStartupController;

    if-nez v0, :cond_0

    .line 148
    sput-object p0, Lorg/chromium/content/browser/BrowserStartupController;->sInstance:Lorg/chromium/content/browser/BrowserStartupController;

    .line 150
    :cond_0
    sget-object v0, Lorg/chromium/content/browser/BrowserStartupController;->sInstance:Lorg/chromium/content/browser/BrowserStartupController;

    return-object v0
.end method

.method private postStartupCompleted(Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;)V
    .locals 2
    .param p1, "callback"    # Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;

    .prologue
    .line 271
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/chromium/content/browser/BrowserStartupController$3;

    invoke-direct {v1, p0, p1}, Lorg/chromium/content/browser/BrowserStartupController$3;-><init>(Lorg/chromium/content/browser/BrowserStartupController;Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 281
    return-void
.end method

.method private static setAsynchronousStartup(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .prologue
    .line 67
    sput-boolean p0, Lorg/chromium/content/browser/BrowserStartupController;->sBrowserMayStartAsynchronously:Z

    .line 68
    return-void
.end method

.method private static setShouldStartGpuProcessOnBrowserStartup(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .prologue
    .line 71
    sput-boolean p0, Lorg/chromium/content/browser/BrowserStartupController;->sShouldStartGpuProcessOnBrowserStartup:Z

    .line 72
    return-void
.end method

.method static shouldStartGpuProcessOnBrowserStartup()Z
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 90
    sget-boolean v0, Lorg/chromium/content/browser/BrowserStartupController;->sShouldStartGpuProcessOnBrowserStartup:Z

    return v0
.end method


# virtual methods
.method public addStartupCompletedObserver(Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;)V
    .locals 1
    .param p1, "callback"    # Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;

    .prologue
    .line 236
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 237
    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupController;->mStartupDone:Z

    if-eqz v0, :cond_0

    .line 238
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/BrowserStartupController;->postStartupCompleted(Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;)V

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/BrowserStartupController;->mAsyncStartupCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method contentStart()I
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 232
    invoke-static {}, Lorg/chromium/content/app/ContentMain;->start()I

    move-result v0

    return v0
.end method

.method public initChromiumBrowserProcessForTests()V
    .locals 3

    .prologue
    .line 328
    iget-object v1, p0, Lorg/chromium/content/browser/BrowserStartupController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/chromium/base/ResourceExtractor;->get(Landroid/content/Context;)Lorg/chromium/base/ResourceExtractor;

    move-result-object v0

    .line 329
    .local v0, "resourceExtractor":Lorg/chromium/base/ResourceExtractor;
    invoke-virtual {v0}, Lorg/chromium/base/ResourceExtractor;->startExtractingResources()V

    .line 330
    invoke-virtual {v0}, Lorg/chromium/base/ResourceExtractor;->waitForCompletion()V

    .line 331
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/chromium/content/browser/BrowserStartupController;->nativeSetCommandLineFlags(ZLjava/lang/String;)V

    .line 332
    return-void
.end method

.method prepareToStartBrowserProcess(ZLjava/lang/Runnable;)V
    .locals 7
    .param p1, "singleProcess"    # Z
    .param p2, "completionCallback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/chromium/base/library_loader/ProcessInitException;
        }
    .end annotation

    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 287
    const-string v2, "cr.BrowserStartup"

    const-string v3, "Initializing chromium process, singleProcess=%b"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    iget-object v2, p0, Lorg/chromium/content/browser/BrowserStartupController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/chromium/base/ResourceExtractor;->get(Landroid/content/Context;)Lorg/chromium/base/ResourceExtractor;

    move-result-object v1

    .line 293
    .local v1, "resourceExtractor":Lorg/chromium/base/ResourceExtractor;
    invoke-virtual {v1}, Lorg/chromium/base/ResourceExtractor;->startExtractingResources()V

    .line 297
    iget v2, p0, Lorg/chromium/content/browser/BrowserStartupController;->mLibraryProcessType:I

    invoke-static {v2}, Lorg/chromium/base/library_loader/LibraryLoader;->get(I)Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/content/browser/BrowserStartupController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lorg/chromium/base/library_loader/LibraryLoader;->ensureInitialized(Landroid/content/Context;)V

    .line 299
    new-instance v0, Lorg/chromium/content/browser/BrowserStartupController$4;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/BrowserStartupController$4;-><init>(Lorg/chromium/content/browser/BrowserStartupController;ZLjava/lang/Runnable;)V

    .line 314
    .local v0, "postResourceExtraction":Ljava/lang/Runnable;
    if-nez p2, :cond_0

    .line 317
    invoke-virtual {v1}, Lorg/chromium/base/ResourceExtractor;->waitForCompletion()V

    .line 318
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_0
    invoke-virtual {v1, v0}, Lorg/chromium/base/ResourceExtractor;->addCompletionCallback(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public startBrowserProcessesAsync(ZLorg/chromium/content/browser/BrowserStartupController$StartupCallback;)V
    .locals 2
    .param p1, "startGpuProcess"    # Z
    .param p2, "callback"    # Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/chromium/base/library_loader/ProcessInitException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 164
    sget-boolean v0, Lorg/chromium/content/browser/BrowserStartupController;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Tried to start the browser on the wrong thread."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 165
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupController;->mStartupDone:Z

    if-eqz v0, :cond_2

    .line 168
    invoke-direct {p0, p2}, Lorg/chromium/content/browser/BrowserStartupController;->postStartupCompleted(Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;)V

    .line 193
    :cond_1
    :goto_0
    return-void

    .line 173
    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/BrowserStartupController;->mAsyncStartupCallbacks:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupController;->mHasStartedInitializingBrowserProcess:Z

    if-nez v0, :cond_1

    .line 178
    iput-boolean v1, p0, Lorg/chromium/content/browser/BrowserStartupController;->mHasStartedInitializingBrowserProcess:Z

    .line 180
    invoke-static {v1}, Lorg/chromium/content/browser/BrowserStartupController;->setAsynchronousStartup(Z)V

    .line 181
    invoke-static {p1}, Lorg/chromium/content/browser/BrowserStartupController;->setShouldStartGpuProcessOnBrowserStartup(Z)V

    .line 182
    const/4 v0, 0x0

    new-instance v1, Lorg/chromium/content/browser/BrowserStartupController$1;

    invoke-direct {v1, p0}, Lorg/chromium/content/browser/BrowserStartupController$1;-><init>(Lorg/chromium/content/browser/BrowserStartupController;)V

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/BrowserStartupController;->prepareToStartBrowserProcess(ZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method public startBrowserProcessesSync(Z)V
    .locals 2
    .param p1, "singleProcess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/chromium/base/library_loader/ProcessInitException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 208
    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupController;->mStartupDone:Z

    if-nez v0, :cond_2

    .line 209
    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupController;->mHasStartedInitializingBrowserProcess:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupController;->mPostResourceExtractionTasksCompleted:Z

    if-nez v0, :cond_1

    .line 210
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/chromium/content/browser/BrowserStartupController;->prepareToStartBrowserProcess(ZLjava/lang/Runnable;)V

    .line 213
    :cond_1
    invoke-static {v1}, Lorg/chromium/content/browser/BrowserStartupController;->setAsynchronousStartup(Z)V

    .line 214
    invoke-virtual {p0}, Lorg/chromium/content/browser/BrowserStartupController;->contentStart()I

    move-result v0

    if-lez v0, :cond_2

    .line 216
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/BrowserStartupController;->enqueueCallbackExecution(IZ)V

    .line 221
    :cond_2
    sget-boolean v0, Lorg/chromium/content/browser/BrowserStartupController;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupController;->mStartupDone:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 222
    :cond_3
    iget-boolean v0, p0, Lorg/chromium/content/browser/BrowserStartupController;->mStartupSuccess:Z

    if-nez v0, :cond_4

    .line 223
    new-instance v0, Lorg/chromium/base/library_loader/ProcessInitException;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/chromium/base/library_loader/ProcessInitException;-><init>(I)V

    throw v0

    .line 225
    :cond_4
    return-void
.end method
