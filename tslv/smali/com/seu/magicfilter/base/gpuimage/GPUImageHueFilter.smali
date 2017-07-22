.class public Lcom/seu/magicfilter/base/gpuimage/GPUImageHueFilter;
.super Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;
.source "GPUImageHueFilter.java"


# instance fields
.field private mHue:F

.field private mHueLocation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageHueFilter;-><init>(F)V

    .line 32
    return-void
.end method

.method public constructor <init>(F)V
    .locals 2
    .param p1, "hue"    # F

    .prologue
    .line 35
    sget-object v0, Lcom/seu/magicfilter/utils/MagicFilterType;->HUE:Lcom/seu/magicfilter/utils/MagicFilterType;

    sget v1, Lnet/ossrs/yasea/R$raw;->hue:I

    invoke-direct {p0, v0, v1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;-><init>(Lcom/seu/magicfilter/utils/MagicFilterType;I)V

    .line 36
    iput p1, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageHueFilter;->mHue:F

    .line 37
    return-void
.end method


# virtual methods
.method public onInit()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInit()V

    .line 42
    invoke-virtual {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageHueFilter;->getProgram()I

    move-result v0

    const-string v1, "hueAdjust"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageHueFilter;->mHueLocation:I

    .line 43
    return-void
.end method

.method public onInitialized()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInitialized()V

    .line 48
    iget v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageHueFilter;->mHue:F

    invoke-virtual {p0, v0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageHueFilter;->setHue(F)V

    .line 49
    return-void
.end method

.method public setHue(F)V
    .locals 3
    .param p1, "hue"    # F

    .prologue
    .line 52
    iput p1, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageHueFilter;->mHue:F

    .line 53
    iget v1, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageHueFilter;->mHue:F

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr v1, v2

    const v2, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v1, v2

    const/high16 v2, 0x43340000    # 180.0f

    div-float v0, v1, v2

    .line 54
    .local v0, "hueAdjust":F
    iget v1, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageHueFilter;->mHueLocation:I

    invoke-virtual {p0, v1, v0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageHueFilter;->setFloat(IF)V

    .line 55
    return-void
.end method
