.class Lnet/ossrs/yasea/SrsCameraView$1;
.super Ljava/lang/Object;
.source "SrsCameraView.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/ossrs/yasea/SrsCameraView;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/ossrs/yasea/SrsCameraView;


# direct methods
.method constructor <init>(Lnet/ossrs/yasea/SrsCameraView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/ossrs/yasea/SrsCameraView;

    .prologue
    .line 80
    iput-object p1, p0, Lnet/ossrs/yasea/SrsCameraView$1;->this$0:Lnet/ossrs/yasea/SrsCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 83
    iget-object v0, p0, Lnet/ossrs/yasea/SrsCameraView$1;->this$0:Lnet/ossrs/yasea/SrsCameraView;

    invoke-virtual {v0}, Lnet/ossrs/yasea/SrsCameraView;->requestRender()V

    .line 84
    return-void
.end method
