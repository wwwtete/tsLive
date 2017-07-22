.class public Lorg/chromium/content/app/ChildProcessService;
.super Landroid/app/Service;
.source "ChildProcessService.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "content"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static final EMPTY_FILE_DESCRIPTOR_INFO:[Lorg/chromium/content/browser/FileDescriptorInfo;

.field private static final MAIN_THREAD_NAME:Ljava/lang/String; = "ChildProcessMain"

.field private static final TAG:Ljava/lang/String; = "ChildProcessService"

.field private static sContext:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivitySemaphore:Ljava/util/concurrent/Semaphore;

.field private final mBinder:Lorg/chromium/content/common/IChildProcessService$Stub;

.field private mCallback:Lorg/chromium/content/common/IChildProcessCallback;

.field private mCommandLineParams:[Ljava/lang/String;

.field private mCpuCount:I

.field private mCpuFeatures:J

.field private mFdInfos:[Lorg/chromium/content/browser/FileDescriptorInfo;

.field private mIsBound:Z

.field private mLibraryInitialized:Z

.field private mLibraryProcessType:I

.field private mLinkerParams:Lorg/chromium/content/app/ChromiumLinkerParams;

.field private mMainThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    const-class v0, Lorg/chromium/content/app/ChildProcessService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/app/ChildProcessService;->$assertionsDisabled:Z

    .line 55
    new-array v0, v1, [Lorg/chromium/content/browser/FileDescriptorInfo;

    sput-object v0, Lorg/chromium/content/app/ChildProcessService;->EMPTY_FILE_DESCRIPTOR_INFO:[Lorg/chromium/content/browser/FileDescriptorInfo;

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/chromium/content/app/ChildProcessService;->sContext:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    :cond_0
    move v0, v1

    .line 50
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 72
    iput-boolean v0, p0, Lorg/chromium/content/app/ChildProcessService;->mLibraryInitialized:Z

    .line 74
    iput-boolean v0, p0, Lorg/chromium/content/app/ChildProcessService;->mIsBound:Z

    .line 76
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mActivitySemaphore:Ljava/util/concurrent/Semaphore;

    .line 92
    new-instance v0, Lorg/chromium/content/app/ChildProcessService$1;

    invoke-direct {v0, p0}, Lorg/chromium/content/app/ChildProcessService$1;-><init>(Lorg/chromium/content/app/ChildProcessService;)V

    iput-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mBinder:Lorg/chromium/content/common/IChildProcessService$Stub;

    return-void
.end method

.method static synthetic access$002(Lorg/chromium/content/app/ChildProcessService;Lorg/chromium/content/common/IChildProcessCallback;)Lorg/chromium/content/common/IChildProcessCallback;
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessService;
    .param p1, "x1"    # Lorg/chromium/content/common/IChildProcessCallback;

    .prologue
    .line 52
    iput-object p1, p0, Lorg/chromium/content/app/ChildProcessService;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    return-object p1
.end method

.method static synthetic access$100(Lorg/chromium/content/app/ChildProcessService;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessService;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mMainThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/chromium/content/app/ChildProcessService;)I
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessService;

    .prologue
    .line 52
    iget v0, p0, Lorg/chromium/content/app/ChildProcessService;->mCpuCount:I

    return v0
.end method

.method static synthetic access$1100(Lorg/chromium/content/app/ChildProcessService;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessService;

    .prologue
    .line 52
    iget-wide v0, p0, Lorg/chromium/content/app/ChildProcessService;->mCpuFeatures:J

    return-wide v0
.end method

.method static synthetic access$1200(Lorg/chromium/content/app/ChildProcessService;IJ)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessService;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 52
    invoke-static {p0, p1, p2, p3}, Lorg/chromium/content/app/ChildProcessService;->nativeInitChildProcess(Lorg/chromium/content/app/ChildProcessService;IJ)V

    return-void
.end method

.method static synthetic access$1300(Lorg/chromium/content/app/ChildProcessService;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessService;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mActivitySemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$1400()V
    .locals 0

    .prologue
    .line 52
    invoke-static {}, Lorg/chromium/content/app/ChildProcessService;->nativeExitChildProcess()V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/content/app/ChildProcessService;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessService;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mCommandLineParams:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/content/app/ChildProcessService;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessService;

    .prologue
    .line 52
    iget-boolean v0, p0, Lorg/chromium/content/app/ChildProcessService;->mIsBound:Z

    return v0
.end method

.method static synthetic access$400(Lorg/chromium/content/app/ChildProcessService;)Lorg/chromium/base/library_loader/Linker;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessService;

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/chromium/content/app/ChildProcessService;->getLinker()Lorg/chromium/base/library_loader/Linker;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/chromium/content/app/ChildProcessService;)Lorg/chromium/content/app/ChromiumLinkerParams;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessService;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mLinkerParams:Lorg/chromium/content/app/ChromiumLinkerParams;

    return-object v0
.end method

.method static synthetic access$600(Lorg/chromium/content/app/ChildProcessService;)I
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessService;

    .prologue
    .line 52
    iget v0, p0, Lorg/chromium/content/app/ChildProcessService;->mLibraryProcessType:I

    return v0
.end method

.method static synthetic access$702(Lorg/chromium/content/app/ChildProcessService;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessService;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lorg/chromium/content/app/ChildProcessService;->mLibraryInitialized:Z

    return p1
.end method

.method static synthetic access$800(Lorg/chromium/content/app/ChildProcessService;)[Lorg/chromium/content/browser/FileDescriptorInfo;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/app/ChildProcessService;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mFdInfos:[Lorg/chromium/content/browser/FileDescriptorInfo;

    return-object v0
.end method

.method static synthetic access$900(IIJJ)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # J

    .prologue
    .line 52
    invoke-static/range {p0 .. p5}, Lorg/chromium/content/app/ChildProcessService;->nativeRegisterGlobalFileDescriptor(IIJJ)V

    return-void
.end method

.method private createSurfaceTextureSurface(IILandroid/graphics/SurfaceTexture;)V
    .locals 6
    .param p1, "surfaceTextureId"    # I
    .param p2, "clientId"    # I
    .param p3, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 373
    iget-object v2, p0, Lorg/chromium/content/app/ChildProcessService;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    if-nez v2, :cond_0

    .line 374
    const-string v2, "ChildProcessService"

    const-string v3, "No callback interface has been provided."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    :goto_0
    return-void

    .line 378
    :cond_0
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 380
    .local v1, "surface":Landroid/view/Surface;
    :try_start_0
    iget-object v2, p0, Lorg/chromium/content/app/ChildProcessService;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    invoke-interface {v2, p1, p2, v1}, Lorg/chromium/content/common/IChildProcessCallback;->registerSurfaceTextureSurface(IILandroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :goto_1
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    goto :goto_0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ChildProcessService"

    const-string v3, "Unable to call registerSurfaceTextureSurface: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private destroySurfaceTextureSurface(II)V
    .locals 5
    .param p1, "surfaceTextureId"    # I
    .param p2, "clientId"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 390
    iget-object v1, p0, Lorg/chromium/content/app/ChildProcessService;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    if-nez v1, :cond_0

    .line 391
    const-string v1, "ChildProcessService"

    const-string v2, "No callback interface has been provided."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    :goto_0
    return-void

    .line 396
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/app/ChildProcessService;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    invoke-interface {v1, p1, p2}, Lorg/chromium/content/common/IChildProcessCallback;->unregisterSurfaceTextureSurface(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ChildProcessService"

    const-string v2, "Unable to call unregisterSurfaceTextureSurface: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private establishSurfaceTexturePeer(ILjava/lang/Object;II)V
    .locals 7
    .param p1, "pid"    # I
    .param p2, "surfaceObject"    # Ljava/lang/Object;
    .param p3, "primaryID"    # I
    .param p4, "secondaryID"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 324
    iget-object v3, p0, Lorg/chromium/content/app/ChildProcessService;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    if-nez v3, :cond_1

    .line 325
    const-string v3, "ChildProcessService"

    const-string v4, "No callback interface has been provided."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    .end local p2    # "surfaceObject":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 329
    .restart local p2    # "surfaceObject":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x0

    .line 330
    .local v2, "surface":Landroid/view/Surface;
    const/4 v1, 0x0

    .line 331
    .local v1, "needRelease":Z
    instance-of v3, p2, Landroid/view/Surface;

    if-eqz v3, :cond_2

    move-object v2, p2

    .line 332
    check-cast v2, Landroid/view/Surface;

    .line 341
    .end local p2    # "surfaceObject":Ljava/lang/Object;
    :goto_1
    :try_start_0
    iget-object v3, p0, Lorg/chromium/content/app/ChildProcessService;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    invoke-interface {v3, p1, v2, p3, p4}, Lorg/chromium/content/common/IChildProcessCallback;->establishSurfacePeer(ILandroid/view/Surface;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    if-eqz v1, :cond_0

    .line 347
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    goto :goto_0

    .line 333
    .restart local p2    # "surfaceObject":Ljava/lang/Object;
    :cond_2
    instance-of v3, p2, Landroid/graphics/SurfaceTexture;

    if-eqz v3, :cond_3

    .line 334
    new-instance v2, Landroid/view/Surface;

    .end local v2    # "surface":Landroid/view/Surface;
    check-cast p2, Landroid/graphics/SurfaceTexture;

    .end local p2    # "surfaceObject":Ljava/lang/Object;
    invoke-direct {v2, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 335
    .restart local v2    # "surface":Landroid/view/Surface;
    const/4 v1, 0x1

    goto :goto_1

    .line 337
    .restart local p2    # "surfaceObject":Ljava/lang/Object;
    :cond_3
    const-string v3, "ChildProcessService"

    const-string v4, "Not a valid surfaceObject: %s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v6

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 342
    .end local p2    # "surfaceObject":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "ChildProcessService"

    const-string v4, "Unable to call establishSurfaceTexturePeer: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    if-eqz v1, :cond_0

    .line 347
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    goto :goto_0

    .line 346
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_4

    .line 347
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    :cond_4
    throw v3
.end method

.method static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lorg/chromium/content/app/ChildProcessService;->sContext:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method private getLinker()Lorg/chromium/base/library_loader/Linker;
    .locals 2

    .prologue
    .line 80
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->areTestsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    sget-boolean v0, Lorg/chromium/content/app/ChildProcessService;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mLinkerParams:Lorg/chromium/content/app/ChromiumLinkerParams;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mLinkerParams:Lorg/chromium/content/app/ChromiumLinkerParams;

    iget v0, v0, Lorg/chromium/content/app/ChromiumLinkerParams;->mLinkerImplementationForTesting:I

    iget-object v1, p0, Lorg/chromium/content/app/ChildProcessService;->mLinkerParams:Lorg/chromium/content/app/ChromiumLinkerParams;

    iget-object v1, v1, Lorg/chromium/content/app/ChromiumLinkerParams;->mTestRunnerClassNameForTesting:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/chromium/base/library_loader/Linker;->setupForTesting(ILjava/lang/String;)V

    .line 88
    :cond_1
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getInstance()Lorg/chromium/base/library_loader/Linker;

    move-result-object v0

    return-object v0
.end method

.method private getSurfaceTextureSurface(I)Landroid/view/Surface;
    .locals 6
    .param p1, "surfaceTextureId"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 405
    iget-object v2, p0, Lorg/chromium/content/app/ChildProcessService;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    if-nez v2, :cond_0

    .line 406
    const-string v2, "ChildProcessService"

    const-string v3, "No callback interface has been provided."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    :goto_0
    return-object v1

    .line 411
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/chromium/content/app/ChildProcessService;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    invoke-interface {v2, p1}, Lorg/chromium/content/common/IChildProcessCallback;->getSurfaceTextureSurface(I)Lorg/chromium/content/common/SurfaceWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/common/SurfaceWrapper;->getSurface()Landroid/view/Surface;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ChildProcessService"

    const-string v3, "Unable to call getSurfaceTextureSurface: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getViewSurface(I)Landroid/view/Surface;
    .locals 7
    .param p1, "surfaceId"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 355
    iget-object v3, p0, Lorg/chromium/content/app/ChildProcessService;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    if-nez v3, :cond_1

    .line 356
    const-string v3, "ChildProcessService"

    const-string v4, "No callback interface has been provided."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    :cond_0
    :goto_0
    return-object v2

    .line 361
    :cond_1
    :try_start_0
    iget-object v3, p0, Lorg/chromium/content/app/ChildProcessService;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    invoke-interface {v3, p1}, Lorg/chromium/content/common/IChildProcessCallback;->getViewSurface(I)Lorg/chromium/content/common/SurfaceWrapper;

    move-result-object v1

    .line 362
    .local v1, "wrapper":Lorg/chromium/content/common/SurfaceWrapper;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/chromium/content/common/SurfaceWrapper;->getSurface()Landroid/view/Surface;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 363
    .end local v1    # "wrapper":Lorg/chromium/content/common/SurfaceWrapper;
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ChildProcessService"

    const-string v4, "Unable to call getViewSurface: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static native nativeExitChildProcess()V
.end method

.method private static native nativeInitChildProcess(Lorg/chromium/content/app/ChildProcessService;IJ)V
.end method

.method private static native nativeRegisterGlobalFileDescriptor(IIJJ)V
.end method

.method private native nativeShutdownMainThread()V
.end method


# virtual methods
.method getServiceInfo(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 275
    invoke-virtual {p0}, Lorg/chromium/content/app/ChildProcessService;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 276
    iget-object v4, p0, Lorg/chromium/content/app/ChildProcessService;->mMainThread:Ljava/lang/Thread;

    monitor-enter v4

    .line 279
    :try_start_0
    iget-object v3, p0, Lorg/chromium/content/app/ChildProcessService;->mCommandLineParams:[Ljava/lang/String;

    if-nez v3, :cond_0

    .line 280
    const-string v3, "com.google.android.apps.chrome.extra.command_line"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/chromium/content/app/ChildProcessService;->mCommandLineParams:[Ljava/lang/String;

    .line 284
    :cond_0
    sget-boolean v3, Lorg/chromium/content/app/ChildProcessService;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/chromium/content/app/ChildProcessService;->mCommandLineParams:[Ljava/lang/String;

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 307
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 285
    :cond_1
    :try_start_1
    const-string v3, "com.google.android.apps.chrome.extra.cpu_count"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/chromium/content/app/ChildProcessService;->mCpuCount:I

    .line 286
    const-string v3, "com.google.android.apps.chrome.extra.cpu_features"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/chromium/content/app/ChildProcessService;->mCpuFeatures:J

    .line 287
    sget-boolean v3, Lorg/chromium/content/app/ChildProcessService;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    iget v3, p0, Lorg/chromium/content/app/ChildProcessService;->mCpuCount:I

    if-gtz v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 288
    :cond_2
    const-string v3, "com.google.android.apps.chrome.extra.extraFiles"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 290
    .local v0, "fdInfosAsParcelable":[Landroid/os/Parcelable;
    if-eqz v0, :cond_4

    .line 293
    array-length v3, v0

    new-array v3, v3, [Lorg/chromium/content/browser/FileDescriptorInfo;

    iput-object v3, p0, Lorg/chromium/content/app/ChildProcessService;->mFdInfos:[Lorg/chromium/content/browser/FileDescriptorInfo;

    .line 294
    const/4 v3, 0x0

    iget-object v5, p0, Lorg/chromium/content/app/ChildProcessService;->mFdInfos:[Lorg/chromium/content/browser/FileDescriptorInfo;

    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v0, v3, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    :goto_0
    const-string v3, "org.chromium.base.android.linker.shared_relros"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 302
    .local v2, "sharedRelros":Landroid/os/Bundle;
    if-eqz v2, :cond_3

    .line 303
    invoke-direct {p0}, Lorg/chromium/content/app/ChildProcessService;->getLinker()Lorg/chromium/base/library_loader/Linker;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/chromium/base/library_loader/Linker;->useSharedRelros(Landroid/os/Bundle;)V

    .line 304
    const/4 v2, 0x0

    .line 306
    :cond_3
    iget-object v3, p0, Lorg/chromium/content/app/ChildProcessService;->mMainThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 307
    monitor-exit v4

    .line 308
    return-void

    .line 296
    .end local v2    # "sharedRelros":Landroid/os/Bundle;
    :cond_4
    iget-object v3, p0, Lorg/chromium/content/app/ChildProcessService;->mCommandLineParams:[Ljava/lang/String;

    const-string v5, "type"

    invoke-static {v3, v5}, Lorg/chromium/content/common/ContentSwitches;->getSwitchValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, "processType":Ljava/lang/String;
    sget-boolean v3, Lorg/chromium/content/app/ChildProcessService;->$assertionsDisabled:Z

    if-nez v3, :cond_5

    const-string v3, "download"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 299
    :cond_5
    sget-object v3, Lorg/chromium/content/app/ChildProcessService;->EMPTY_FILE_DESCRIPTOR_INFO:[Lorg/chromium/content/browser/FileDescriptorInfo;

    iput-object v3, p0, Lorg/chromium/content/app/ChildProcessService;->mFdInfos:[Lorg/chromium/content/browser/FileDescriptorInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected initializeParams(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 257
    iget-object v1, p0, Lorg/chromium/content/app/ChildProcessService;->mMainThread:Ljava/lang/Thread;

    monitor-enter v1

    .line 258
    :try_start_0
    const-string v0, "com.google.android.apps.chrome.extra.command_line"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mCommandLineParams:[Ljava/lang/String;

    .line 262
    new-instance v0, Lorg/chromium/content/app/ChromiumLinkerParams;

    invoke-direct {v0, p1}, Lorg/chromium/content/app/ChromiumLinkerParams;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mLinkerParams:Lorg/chromium/content/app/ChromiumLinkerParams;

    .line 263
    invoke-static {p1}, Lorg/chromium/content/browser/ChildProcessCreationParams;->getLibraryProcessType(Landroid/content/Intent;)I

    move-result v0

    iput v0, p0, Lorg/chromium/content/app/ChildProcessService;->mLibraryProcessType:I

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/app/ChildProcessService;->mIsBound:Z

    .line 265
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mMainThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 266
    monitor-exit v1

    .line 267
    return-void

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 247
    invoke-virtual {p0}, Lorg/chromium/content/app/ChildProcessService;->stopSelf()V

    .line 248
    invoke-virtual {p0, p1}, Lorg/chromium/content/app/ChildProcessService;->initializeParams(Landroid/content/Intent;)V

    .line 249
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mBinder:Lorg/chromium/content/common/IChildProcessService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 113
    const-string v0, "ChildProcessService"

    const-string v1, "Creating new ChildProcessService pid=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    sget-object v0, Lorg/chromium/content/app/ChildProcessService;->sContext:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Illegal child process reuse."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    sget-object v0, Lorg/chromium/content/app/ChildProcessService;->sContext:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 118
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 120
    invoke-virtual {p0}, Lorg/chromium/content/app/ChildProcessService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/base/ContextUtils;->initApplicationContext(Landroid/content/Context;)V

    .line 122
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/chromium/content/app/ChildProcessService$2;

    invoke-direct {v1, p0}, Lorg/chromium/content/app/ChildProcessService$2;-><init>(Lorg/chromium/content/app/ChildProcessService;)V

    const-string v2, "ChildProcessMain"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mMainThread:Ljava/lang/Thread;

    .line 209
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mMainThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 210
    return-void
.end method

.method public onDestroy()V
    .locals 5
    .annotation build Lorg/chromium/base/annotations/SuppressFBWarnings;
        value = {
            "DM_EXIT"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 215
    const-string v0, "ChildProcessService"

    const-string v1, "Destroying ChildProcessService pid=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 217
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mActivitySemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 239
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v1, p0, Lorg/chromium/content/app/ChildProcessService;->mMainThread:Ljava/lang/Thread;

    monitor-enter v1

    .line 227
    :goto_1
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/content/app/ChildProcessService;->mLibraryInitialized:Z

    if-nez v0, :cond_1

    .line 230
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService;->mMainThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 232
    :catch_0
    move-exception v0

    .line 235
    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    invoke-direct {p0}, Lorg/chromium/content/app/ChildProcessService;->nativeShutdownMainThread()V

    goto :goto_0

    .line 235
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
