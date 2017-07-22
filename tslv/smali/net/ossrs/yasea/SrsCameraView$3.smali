.class Lnet/ossrs/yasea/SrsCameraView$3;
.super Ljava/lang/Object;
.source "SrsCameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/ossrs/yasea/SrsCameraView;->deleteTextures()V
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
    .line 180
    iput-object p1, p0, Lnet/ossrs/yasea/SrsCameraView$3;->this$0:Lnet/ossrs/yasea/SrsCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 183
    new-array v0, v3, [I

    iget-object v1, p0, Lnet/ossrs/yasea/SrsCameraView$3;->this$0:Lnet/ossrs/yasea/SrsCameraView;

    invoke-static {v1}, Lnet/ossrs/yasea/SrsCameraView;->access$500(Lnet/ossrs/yasea/SrsCameraView;)I

    move-result v1

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 184
    iget-object v0, p0, Lnet/ossrs/yasea/SrsCameraView$3;->this$0:Lnet/ossrs/yasea/SrsCameraView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lnet/ossrs/yasea/SrsCameraView;->access$502(Lnet/ossrs/yasea/SrsCameraView;I)I

    .line 185
    return-void
.end method
