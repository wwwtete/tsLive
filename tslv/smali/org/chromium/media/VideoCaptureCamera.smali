.class public abstract Lorg/chromium/media/VideoCaptureCamera;
.super Lorg/chromium/media/VideoCapture;
.source "VideoCaptureCamera.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xf
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/VideoCaptureCamera$1;,
        Lorg/chromium/media/VideoCaptureCamera$CrPictureCallback;,
        Lorg/chromium/media/VideoCaptureCamera$CrErrorCallback;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "media"
.end annotation


# static fields
.field protected static final GL_TEXTURE_EXTERNAL_OES:I = 0x8d65

.field private static final TAG:Ljava/lang/String; = "VideoCapture"


# instance fields
.field protected mCamera:Landroid/hardware/Camera;

.field protected mGlTextures:[I

.field protected mIsRunning:Z

.field private mPhotoTakenCallbackId:J

.field private final mPhotoTakenCallbackLock:Ljava/lang/Object;

.field protected mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected mSurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method constructor <init>(Landroid/content/Context;IJ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "nativeVideoCaptureDeviceAndroid"    # J

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/media/VideoCapture;-><init>(Landroid/content/Context;IJ)V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mPhotoTakenCallbackLock:Ljava/lang/Object;

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mPhotoTakenCallbackId:J

    .line 42
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mIsRunning:Z

    .line 46
    iput-object v2, p0, Lorg/chromium/media/VideoCaptureCamera;->mGlTextures:[I

    .line 47
    iput-object v2, p0, Lorg/chromium/media/VideoCaptureCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/media/VideoCaptureCamera;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/VideoCaptureCamera;

    .prologue
    .line 29
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mPhotoTakenCallbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/media/VideoCaptureCamera;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/media/VideoCaptureCamera;

    .prologue
    .line 29
    iget-wide v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mPhotoTakenCallbackId:J

    return-wide v0
.end method

.method static synthetic access$102(Lorg/chromium/media/VideoCaptureCamera;J)J
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/VideoCaptureCamera;
    .param p1, "x1"    # J

    .prologue
    .line 29
    iput-wide p1, p0, Lorg/chromium/media/VideoCaptureCamera;->mPhotoTakenCallbackId:J

    return-wide p1
.end method

.method protected static getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;
    .locals 5
    .param p0, "id"    # I

    .prologue
    .line 50
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 52
    .local v0, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    :try_start_0
    invoke-static {p0, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v0    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    :goto_0
    return-object v0

    .line 53
    .restart local v0    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    :catch_0
    move-exception v1

    .line 54
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v2, "VideoCapture"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCameraInfo: Camera.getCameraInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static getCameraParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;
    .locals 5
    .param p0, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 64
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 70
    :goto_0
    return-object v1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v2, "VideoCapture"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCameraParameters: android.hardware.Camera.getParameters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/Camera;->release()V

    .line 68
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public allocate(III)Z
    .locals 25
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # I

    .prologue
    .line 110
    const-string v20, "VideoCapture"

    const-string v21, "allocate: requested (%d x %d) @%dfps"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-static/range {v20 .. v24}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/chromium/media/VideoCaptureCamera;->mId:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    move-object/from16 v0, p0

    iget v0, v0, Lorg/chromium/media/VideoCaptureCamera;->mId:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lorg/chromium/media/VideoCaptureCamera;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    .line 119
    .local v3, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    if-nez v3, :cond_0

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera;->release()V

    .line 121
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    .line 122
    const/16 v20, 0x0

    .line 245
    .end local v3    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    :goto_0
    return v20

    .line 113
    :catch_0
    move-exception v7

    .line 114
    .local v7, "ex":Ljava/lang/RuntimeException;
    const-string v20, "VideoCapture"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "allocate: Camera.open: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    const/16 v20, 0x0

    goto :goto_0

    .line 124
    .end local v7    # "ex":Ljava/lang/RuntimeException;
    .restart local v3    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    :cond_0
    iget v0, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/chromium/media/VideoCaptureCamera;->mCameraNativeOrientation:I

    .line 126
    iget v0, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    move/from16 v20, v0

    if-nez v20, :cond_1

    const/16 v20, 0x1

    :goto_1
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/chromium/media/VideoCaptureCamera;->mInvertDeviceOrientationReadings:Z

    .line 128
    const-string v20, "VideoCapture"

    const-string v21, "allocate: Rotation dev=%d, cam=%d, facing back? %s"

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/media/VideoCaptureCamera;->getDeviceRotation()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lorg/chromium/media/VideoCaptureCamera;->mCameraNativeOrientation:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/chromium/media/VideoCaptureCamera;->mInvertDeviceOrientationReadings:Z

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    invoke-static/range {v20 .. v24}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lorg/chromium/media/VideoCaptureCamera;->getCameraParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v18

    .line 132
    .local v18, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v18, :cond_2

    .line 133
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    .line 134
    const/16 v20, 0x0

    goto :goto_0

    .line 126
    .end local v18    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_1
    const/16 v20, 0x0

    goto :goto_1

    .line 139
    .restart local v18    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_2
    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v14

    .line 140
    .local v14, "listFpsRange":Ljava/util/List;, "Ljava/util/List<[I>;"
    if-eqz v14, :cond_3

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v20

    if-nez v20, :cond_4

    .line 141
    :cond_3
    const-string v20, "VideoCapture"

    const-string v21, "allocate: no fps range found"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 145
    :cond_4
    move/from16 v0, p3

    mul-int/lit16 v11, v0, 0x3e8

    .line 147
    .local v11, "frameRateScaled":I
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 148
    .local v4, "chosenFpsRange":[I
    const/16 v20, 0x0

    aget v20, v4, v20

    sub-int v20, v11, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    const/16 v21, 0x1

    aget v21, v4, v21

    sub-int v21, v11, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    const/16 v20, 0x0

    aget v10, v4, v20

    .line 152
    .local v10, "frameRateNearest":I
    :goto_2
    add-int/lit16 v0, v10, 0x3e7

    move/from16 v20, v0

    move/from16 v0, v20

    div-int/lit16 v5, v0, 0x3e8

    .line 153
    .local v5, "chosenFrameRate":I
    const v9, 0x7fffffff

    .line 154
    .local v9, "fpsRangeSize":I
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 155
    .local v8, "fpsRange":[I
    const/16 v20, 0x0

    aget v20, v8, v20

    move/from16 v0, v20

    if-gt v0, v11, :cond_5

    const/16 v20, 0x1

    aget v20, v8, v20

    move/from16 v0, v20

    if-gt v11, v0, :cond_5

    const/16 v20, 0x1

    aget v20, v8, v20

    const/16 v21, 0x0

    aget v21, v8, v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    if-gt v0, v9, :cond_5

    .line 157
    move-object v4, v8

    .line 158
    move/from16 v5, p3

    .line 159
    const/16 v20, 0x1

    aget v20, v8, v20

    const/16 v21, 0x0

    aget v21, v8, v21

    sub-int v9, v20, v21

    goto :goto_3

    .line 148
    .end local v5    # "chosenFrameRate":I
    .end local v8    # "fpsRange":[I
    .end local v9    # "fpsRangeSize":I
    .end local v10    # "frameRateNearest":I
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_6
    const/16 v20, 0x1

    aget v10, v4, v20

    goto :goto_2

    .line 162
    .restart local v5    # "chosenFrameRate":I
    .restart local v9    # "fpsRangeSize":I
    .restart local v10    # "frameRateNearest":I
    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_7
    const-string v20, "VideoCapture"

    const-string v21, "allocate: fps set to %d, [%d-%d]"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x0

    aget v23, v4, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x1

    aget v24, v4, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-static/range {v20 .. v24}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v13

    .line 167
    .local v13, "listCameraSize":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const v17, 0x7fffffff

    .line 168
    .local v17, "minDiff":I
    move/from16 v16, p1

    .line 169
    .local v16, "matchedWidth":I
    move/from16 v15, p2

    .line 170
    .local v15, "matchedHeight":I
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_8
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/hardware/Camera$Size;

    .line 171
    .local v19, "size":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    sub-int v20, v20, p1

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    move-object/from16 v0, v19

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v21, v0

    sub-int v21, v21, p2

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v21

    add-int v6, v20, v21

    .line 172
    .local v6, "diff":I
    const-string v20, "VideoCapture"

    const-string v21, "allocate: supported (%d, %d), diff=%d"

    move-object/from16 v0, v19

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v19

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-static/range {v20 .. v24}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 177
    move/from16 v0, v17

    if-ge v6, v0, :cond_8

    move-object/from16 v0, v19

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    rem-int/lit8 v20, v20, 0x20

    if-nez v20, :cond_8

    .line 178
    move/from16 v17, v6

    .line 179
    move-object/from16 v0, v19

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v16, v0

    .line 180
    move-object/from16 v0, v19

    iget v15, v0, Landroid/hardware/Camera$Size;->height:I

    goto :goto_4

    .line 183
    .end local v6    # "diff":I
    .end local v19    # "size":Landroid/hardware/Camera$Size;
    :cond_9
    const v20, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 184
    const-string v20, "VideoCapture"

    const-string v21, "allocate: can not find a multiple-of-32 resolution"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 187
    :cond_a
    const-string v20, "VideoCapture"

    const-string v21, "allocate: matched (%d x %d)"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static/range {v20 .. v23}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 189
    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 190
    const-string v20, "VideoCapture"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Image stabilization supported, currently: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera$Parameters;->getVideoStabilization()Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", setting it."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 197
    :goto_5
    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v20

    const-string v21, "continuous-video"

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 199
    const-string v20, "continuous-video"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 204
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v15, v5, v2}, Lorg/chromium/media/VideoCaptureCamera;->setCaptureParameters(IIILandroid/hardware/Camera$Parameters;)V

    .line 205
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 206
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 207
    const/16 v20, 0x0

    aget v20, v4, v20

    const/16 v21, 0x1

    aget v21, v4, v21

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/media/VideoCaptureCamera;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/chromium/media/VideoCaptureFormat;->mPixelFormat:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 210
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 218
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/chromium/media/VideoCaptureCamera;->mGlTextures:[I

    .line 220
    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/media/VideoCaptureCamera;->mGlTextures:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 221
    const v20, 0x8d65

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/media/VideoCaptureCamera;->mGlTextures:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    invoke-static/range {v20 .. v21}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 223
    const v20, 0x8d65

    const/16 v21, 0x2801

    const v22, 0x46180400    # 9729.0f

    invoke-static/range {v20 .. v22}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 225
    const v20, 0x8d65

    const/16 v21, 0x2800

    const v22, 0x46180400    # 9729.0f

    invoke-static/range {v20 .. v22}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 228
    const v20, 0x8d65

    const/16 v21, 0x2802

    const v22, 0x812f

    invoke-static/range {v20 .. v22}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 230
    const v20, 0x8d65

    const/16 v21, 0x2803

    const v22, 0x812f

    invoke-static/range {v20 .. v22}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 233
    new-instance v20, Landroid/graphics/SurfaceTexture;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/media/VideoCaptureCamera;->mGlTextures:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    invoke-direct/range {v20 .. v21}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/chromium/media/VideoCaptureCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/media/VideoCaptureCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 236
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/media/VideoCaptureCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    new-instance v21, Lorg/chromium/media/VideoCaptureCamera$CrErrorCallback;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lorg/chromium/media/VideoCaptureCamera$CrErrorCallback;-><init>(Lorg/chromium/media/VideoCaptureCamera;Lorg/chromium/media/VideoCaptureCamera$1;)V

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 244
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/media/VideoCaptureCamera;->allocateBuffers()V

    .line 245
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 194
    :cond_b
    const-string v20, "VideoCapture"

    const-string v21, "Image stabilization not supported."

    invoke-static/range {v20 .. v21}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 201
    :cond_c
    const-string v20, "VideoCapture"

    const-string v21, "Continuous focus mode not supported."

    invoke-static/range {v20 .. v21}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 211
    :catch_1
    move-exception v7

    .line 212
    .restart local v7    # "ex":Ljava/lang/RuntimeException;
    const-string v20, "VideoCapture"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "setParameters: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 237
    .end local v7    # "ex":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v7

    .line 238
    .local v7, "ex":Ljava/io/IOException;
    const-string v20, "VideoCapture"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "allocate: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-static/range {v20 .. v22}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    const/16 v20, 0x0

    goto/16 :goto_0
.end method

.method abstract allocateBuffers()V
.end method

.method public deallocate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 323
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 336
    :goto_0
    return-void

    .line 325
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/media/VideoCaptureCamera;->stopCapture()Z

    .line 327
    :try_start_0
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 328
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera;->mGlTextures:[I

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera;->mGlTextures:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 329
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/media/VideoCaptureCamera;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    .line 330
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 331
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "VideoCapture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deallocate: failed to deallocate camera, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method abstract setCaptureParameters(IIILandroid/hardware/Camera$Parameters;)V
.end method

.method abstract setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
.end method

.method public startCapture()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 250
    iget-object v3, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-nez v3, :cond_0

    .line 251
    const-string v2, "VideoCapture"

    const-string v3, "startCapture: mCamera is null"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    :goto_0
    return v1

    .line 255
    :cond_0
    iget-object v3, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 257
    :try_start_0
    iget-boolean v3, p0, Lorg/chromium/media/VideoCaptureCamera;->mIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 262
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v1, v2

    goto :goto_0

    .line 260
    :cond_1
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lorg/chromium/media/VideoCaptureCamera;->mIsRunning:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    iget-object v3, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 264
    invoke-virtual {p0, p0}, Lorg/chromium/media/VideoCaptureCamera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 266
    :try_start_2
    iget-object v3, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->startPreview()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move v1, v2

    .line 271
    goto :goto_0

    .line 262
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v2, "VideoCapture"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startCapture: Camera.startPreview: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public stopCapture()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 276
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 277
    const-string v0, "VideoCapture"

    const-string v1, "stopCapture: mCamera is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    :goto_0
    return v3

    .line 281
    :cond_0
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 283
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 288
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 286
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mIsRunning:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 291
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 292
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/media/VideoCaptureCamera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0

    .line 288
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public takePhoto(J)Z
    .locals 11
    .param p1, "callbackId"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 298
    iget-object v4, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lorg/chromium/media/VideoCaptureCamera;->mIsRunning:Z

    if-nez v4, :cond_1

    .line 299
    :cond_0
    const-string v3, "VideoCapture"

    const-string v4, "takePhoto: mCamera is null or is not running"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    :goto_0
    return v2

    .line 304
    :cond_1
    iget-object v4, p0, Lorg/chromium/media/VideoCaptureCamera;->mPhotoTakenCallbackLock:Ljava/lang/Object;

    monitor-enter v4

    .line 305
    :try_start_0
    iget-wide v6, p0, Lorg/chromium/media/VideoCaptureCamera;->mPhotoTakenCallbackId:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    monitor-exit v4

    goto :goto_0

    .line 307
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 306
    :cond_2
    :try_start_1
    iput-wide p1, p0, Lorg/chromium/media/VideoCaptureCamera;->mPhotoTakenCallbackId:J

    .line 307
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    iget-object v4, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-static {v4}, Lorg/chromium/media/VideoCaptureCamera;->getCameraParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 310
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {p0}, Lorg/chromium/media/VideoCaptureCamera;->getCameraRotation()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 311
    iget-object v4, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 313
    :try_start_2
    iget-object v4, p0, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lorg/chromium/media/VideoCaptureCamera$CrPictureCallback;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lorg/chromium/media/VideoCaptureCamera$CrPictureCallback;-><init>(Lorg/chromium/media/VideoCaptureCamera;Lorg/chromium/media/VideoCaptureCamera$1;)V

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move v2, v3

    .line 318
    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v4, "VideoCapture"

    const-string v5, "takePicture "

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v4, v5, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
