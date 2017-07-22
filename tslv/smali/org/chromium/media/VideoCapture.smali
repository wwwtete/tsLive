.class public abstract Lorg/chromium/media/VideoCapture;
.super Ljava/lang/Object;
.source "VideoCapture.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "media"
.end annotation


# instance fields
.field protected mCameraNativeOrientation:I

.field protected mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

.field protected final mContext:Landroid/content/Context;

.field protected final mId:I

.field protected mInvertDeviceOrientationReadings:Z

.field protected final mNativeVideoCaptureDeviceAndroid:J


# direct methods
.method constructor <init>(Landroid/content/Context;IJ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "nativeVideoCaptureDeviceAndroid"    # J

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/media/VideoCapture;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    .line 36
    iput-object p1, p0, Lorg/chromium/media/VideoCapture;->mContext:Landroid/content/Context;

    .line 37
    iput p2, p0, Lorg/chromium/media/VideoCapture;->mId:I

    .line 38
    iput-wide p3, p0, Lorg/chromium/media/VideoCapture;->mNativeVideoCaptureDeviceAndroid:J

    .line 39
    return-void
.end method


# virtual methods
.method public abstract allocate(III)Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation
.end method

.method public abstract deallocate()V
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation
.end method

.method protected final getCameraRotation()I
    .locals 2

    .prologue
    .line 88
    iget-boolean v1, p0, Lorg/chromium/media/VideoCapture;->mInvertDeviceOrientationReadings:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/media/VideoCapture;->getDeviceRotation()I

    move-result v1

    rsub-int v0, v1, 0x168

    .line 90
    .local v0, "rotation":I
    :goto_0
    iget v1, p0, Lorg/chromium/media/VideoCapture;->mCameraNativeOrientation:I

    add-int/2addr v1, v0

    rem-int/lit16 v1, v1, 0x168

    return v1

    .line 88
    .end local v0    # "rotation":I
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/media/VideoCapture;->getDeviceRotation()I

    move-result v0

    goto :goto_0
.end method

.method public final getColorspace()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lorg/chromium/media/VideoCapture;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    iget v0, v0, Lorg/chromium/media/VideoCaptureFormat;->mPixelFormat:I

    sparse-switch v0, :sswitch_data_0

    .line 83
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 76
    :sswitch_0
    const v0, 0x32315659

    goto :goto_0

    .line 78
    :sswitch_1
    const/16 v0, 0x23

    goto :goto_0

    .line 80
    :sswitch_2
    const/16 v0, 0x11

    goto :goto_0

    .line 74
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x23 -> :sswitch_1
        0x32315659 -> :sswitch_0
    .end sparse-switch
.end method

.method protected final getDeviceRotation()I
    .locals 4

    .prologue
    .line 94
    iget-object v2, p0, Lorg/chromium/media/VideoCapture;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 112
    :goto_0
    return v0

    .line 96
    :cond_0
    iget-object v2, p0, Lorg/chromium/media/VideoCapture;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 97
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 109
    const/4 v0, 0x0

    .local v0, "orientation":I
    goto :goto_0

    .line 99
    .end local v0    # "orientation":I
    :pswitch_0
    const/16 v0, 0x5a

    .line 100
    .restart local v0    # "orientation":I
    goto :goto_0

    .line 102
    .end local v0    # "orientation":I
    :pswitch_1
    const/16 v0, 0xb4

    .line 103
    .restart local v0    # "orientation":I
    goto :goto_0

    .line 105
    .end local v0    # "orientation":I
    :pswitch_2
    const/16 v0, 0x10e

    .line 106
    .restart local v0    # "orientation":I
    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public native nativeOnError(JLjava/lang/String;)V
.end method

.method public native nativeOnFrameAvailable(J[BII)V
.end method

.method public native nativeOnPhotoTaken(JJ[B)V
.end method

.method public final queryFrameRate()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lorg/chromium/media/VideoCapture;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    iget v0, v0, Lorg/chromium/media/VideoCaptureFormat;->mFramerate:I

    return v0
.end method

.method public final queryHeight()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lorg/chromium/media/VideoCapture;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    iget v0, v0, Lorg/chromium/media/VideoCaptureFormat;->mHeight:I

    return v0
.end method

.method public final queryWidth()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lorg/chromium/media/VideoCapture;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    iget v0, v0, Lorg/chromium/media/VideoCaptureFormat;->mWidth:I

    return v0
.end method

.method public abstract startCapture()Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation
.end method

.method public abstract stopCapture()Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation
.end method

.method public abstract takePhoto(J)Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation
.end method
