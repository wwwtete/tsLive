.class public Lcom/seu/magicfilter/base/gpuimage/GPUImageSharpenFilter;
.super Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;
.source "GPUImageSharpenFilter.java"


# instance fields
.field private mImageHeightFactorLocation:I

.field private mImageWidthFactorLocation:I

.field private mSharpness:F

.field private mSharpnessLocation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageSharpenFilter;-><init>(F)V

    .line 39
    return-void
.end method

.method public constructor <init>(F)V
    .locals 3
    .param p1, "sharpness"    # F

    .prologue
    .line 42
    sget-object v0, Lcom/seu/magicfilter/utils/MagicFilterType;->SHARPEN:Lcom/seu/magicfilter/utils/MagicFilterType;

    sget v1, Lnet/ossrs/yasea/R$raw;->vertex_sharpen:I

    sget v2, Lnet/ossrs/yasea/R$raw;->sharpen:I

    invoke-direct {p0, v0, v1, v2}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;-><init>(Lcom/seu/magicfilter/utils/MagicFilterType;II)V

    .line 43
    iput p1, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageSharpenFilter;->mSharpness:F

    .line 44
    return-void
.end method


# virtual methods
.method public onInit()V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInit()V

    .line 49
    invoke-virtual {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageSharpenFilter;->getProgram()I

    move-result v0

    const-string v1, "sharpness"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageSharpenFilter;->mSharpnessLocation:I

    .line 50
    invoke-virtual {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageSharpenFilter;->getProgram()I

    move-result v0

    const-string v1, "imageWidthFactor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageSharpenFilter;->mImageWidthFactorLocation:I

    .line 51
    invoke-virtual {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageSharpenFilter;->getProgram()I

    move-result v0

    const-string v1, "imageHeightFactor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageSharpenFilter;->mImageHeightFactorLocation:I

    .line 52
    iget v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageSharpenFilter;->mSharpness:F

    invoke-virtual {p0, v0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageSharpenFilter;->setSharpness(F)V

    .line 53
    return-void
.end method

.method public onInputSizeChanged(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 57
    invoke-super {p0, p1, p2}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInputSizeChanged(II)V

    .line 58
    iget v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageSharpenFilter;->mImageWidthFactorLocation:I

    int-to-float v1, p1

    div-float v1, v2, v1

    invoke-virtual {p0, v0, v1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageSharpenFilter;->setFloat(IF)V

    .line 59
    iget v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageSharpenFilter;->mImageHeightFactorLocation:I

    int-to-float v1, p2

    div-float v1, v2, v1

    invoke-virtual {p0, v0, v1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageSharpenFilter;->setFloat(IF)V

    .line 60
    return-void
.end method

.method public setSharpness(F)V
    .locals 2
    .param p1, "sharpness"    # F

    .prologue
    .line 63
    iput p1, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageSharpenFilter;->mSharpness:F

    .line 64
    iget v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageSharpenFilter;->mSharpnessLocation:I

    iget v1, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageSharpenFilter;->mSharpness:F

    invoke-virtual {p0, v0, v1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageSharpenFilter;->setFloat(IF)V

    .line 65
    return-void
.end method
