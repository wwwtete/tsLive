.class public Lorg/chromium/content/browser/ChildProcessLauncher;
.super Ljava/lang/Object;
.source "ChildProcessLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;,
        Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;,
        Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "content"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final CALLBACK_FOR_DOWNLOAD_PROCESS:I = 0x4

.field static final CALLBACK_FOR_GPU_PROCESS:I = 0x1

.field static final CALLBACK_FOR_RENDERER_PROCESS:I = 0x2

.field static final CALLBACK_FOR_UNKNOWN_PROCESS:I = 0x0

.field static final CALLBACK_FOR_UTILITY_PROCESS:I = 0x3

.field private static final FREE_CONNECTION_DELAY_MILLIS:J = 0x1L

.field private static final NULL_PROCESS_HANDLE:I = 0x0

.field private static final NUM_PRIVILEGED_SERVICES_KEY:Ljava/lang/String; = "org.chromium.content.browser.NUM_PRIVILEGED_SERVICES"

.field private static final NUM_SANDBOXED_SERVICES_KEY:Ljava/lang/String; = "org.chromium.content.browser.NUM_SANDBOXED_SERVICES"

.field public static final SWITCH_NUM_SANDBOXED_SERVICES_FOR_TESTING:Ljava/lang/String; = "num-sandboxed-services"
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ChildProcLauncher"

.field private static sApplicationInForeground:Z

.field private static sBindingManager:Lorg/chromium/content/browser/BindingManager;

.field private static sLinkerInitialized:Z

.field private static sLinkerLoadAddress:J

.field private static final sPendingSpawnQueue:Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;

.field private static sPrivilegedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

.field private static sSandboxedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

.field private static sServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/chromium/content/browser/ChildProcessConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static sSpareSandboxedConnection:Lorg/chromium/content/browser/ChildProcessConnection;

.field private static sSurfaceTextureSurfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private static sViewSurfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    const-class v0, Lorg/chromium/content/browser/ChildProcessLauncher;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    .line 216
    new-instance v0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;

    invoke-direct {v0, v4}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;-><init>(Lorg/chromium/content/browser/ChildProcessLauncher$1;)V

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sPendingSpawnQueue:Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;

    .line 301
    sput-boolean v2, Lorg/chromium/content/browser/ChildProcessLauncher;->sLinkerInitialized:Z

    .line 302
    const-wide/16 v2, 0x0

    sput-wide v2, Lorg/chromium/content/browser/ChildProcessLauncher;->sLinkerLoadAddress:J

    .line 392
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sServiceMap:Ljava/util/Map;

    .line 396
    sput-object v4, Lorg/chromium/content/browser/ChildProcessLauncher;->sSpareSandboxedConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    .line 399
    invoke-static {}, Lorg/chromium/content/browser/BindingManagerImpl;->createBindingManager()Lorg/chromium/content/browser/BindingManagerImpl;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    .line 402
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sViewSurfaceMap:Ljava/util/Map;

    .line 406
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sSurfaceTextureSurfaceMap:Ljava/util/Map;

    .line 410
    sput-boolean v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sApplicationInForeground:Z

    return-void

    :cond_0
    move v0, v2

    .line 49
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/ChildProcessConnection;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/ChildProcessConnection;

    .prologue
    .line 50
    invoke-static {p0}, Lorg/chromium/content/browser/ChildProcessLauncher;->freeConnection(Lorg/chromium/content/browser/ChildProcessConnection;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/content/Context;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;JIZ)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # [Lorg/chromium/content/browser/FileDescriptorInfo;
    .param p4, "x4"    # J
    .param p6, "x5"    # I
    .param p7, "x6"    # Z

    .prologue
    .line 50
    invoke-static/range {p0 .. p7}, Lorg/chromium/content/browser/ChildProcessLauncher;->startInternal(Landroid/content/Context;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;JIZ)V

    return-void
.end method

.method static synthetic access$1200()Lorg/chromium/content/browser/BindingManager;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/util/Map;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sServiceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1400(JI)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # I

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lorg/chromium/content/browser/ChildProcessLauncher;->nativeOnChildProcessStarted(JI)V

    return-void
.end method

.method static synthetic access$1500(ILandroid/view/Surface;II)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Landroid/view/Surface;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 50
    invoke-static {p0, p1, p2, p3}, Lorg/chromium/content/browser/ChildProcessLauncher;->nativeEstablishSurfacePeer(ILandroid/view/Surface;II)V

    return-void
.end method

.method static synthetic access$1600(I)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 50
    invoke-static {p0}, Lorg/chromium/content/browser/ChildProcessLauncher;->getViewSurface(I)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(IILandroid/view/Surface;)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/Surface;

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lorg/chromium/content/browser/ChildProcessLauncher;->registerSurfaceTextureSurface(IILandroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$1800(II)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-static {p0, p1}, Lorg/chromium/content/browser/ChildProcessLauncher;->unregisterSurfaceTextureSurface(II)V

    return-void
.end method

.method static synthetic access$1900(II)Lorg/chromium/content/common/SurfaceWrapper;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-static {p0, p1}, Lorg/chromium/content/browser/ChildProcessLauncher;->getSurfaceTextureSurface(II)Lorg/chromium/content/common/SurfaceWrapper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/ChildProcessConnection;)Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ChildProcessConnection;

    .prologue
    .line 50
    invoke-static {p0}, Lorg/chromium/content/browser/ChildProcessLauncher;->freeConnectionAndDequeuePending(Lorg/chromium/content/browser/ChildProcessConnection;)Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;

    move-result-object v0

    return-object v0
