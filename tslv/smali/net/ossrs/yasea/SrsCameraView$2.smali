.class Lnet/ossrs/yasea/SrsCameraView$2;
.super Ljava/lang/Object;
.source "SrsCameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/ossrs/yasea/SrsCameraView;->setFilter(Lcom/seu/magicfilter/utils/MagicFilterType;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/ossrs/yasea/SrsCameraView;

.field final synthetic val$type:Lcom/seu/magicfilter/utils/MagicFilterType;


# direct methods
.method constructor <init>(Lnet/ossrs/yasea/SrsCameraView;Lcom/seu/magicfilter/utils/MagicFilterType;)V
    .locals 0
    .param p1, "this$0"    # Lnet/ossrs/yasea/SrsCameraView;

    .prologue
    .line 160
    iput-object p1, p0, Lnet/ossrs/yasea/SrsCameraView$2;->this$0:Lnet/ossrs/yasea/SrsCameraView;

    iput-object p2, p0, Lnet/ossrs/yasea/SrsCameraView$2;->val$type:Lcom/seu/magicfilter/utils/MagicFilterType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lnet/ossrs/yasea/SrsCameraView$2;->this$0:Lnet/ossrs/yasea/SrsCameraView;

    invoke-static {v0}, Lnet/ossrs/yasea/SrsCameraView;->access$000(Lnet/ossrs/yasea/SrsCameraView;)Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lnet/ossrs/yasea/SrsCameraView$2;->this$0:Lnet/ossrs/yasea/SrsCameraView;

    invoke-static {v0}, Lnet/ossrs/yasea/SrsCameraView;->access$000(Lnet/ossrs/yasea/SrsCameraView;)Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->destroy()V

    .line 166
    :cond_0
    iget-object v0, p0, Lnet/ossrs/yasea/SrsCameraView$2;->this$0:Lnet/ossrs/yasea/SrsCameraView;

    iget-object v1, p0, Lnet/ossrs/yasea/SrsCameraView$2;->val$type:Lcom/seu/magicfilter/utils/MagicFilterType;

    invoke-static {v1}, Lcom/seu/magicfilter/utils/MagicFilterFactory;->initFilters(Lcom/seu/magicfilter/utils/MagicFilterType;)Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/ossrs/yasea/SrsCameraView;->access$002(Lnet/ossrs/yasea/SrsCameraView;Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;)Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;

    .line 167
    iget-object v0, p0, Lnet/ossrs/yasea/SrsCameraView$2;->this$0:Lnet/ossrs/yasea/SrsCameraView;

    invoke-static {v0}, Lnet/ossrs/yasea/SrsCameraView;->access$000(Lnet/ossrs/yasea/SrsCameraView;)Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lnet/ossrs/yasea/SrsCameraView$2;->this$0:Lnet/ossrs/yasea/SrsCameraView;

    invoke-static {v0}, Lnet/ossrs/yasea/SrsCameraView;->access$000(Lnet/ossrs/yasea/SrsCameraView;)Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;

    move-result-object v0

    iget-object v1, p0, Lnet/ossrs/yasea/SrsCameraView$2;->this$0:Lnet/ossrs/yasea/SrsCameraView;

    invoke-virtual {v1}, Lnet/ossrs/yasea/SrsCameraView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->init(Landroid/content/Context;)V

    .line 169
    iget-object v0, p0, Lnet/ossrs/yasea/SrsCameraView$2;->this$0:Lnet/ossrs/yasea/SrsCameraView;

    invoke-static {v0}, Lnet/ossrs/yasea/SrsCameraView;->access$000(Lnet/ossrs/yasea/SrsCameraView;)Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;

    move-result-object v0

    iget-object v1, p0, Lnet/ossrs/yasea/SrsCameraView$2;->this$0:Lnet/ossrs/yasea/SrsCameraView;

    invoke-static {v1}, Lnet/ossrs/yasea/SrsCameraView;->access$100(Lnet/ossrs/yasea/SrsCameraView;)I

    move-result v1

    iget-object v2, p0, Lnet/ossrs/yasea/SrsCameraView$2;->this$0:Lnet/ossrs/yasea/SrsCameraView;

    invoke-static {v2}, Lnet/ossrs/yasea/SrsCameraView;->access$200(Lnet/ossrs/yasea/SrsCameraView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInputSizeChanged(II)V

    .line 170
    iget-object v0, p0, Lnet/ossrs/yasea/SrsCameraView$2;->this$0:Lnet/ossrs/yasea/SrsCameraView;

    invoke-static {v0}, Lnet/ossrs/yasea/SrsCameraView;->access$000(Lnet/ossrs/yasea/SrsCameraView;)Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;

    move-result-object v0

    iget-object v1, p0, Lnet/ossrs/yasea/SrsCameraView$2;->this$0:Lnet/ossrs/yasea/SrsCameraView;

    invoke-static {v1}, Lnet/ossrs/yasea/SrsCameraView;->access$300(Lnet/ossrs/yasea/SrsCameraView;)I

    move-result v1

    iget-object v2, p0, Lnet/ossrs/yasea/SrsCameraView$2;->this$0:Lnet/ossrs/yasea/SrsCameraView;

    invoke-static {v2}, Lnet/ossrs/yasea/SrsCameraView;->access$400(Lnet/ossrs/yasea/SrsCameraView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onDisplaySizeChanged(II)V

    .line 172
    :cond_1
    return-void
.end method
