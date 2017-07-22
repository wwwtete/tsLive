.class public Lcom/seu/magicfilter/base/gpuimage/GPUImageSaturationFilter;
.super Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;
.source "GPUImageSaturationFilter.java"


# instance fields
.field private mSaturation:F

.field private mSaturationLocation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageSaturationFilter;-><init>(F)V

    .line 35
    return-void
.end method

.method public constructor <init>(F)V
    .locals 2
    .param p1, "saturation"    # F

    .prologue
    .line 38
    sget-object v0, Lcom/seu/magicfilter/utils/MagicFilterType;->SATURATION:Lcom/seu/magicfilter/utils/MagicFilterType;

    sget v1, Lnet/ossrs/yasea/R$raw;->saturation:I

    invoke-direct {p0, v0, v1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;-><init>(Lcom/seu/magicfilter/utils/MagicFilterType;I)V

    .line 39
    iput p1, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageSaturationFilter;->mSaturation:F

    .line 40
    return-void
.end method


# virtual methods
.method public onInit()V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInit()V

    .line 45
    invoke-virtual {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageSaturationFilter;->getProgram()I

    move-result v0

    const-string v1, "saturation"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageSaturationFilter;->mSaturationLocation:I

    .line 46
    return-void
.end method

.method public onInitialized()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInitialized()V

    .line 51
    iget v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageSaturationFilter;->mSaturation:F

    invoke-virtual {p0, v0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageSaturationFilter;->setSaturation(F)V

    .line 52
    return-void
.end method

.method public setSaturation(F)V
    .locals 2
    .param p1, "saturation"    # F

    .prologue
    .line 55
    iput p1, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageSaturationFilter;->mSaturation:F

    .line 56
    iget v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageSaturationFilter;->mSaturationLocation:I

    iget v1, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageSaturationFilter;->mSaturation:F

    invoke-virtual {p0, v0, v1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageSaturationFilter;->setFloat(IF)V

    .line 57
    return-void
.end method