.end method

.method private static allocateBoundConnection(Landroid/content/Context;[Ljava/lang/String;ZZ)Lorg/chromium/content/browser/ChildProcessConnection;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "commandLine"    # [Ljava/lang/String;
    .param p2, "inSandbox"    # Z
    .param p3, "alwaysInForeground"    # Z

    .prologue
    .line 333
    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncher;->getLinkerParamsForNewConnection()Lorg/chromium/content/app/ChromiumLinkerParams;

    move-result-object v0

    .line 334
    .local v0, "chromiumLinkerParams":Lorg/chromium/content/app/ChromiumLinkerParams;
    invoke-static {p0, p2, v0, p3}, Lorg/chromium/content/browser/ChildProcessLauncher;->allocateConnection(Landroid/content/Context;ZLorg/chromium/content/app/ChromiumLinkerParams;Z)Lorg/chromium/content/browser/ChildProcessConnection;

    move-result-object v1

    .line 336
    .local v1, "connection":Lorg/chromium/content/browser/ChildProcessConnection;
    if-eqz v1, :cond_0

    .line 337
    invoke-interface {v1, p1}, Lorg/chromium/content/browser/ChildProcessConnection;->start([Ljava/lang/String;)V

    .line 339
    if-eqz p2, :cond_0

    sget-object v2, Lorg/chromium/content/browser/ChildProcessLauncher;->sSandboxedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->isFreeConnectionAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 343
    sget-object v2, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    invoke-interface {v2}, Lorg/chromium/content/browser/BindingManager;->releaseAllModerateBindings()V

    .line 346
    :cond_0
    return-object v1
.end method

.method static allocateBoundConnectionForTesting(Landroid/content/Context;)Lorg/chromium/content/browser/ChildProcessConnection;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 852
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/chromium/content/browser/ChildProcessLauncher;->allocateBoundConnection(Landroid/content/Context;[Ljava/lang/String;ZZ)Lorg/chromium/content/browser/ChildProcessConnection;

    move-result-object v0

    return-object v0
.end method

.method private static allocateConnection(Landroid/content/Context;ZLorg/chromium/content/app/ChromiumLinkerParams;Z)Lorg/chromium/content/browser/ChildProcessConnection;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inSandbox"    # Z
    .param p2, "chromiumLinkerParams"    # Lorg/chromium/content/app/ChromiumLinkerParams;
    .param p3, "alwaysInForeground"    # Z

    .prologue
    .line 285
    new-instance v2, Lorg/chromium/content/browser/ChildProcessLauncher$1;

    invoke-direct {v2}, Lorg/chromium/content/browser/ChildProcessLauncher$1;-><init>()V

    .line 296
    .local v2, "deathCallback":Lorg/chromium/content/browser/ChildProcessConnection$DeathCallback;
    invoke-static {p0}, Lorg/chromium/content/browser/ChildProcessLauncher;->initConnectionAllocatorsIfNecessary(Landroid/content/Context;)V

    .line 297
    invoke-static {p1}, Lorg/chromium/content/browser/ChildProcessLauncher;->getConnectionAllocator(Z)Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    move-result-object v0

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessCreationParams;->get()Lorg/chromium/content/browser/ChildProcessCreationParams;

    move-result-object v5

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->allocate(Landroid/content/Context;Lorg/chromium/content/browser/ChildProcessConnection$DeathCallback;Lorg/chromium/content/app/ChromiumLinkerParams;ZLorg/chromium/content/browser/ChildProcessCreationParams;)Lorg/chromium/content/browser/ChildProcessConnection;

    move-result-object v0

    return-object v0
.end method

.method static allocatedConnectionsCountForTesting(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 869
    invoke-static {p0}, Lorg/chromium/content/browser/ChildProcessLauncher;->initConnectionAllocatorsIfNecessary(Landroid/content/Context;)V

    .line 870
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sSandboxedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->allocatedConnectionsCountForTesting()I

    move-result v0

    return v0
.end method

.method static connectedServicesCountForTesting()I
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 876
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sServiceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public static crashProcessForTesting(I)Z
    .locals 4
    .param p0, "pid"    # I
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 893
    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sServiceMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    move v1, v2

    .line 901
    :goto_0
    return v1

    .line 896
    :cond_0
    :try_start_0
    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sServiceMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->crashServiceForTesting()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 901
    const/4 v1, 0x1

    goto :goto_0

    .line 897
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    move v1, v2

    .line 898
    goto :goto_0
.end method

.method private static createCallback(II)Lorg/chromium/content/common/IChildProcessCallback;
    .locals 1
    .param p0, "childProcessId"    # I
    .param p1, "callbackType"    # I

    .prologue
    .line 764
    new-instance v0, Lorg/chromium/content/browser/ChildProcessLauncher$4;

    invoke-direct {v0, p1, p0}, Lorg/chromium/content/browser/ChildProcessLauncher$4;-><init>(II)V

    return-object v0
.end method

.method private static createSurfaceTextureSurface(IILandroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p0, "surfaceTextureId"    # I
    .param p1, "clientId"    # I
    .param p2, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 467
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {p0, p1, v0}, Lorg/chromium/content/browser/ChildProcessLauncher;->registerSurfaceTextureSurface(IILandroid/view/Surface;)V

    .line 468
    return-void
.end method

.method protected static createsServiceBundle([Ljava/lang/String;[Lorg/chromium/content/browser/FileDescriptorInfo;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p0, "commandLine"    # [Ljava/lang/String;
    .param p1, "filesToBeMapped"    # [Lorg/chromium/content/browser/FileDescriptorInfo;
    .param p2, "sharedRelros"    # Landroid/os/Bundle;

    .prologue
    .line 697
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 698
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "com.google.android.apps.chrome.extra.command_line"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 699
    const-string v1, "com.google.android.apps.chrome.extra.extraFiles"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 700
    const-string v1, "com.google.android.apps.chrome.extra.cpu_count"

    invoke-static {}, Lorg/chromium/base/CpuFeatures;->getCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 701
    const-string v1, "com.google.android.apps.chrome.extra.cpu_features"

    invoke-static {}, Lorg/chromium/base/CpuFeatures;->getMask()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 702
    const-string v1, "org.chromium.base.android.linker.shared_relros"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 703
    return-object v0
.end method

.method private static destroySurfaceTextureSurface(II)V
    .locals 0
    .param p0, "surfaceTextureId"    # I
    .param p1, "clientId"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 472
    invoke-static {p0, p1}, Lorg/chromium/content/browser/ChildProcessLauncher;->unregisterSurfaceTextureSurface(II)V

    .line 473
    return-void
.end method

.method public static determinedVisibility(I)V
    .locals 1
    .param p0, "pid"    # I

    .prologue
    .line 503
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    invoke-interface {v0, p0}, Lorg/chromium/content/browser/BindingManager;->determinedVisibility(I)V

    .line 504
    return-void
.end method

.method static enqueuePendingSpawnForTesting(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "commandLine"    # [Ljava/lang/String;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 860
    sget-object v11, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->sPendingSpawnsLock:Ljava/lang/Object;

    monitor-enter v11

    .line 861
    :try_start_0
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sPendingSpawnQueue:Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;

    new-instance v1, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;

    const/4 v4, 0x1

    const/4 v2, 0x0

    new-array v5, v2, [Lorg/chromium/content/browser/FileDescriptorInfo;

    const-wide/16 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v10}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;-><init>(Landroid/content/Context;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;JIZLorg/chromium/content/browser/ChildProcessLauncher$1;)V

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->enqueueLocked(Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;)V

    .line 863
    monitor-exit v11

    .line 864
    return-void

    .line 863
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static freeConnection(Lorg/chromium/content/browser/ChildProcessConnection;)V
    .locals 4
    .param p0, "connection"    # Lorg/chromium/content/browser/ChildProcessConnection;

    .prologue
    .line 352
    const-class v2, Lorg/chromium/content/browser/ChildProcessLauncher;

    monitor-enter v2

    .line 353
    :try_start_0
    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sSpareSandboxedConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    sput-object v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sSpareSandboxedConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    .line 354
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    move-object v0, p0

    .line 362
    .local v0, "conn":Lorg/chromium/content/browser/ChildProcessConnection;
    new-instance v1, Lorg/chromium/content/browser/ChildProcessLauncher$2;

    invoke-direct {v1, v0}, Lorg/chromium/content/browser/ChildProcessLauncher$2;-><init>(Lorg/chromium/content/browser/ChildProcessConnection;)V

    const-wide/16 v2, 0x1

    invoke-static {v1, v2, v3}, Lorg/chromium/base/ThreadUtils;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    .line 379
    return-void

    .line 354
    .end local v0    # "conn":Lorg/chromium/content/browser/ChildProcessConnection;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static freeConnectionAndDequeuePending(Lorg/chromium/content/browser/ChildProcessConnection;)Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;
    .locals 2
    .param p0, "conn"    # Lorg/chromium/content/browser/ChildProcessConnection;

    .prologue
    .line 382
    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->sPendingSpawnsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 383
    :try_start_0
    invoke-interface {p0}, Lorg/chromium/content/browser/ChildProcessConnection;->isInSandbox()Z

    move-result v0

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessLauncher;->getConnectionAllocator(Z)Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->free(Lorg/chromium/content/browser/ChildProcessConnection;)V

    .line 384
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sPendingSpawnQueue:Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->dequeueLocked()Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getConnectionAllocator(Z)Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;
    .locals 1
    .param p0, "inSandbox"    # Z

    .prologue
    .line 279
    if-eqz p0, :cond_0

    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sSandboxedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sPrivilegedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    goto :goto_0
.end method

.method private static getLinkerParamsForNewConnection()Lorg/chromium/content/app/ChromiumLinkerParams;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x1

    .line 305
    sget-boolean v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sLinkerInitialized:Z

    if-nez v1, :cond_1

    .line 306
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->isUsed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getInstance()Lorg/chromium/base/library_loader/Linker;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/base/library_loader/Linker;->getBaseLoadAddress()J

    move-result-wide v2

    sput-wide v2, Lorg/chromium/content/browser/ChildProcessLauncher;->sLinkerLoadAddress:J

    .line 308
    sget-wide v2, Lorg/chromium/content/browser/ChildProcessLauncher;->sLinkerLoadAddress:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_0

    .line 309
    const-string v1, "ChildProcLauncher"

    const-string v2, "Shared RELRO support disabled!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    :cond_0
    sput-boolean v4, Lorg/chromium/content/browser/ChildProcessLauncher;->sLinkerInitialized:Z

    .line 315
    :cond_1
    sget-wide v2, Lorg/chromium/content/browser/ChildProcessLauncher;->sLinkerLoadAddress:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 326
    .local v7, "waitForSharedRelros":Z
    :goto_0
    return-object v1

    .line 318
    .end local v7    # "waitForSharedRelros":Z
    :cond_2
    const/4 v7, 0x1

    .line 319
    .restart local v7    # "waitForSharedRelros":Z
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->areTestsEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 320
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getInstance()Lorg/chromium/base/library_loader/Linker;

    move-result-object v0

    .line 321
    .local v0, "linker":Lorg/chromium/base/library_loader/Linker;
    new-instance v1, Lorg/chromium/content/app/ChromiumLinkerParams;

    sget-wide v2, Lorg/chromium/content/browser/ChildProcessLauncher;->sLinkerLoadAddress:J

    invoke-virtual {v0}, Lorg/chromium/base/library_loader/Linker;->getTestRunnerClassNameForTesting()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/chromium/base/library_loader/Linker;->getImplementationForTesting()I

    move-result v6

    invoke-direct/range {v1 .. v6}, Lorg/chromium/content/app/ChromiumLinkerParams;-><init>(JZLjava/lang/String;I)V

    goto :goto_0

    .line 326
    .end local v0    # "linker":Lorg/chromium/base/library_loader/Linker;
    :cond_3
    new-instance v1, Lorg/chromium/content/app/ChromiumLinkerParams;

    sget-wide v2, Lorg/chromium/content/browser/ChildProcessLauncher;->sLinkerLoadAddress:J

    invoke-direct {v1, v2, v3, v4}, Lorg/chromium/content/app/ChromiumLinkerParams;-><init>(JZ)V

    goto :goto_0
.end method

.method private static getNumberOfServices(Landroid/content/Context;Z)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inSandbox"    # Z

    .prologue
    .line 233
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 234
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static {}, Lorg/chromium/content/browser/ChildProcessCreationParams;->get()Lorg/chromium/content/browser/ChildProcessCreationParams;

    move-result-object v1

    .line 236
    .local v1, "childProcessCreationParams":Lorg/chromium/content/browser/ChildProcessCreationParams;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ChildProcessCreationParams;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 238
    .local v5, "packageName":Ljava/lang/String;
    :goto_0
    const/16 v7, 0x80

    invoke-virtual {v4, v5, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 240
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_2

    const-string v7, "org.chromium.content.browser.NUM_SANDBOXED_SERVICES"

    :goto_1
    const/4 v9, -0x1

    invoke-virtual {v8, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 242
    .local v3, "numServices":I
    if-eqz p1, :cond_0

    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v7

    const-string v8, "num-sandboxed-services"

    invoke-virtual {v7, v8}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 245
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v7

    const-string v8, "num-sandboxed-services"

    invoke-virtual {v7, v8}, Lorg/chromium/base/CommandLine;->getSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 247
    .local v6, "value":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_0

    .line 249
    :try_start_1
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .line 256
    .end local v6    # "value":Ljava/lang/String;
    :cond_0
    :goto_2
    if-gez v3, :cond_3

    .line 257
    :try_start_2
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Illegal meta data value for number of child services"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 260
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "childProcessCreationParams":Lorg/chromium/content/browser/ChildProcessCreationParams;
    .end local v3    # "numServices":I
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v5    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 261
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Could not get application info"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 236
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "childProcessCreationParams":Lorg/chromium/content/browser/ChildProcessCreationParams;
    .restart local v4    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 240
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "packageName":Ljava/lang/String;
    :cond_2
    const-string v7, "org.chromium.content.browser.NUM_PRIVILEGED_SERVICES"

    goto :goto_1

    .line 250
    .restart local v3    # "numServices":I
    .restart local v6    # "value":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 251
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v7, "ChildProcLauncher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The value of --num-sandboxed-services is formatted wrongly: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 259
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "value":Ljava/lang/String;
    :cond_3
    return v3
.end method

.method private static getSurfaceTextureSurface(II)Lorg/chromium/content/common/SurfaceWrapper;
    .locals 5
    .param p0, "surfaceTextureId"    # I
    .param p1, "clientId"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 478
    new-instance v0, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 480
    .local v0, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    sget-object v2, Lorg/chromium/content/browser/ChildProcessLauncher;->sSurfaceTextureSurfaceMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 481
    .local v1, "surface":Landroid/view/Surface;
    if-nez v1, :cond_0

    .line 482
    const-string v2, "ChildProcLauncher"

    const-string v3, "Invalid Id for surface texture."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 483
    const/4 v2, 0x0

    .line 486
    :goto_0
    return-object v2

    .line 485
    :cond_0
    sget-boolean v2, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 486
    :cond_1
    new-instance v2, Lorg/chromium/content/common/SurfaceWrapper;

    invoke-direct {v2, v1}, Lorg/chromium/content/common/SurfaceWrapper;-><init>(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method private static getViewSurface(I)Landroid/view/Surface;
    .locals 5
    .param p0, "surfaceId"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 437
    sget-object v2, Lorg/chromium/content/browser/ChildProcessLauncher;->sViewSurfaceMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 438
    .local v0, "surface":Landroid/view/Surface;
    if-nez v0, :cond_1

    .line 439
    const-string v2, "ChildProcLauncher"

    const-string v3, "Invalid surfaceId."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 446
    .end local v0    # "surface":Landroid/view/Surface;
    :cond_0
    :goto_0
    return-object v0

    .line 442
    .restart local v0    # "surface":Landroid/view/Surface;
    :cond_1
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 443
    const-string v2, "ChildProcLauncher"

    const-string v3, "Requested surface is not valid."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 444
    goto :goto_0
.end method

.method private static initConnectionAllocatorsIfNecessary(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 266
    const-class v1, Lorg/chromium/content/browser/ChildProcessLauncher;

    monitor-enter v1

    .line 267
    :try_start_0
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sSandboxedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {p0, v3}, Lorg/chromium/content/browser/ChildProcessLauncher;->getNumberOfServices(Landroid/content/Context;Z)I

    move-result v3

    invoke-direct {v0, v2, v3}, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;-><init>(ZI)V

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sSandboxedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    .line 271
    :cond_0
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sPrivilegedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    if-nez v0, :cond_1

    .line 272
    new-instance v0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lorg/chromium/content/browser/ChildProcessLauncher;->getNumberOfServices(Landroid/content/Context;Z)I

    move-result v3

    invoke-direct {v0, v2, v3}, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;-><init>(ZI)V

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sPrivilegedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    .line 275
    :cond_1
    monitor-exit v1

    .line 276
    return-void

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static isApplicationInForeground()Z
    .locals 1

    .prologue
    .line 539
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sApplicationInForeground:Z

    return v0
.end method

.method private static isOomProtected(I)Z
    .locals 1
    .param p0, "pid"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 420
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    invoke-interface {v0, p0}, Lorg/chromium/content/browser/BindingManager;->isOomProtected(I)Z

    move-result v0

    return v0
.end method

.method static logPidWarning(ILjava/lang/String;)V
    .locals 5
    .param p0, "pid"    # I
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 845
    if-lez p0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncher;->nativeIsSingleProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 846
    const-string v0, "ChildProcLauncher"

    const-string v1, "%s, pid=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 848
    :cond_0
    return-void
.end method

.method private static makeFdInfo(IIZJJ)Lorg/chromium/content/browser/FileDescriptorInfo;
    .locals 9
    .param p0, "id"    # I
    .param p1, "fd"    # I
    .param p2, "autoClose"    # Z
    .param p3, "offset"    # J
    .param p5, "size"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 563
    if-eqz p2, :cond_0

    .line 565
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 574
    .local v3, "pFd":Landroid/os/ParcelFileDescriptor;
    :goto_0
    new-instance v1, Lorg/chromium/content/browser/FileDescriptorInfo;

    move v2, p0

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lorg/chromium/content/browser/FileDescriptorInfo;-><init>(ILandroid/os/ParcelFileDescriptor;JJ)V

    .end local v3    # "pFd":Landroid/os/ParcelFileDescriptor;
    :goto_1
    return-object v1

    .line 568
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .restart local v3    # "pFd":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    .line 569
    .end local v3    # "pFd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 570
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ChildProcLauncher"

    const-string v2, "Invalid FD provided for process connection, aborting connection."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 571
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static native nativeEstablishSurfacePeer(ILandroid/view/Surface;II)V
.end method

.method private static native nativeIsSingleProcess()Z
.end method

.method private static native nativeOnChildProcessStarted(JI)V
.end method

.method public static onBroughtToForeground()V
    .locals 1

    .prologue
    .line 531
    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sApplicationInForeground:Z

    .line 532
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    invoke-interface {v0}, Lorg/chromium/content/browser/BindingManager;->onBroughtToForeground()V

    .line 533
    return-void
.end method

.method public static onSentToBackground()V
    .locals 1

    .prologue
    .line 510
    const/4 v0, 0x0

    sput-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sApplicationInForeground:Z

    .line 511
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    invoke-interface {v0}, Lorg/chromium/content/browser/BindingManager;->onSentToBackground()V

    .line 512
    return-void
.end method

.method static pendingSpawnsCountForTesting()I
    .locals 2
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 882
    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->sPendingSpawnsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 883
    :try_start_0
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sPendingSpawnQueue:Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->sizeLocked()I

    move-result v0

    monitor-exit v1

    return v0

    .line 884
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static registerSurfaceTextureSurface(IILandroid/view/Surface;)V
    .locals 3
    .param p0, "surfaceTextureId"    # I
    .param p1, "clientId"    # I
    .param p2, "surface"    # Landroid/view/Surface;

    .prologue
    .line 451
    new-instance v0, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 452
    .local v0, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sSurfaceTextureSurfaceMap:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    return-void
.end method

.method private static registerViewSurface(ILandroid/view/Surface;)V
    .locals 2
    .param p0, "surfaceId"    # I
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 425
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to register invalid Surface."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_0
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sViewSurfaceMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    return-void
.end method

.method public static setBindingManagerForTesting(Lorg/chromium/content/browser/BindingManager;)V
    .locals 0
    .param p0, "manager"    # Lorg/chromium/content/browser/BindingManager;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 414
    sput-object p0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    .line 415
    return-void
.end method

.method public static setInForeground(IZ)V
    .locals 1
    .param p0, "pid"    # I
    .param p1, "inForeground"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 495
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    invoke-interface {v0, p0, p1}, Lorg/chromium/content/browser/BindingManager;->setInForeground(IZ)V

    .line 496
    return-void
.end method

.method private static start(Landroid/content/Context;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;J)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "commandLine"    # [Ljava/lang/String;
    .param p2, "childProcessId"    # I
    .param p3, "filesToBeMapped"    # [Lorg/chromium/content/browser/FileDescriptorInfo;
    .param p4, "clientContext"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 591
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 593
    :cond_0
    const/4 v6, 0x0

    .line 594
    .local v6, "callbackType":I
    const/4 v7, 0x1

    .line 595
    .local v7, "inSandbox":Z
    const-string v0, "type"

    invoke-static {p1, v0}, Lorg/chromium/content/common/ContentSwitches;->getSwitchValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 597
    .local v8, "processType":Ljava/lang/String;
    const-string v0, "renderer"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 598
    const/4 v6, 0x2

    :cond_1
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 609
    invoke-static/range {v0 .. v7}, Lorg/chromium/content/browser/ChildProcessLauncher;->startInternal(Landroid/content/Context;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;JIZ)V

    .line 611
    return-void

    .line 599
    :cond_2
    const-string v0, "gpu-process"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 600
    const/4 v6, 0x1

    .line 601
    const/4 v7, 0x0

    goto :goto_0

    .line 602
    :cond_3
    const-string v0, "utility"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 604
    const/4 v6, 0x3

    goto :goto_0

    .line 606
    :cond_4
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static startDownloadProcessIfNecessary(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "commandLine"    # [Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 624
    sget-boolean v4, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-ge v4, v5, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 625
    :cond_0
    const-string v4, "type"

    invoke-static {p1, v4}, Lorg/chromium/content/common/ContentSwitches;->getSwitchValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 627
    .local v3, "processType":Ljava/lang/String;
    sget-boolean v4, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    const-string v4, "download"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 629
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 630
    .local v1, "intent":Landroid/content/Intent;
    const-class v4, Lorg/chromium/content/app/DownloadProcessService;

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 631
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 632
    const-string v4, "com.google.android.apps.chrome.extra.command_line"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 633
    const/4 v4, 0x0

    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getInstance()Lorg/chromium/base/library_loader/Linker;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/base/library_loader/Linker;->getSharedRelros()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lorg/chromium/content/browser/ChildProcessLauncher;->createsServiceBundle([Ljava/lang/String;[Lorg/chromium/content/browser/FileDescriptorInfo;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 636
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "com.google.android.apps.chrome.extra.child_process_callback"

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lorg/chromium/content/browser/ChildProcessLauncher;->createCallback(II)Lorg/chromium/content/common/IChildProcessCallback;

    move-result-object v5

    invoke-interface {v5}, Lorg/chromium/content/common/IChildProcessCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 638
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 639
    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncher;->getLinkerParamsForNewConnection()Lorg/chromium/content/app/ChromiumLinkerParams;

    move-result-object v2

    .line 640
    .local v2, "linkerParams":Lorg/chromium/content/app/ChromiumLinkerParams;
    if-eqz v2, :cond_2

    .line 641
    invoke-virtual {v2, v1}, Lorg/chromium/content/app/ChromiumLinkerParams;->addIntentExtras(Landroid/content/Intent;)V

    .line 643
    :cond_2
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 644
    return-void
.end method

.method private static startInternal(Landroid/content/Context;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;JIZ)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "commandLine"    # [Ljava/lang/String;
    .param p2, "childProcessId"    # I
    .param p3, "filesToBeMapped"    # [Lorg/chromium/content/browser/FileDescriptorInfo;
    .param p4, "clientContext"    # J
    .param p6, "callbackType"    # I
    .param p7, "inSandbox"    # Z

    .prologue
    .line 655
    :try_start_0
    const-string v6, "ChildProcessLauncher.startInternal"

    invoke-static {v6}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 657
    const/4 v5, 0x0

    .line 658
    .local v5, "allocatedConnection":Lorg/chromium/content/browser/ChildProcessConnection;
    const-class v7, Lorg/chromium/content/browser/ChildProcessLauncher;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 659
    if-eqz p7, :cond_0

    .line 660
    :try_start_1
    sget-object v5, Lorg/chromium/content/browser/ChildProcessLauncher;->sSpareSandboxedConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    .line 661
    const/4 v6, 0x0

    sput-object v6, Lorg/chromium/content/browser/ChildProcessLauncher;->sSpareSandboxedConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    .line 663
    :cond_0
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 664
    if-nez v5, :cond_3

    .line 665
    const/4 v15, 0x0

    .line 666
    .local v15, "alwaysInForeground":Z
    const/4 v6, 0x1

    move/from16 v0, p6

    if-ne v0, v6, :cond_1

    const/4 v15, 0x1

    .line 667
    :cond_1
    :try_start_2
    sget-object v16, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->sPendingSpawnsLock:Ljava/lang/Object;

    monitor-enter v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 668
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p7

    invoke-static {v0, v1, v2, v15}, Lorg/chromium/content/browser/ChildProcessLauncher;->allocateBoundConnection(Landroid/content/Context;[Ljava/lang/String;ZZ)Lorg/chromium/content/browser/ChildProcessConnection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v4

    .line 670
    .end local v5    # "allocatedConnection":Lorg/chromium/content/browser/ChildProcessConnection;
    .local v4, "allocatedConnection":Lorg/chromium/content/browser/ChildProcessConnection;
    if-nez v4, :cond_2

    .line 671
    :try_start_4
    const-string v6, "ChildProcLauncher"

    const-string v7, "Allocation of new service failed. Queuing up pending spawn."

    invoke-static {v6, v7}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    sget-object v17, Lorg/chromium/content/browser/ChildProcessLauncher;->sPendingSpawnQueue:Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;

    new-instance v5, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;

    const/4 v14, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    move-wide/from16 v10, p4

    move/from16 v12, p6

    move/from16 v13, p7

    invoke-direct/range {v5 .. v14}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;-><init>(Landroid/content/Context;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;JIZLorg/chromium/content/browser/ChildProcessLauncher$1;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->enqueueLocked(Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;)V

    .line 675
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 685
    const-string v6, "ChildProcessLauncher.startInternal"

    invoke-static {v6}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    move-object v5, v4

    .line 687
    .end local v4    # "allocatedConnection":Lorg/chromium/content/browser/ChildProcessConnection;
    .end local v15    # "alwaysInForeground":Z
    .restart local v5    # "allocatedConnection":Lorg/chromium/content/browser/ChildProcessConnection;
    :goto_0
    return-void

    .line 663
    :catchall_0
    move-exception v6

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 685
    .end local v5    # "allocatedConnection":Lorg/chromium/content/browser/ChildProcessConnection;
    :catchall_1
    move-exception v6

    const-string v7, "ChildProcessLauncher.startInternal"

    invoke-static {v7}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v6

    .line 677
    .restart local v4    # "allocatedConnection":Lorg/chromium/content/browser/ChildProcessConnection;
    .restart local v15    # "alwaysInForeground":Z
    :cond_2
    :try_start_7
    monitor-exit v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object v5, v4

    .line 680
    .end local v4    # "allocatedConnection":Lorg/chromium/content/browser/ChildProcessConnection;
    .end local v15    # "alwaysInForeground":Z
    .restart local v5    # "allocatedConnection":Lorg/chromium/content/browser/ChildProcessConnection;
    :cond_3
    :try_start_8
    const-string v6, "ChildProcLauncher"

    const-string v7, "Setting up connection to process: slot=%d"

    invoke-interface {v5}, Lorg/chromium/content/browser/ChildProcessConnection;->getServiceNumber()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p6

    move-wide/from16 v10, p4

    .line 682
    invoke-static/range {v5 .. v11}, Lorg/chromium/content/browser/ChildProcessLauncher;->triggerConnectionSetup(Lorg/chromium/content/browser/ChildProcessConnection;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;IJ)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 685
    const-string v6, "ChildProcessLauncher.startInternal"

    invoke-static {v6}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    goto :goto_0

    .line 677
    .restart local v15    # "alwaysInForeground":Z
    :catchall_2
    move-exception v6

    :goto_1
    :try_start_9
    monitor-exit v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .end local v5    # "allocatedConnection":Lorg/chromium/content/browser/ChildProcessConnection;
    .restart local v4    # "allocatedConnection":Lorg/chromium/content/browser/ChildProcessConnection;
    :catchall_3
    move-exception v6

    move-object v5, v4

    .end local v4    # "allocatedConnection":Lorg/chromium/content/browser/ChildProcessConnection;
    .restart local v5    # "allocatedConnection":Lorg/chromium/content/browser/ChildProcessConnection;
    goto :goto_1
.end method

.method public static startModerateBindingManagement(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "moderateBindingTillBackgrounded"    # Z

    .prologue
    .line 523
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lorg/chromium/content/browser/ChildProcessLauncher;->getNumberOfServices(Landroid/content/Context;Z)I

    move-result v1

    invoke-interface {v0, p0, v1, p1}, Lorg/chromium/content/browser/BindingManager;->startModerateBindingManagement(Landroid/content/Context;IZ)V

    .line 525
    return-void
.end method

.method static stop(I)V
    .locals 4
    .param p0, "pid"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 748
    const-string v1, "ChildProcLauncher"

    const-string v2, "stopping child connection: pid=%d"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 749
    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sServiceMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ChildProcessConnection;

    .line 750
    .local v0, "connection":Lorg/chromium/content/browser/ChildProcessConnection;
    if-nez v0, :cond_0

    .line 751
    const-string v1, "Tried to stop non-existent connection"

    invoke-static {p0, v1}, Lorg/chromium/content/browser/ChildProcessLauncher;->logPidWarning(ILjava/lang/String;)V

    .line 757
    :goto_0
    return-void

    .line 754
    :cond_0
    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    invoke-interface {v1, p0}, Lorg/chromium/content/browser/BindingManager;->clearConnection(I)V

    .line 755
    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->stop()V

    .line 756
    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessLauncher;->freeConnection(Lorg/chromium/content/browser/ChildProcessConnection;)V

    goto :goto_0
.end method

.method static triggerConnectionSetup(Lorg/chromium/content/browser/ChildProcessConnection;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;IJ)V
    .locals 7
    .param p0, "connection"    # Lorg/chromium/content/browser/ChildProcessConnection;
    .param p1, "commandLine"    # [Ljava/lang/String;
    .param p2, "childProcessId"    # I
    .param p3, "filesToBeMapped"    # [Lorg/chromium/content/browser/FileDescriptorInfo;
    .param p4, "callbackType"    # I
    .param p5, "clientContext"    # J
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 714
    new-instance v4, Lorg/chromium/content/browser/ChildProcessLauncher$3;

    invoke-direct {v4, p5, p6, p4, p0}, Lorg/chromium/content/browser/ChildProcessLauncher$3;-><init>(JILorg/chromium/content/browser/ChildProcessConnection;)V

    .line 733
    .local v4, "connectionCallback":Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 734
    :cond_0
    invoke-static {p2, p4}, Lorg/chromium/content/browser/ChildProcessLauncher;->createCallback(II)Lorg/chromium/content/common/IChildProcessCallback;

    move-result-object v3

    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getInstance()Lorg/chromium/base/library_loader/Linker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/base/library_loader/Linker;->getSharedRelros()Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-interface/range {v0 .. v5}, Lorg/chromium/content/browser/ChildProcessConnection;->setupConnection([Ljava/lang/String;[Lorg/chromium/content/browser/FileDescriptorInfo;Lorg/chromium/content/common/IChildProcessCallback;Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;Landroid/os/Bundle;)V

    .line 739
    return-void
.end method

.method private static unregisterSurfaceTextureSurface(II)V
    .locals 4
    .param p0, "surfaceTextureId"    # I
    .param p1, "clientId"    # I

    .prologue
    .line 456
    new-instance v0, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 457
    .local v0, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    sget-object v2, Lorg/chromium/content/browser/ChildProcessLauncher;->sSurfaceTextureSurfaceMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 458
    .local v1, "surface":Landroid/view/Surface;
    if-nez v1, :cond_0

    .line 462
    :goto_0
    return-void

    .line 460
    :cond_0
    sget-boolean v2, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 461
    :cond_1
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    goto :goto_0
.end method

.method private static unregisterViewSurface(I)V
    .locals 2
    .param p0, "surfaceId"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 432
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sViewSurfaceMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    return-void
.end method

.method public static warmUp(Landroid/content/Context;Lorg/chromium/content/browser/ChildProcessCreationParams;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Lorg/chromium/content/browser/ChildProcessCreationParams;

    .prologue
    .line 550
    invoke-static {p1}, Lorg/chromium/content/browser/ChildProcessCreationParams;->set(Lorg/chromium/content/browser/ChildProcessCreationParams;)V

    .line 551
    const-class v1, Lorg/chromium/content/browser/ChildProcessLauncher;

    monitor-enter v1

    .line 552
    :try_start_0
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 556
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 553
    :cond_0
    :try_start_1
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sSpareSandboxedConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    if-nez v0, :cond_1

    .line 554
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v3}, Lorg/chromium/content/browser/ChildProcessLauncher;->allocateBoundConnection(Landroid/content/Context;[Ljava/lang/String;ZZ)Lorg/chromium/content/browser/ChildProcessConnection;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sSpareSandboxedConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    .line 556
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 557
    return-void
.end method
