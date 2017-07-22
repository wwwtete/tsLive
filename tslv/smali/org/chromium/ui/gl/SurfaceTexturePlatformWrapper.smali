.class Lorg/chromium/ui/gl/SurfaceTexturePlatformWrapper;
.super Ljava/lang/Object;
.source "SurfaceTexturePlatformWrapper.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "gfx"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceTexturePlatformWrapper"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static attachToGLContext(Landroid/graphics/SurfaceTexture;I)V
    .locals 0
    .param p0, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p1, "texName"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    .line 57
    return-void
.end method

.method private static create(I)Landroid/graphics/SurfaceTexture;
    .locals 1
    .param p0, "textureId"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 24
    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, p0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    return-object v0
.end method

.method private static destroy(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p0, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 30
    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 31
    return-void
.end method

.method private static detachFromGLContext(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p0, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 62
    return-void
.end method

.method private static getTransformMatrix(Landroid/graphics/SurfaceTexture;[F)V
    .locals 0
    .param p0, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p1, "matrix"    # [F
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 52
    return-void
.end method

.method private static release(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p0, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 67
    return-void
.end method

.method private static setFrameAvailableCallback(Landroid/graphics/SurfaceTexture;J)V
    .locals 1
    .param p0, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p1, "nativeSurfaceTextureListener"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lorg/chromium/ui/gl/SurfaceTextureListener;

    invoke-direct {v0, p1, p2}, Lorg/chromium/ui/gl/SurfaceTextureListener;-><init>(J)V

    invoke-virtual {p0, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 38
    return-void
.end method

.method private static updateTexImage(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p0, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 43
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "SurfaceTexturePlatformWrapper"

    const-string v2, "Error calling updateTexImage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
