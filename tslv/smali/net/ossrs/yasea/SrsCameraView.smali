.class public Lnet/ossrs/yasea/SrsCameraView;
.super Landroid/opengl/GLSurfaceView;
.source "SrsCameraView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/ossrs/yasea/SrsCameraView$PreviewCallback;
    }
.end annotation


# instance fields
.field private mCamId:I

.field private mCamera:Landroid/hardware/Camera;

.field private mGLIntBufferCache:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/nio/IntBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mGLPreviewBuffer:Ljava/nio/ByteBuffer;

.field private mInputAspectRatio:F

.field private mOESTextureId:I

.field private mOutputAspectRatio:F

.field private mPrevCb:Lnet/ossrs/yasea/SrsCameraView$PreviewCallback;

.field private mPreviewHeight:I

.field private mPreviewOrientation:I

.field private mPreviewRotation:I

.field private mPreviewWidth:I

.field private mProjectionMatrix:[F

.field private mSurfaceHeight:I

.field private mSurfaceMatrix:[F

.field private mSurfaceWidth:I

.field private mTransformMatrix:[F

.field private magicFilter:Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private worker:Ljava/lang/Thread;

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/ossrs/yasea/SrsCameraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, -0x1

    const/16 v1, 0x10

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput v2, p0, Lnet/ossrs/yasea/SrsCameraView;->mOESTextureId:I

    .line 42
    new-array v0, v1, [F

    iput-object v0, p0, Lnet/ossrs/yasea/SrsCameraView;->mProjectionMatrix:[F

    .line 43
    new-array v0, v1, [F

    iput-object v0, p0, Lnet/ossrs/yasea/SrsCameraView;->mSurfaceMatrix:[F

    .line 44
    new-array v0, v1, [F

    iput-object v0, p0, Lnet/ossrs/yasea/SrsCameraView;->mTransformMatrix:[F

    .line 48
    iput v2, p0, Lnet/ossrs/yasea/SrsCameraView;->mCamId:I

    .line 49
    const/16 v0, 0x5a

    iput v0, p0, Lnet/ossrs/yasea/SrsCameraView;->mPreviewRotation:I

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lnet/ossrs/yasea/SrsCameraView;->mPreviewOrientation:I

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/ossrs/yasea/SrsCameraView;->writeLock:Ljava/lang/Object;

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lnet/ossrs/yasea/SrsCameraView;->mGLIntBufferCache:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 64
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lnet/ossrs/yasea/SrsCameraView;->setEGLContextClientVersion(I)V

    .line 65
    invoke-virtual {p0, p0}, Lnet/ossrs/yasea/SrsCameraView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/ossrs/yasea/SrsCameraView;->setRenderMode(I)V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lnet/ossrs/yasea/SrsCameraView;)Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsCameraView;

    .prologue
    .line 31
    iget-object v0, p0, Lnet/ossrs/yasea/SrsCameraView;->magicFilter:Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;

    return-object v0
.end method

.method static synthetic access$002(Lnet/ossrs/yasea/SrsCameraView;Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;)Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;
    .locals 0
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsCameraView;
    .param p1, "x1"    # Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;

    .prologue
    .line 31
    iput-object p1, p0, Lnet/ossrs/yasea/SrsCameraView;->magicFilter:Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;

    return-object p1
.end method

.method static synthetic access$100(Lnet/ossrs/yasea/SrsCameraView;)I
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsCameraView;

    .prologue
    .line 31
    iget v0, p0, Lnet/ossrs/yasea/SrsCameraView;->mPreviewWidth:I

    return v0
.end method

.method static synthetic access$1000(Lnet/ossrs/yasea/SrsCameraView;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsCameraView;

    .prologue
    .line 31
    iget-object v0, p0, Lnet/ossrs/yasea/SrsCameraView;->worker:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$200(Lnet/ossrs/yasea/SrsCameraView;)I
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsCameraView;

    .prologue
    .line 31
    iget v0, p0, Lnet/ossrs/yasea/SrsCameraView;->mPreviewHeight:I

    return v0
.end method

.method static synthetic access$300(Lnet/ossrs/yasea/SrsCameraView;)I
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsCameraView;

    .prologue
    .line 31
    iget v0, p0, Lnet/ossrs/yasea/SrsCameraView;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$400(Lnet/ossrs/yasea/SrsCameraView;)I
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsCameraView;

    .prologue
    .line 31
    iget v0, p0, Lnet/ossrs/yasea/SrsCameraView;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$500(Lnet/ossrs/yasea/SrsCameraView;)I
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsCameraView;

    .prologue
    .line 31
    iget v0, p0, Lnet/ossrs/yasea/SrsCameraView;->mOESTextureId:I

    return v0
.end method

.method static synthetic access$502(Lnet/ossrs/yasea/SrsCameraView;I)I
    .locals 0
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsCameraView;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lnet/ossrs/yasea/SrsCameraView;->mOESTextureId:I

    return p1
.end method

.method static synthetic access$600(Lnet/ossrs/yasea/SrsCameraView;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsCameraView;

    .prologue
    .line 31
    iget-object v0, p0, Lnet/ossrs/yasea/SrsCameraView;->mGLIntBufferCache:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic access$700(Lnet/ossrs/yasea/SrsCameraView;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsCameraView;

    .prologue
    .line 31
    iget-object v0, p0, Lnet/ossrs/yasea/SrsCameraView;->mGLPreviewBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$800(Lnet/ossrs/yasea/SrsCameraView;)Lnet/ossrs/yasea/SrsCameraView$PreviewCallback;
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsCameraView;

    .prologue
    .line 31
    iget-object v0, p0, Lnet/ossrs/yasea/SrsCameraView;->mPrevCb:Lnet/ossrs/yasea/SrsCameraView$PreviewCallback;

    return-object v0
.end method

.method static synthetic access$900(Lnet/ossrs/yasea/SrsCameraView;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lnet/ossrs/yasea/SrsCameraView;

    .prologue
    .line 31
    iget-object v0, p0, Lnet/ossrs/yasea/SrsCameraView;->writeLock:Ljava/lang/Object;

    return-object v0
.end method

.method private adaptFpsRange(ILjava/util/List;)[I
    .locals 9
    .param p1, "expectedFps"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<[I>;)[I"
        }
    .end annotation

    .prologue
    .local p2, "fpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 351
    mul-int/lit16 p1, p1, 0x3e8

    .line 352
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 353
    .local v0, "closestRange":[I
    aget v4, v0, v7

    sub-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    aget v5, v0, v8

    sub-int/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int v2, v4, v5

    .line 354
    .local v2, "measure":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 355
    .local v3, "range":[I
    aget v5, v3, v7

    if-gt v5, p1, :cond_0

    aget v5, v3, v8

    if-lt v5, p1, :cond_0

    .line 356
    aget v5, v3, v7

    sub-int/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    aget v6, v3, v8

    sub-int/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int v1, v5, v6

    .line 357
    .local v1, "curMeasure":I
    if-ge v1, v2, :cond_0

    .line 358
    move-object v0, v3

    .line 359
    move v2, v1

    goto :goto_0

    .line 363
    .end local v1    # "curMeasure":I
    .end local v3    # "range":[I
    :cond_1
    return-object v0
.end method

.method private adaptPreviewResolution(Landroid/hardware/Camera$Size;)Landroid/hardware/Camera$Size;
    .locals 8
    .param p1, "resolution"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 334
    const/high16 v1, 0x42c80000    # 100.0f

    .line 335
    .local v1, "diff":F
    iget v5, p1, Landroid/hardware/Camera$Size;->width:I

    int-to-float v5, v5

    iget v6, p1, Landroid/hardware/Camera$Size;->height:I

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 336
    .local v4, "xdy":F
    const/4 v0, 0x0

    .line 337
    .local v0, "best":Landroid/hardware/Camera$Size;
    iget-object v5, p0, Lnet/ossrs/yasea/SrsCameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 338
    .local v2, "size":Landroid/hardware/Camera$Size;
    invoke-virtual {v2, p1}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 347
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    :goto_1
    return-object v2

    .line 341
    .restart local v2    # "size":Landroid/hardware/Camera$Size;
    :cond_1
    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    int-to-float v6, v6

    iget v7, v2, Landroid/hardware/Camera$Size;->height:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    sub-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 342
    .local v3, "tmp":F
    cmpg-float v6, v3, v1

    if-gez v6, :cond_0

    .line 343
    move v1, v3

    .line 344
    move-object v0, v2

    goto :goto_0

    .end local v2    # "size":Landroid/hardware/Camera$Size;
    .end local v3    # "tmp":F
    :cond_2
    move-object v2, v0

    .line 347
    goto :goto_1
.end method

.method private deleteTextures()V
    .locals 2

    .prologue
    .line 179
    iget v0, p0, Lnet/ossrs/yasea/SrsCameraView;->mOESTextureId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 180
    new-instance v0, Lnet/ossrs/yasea/SrsCameraView$3;

    invoke-direct {v0, p0}, Lnet/ossrs/yasea/SrsCameraView$3;-><init>(Lnet/ossrs/yasea/SrsCameraView;)V

    invoke-virtual {p0, v0}, Lnet/ossrs/yasea/SrsCameraView;->queueEvent(Ljava/lang/Runnable;)V

    .line 188
    :cond_0
    return-void
.end method

.method private openCamera()Landroid/hardware/Camera;
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 307
    iget v6, p0, Lnet/ossrs/yasea/SrsCameraView;->mCamId:I

    if-gez v6, :cond_3

    .line 308
    new-instance v4, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v4}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 309
    .local v4, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v5

    .line 310
    .local v5, "numCameras":I
    const/4 v2, -0x1

    .line 311
    .local v2, "frontCamId":I
    const/4 v0, -0x1

    .line 312
    .local v0, "backCamId":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 313
    invoke-static {v3, v4}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 314
    iget v6, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v6, :cond_1

    .line 315
    move v0, v3

    .line 312
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 316
    :cond_1
    iget v6, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 317
    move v2, v3

    .line 321
    :cond_2
    if-eq v2, v8, :cond_4

    .line 322
    iput v2, p0, Lnet/ossrs/yasea/SrsCameraView;->mCamId:I

    .line 329
    .end local v0    # "backCamId":I
    .end local v2    # "frontCamId":I
    .end local v3    # "i":I
    .end local v4    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v5    # "numCameras":I
    :cond_3
    :goto_1
    iget v6, p0, Lnet/ossrs/yasea/SrsCameraView;->mCamId:I

    invoke-static {v6}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    .line 330
    .local v1, "camera":Landroid/hardware/Camera;
    return-object v1

    .line 323
    .end local v1    # "camera":Landroid/hardware/Camera;
    .restart local v0    # "backCamId":I
    .restart local v2    # "frontCamId":I
    .restart local v3    # "i":I
    .restart local v4    # "info":Landroid/hardware/Camera$CameraInfo;
    .restart local v5    # "numCameras":I
    :cond_4
    if-eq v0, v8, :cond_5

    .line 324
    iput v0, p0, Lnet/ossrs/yasea/SrsCameraView;->mCamId:I

    goto :goto_1

    .line 326
    :cond_5
    const/4 v6, 0x0

    iput v6, p0, Lnet/ossrs/yasea/SrsCameraView;->mCamId:I

    goto :goto_1
.end method


# virtual methods
.method public getCameraId()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lnet/ossrs/yasea/SrsCameraView;->mCamId:I

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 115
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 116
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 118
    iget-object v0, p0, Lnet/ossrs/yasea/SrsCameraView;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 120
    iget-object v0, p0, Lnet/ossrs/yasea/SrsCameraView;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lnet/ossrs/yasea/SrsCameraView;->mSurfaceMatrix:[F

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 121
    iget-object v0, p0, Lnet/ossrs/yasea/SrsCameraView;->mTransformMatrix:[F

    iget-object v2, p0, Lnet/ossrs/yasea/SrsCameraView;->mSurfaceMatrix:[F

    iget-object v4, p0, Lnet/ossrs/yasea/SrsCameraView;->mProjectionMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 122
    iget-object v0, p0, Lnet/ossrs/yasea/SrsCameraView;->magicFilter:Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;

    iget-object v1, p0, Lnet/ossrs/yasea/SrsCameraView;->mTransformMatrix:[F

    invoke-virtual {v0, v1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->setTextureTransformMatrix([F)V

    .line 124
    iget-object v0, p0, Lnet/ossrs/yasea/SrsCameraView;->magicFilter:Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;

    iget v1, p0, Lnet/ossrs/yasea/SrsCameraView;->mOESTextureId:I

    invoke-virtual {v0, v1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onDrawFrame(I)I

    .line 125
    iget-object v0, p0, Lnet/ossrs/yasea/SrsCameraView;->mGLIntBufferCache:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Lnet/ossrs/yasea/SrsCameraView;->magicFilter:Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;

    invoke-virtual {v1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->getGLFboBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v1, p0, Lnet/ossrs/yasea/SrsCameraView;->writeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 127
    :try_start_0
    iget-object v0, p0, Lnet/ossrs/yasea/SrsCameraView;->writeLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 128
    monitor-exit v1

    .line 129
    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 10
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 99
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 100
    iput p2, p0, Lnet/ossrs/yasea/SrsCameraView;->mSurfaceWidth:I

    .line 101
    iput p3, p0, Lnet/ossrs/yasea/SrsCameraView;->mSurfaceHeight:I

    .line 102
    iget-object v0, p0, Lnet/ossrs/yasea/SrsCameraView;->magicFilter:Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;

    invoke-virtual {v0, p2, p3}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onDisplaySizeChanged(II)V

    .line 104
    if-le p2, p3, :cond_0

    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    :goto_0
    iput v0, p0, Lnet/ossrs/yasea/SrsCameraView;->mOutputAspectRatio:F

    .line 105
    iget v0, p0, Lnet/ossrs/yasea/SrsCameraView;->mOutputAspectRatio:F

    iget v1, p0, Lnet/ossrs/yasea/SrsCameraView;->mInputAspectRatio:F

    div-float v5, v0, v1

    .line 106
    .local v5, "aspectRatio":F
    if-le p2, p3, :cond_1

    .line 107
    iget-object v0, p0, Lnet/ossrs/yasea/SrsCameraView;->mProjectionMatrix:[F

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    neg-float v4, v5

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 111
    :goto_1
    return-void

    .line 104
    .end local v5    # "aspectRatio":F
    :cond_0
    int-to-float v0, p3

    int-to-float v1, p2

    div-float/2addr v0, v1

    goto :goto_0

    .line 109
    .restart local v5    # "aspectRatio":F
    :cond_1
    iget-object v2, p0, Lnet/ossrs/yasea/SrsCameraView;->mProjectionMatrix:[F

    const/4 v3, 0x0

    neg-float v4, v5

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v9}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    goto :goto_1
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v2, 0x0

    .line 71
    const/16 v1, 0xbd0

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 72
    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 74
    new-instance v1, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;

    sget-object v2, Lcom/seu/magicfilter/utils/MagicFilterType;->NONE:Lcom/seu/magicfilter/utils/MagicFilterType;

    invoke-direct {v1, v2}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;-><init>(Lcom/seu/magicfilter/utils/MagicFilterType;)V

    iput-object v1, p0, Lnet/ossrs/yasea/SrsCameraView;->magicFilter:Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;

    .line 75
    iget-object v1, p0, Lnet/ossrs/yasea/SrsCameraView;->magicFilter:Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;

    invoke-virtual {p0}, Lnet/ossrs/yasea/SrsCameraView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->init(Landroid/content/Context;)V

    .line 76
    iget-object v1, p0, Lnet/ossrs/yasea/SrsCameraView;->magicFilter:Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;

    iget v2, p0, Lnet/ossrs/yasea/SrsCameraView;->mPreviewWidth:I

    iget v3, p0, Lnet/ossrs/yasea/SrsCameraView;->mPreviewHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInputSizeChanged(II)V

    .line 78
    invoke-static {}, Lcom/seu/magicfilter/utils/OpenGLUtils;->getExternalOESTextureID()I

    move-result v1

    iput v1, p0, Lnet/ossrs/yasea/SrsCameraView;->mOESTextureId:I

    .line 79
    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lnet/ossrs/yasea/SrsCameraView;->mOESTextureId:I

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Lnet/ossrs/yasea/SrsCameraView;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 80
    iget-object v1, p0, Lnet/ossrs/yasea/SrsCameraView;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v2, Lnet/ossrs/yasea/SrsCameraView$1;

    invoke-direct {v2, p0}, Lnet/ossrs/yasea/SrsCameraView$1;-><init>(Lnet/ossrs/yasea/SrsCameraView;)V

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 88
    iget-object v1, p0, Lnet/ossrs/yasea/SrsCameraView;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 90
    :try_start_0
    iget-object v1, p0, Lnet/ossrs/yasea/SrsCameraView;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lnet/ossrs/yasea/SrsCameraView;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "ioe":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setCameraId(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 191
    iput p1, p0, Lnet/ossrs/yasea/SrsCameraView;->mCamId:I

    .line 192
    iget v0, p0, Lnet/ossrs/yasea/SrsCameraView;->mPreviewOrientation:I

    invoke-virtual {p0, v0}, Lnet/ossrs/yasea/SrsCameraView;->setPreviewOrientation(I)V

    .line 193
    return-void
.end method

.method public setFilter(Lcom/seu/magicfilter/utils/MagicFilterType;)Z
    .locals 1
    .param p1, "type"    # Lcom/seu/magicfilter/utils/MagicFilterType;

    .prologue
    .line 156
    iget-object v0, p0, Lnet/ossrs/yasea/SrsCameraView;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 157
    const/4 v0, 0x0

    .line 175
    :goto_0
    return v0

    .line 160
    :cond_0
    new-instance v0, Lnet/ossrs/yasea/SrsCameraView$2;

    invoke-direct {v0, p0, p1}, Lnet/ossrs/yasea/SrsCameraView$2;-><init>(Lnet/ossrs/yasea/SrsCameraView;Lcom/seu/magicfilter/utils/MagicFilterType;)V

    invoke-virtual {p0, v0}, Lnet/ossrs/yasea/SrsCameraView;->queueEvent(Ljava/lang/Runnable;)V

    .line 174
    invoke-virtual {p0}, Lnet/ossrs/yasea/SrsCameraView;->requestRender()V

    .line 175
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPreviewCallback(Lnet/ossrs/yasea/SrsCameraView$PreviewCallback;)V
    .locals 0
    .param p1, "cb"    # Lnet/ossrs/yasea/SrsCameraView$PreviewCallback;

    .prologue
    .line 132
    iput-object p1, p0, Lnet/ossrs/yasea/SrsCameraView;->mPrevCb:Lnet/ossrs/yasea/SrsCameraView$PreviewCallback;

    .line 133
    return-void
.end method

.method public setPreviewOrientation(I)V
    .locals 7
    .param p1, "orientation"    # I

    .prologue
    const/16 v1, 0x5a

    const/16 v6, 0x18

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 196
    iput p1, p0, Lnet/ossrs/yasea/SrsCameraView;->mPreviewOrientation:I

    .line 197
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 198
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    iget v3, p0, Lnet/ossrs/yasea/SrsCameraView;->mCamId:I

    invoke-static {v3, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 199
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_4

    .line 200
    if-ne p1, v4, :cond_2

    .line 201
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_0

    const/16 v1, 0x10e

    :cond_0
    iput v1, p0, Lnet/ossrs/yasea/SrsCameraView;->mPreviewRotation:I

    .line 212
    :cond_1
    :goto_0
    return-void

    .line 202
    :cond_2
    if-ne p1, v5, :cond_1

    .line 203
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v6, :cond_3

    const/16 v1, 0xb4

    :goto_1
    iput v1, p0, Lnet/ossrs/yasea/SrsCameraView;->mPreviewRotation:I

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    .line 205
    :cond_4
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, v4, :cond_1

    .line 206
    if-ne p1, v4, :cond_5

    .line 207
    iput v1, p0, Lnet/ossrs/yasea/SrsCameraView;->mPreviewRotation:I

    goto :goto_0

    .line 208
    :cond_5
    if-ne p1, v5, :cond_1

    .line 209
    iput v2, p0, Lnet/ossrs/yasea/SrsCameraView;->mPreviewRotation:I

    goto :goto_0
.end method

.method public setPreviewResolution(II)[I
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 136
    invoke-virtual {p0}, Lnet/ossrs/yasea/SrsCameraView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 138
    invoke-direct {p0}, Lnet/ossrs/yasea/SrsCameraView;->openCamera()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lnet/ossrs/yasea/SrsCameraView;->mCamera:Landroid/hardware/Camera;

    .line 139
    iput p1, p0, Lnet/ossrs/yasea/SrsCameraView;->mPreviewWidth:I

    .line 140
    iput p2, p0, Lnet/ossrs/yasea/SrsCameraView;->mPreviewHeight:I

    .line 141
    new-instance v1, Landroid/hardware/Camera$Size;

    iget-object v2, p0, Lnet/ossrs/yasea/SrsCameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, p1, p2}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V

    invoke-direct {p0, v1}, Lnet/ossrs/yasea/SrsCameraView;->adaptPreviewResolution(Landroid/hardware/Camera$Size;)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 142
    .local v0, "rs":Landroid/hardware/Camera$Size;
    if-eqz v0, :cond_0

    .line 143
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lnet/ossrs/yasea/SrsCameraView;->mPreviewWidth:I

    .line 144
    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    iput v1, p0, Lnet/ossrs/yasea/SrsCameraView;->mPreviewHeight:I

    .line 146
    :cond_0
    iget-object v1, p0, Lnet/ossrs/yasea/SrsCameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iget v2, p0, Lnet/ossrs/yasea/SrsCameraView;->mPreviewWidth:I

    iget v3, p0, Lnet/ossrs/yasea/SrsCameraView;->mPreviewHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 148
    iget v1, p0, Lnet/ossrs/yasea/SrsCameraView;->mPreviewWidth:I

    iget v2, p0, Lnet/ossrs/yasea/SrsCameraView;->mPreviewHeight:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lnet/ossrs/yasea/SrsCameraView;->mGLPreviewBuffer:Ljava/nio/ByteBuffer;

    .line 149
    iget v1, p0, Lnet/ossrs/yasea/SrsCameraView;->mPreviewWidth:I

    iget v2, p0, Lnet/ossrs/yasea/SrsCameraView;->mPreviewHeight:I

    if-le v1, v2, :cond_1

    iget v1, p0, Lnet/ossrs/yasea/SrsCameraView;->mPreviewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lnet/ossrs/yasea/SrsCameraView;->mPreviewHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    :goto_0
    iput v1, p0, Lnet/ossrs/yasea/SrsCameraView;->mInputAspectRatio:F

    .line 152
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lnet/ossrs/yasea/SrsCameraView;->mPreviewWidth:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lnet/ossrs/yasea/SrsCameraView;->mPreviewHeight:I

    aput v3, v1, v2

    return-object v1

    .line 149
    :cond_1
    iget v1, p0, Lnet/ossrs/yasea/SrsCameraView;->mPreviewHeight:I

    int-to-float v1, v1

    iget v2, p0, Lnet/ossrs/yasea/SrsCameraView;->mPreviewWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_0
.end method

.method public startCamera()Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 219
    new-instance v4, Ljava/lang/Thread;

    new-instance v7, Lnet/ossrs/yasea/SrsCameraView$4;

    invoke-direct {v7, p0}, Lnet/ossrs/yasea/SrsCameraView$4;-><init>(Lnet/ossrs/yasea/SrsCameraView;)V

    invoke-direct {v4, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v4, p0, Lnet/ossrs/yasea/SrsCameraView;->worker:Ljava/lang/Thread;

    .line 240
    iget-object v4, p0, Lnet/ossrs/yasea/SrsCameraView;->worker:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 242
    iget-object v4, p0, Lnet/ossrs/yasea/SrsCameraView;->mCamera:Landroid/hardware/Camera;

    if-nez v4, :cond_0

    .line 243
    invoke-direct {p0}, Lnet/ossrs/yasea/SrsCameraView;->openCamera()Landroid/hardware/Camera;

    move-result-object v4

    iput-object v4, p0, Lnet/ossrs/yasea/SrsCameraView;->mCamera:Landroid/hardware/Camera;

    .line 244
    iget-object v4, p0, Lnet/ossrs/yasea/SrsCameraView;->mCamera:Landroid/hardware/Camera;

    if-nez v4, :cond_0

    move v4, v5

    .line 282
    :goto_0
    return v4

    .line 249
    :cond_0
    iget-object v4, p0, Lnet/ossrs/yasea/SrsCameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 251
    .local v1, "params":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    .line 252
    .local v3, "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 253
    const-string v4, "continuous-picture"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 254
    const-string v4, "continuous-picture"

    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 260
    :cond_1
    :goto_1
    iget v4, p0, Lnet/ossrs/yasea/SrsCameraView;->mPreviewWidth:I

    iget v7, p0, Lnet/ossrs/yasea/SrsCameraView;->mPreviewHeight:I

    invoke-virtual {v1, v4, v7}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 261
    iget v4, p0, Lnet/ossrs/yasea/SrsCameraView;->mPreviewWidth:I

    iget v7, p0, Lnet/ossrs/yasea/SrsCameraView;->mPreviewHeight:I

    invoke-virtual {v1, v4, v7}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 262
    const/16 v4, 0x18

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v4, v7}, Lnet/ossrs/yasea/SrsCameraView;->adaptFpsRange(ILjava/util/List;)[I

    move-result-object v2

    .line 263
    .local v2, "range":[I
    aget v4, v2, v5

    aget v7, v2, v6

    invoke-virtual {v1, v4, v7}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 264
    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 265
    const-string v4, "off"

    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 266
    const-string v4, "auto"

    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 267
    const-string v4, "auto"

    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 269
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 271
    :cond_2
    iget-object v4, p0, Lnet/ossrs/yasea/SrsCameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 273
    iget-object v4, p0, Lnet/ossrs/yasea/SrsCameraView;->mCamera:Landroid/hardware/Camera;

    iget v5, p0, Lnet/ossrs/yasea/SrsCameraView;->mPreviewRotation:I

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 276
    :try_start_0
    iget-object v4, p0, Lnet/ossrs/yasea/SrsCameraView;->mCamera:Landroid/hardware/Camera;

    iget-object v5, p0, Lnet/ossrs/yasea/SrsCameraView;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_2
    iget-object v4, p0, Lnet/ossrs/yasea/SrsCameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->startPreview()V

    move v4, v6

    .line 282
    goto/16 :goto_0

    .line 256
    .end local v2    # "range":[I
    :cond_3
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_1

    .line 277
    .restart local v2    # "range":[I
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public stopCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 286
    iget-object v1, p0, Lnet/ossrs/yasea/SrsCameraView;->worker:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lnet/ossrs/yasea/SrsCameraView;->worker:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 289
    :try_start_0
    iget-object v1, p0, Lnet/ossrs/yasea/SrsCameraView;->worker:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    iget-object v1, p0, Lnet/ossrs/yasea/SrsCameraView;->mGLIntBufferCache:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 295
    iput-object v2, p0, Lnet/ossrs/yasea/SrsCameraView;->worker:Ljava/lang/Thread;

    .line 298
    :cond_0
    iget-object v1, p0, Lnet/ossrs/yasea/SrsCameraView;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    .line 299
    iget-object v1, p0, Lnet/ossrs/yasea/SrsCameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 300
    iget-object v1, p0, Lnet/ossrs/yasea/SrsCameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 301
    iput-object v2, p0, Lnet/ossrs/yasea/SrsCameraView;->mCamera:Landroid/hardware/Camera;

    .line 303
    :cond_1
    return-void

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 292
    iget-object v1, p0, Lnet/ossrs/yasea/SrsCameraView;->worker:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method
