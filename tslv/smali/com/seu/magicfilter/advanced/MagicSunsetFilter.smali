.class public Lcom/seu/magicfilter/advanced/MagicSunsetFilter;
.super Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;
.source "MagicSunsetFilter.java"


# instance fields
.field private mMaskGrey1TextureId:I

.field private mMaskGrey1UniformLocation:I

.field private mMaskGrey2TextureId:I

.field private mMaskGrey2UniformLocation:I

.field private mToneCurveTexture:[I

.field private mToneCurveTextureUniformLocation:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 23
    sget-object v0, Lcom/seu/magicfilter/utils/MagicFilterType;->SUNSET:Lcom/seu/magicfilter/utils/MagicFilterType;

    sget v1, Lnet/ossrs/yasea/R$raw;->sunset:I

    invoke-direct {p0, v0, v1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;-><init>(Lcom/seu/magicfilter/utils/MagicFilterType;I)V

    .line 15
    iput v2, p0, Lcom/seu/magicfilter/advanced/MagicSunsetFilter;->mMaskGrey1TextureId:I

    .line 17
    iput v2, p0, Lcom/seu/magicfilter/advanced/MagicSunsetFilter;->mMaskGrey2TextureId:I

    .line 19
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    iput-object v0, p0, Lcom/seu/magicfilter/advanced/MagicSunsetFilter;->mToneCurveTexture:[I

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/seu/magicfilter/advanced/MagicSunsetFilter;)[I
    .locals 1
    .param p0, "x0"    # Lcom/seu/magicfilter/advanced/MagicSunsetFilter;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicSunsetFilter;->mToneCurveTexture:[I

    return-object v0
.end method

.method static synthetic access$102(Lcom/seu/magicfilter/advanced/MagicSunsetFilter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/seu/magicfilter/advanced/MagicSunsetFilter;
    .param p1, "x1"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/seu/magicfilter/advanced/MagicSunsetFilter;->mMaskGrey1TextureId:I

    return p1
.end method

.method static synthetic access$200(Lcom/seu/magicfilter/advanced/MagicSunsetFilter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/seu/magicfilter/advanced/MagicSunsetFilter;

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicSunsetFilter;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/seu/magicfilter/advanced/MagicSunsetFilter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/seu/magicfilter/advanced/MagicSunsetFilter;
    .param p1, "x1"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/seu/magicfilter/advanced/MagicSunsetFilter;->mMaskGrey2TextureId:I

    return p1
.end method

.method static synthetic access$400(Lcom/seu/magicfilter/advanced/MagicSunsetFilter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/seu/magicfilter/advanced/MagicSunsetFilter;

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicSunsetFilter;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 28
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onDestroy()V

    .line 29
    new-array v0, v5, [I

    iget-object v1, p0, Lcom/seu/magicfilter/advanced/MagicSunsetFilter;->mToneCurveTexture:[I

    aget v1, v1, v3

    aput v1, v0, v3

    const/4 v1, 0x1

    iget v2, p0, Lcom/seu/magicfilter/advanced/MagicSunsetFilter;->mMaskGrey1TextureId:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/seu/magicfilter/advanced/MagicSunsetFilter;->mMaskGrey2TextureId:I

    aput v2, v0, v1

    invoke-static {v5, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 30
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicSunsetFilter;->mToneCurveTexture:[I

    aput v4, v0, v3

    .line 31
    iput v4, p0, Lcom/seu/magicfilter/advanced/MagicSunsetFilter;->mMaskGrey1TextureId:I

    .line 32
    iput v4, p0, Lcom/seu/magicfilter/advanced/MagicSunsetFilter;->mMaskGrey2TextureId:I

    .line 33
    return-void
.end method

.method protected onDrawArraysAfter()V
    .locals 5

    .prologue
    const v4, 0x84c0

    const/16 v3, 0xde1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 37
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicSunsetFilter;->mToneCurveTexture:[I

    aget v0, v0, v1

    if-eq v0, v2, :cond_0

    .line 38
    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 39
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 40
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 42
    :cond_0
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicSunsetFilter;->mMaskGrey1TextureId:I

    if-eq v0, v2, :cond_1

    .line 43
    const v0, 0x84c4

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 44
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 45
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 47
    :cond_1
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicSunsetFilter;->mMaskGrey2TextureId:I

    if-eq v0, v2, :cond_2

    .line 48
    const v0, 0x84c5

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 49
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 50
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 52
    :cond_2
    return-void
.end method

.method protected onDrawArraysPre()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0xde1

    const/4 v2, -0x1

    .line 56
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicSunsetFilter;->mToneCurveTexture:[I

    aget v0, v0, v1

    if-eq v0, v2, :cond_0

    .line 57
    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 58
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicSunsetFilter;->mToneCurveTexture:[I

    aget v0, v0, v1

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 59
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicSunsetFilter;->mToneCurveTextureUniformLocation:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 61
    :cond_0
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicSunsetFilter;->mMaskGrey1TextureId:I

    if-eq v0, v2, :cond_1

    .line 62
    const v0, 0x84c4

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 63
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicSunsetFilter;->mMaskGrey1TextureId:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 64
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicSunsetFilter;->mMaskGrey1UniformLocation:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 66
    :cond_1
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicSunsetFilter;->mMaskGrey2TextureId:I

    if-eq v0, v2, :cond_2

    .line 67
    const v0, 0x84c5

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 68
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicSunsetFilter;->mMaskGrey2TextureId:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 69
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicSunsetFilter;->mMaskGrey2UniformLocation:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 71
    :cond_2
    return-void
.end method

.method protected onInit()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInit()V

    .line 76
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicSunsetFilter;->getProgram()I

    move-result v0

    const-string v1, "curve"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/advanced/MagicSunsetFilter;->mToneCurveTextureUniformLocation:I

    .line 77
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicSunsetFilter;->getProgram()I

    move-result v0

    const-string v1, "grey1Frame"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/advanced/MagicSunsetFilter;->mMaskGrey1UniformLocation:I

    .line 78
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicSunsetFilter;->getProgram()I

    move-result v0

    const-string v1, "grey2Frame"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/advanced/MagicSunsetFilter;->mMaskGrey2UniformLocation:I

    .line 79
    return-void
.end method

.method protected onInitialized()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInitialized()V

    .line 84
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicSunsetFilter$1;

    invoke-direct {v0, p0}, Lcom/seu/magicfilter/advanced/MagicSunsetFilter$1;-><init>(Lcom/seu/magicfilter/advanced/MagicSunsetFilter;)V

    invoke-virtual {p0, v0}, Lcom/seu/magicfilter/advanced/MagicSunsetFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method
