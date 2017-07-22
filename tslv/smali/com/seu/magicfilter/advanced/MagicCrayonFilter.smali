.class public Lcom/seu/magicfilter/advanced/MagicCrayonFilter;
.super Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;
.source "MagicCrayonFilter.java"


# instance fields
.field private mSingleStepOffsetLocation:I

.field private mStrengthLocation:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/seu/magicfilter/utils/MagicFilterType;->CRAYON:Lcom/seu/magicfilter/utils/MagicFilterType;

    sget v1, Lnet/ossrs/yasea/R$raw;->crayon:I

    invoke-direct {p0, v0, v1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;-><init>(Lcom/seu/magicfilter/utils/MagicFilterType;I)V

    .line 18
    return-void
.end method


# virtual methods
.method protected onDestroy()V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onDestroy()V

    .line 31
    return-void
.end method

.method protected onInit()V
    .locals 2

    .prologue
    .line 22
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInit()V

    .line 23
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicCrayonFilter;->getProgram()I

    move-result v0

    const-string v1, "singleStepOffset"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/advanced/MagicCrayonFilter;->mSingleStepOffsetLocation:I

    .line 24
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicCrayonFilter;->getProgram()I

    move-result v0

    const-string v1, "strength"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/advanced/MagicCrayonFilter;->mStrengthLocation:I

    .line 25
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicCrayonFilter;->mStrengthLocation:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0, v0, v1}, Lcom/seu/magicfilter/advanced/MagicCrayonFilter;->setFloat(IF)V

    .line 26
    return-void
.end method

.method protected onInitialized()V
    .locals 2

    .prologue
    .line 35
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInitialized()V

    .line 36
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicCrayonFilter;->mStrengthLocation:I

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0, v1}, Lcom/seu/magicfilter/advanced/MagicCrayonFilter;->setFloat(IF)V

    .line 37
    return-void
.end method

.method public onInputSizeChanged(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 41
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicCrayonFilter;->mSingleStepOffsetLocation:I

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    int-to-float v3, p1

    div-float v3, v4, v3

    aput v3, v1, v2

    const/4 v2, 0x1

    int-to-float v3, p2

    div-float v3, v4, v3

    aput v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/seu/magicfilter/advanced/MagicCrayonFilter;->setFloatVec2(I[F)V

    .line 42
    return-void
.end method
