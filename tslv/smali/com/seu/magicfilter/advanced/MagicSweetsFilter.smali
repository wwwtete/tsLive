.class public Lcom/seu/magicfilter/advanced/MagicSweetsFilter;
.super Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;
.source "MagicSweetsFilter.java"


# instance fields
.field private mLowPerformanceUniformLocation:I

.field private mMaskGrey1TextureId:I

.field private mMaskGrey1UniformLocation:I

.field private mToneCurveTexture:[I

.field private mToneCurveTextureUniformLocation:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 22
    sget-object v0, Lcom/seu/magicfilter/utils/MagicFilterType;->SWEETS:Lcom/seu/magicfilter/utils/MagicFilterType;

    sget v1, Lnet/ossrs/yasea/R$raw;->sweets:I

    invoke-direct {p0, v0, v1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;-><init>(Lcom/seu/magicfilter/utils/MagicFilterType;I)V

    .line 15
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    iput-object v0, p0, Lcom/seu/magicfilter/advanced/MagicSweetsFilter;->mToneCurveTexture:[I

    .line 17
    iput v2, p0, Lcom/seu/magicfilter/advanced/MagicSweetsFilter;->mMaskGrey1TextureId:I

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/seu/magicfilter/advanced/MagicSweetsFilter;)[I
    .locals 1
    .param p0, "x0"    # Lcom/seu/magicfilter/advanced/MagicSweetsFilter;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicSweetsFilter;->mToneCurveTexture:[I

    return-object v0
.end method

.method static synthetic access$102(Lcom/seu/magicfilter/advanced/MagicSweetsFilter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/seu/magicfilter/advanced/MagicSweetsFilter;
    .param p1, "x1"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/seu/magicfilter/advanced/MagicSweetsFilter;->mMaskGrey1TextureId:I

    return p1
.end method

.method static synthetic access$200(Lcom/seu/magicfilter/advanced/MagicSweetsFilter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/seu/magicfilter/advanced/MagicSweetsFilter;

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicSweetsFilter;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 27
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onDestroy()V

    .line 28
    new-array v0, v5, [I

    iget-object v1, p0, Lcom/seu/magicfilter/advanced/MagicSweetsFilter;->mToneCurveTexture:[I

    aget v1, v1, v3

    aput v1, v0, v3

    const/4 v1, 0x1

    iget v2, p0, Lcom/seu/magicfilter/advanced/MagicSweetsFilter;->mMaskGrey1TextureId:I

    aput v2, v0, v1

    invoke-static {v5, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 29
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicSweetsFilter;->mToneCurveTexture:[I

    aput v4, v0, v3

    .line 30
    iput v4, p0, Lcom/seu/magicfilter/advanced/MagicSweetsFilter;->mMaskGrey1TextureId:I

    .line 31
    return-void
.end method

.method protected onDrawArraysAfter()V
    .locals 5

    .prologue
    const v4, 0x84c0

    const/16 v3, 0xde1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 35
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicSweetsFilter;->mToneCurveTexture:[I

    aget v0, v0, v1

    if-eq v0, v2, :cond_0

    .line 36
    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 37
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 38
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 40
    :cond_0
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicSweetsFilter;->mMaskGrey1TextureId:I

    if-eq v0, v2, :cond_1

    .line 41
    const v0, 0x84c4

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 42
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 43
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 45
    :cond_1
    return-void
.end method

.method protected onDrawArraysPre()V
    .locals 4

    .prologue
    const/16 v3, 0xde1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 49
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicSweetsFilter;->mToneCurveTexture:[I

    aget v0, v0, v1

    if-eq v0, v2, :cond_0

    .line 50
    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 51
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicSweetsFilter;->mToneCurveTexture:[I

    aget v0, v0, v1

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 52
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicSweetsFilter;->mToneCurveTextureUniformLocation:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 54
    :cond_0
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicSweetsFilter;->mMaskGrey1TextureId:I

    if-eq v0, v2, :cond_1

    .line 55
    const v0, 0x84c4

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 56
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicSweetsFilter;->mMaskGrey1TextureId:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 57
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicSweetsFilter;->mMaskGrey1UniformLocation:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 59
    :cond_1
    return-void
.end method

.method protected onInit()V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInit()V

    .line 64
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicSweetsFilter;->getProgram()I

    move-result v0

    const-string v1, "curve"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/advanced/MagicSweetsFilter;->mToneCurveTextureUniformLocation:I

    .line 65
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicSweetsFilter;->getProgram()I

    move-result v0

    const-string v1, "grey1Frame"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/advanced/MagicSweetsFilter;->mMaskGrey1UniformLocation:I

    .line 66
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicSweetsFilter;->getProgram()I

    move-result v0

    const-string v1, "lowPerformance"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/advanced/MagicSweetsFilter;->mLowPerformanceUniformLocation:I

    .line 67
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicSweetsFilter;->mLowPerformanceUniformLocation:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/seu/magicfilter/advanced/MagicSweetsFilter;->setInteger(II)V

    .line 68
    return-void
.end method

.method protected onInitialized()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInitialized()V

    .line 73
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicSweetsFilter$1;

    invoke-direct {v0, p0}, Lcom/seu/magicfilter/advanced/MagicSweetsFilter$1;-><init>(Lcom/seu/magicfilter/advanced/MagicSweetsFilter;)V

    invoke-virtual {p0, v0}, Lcom/seu/magicfilter/advanced/MagicSweetsFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method
