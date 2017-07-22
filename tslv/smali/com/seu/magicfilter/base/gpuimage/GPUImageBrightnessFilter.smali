.class public Lcom/seu/magicfilter/base/gpuimage/GPUImageBrightnessFilter;
.super Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;
.source "GPUImageBrightnessFilter.java"


# instance fields
.field private mBrightness:F

.field private mBrightnessLocation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageBrightnessFilter;-><init>(F)V

    .line 35
    return-void
.end method

.method public constructor <init>(F)V
    .locals 2
    .param p1, "brightness"    # F

    .prologue
    .line 38
    sget-object v0, Lcom/seu/magicfilter/utils/MagicFilterType;->BRIGHTNESS:Lcom/seu/magicfilter/utils/MagicFilterType;

    sget v1, Lnet/ossrs/yasea/R$raw;->brightness:I

    invoke-direct {p0, v0, v1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;-><init>(Lcom/seu/magicfilter/utils/MagicFilterType;I)V

    .line 39
    iput p1, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageBrightnessFilter;->mBrightness:F

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
    invoke-virtual {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageBrightnessFilter;->getProgram()I

    move-result v0

    const-string v1, "brightness"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageBrightnessFilter;->mBrightnessLocation:I

    .line 46
    return-void
.end method

.method public onInitialized()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInitialized()V

    .line 51
    iget v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageBrightnessFilter;->mBrightness:F

    invoke-virtual {p0, v0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageBrightnessFilter;->setBrightness(F)V

    .line 52
    return-void
.end method

.method public setBrightness(F)V
    .locals 2
    .param p1, "brightness"    # F

    .prologue
    .line 55
    iput p1, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageBrightnessFilter;->mBrightness:F

    .line 56
    iget v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageBrightnessFilter;->mBrightnessLocation:I

    iget v1, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageBrightnessFilter;->mBrightness:F

    invoke-virtual {p0, v0, v1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageBrightnessFilter;->setFloat(IF)V

    .line 57
    return-void
.end method
