.class public Lorg/chromium/media/VideoCaptureCamera2;
.super Lorg/chromium/media/VideoCapture;
.source "VideoCaptureCamera2.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/VideoCaptureCamera2$1;,
        Lorg/chromium/media/VideoCaptureCamera2$CameraState;,
        Lorg/chromium/media/VideoCaptureCamera2$CrPhotoReaderListener;,
        Lorg/chromium/media/VideoCaptureCamera2$CrPhotoSessionListener;,
        Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;,
        Lorg/chromium/media/VideoCaptureCamera2$CrPreviewSessionListener;,
        Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "media"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCapture"

.field private static final kNanoSecondsToFps:D = 1.0E-9


# instance fields
.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraState:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

.field private final mCameraStateLock:Ljava/lang/Object;

.field private mCapturedData:[B

.field private mPreviewSession:Landroid/hardware/camera2/CameraCaptureSession;


# direct methods
.method constructor <init>(Landroid/content/Context;IJ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "nativeVideoCaptureDeviceAndroid"    # J

    .prologue
    .line 451
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/media/VideoCapture;-><init>(Landroid/content/Context;IJ)V

    .line 225
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    .line 232
    sget-object v0, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->STOPPED:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    iput-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraState:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    .line 452
    return-void
.end method

.method static synthetic access$002(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/VideoCaptureCamera2;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 42
    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$100(Lorg/chromium/media/VideoCaptureCamera2;Lorg/chromium/media/VideoCaptureCamera2$CameraState;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/VideoCaptureCamera2;
    .param p1, "x1"    # Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/chromium/media/VideoCaptureCamera2;->changeCameraStateAndNotify(Lorg/chromium/media/VideoCaptureCamera2$CameraState;)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/media/VideoCaptureCamera2;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/VideoCaptureCamera2;

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/chromium/media/VideoCaptureCamera2;->createPreviewObjects()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/VideoCaptureCamera2;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method static synthetic access$302(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/VideoCaptureCamera2;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 42
    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$400(Lorg/chromium/media/VideoCaptureCamera2;)[B
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/VideoCaptureCamera2;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCapturedData:[B

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/Image;[B)V
    .locals 0
    .param p0, "x0"    # Landroid/media/Image;
    .param p1, "x1"    # [B

    .prologue
    .line 42
    invoke-static {p0, p1}, Lorg/chromium/media/VideoCaptureCamera2;->readImageIntoBuffer(Landroid/media/Image;[B)V

    return-void
.end method

.method static synthetic access$600(Lorg/chromium/media/VideoCaptureCamera2;J)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/VideoCaptureCamera2;
    .param p1, "x1"    # J

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lorg/chromium/media/VideoCaptureCamera2;->notifyTakePhotoError(J)V

    return-void
.end method

.method private changeCameraStateAndNotify(Lorg/chromium/media/VideoCaptureCamera2$CameraState;)V
    .locals 2
    .param p1, "state"    # Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    .prologue
    .line 350
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 351
    :try_start_0
    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraState:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    .line 352
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 353
    monitor-exit v1

    .line 354
    return-void

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private createPreviewObjects()Z
    .locals 13

    .prologue
    .line 253
    const-string v9, "VideoCapture"

    const-string v10, "createPreviewObjects"

    invoke-static {v9, v10}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v9, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v9, :cond_0

    const/4 v9, 0x0

    .line 305
    :goto_0
    return v9

    .line 258
    :cond_0
    iget-object v9, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual {v9}, Lorg/chromium/media/VideoCaptureFormat;->getWidth()I

    move-result v9

    iget-object v10, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual {v10}, Lorg/chromium/media/VideoCaptureFormat;->getHeight()I

    move-result v10

    iget-object v11, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual {v11}, Lorg/chromium/media/VideoCaptureFormat;->getPixelFormat()I

    move-result v11

    const/4 v12, 0x2

    invoke-static {v9, v10, v11, v12}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v3

    .line 260
    .local v3, "imageReader":Landroid/media/ImageReader;
    new-instance v8, Landroid/os/HandlerThread;

    const-string v9, "CameraPreview"

    invoke-direct {v8, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 261
    .local v8, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    .line 262
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 263
    .local v0, "backgroundHandler":Landroid/os/Handler;
    new-instance v4, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;

    const/4 v9, 0x0

    invoke-direct {v4, p0, v9}, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;-><init>(Lorg/chromium/media/VideoCaptureCamera2;Lorg/chromium/media/VideoCaptureCamera2$1;)V

    .line 264
    .local v4, "imageReaderListener":Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;
    invoke-virtual {v3, v4, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 268
    const/4 v6, 0x0

    .line 270
    .local v6, "previewRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_start_0
    iget-object v9, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v6

    .line 276
    if-nez v6, :cond_1

    .line 277
    const-string v9, "VideoCapture"

    const-string v10, "previewRequestBuilder error"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    const/4 v9, 0x0

    goto :goto_0

    .line 272
    :catch_0
    move-exception v2

    .line 273
    .local v2, "ex":Ljava/lang/Exception;
    :goto_1
    const-string v9, "VideoCapture"

    const-string v10, "createCaptureRequest: "

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    invoke-static {v9, v10, v11}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    const/4 v9, 0x0

    goto :goto_0

    .line 281
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 284
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 285
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 287
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 288
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 292
    new-instance v7, Ljava/util/ArrayList;

    const/4 v9, 0x1

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 293
    .local v7, "surfaceList":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-virtual {v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    .line 296
    .local v5, "previewRequest":Landroid/hardware/camera2/CaptureRequest;
    new-instance v1, Lorg/chromium/media/VideoCaptureCamera2$CrPreviewSessionListener;

    invoke-direct {v1, p0, v5}, Lorg/chromium/media/VideoCaptureCamera2$CrPreviewSessionListener;-><init>(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/CaptureRequest;)V

    .line 299
    .local v1, "captureSessionListener":Lorg/chromium/media/VideoCaptureCamera2$CrPreviewSessionListener;
    :try_start_1
    iget-object v9, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v1, v10}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3

    .line 305
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 300
    :catch_1
    move-exception v2

    .line 301
    .restart local v2    # "ex":Ljava/lang/Exception;
    :goto_2
    const-string v9, "VideoCapture"

    const-string v10, "createCaptureSession: "

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    invoke-static {v9, v10, v11}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 300
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_2

    .line 272
    .end local v1    # "captureSessionListener":Lorg/chromium/media/VideoCaptureCamera2$CrPreviewSessionListener;
    .end local v5    # "previewRequest":Landroid/hardware/camera2/CaptureRequest;
    .end local v7    # "surfaceList":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    :catch_4
    move-exception v2

    goto :goto_1

    :catch_5
    move-exception v2

    goto :goto_1
.end method

.method private static getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 6
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 236
    const-string v2, "camera"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 239
    .local v1, "manager":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 243
    :goto_0
    return-object v2

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "ex":Landroid/hardware/camera2/CameraAccessException;
    const-string v2, "VideoCapture"

    const-string v3, "getCameraCharacteristics: "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static getCaptureApiType(ILandroid/content/Context;)I
    .locals 4
    .param p0, "id"    # I
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 378
    invoke-static {p1, p0}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 380
    .local v0, "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    if-nez v0, :cond_0

    .line 381
    const/4 v2, 0x5

    .line 394
    :goto_0
    return v2

    .line 384
    :cond_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 386
    .local v1, "supportedHWLevel":I
    packed-switch v1, :pswitch_data_0

    move v2, v3

    .line 394
    goto :goto_0

    :pswitch_0
    move v2, v3

    .line 388
    goto :goto_0

    .line 390
    :pswitch_1
    const/4 v2, 0x2

    goto :goto_0

    .line 392
    :pswitch_2
    const/4 v2, 0x3

    goto :goto_0

    .line 386
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getDeviceSupportedFormats(Landroid/content/Context;I)[Lorg/chromium/media/VideoCaptureFormat;
    .locals 27
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 408
    invoke-static/range {p0 .. p1}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    .line 410
    .local v4, "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    if-nez v4, :cond_0

    const/16 v22, 0x0

    .line 447
    :goto_0
    return-object v22

    .line 412
    :cond_0
    sget-object v22, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    .line 416
    .local v6, "capabilities":[I
    const/16 v16, 0x0

    .line 417
    .local v16, "minFrameDurationAvailable":Z
    move-object v2, v6

    .local v2, "arr$":[I
    array-length v12, v2

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_1
    if-ge v10, v12, :cond_1

    aget v5, v2, v10

    .line 418
    .local v5, "cap":I
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v5, v0, :cond_3

    .line 419
    const/16 v16, 0x1

    .line 424
    .end local v5    # "cap":I
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 425
    .local v8, "formatList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/chromium/media/VideoCaptureFormat;>;"
    sget-object v22, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 427
    .local v21, "streamMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-virtual/range {v21 .. v21}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    move-result-object v9

    .line 428
    .local v9, "formats":[I
    move-object v2, v9

    array-length v12, v2

    const/4 v10, 0x0

    move v11, v10

    .end local v2    # "arr$":[I
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .local v11, "i$":I
    :goto_2
    if-ge v11, v12, :cond_7

    aget v7, v2, v11

    .line 429
    .local v7, "format":I
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v20

    .line 430
    .local v20, "sizes":[Landroid/util/Size;
    if-nez v20, :cond_4

    .line 428
    .end local v11    # "i$":I
    :cond_2
    add-int/lit8 v10, v11, 0x1

    .restart local v10    # "i$":I
    move v11, v10

    .end local v10    # "i$":I
    .restart local v11    # "i$":I
    goto :goto_2

    .line 417
    .end local v7    # "format":I
    .end local v8    # "formatList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/chromium/media/VideoCaptureFormat;>;"
    .end local v9    # "formats":[I
    .end local v11    # "i$":I
    .end local v20    # "sizes":[Landroid/util/Size;
    .end local v21    # "streamMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .restart local v2    # "arr$":[I
    .restart local v5    # "cap":I
    .restart local v10    # "i$":I
    .restart local v12    # "len$":I
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 431
    .end local v2    # "arr$":[I
    .end local v5    # "cap":I
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .restart local v7    # "format":I
    .restart local v8    # "formatList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/chromium/media/VideoCaptureFormat;>;"
    .restart local v9    # "formats":[I
    .restart local v11    # "i$":I
    .restart local v20    # "sizes":[Landroid/util/Size;
    .restart local v21    # "streamMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :cond_4
    move-object/from16 v3, v20

    .local v3, "arr$":[Landroid/util/Size;
    array-length v13, v3

    .local v13, "len$":I
    const/4 v10, 0x0

    .end local v11    # "i$":I
    .restart local v10    # "i$":I
    :goto_3
    if-ge v10, v13, :cond_2

    aget-object v17, v3, v10

    .line 432
    .local v17, "size":Landroid/util/Size;
    const-wide/16 v18, 0x0

    .line 433
    .local v18, "minFrameRate":D
    if-eqz v16, :cond_6

    .line 434
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v7, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(ILandroid/util/Size;)J

    move-result-wide v14

    .line 435
    .local v14, "minFrameDuration":J
    const-wide/16 v22, 0x0

    cmp-long v22, v14, v22

    if-nez v22, :cond_5

    const-wide/16 v18, 0x0

    .line 443
    .end local v14    # "minFrameDuration":J
    :goto_4
    new-instance v22, Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getWidth()I

    move-result v23

    invoke-virtual/range {v17 .. v17}, Landroid/util/Size;->getHeight()I

    move-result v24

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v25, v0

    const/16 v26, 0x0

    invoke-direct/range {v22 .. v26}, Lorg/chromium/media/VideoCaptureFormat;-><init>(IIII)V

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 435
    .restart local v14    # "minFrameDuration":J
    :cond_5
    const-wide v22, 0x41cdcd64ffffffffL    # 9.999999999999999E8

    long-to-double v0, v14

    move-wide/from16 v24, v0

    mul-double v18, v22, v24

    goto :goto_4

    .line 441
    .end local v14    # "minFrameDuration":J
    :cond_6
    const-wide/16 v18, 0x0

    goto :goto_4

    .line 447
    .end local v3    # "arr$":[Landroid/util/Size;
    .end local v7    # "format":I
    .end local v10    # "i$":I
    .end local v13    # "len$":I
    .end local v17    # "size":Landroid/util/Size;
    .end local v18    # "minFrameRate":D
    .end local v20    # "sizes":[Landroid/util/Size;
    .restart local v11    # "i$":I
    :cond_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Lorg/chromium/media/VideoCaptureFormat;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Lorg/chromium/media/VideoCaptureFormat;

    goto/16 :goto_0
.end method

.method static getName(ILandroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # I
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 399
    invoke-static {p1, p0}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 401
    .local v0, "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 403
    :goto_0
    return-object v2

    .line 402
    :cond_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 403
    .local v1, "facing":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "camera2 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", facing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_1

    const-string v2, "front"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, "back"

    goto :goto_1
.end method

.method static getNumberOfCameras(Landroid/content/Context;)I
    .locals 6
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 365
    const-string v3, "camera"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 368
    .local v1, "manager":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v3

    array-length v2, v3
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 373
    :goto_0
    return v2

    .line 369
    :catch_0
    move-exception v0

    .line 372
    .local v0, "ex":Ljava/lang/Exception;
    :goto_1
    const-string v3, "VideoCapture"

    const-string v4, "getNumberOfCameras: getCameraIdList(): "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 369
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static isLegacyDevice(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 357
    invoke-static {p0, p1}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 359
    .local v0, "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    if-eqz v0, :cond_0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyTakePhotoError(J)V
    .locals 7
    .param p1, "callbackId"    # J

    .prologue
    .line 249
    iget-wide v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mNativeVideoCaptureDeviceAndroid:J

    const/4 v0, 0x0

    new-array v6, v0, [B

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/chromium/media/VideoCaptureCamera2;->nativeOnPhotoTaken(JJ[B)V

    .line 250
    return-void
.end method

.method private static readImageIntoBuffer(Landroid/media/Image;[B)V
    .locals 17
    .param p0, "image"    # Landroid/media/Image;
    .param p1, "data"    # [B

    .prologue
    .line 309
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v4

    .line 310
    .local v4, "imageWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v3

    .line 311
    .local v3, "imageHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v11

    .line 313
    .local v11, "planes":[Landroid/media/Image$Plane;
    const/4 v5, 0x0

    .line 314
    .local v5, "offset":I
    const/4 v8, 0x0

    .local v8, "plane":I
    :goto_0
    array-length v15, v11

    if-ge v8, v15, :cond_5

    .line 315
    aget-object v15, v11, v8

    invoke-virtual {v15}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 316
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    aget-object v15, v11, v8

    invoke-virtual {v15}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v14

    .line 320
    .local v14, "rowStride":I
    aget-object v15, v11, v8

    invoke-virtual {v15}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v7

    .line 321
    .local v7, "pixelStride":I
    if-nez v8, :cond_0

    move v10, v4

    .line 322
    .local v10, "planeWidth":I
    :goto_1
    if-nez v8, :cond_1

    move v9, v3

    .line 324
    .local v9, "planeHeight":I
    :goto_2
    const/4 v15, 0x1

    if-ne v7, v15, :cond_2

    if-ne v14, v10, :cond_2

    .line 326
    mul-int v15, v10, v9

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v5, v15}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 327
    mul-int v15, v10, v9

    add-int/2addr v5, v15

    .line 314
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 321
    .end local v9    # "planeHeight":I
    .end local v10    # "planeWidth":I
    :cond_0
    div-int/lit8 v10, v4, 0x2

    goto :goto_1

    .line 322
    .restart local v10    # "planeWidth":I
    :cond_1
    div-int/lit8 v9, v3, 0x2

    goto :goto_2

    .line 330
    .restart local v9    # "planeHeight":I
    :cond_2
    new-array v13, v14, [B

    .line 331
    .local v13, "rowData":[B
    const/4 v12, 0x0

    .local v12, "row":I
    :goto_4
    add-int/lit8 v15, v9, -0x1

    if-ge v12, v15, :cond_4

    .line 332
    const/4 v15, 0x0

    invoke-virtual {v1, v13, v15, v14}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 333
    const/4 v2, 0x0

    .local v2, "col":I
    move v6, v5

    .end local v5    # "offset":I
    .local v6, "offset":I
    :goto_5
    if-ge v2, v10, :cond_3

    .line 334
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    mul-int v15, v2, v7

    aget-byte v15, v13, v15

    aput-byte v15, p1, v6

    .line 333
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_5

    .line 331
    :cond_3
    add-int/lit8 v12, v12, 0x1

    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_4

    .line 341
    .end local v2    # "col":I
    :cond_4
    const/4 v15, 0x0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v16

    move/from16 v0, v16

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v1, v13, v15, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 342
    const/4 v2, 0x0

    .restart local v2    # "col":I
    move v6, v5

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :goto_6
    if-ge v2, v10, :cond_6

    .line 343
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    mul-int v15, v2, v7

    aget-byte v15, v13, v15

    aput-byte v15, p1, v6

    .line 342
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_6

    .line 347
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "col":I
    .end local v6    # "offset":I
    .end local v7    # "pixelStride":I
    .end local v9    # "planeHeight":I
    .end local v10    # "planeWidth":I
    .end local v12    # "row":I
    .end local v13    # "rowData":[B
    .end local v14    # "rowStride":I
    .restart local v5    # "offset":I
    :cond_5
    return-void

    .end local v5    # "offset":I
    .restart local v1    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "col":I
    .restart local v6    # "offset":I
    .restart local v7    # "pixelStride":I
    .restart local v9    # "planeHeight":I
    .restart local v10    # "planeWidth":I
    .restart local v12    # "row":I
    .restart local v13    # "rowData":[B
    .restart local v14    # "rowStride":I
    :cond_6
    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_3
.end method


# virtual methods
.method public allocate(III)Z
    .locals 17
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # I

    .prologue
    .line 456
    const-string v12, "VideoCapture"

    const-string v13, "allocate: requested (%d x %d) @%dfps"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static/range {v12 .. v16}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    monitor-enter v13

    .line 458
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraState:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    sget-object v14, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->OPENING:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    if-eq v12, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraState:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    sget-object v14, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->CONFIGURING:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    if-ne v12, v14, :cond_1

    .line 459
    :cond_0
    const-string v12, "VideoCapture"

    const-string v14, "allocate() invoked while Camera is busy opening/configuring."

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v12, v14, v15}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    const/4 v12, 0x0

    monitor-exit v13

    .line 500
    :goto_0
    return v12

    .line 462
    :cond_1
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/media/VideoCaptureCamera2;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v13, v0, Lorg/chromium/media/VideoCaptureCamera2;->mId:I

    invoke-static {v12, v13}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    .line 464
    .local v2, "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v12, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v12}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 468
    .local v10, "streamMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    const/16 v12, 0x23

    invoke-virtual {v10, v12}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v11

    .line 469
    .local v11, "supportedSizes":[Landroid/util/Size;
    if-nez v11, :cond_2

    const/4 v12, 0x0

    goto :goto_0

    .line 462
    .end local v2    # "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v10    # "streamMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .end local v11    # "supportedSizes":[Landroid/util/Size;
    :catchall_0
    move-exception v12

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12

    .line 470
    .restart local v2    # "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v10    # "streamMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .restart local v11    # "supportedSizes":[Landroid/util/Size;
    :cond_2
    const/4 v3, 0x0

    .line 471
    .local v3, "closestSupportedSize":Landroid/util/Size;
    const v8, 0x7fffffff

    .line 472
    .local v8, "minDiff":I
    move-object v1, v11

    .local v1, "arr$":[Landroid/util/Size;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_4

    aget-object v9, v1, v6

    .line 473
    .local v9, "size":Landroid/util/Size;
    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v12

    sub-int v12, v12, p1

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v13

    sub-int v13, v13, p2

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    add-int v4, v12, v13

    .line 475
    .local v4, "diff":I
    if-ge v4, v8, :cond_3

    .line 476
    move v8, v4

    .line 477
    move-object v3, v9

    .line 472
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 480
    .end local v4    # "diff":I
    .end local v9    # "size":Landroid/util/Size;
    :cond_4
    const v12, 0x7fffffff

    if-ne v8, v12, :cond_5

    .line 481
    const-string v12, "VideoCapture"

    const-string v13, "No supported resolutions."

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v12, v13, v14}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 482
    const/4 v12, 0x0

    goto :goto_0

    .line 484
    :cond_5
    const-string v12, "VideoCapture"

    const-string v13, "allocate: matched (%d x %d)"

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v12, v13, v14, v15}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 488
    new-instance v12, Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v13

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v14

    const/16 v15, 0x23

    move/from16 v0, p3

    invoke-direct {v12, v13, v14, v0, v15}, Lorg/chromium/media/VideoCaptureFormat;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    .line 490
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    iget v12, v12, Lorg/chromium/media/VideoCaptureFormat;->mWidth:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    iget v13, v13, Lorg/chromium/media/VideoCaptureFormat;->mHeight:I

    mul-int/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    iget v13, v13, Lorg/chromium/media/VideoCaptureFormat;->mPixelFormat:I

    invoke-static {v13}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v13

    mul-int/2addr v12, v13

    div-int/lit8 v5, v12, 0x8

    .line 492
    .local v5, "expectedFrameSize":I
    new-array v12, v5, [B

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/chromium/media/VideoCaptureCamera2;->mCapturedData:[B

    .line 493
    sget-object v12, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v12}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraNativeOrientation:I

    .line 497
    sget-object v12, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v12}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    const/4 v12, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lorg/chromium/media/VideoCaptureCamera2;->mInvertDeviceOrientationReadings:Z

    .line 500
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 497
    :cond_6
    const/4 v12, 0x0

    goto :goto_2
.end method

.method public deallocate()V
    .locals 2

    .prologue
    .line 598
    const-string v0, "VideoCapture"

    const-string v1, "deallocate"

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    return-void
.end method

.method public startCapture()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 505
    const-string v6, "VideoCapture"

    const-string v7, "startCapture"

    invoke-static {v6, v7}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    sget-object v6, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->OPENING:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    invoke-direct {p0, v6}, Lorg/chromium/media/VideoCaptureCamera2;->changeCameraStateAndNotify(Lorg/chromium/media/VideoCaptureCamera2$CameraState;)V

    .line 507
    iget-object v6, p0, Lorg/chromium/media/VideoCaptureCamera2;->mContext:Landroid/content/Context;

    const-string v7, "camera"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    .line 509
    .local v2, "manager":Landroid/hardware/camera2/CameraManager;
    new-instance v1, Landroid/os/Handler;

    iget-object v6, p0, Lorg/chromium/media/VideoCaptureCamera2;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 510
    .local v1, "mainHandler":Landroid/os/Handler;
    new-instance v3, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;

    const/4 v6, 0x0

    invoke-direct {v3, p0, v6}, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;-><init>(Lorg/chromium/media/VideoCaptureCamera2;Lorg/chromium/media/VideoCaptureCamera2$1;)V

    .line 512
    .local v3, "stateListener":Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;
    :try_start_0
    iget v6, p0, Lorg/chromium/media/VideoCaptureCamera2;->mId:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v3, v1}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 518
    :goto_0
    return v4

    .line 513
    :catch_0
    move-exception v0

    .line 514
    .local v0, "ex":Ljava/lang/Exception;
    :goto_1
    const-string v6, "VideoCapture"

    const-string v7, "allocate: manager.openCamera: "

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v6, v7, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v5

    .line 515
    goto :goto_0

    .line 513
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public stopCapture()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 523
    const-string v3, "VideoCapture"

    const-string v4, "stopCapture"

    invoke-static {v3, v4}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v3, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 529
    :goto_0
    :try_start_0
    iget-object v4, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraState:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    sget-object v5, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->STARTED:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraState:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    sget-object v5, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->STOPPED:Lorg/chromium/media/VideoCaptureCamera2$CameraState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v4, v5, :cond_0

    .line 531
    :try_start_1
    iget-object v4, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v4, "VideoCapture"

    const-string v5, "CaptureStartedEvent: "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 537
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 536
    :cond_0
    :try_start_3
    iget-object v4, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraState:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    sget-object v5, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->STOPPED:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    if-ne v4, v5, :cond_1

    monitor-exit v3

    .line 548
    :goto_1
    return v1

    .line 537
    :cond_1
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 540
    :try_start_4
    iget-object v3, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    .line 545
    iget-object v3, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_1

    .line 541
    :catch_1
    move-exception v0

    .line 542
    .local v0, "ex":Ljava/lang/Exception;
    :goto_2
    const-string v3, "VideoCapture"

    const-string v4, "abortCaptures: "

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v3, v4, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 543
    goto :goto_1

    .line 546
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 547
    sget-object v2, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->STOPPED:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    invoke-direct {p0, v2}, Lorg/chromium/media/VideoCaptureCamera2;->changeCameraStateAndNotify(Lorg/chromium/media/VideoCaptureCamera2$CameraState;)V

    goto :goto_1

    .line 541
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method public takePhoto(J)Z
    .locals 17
    .param p1, "callbackId"    # J

    .prologue
    .line 553
    const-string v13, "VideoCapture"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "takePhoto "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraState:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    sget-object v14, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->STARTED:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    if-eq v13, v14, :cond_1

    :cond_0
    const/4 v13, 0x0

    .line 593
    :goto_0
    return v13

    .line 556
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual {v13}, Lorg/chromium/media/VideoCaptureFormat;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual {v14}, Lorg/chromium/media/VideoCaptureFormat;->getHeight()I

    move-result v14

    const/16 v15, 0x100

    const/16 v16, 0x1

    invoke-static/range {v13 .. v16}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v6

    .line 559
    .local v6, "imageReader":Landroid/media/ImageReader;
    new-instance v12, Landroid/os/HandlerThread;

    const-string v13, "CameraPicture"

    invoke-direct {v12, v13}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 560
    .local v12, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v12}, Landroid/os/HandlerThread;->start()V

    .line 561
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v12}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-direct {v3, v13}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 563
    .local v3, "backgroundHandler":Landroid/os/Handler;
    new-instance v7, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoReaderListener;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v7, v0, v1, v2}, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoReaderListener;-><init>(Lorg/chromium/media/VideoCaptureCamera2;J)V

    .line 564
    .local v7, "photoReaderListener":Lorg/chromium/media/VideoCaptureCamera2$CrPhotoReaderListener;
    invoke-virtual {v6, v7, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 566
    new-instance v11, Ljava/util/ArrayList;

    const/4 v13, 0x1

    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 567
    .local v11, "surfaceList":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-virtual {v6}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    const/4 v9, 0x0

    .line 571
    .local v9, "photoRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 577
    if-nez v9, :cond_2

    .line 578
    const-string v13, "VideoCapture"

    const-string v14, "photoRequestBuilder error"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v13, v14, v15}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 579
    const/4 v13, 0x0

    goto :goto_0

    .line 573
    :catch_0
    move-exception v4

    .line 574
    .local v4, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v13, "VideoCapture"

    const-string v14, "mCameraDevice.createCaptureRequest() error"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v13, v14, v15}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 575
    const/4 v13, 0x0

    goto :goto_0

    .line 581
    .end local v4    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_2
    invoke-virtual {v6}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 582
    sget-object v13, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraRotation()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 584
    invoke-virtual {v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v8

    .line 585
    .local v8, "photoRequest":Landroid/hardware/camera2/CaptureRequest;
    new-instance v10, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoSessionListener;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v10, v0, v8, v1, v2}, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoSessionListener;-><init>(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/CaptureRequest;J)V

    .line 588
    .local v10, "sessionListener":Lorg/chromium/media/VideoCaptureCamera2$CrPhotoSessionListener;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v13, v11, v10, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3

    .line 593
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 589
    :catch_1
    move-exception v5

    .line 590
    .local v5, "ex":Ljava/lang/Exception;
    :goto_1
    const-string v13, "VideoCapture"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "createCaptureSession: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v13, v14, v15}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 589
    .end local v5    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    goto :goto_1

    :catch_3
    move-exception v5

    goto :goto_1
.end method
