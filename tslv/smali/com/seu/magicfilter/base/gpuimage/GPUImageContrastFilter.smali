.class public Lcom/seu/magicfilter/base/gpuimage/GPUImageContrastFilter;
.super Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;
.source "GPUImageContrastFilter.java"


# instance fields
.field private mContrast:F

.field private mContrastLocation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageContrastFilter;-><init>(F)V

    .line 37
    return-void
.end method

.method public constructor <init>(F)V
    .locals 2
    .param p1, "contrast"    # F

    .prologue
    .line 40
    sget-object v0, Lcom/seu/magicfilter/utils/MagicFilterType;->CONTRAST:Lcom/seu/magicfilter/utils/MagicFilterType;

    sget v1, Lnet/ossrs/yasea/R$raw;->constrast:I

    invoke-direct {p0, v0, v1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;-><init>(Lcom/seu/magicfilter/utils/MagicFilterType;I)V

    .line 41
    iput p1, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageContrastFilter;->mContrast:F

    .line 42
    return-void
.end method


# virtual methods
.method public onInit()V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInit()V

    .line 47
    invoke-virtual {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageContrastFilter;->getProgram()I

    move-result v0

    const-string v1, "contrast"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageContrastFilter;->mContrastLocation:I

    .line 48
    return-void
.end method

.method public onInitialized()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInitialized()V

    .line 53
    iget v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageContrastFilter;->mContrast:F

    invoke-virtual {p0, v0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageContrastFilter;->setContrast(F)V

    .line 54
    return-void
.end method

.method public setContrast(F)V
    .locals 2
    .param p1, "contrast"    # F

    .prologue
    .line 57
    iput p1, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageContrastFilter;->mContrast:F

    .line 58
    iget v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageContrastFilter;->mContrastLocation:I

    iget v1, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageContrastFilter;->mContrast:F

    invoke-virtual {p0, v0, v1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageContrastFilter;->setFloat(IF)V

    .line 59
    return-void
.end method
