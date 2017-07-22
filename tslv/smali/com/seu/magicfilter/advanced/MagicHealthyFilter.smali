.class public Lcom/seu/magicfilter/advanced/MagicHealthyFilter;
.super Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;
.source "MagicHealthyFilter.java"


# instance fields
.field private mMaskGrey1TextureId:I

.field private mMaskGrey1UniformLocation:I

.field private mTexelHeightUniformLocation:I

.field private mTexelWidthUniformLocation:I

.field private mToneCurveTexture:[I

.field private mToneCurveTextureUniformLocation:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 24
    sget-object v0, Lcom/seu/magicfilter/utils/MagicFilterType;->HEALTHY:Lcom/seu/magicfilter/utils/MagicFilterType;

    sget v1, Lnet/ossrs/yasea/R$raw;->healthy:I

    invoke-direct {p0, v0, v1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;-><init>(Lcom/seu/magicfilter/utils/MagicFilterType;I)V

    .line 16
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    iput-object v0, p0, Lcom/seu/magicfilter/advanced/MagicHealthyFilter;->mToneCurveTexture:[I

    .line 18
    iput v2, p0, Lcom/seu/magicfilter/advanced/MagicHealthyFilter;->mMaskGrey1TextureId:I

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/seu/magicfilter/advanced/MagicHealthyFilter;)[I
    .locals 1
    .param p0, "x0"    # Lcom/seu/magicfilter/advanced/MagicHealthyFilter;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicHealthyFilter;->mToneCurveTexture:[I

    return-object v0
.end method

.method static synthetic access$102(Lcom/seu/magicfilter/advanced/MagicHealthyFilter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/seu/magicfilter/advanced/MagicHealthyFilter;
    .param p1, "x1"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/seu/magicfilter/advanced/MagicHealthyFilter;->mMaskGrey1TextureId:I

    return p1
.end method

.method static synthetic access$200(Lcom/seu/magicfilter/advanced/MagicHealthyFilter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/seu/magicfilter/advanced/MagicHealthyFilter;

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicHealthyFilter;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onDestroy()V

    .line 30
    iget-object v1, p0, Lcom/seu/magicfilter/advanced/MagicHealthyFilter;->mToneCurveTexture:[I

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 31
    iget-object v1, p0, Lcom/seu/magicfilter/advanced/MagicHealthyFilter;->mToneCurveTexture:[I

    aput v4, v1, v2

    .line 32
    new-array v0, v3, [I

    .line 33
    .local v0, "texture":[I
    iget v1, p0, Lcom/seu/magicfilter/advanced/MagicHealthyFilter;->mMaskGrey1TextureId:I

    aput v1, v0, v2

    .line 34
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 35
    iput v4, p0, Lcom/seu/magicfilter/advanced/MagicHealthyFilter;->mMaskGrey1TextureId:I

    .line 36
    return-void
.end method

.method protected onDrawArraysAfter()V
    .locals 5

    .prologue
    const v4, 0x84c0

    const/16 v3, 0xde1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 40
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicHealthyFilter;->mToneCurveTexture:[I

    aget v0, v0, v1

    if-eq v0, v2, :cond_0

    .line 41
    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 42
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 43
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 45
    :cond_0
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicHealthyFilter;->mMaskGrey1TextureId:I

    if-eq v0, v2, :cond_1

    .line 46
    const v0, 0x84c4

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 47
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 48
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 50
    :cond_1
    return-void
.end method

.method protected onDrawArraysPre()V
    .locals 4

    .prologue
    const/16 v3, 0xde1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 54
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicHealthyFilter;->mToneCurveTexture:[I

    aget v0, v0, v1

    if-eq v0, v2, :cond_0

    .line 55
    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 56
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicHealthyFilter;->mToneCurveTexture:[I

    aget v0, v0, v1

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 57
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicHealthyFilter;->mToneCurveTextureUniformLocation:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 59
    :cond_0
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicHealthyFilter;->mMaskGrey1TextureId:I

    if-eq v0, v2, :cond_1

    .line 60
    const v0, 0x84c4

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 61
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicHealthyFilter;->mMaskGrey1TextureId:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 62
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicHealthyFilter;->mMaskGrey1UniformLocation:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 64
    :cond_1
    return-void
.end method

.method protected onInit()V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInit()V

    .line 69
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicHealthyFilter;->getProgram()I

    move-result v0

    const-string v1, "curve"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/advanced/MagicHealthyFilter;->mToneCurveTextureUniformLocation:I

    .line 70
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicHealthyFilter;->getProgram()I

    move-result v0

    const-string v1, "mask"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/advanced/MagicHealthyFilter;->mMaskGrey1UniformLocation:I

    .line 71
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicHealthyFilter;->getProgram()I

    move-result v0

    const-string v1, "texelWidthOffset"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/advanced/MagicHealthyFilter;->mTexelWidthUniformLocation:I

    .line 72
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicHealthyFilter;->getProgram()I

    move-result v0

    const-string v1, "texelHeightOffset"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/advanced/MagicHealthyFilter;->mTexelHeightUniformLocation:I

    .line 73
    return-void
.end method

.method protected onInitialized()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInitialized()V

    .line 78
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicHealthyFilter$1;

    invoke-direct {v0, p0}, Lcom/seu/magicfilter/advanced/MagicHealthyFilter$1;-><init>(Lcom/seu/magicfilter/advanced/MagicHealthyFilter;)V

    invoke-virtual {p0, v0}, Lcom/seu/magicfilter/advanced/MagicHealthyFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method

.method public onInputSizeChanged(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 109
    invoke-super {p0, p1, p2}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInputSizeChanged(II)V

    .line 110
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicHealthyFilter;->mTexelWidthUniformLocation:I

    int-to-float v1, p1

    div-float v1, v2, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 111
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicHealthyFilter;->mTexelHeightUniformLocation:I

    int-to-float v1, p2

    div-float v1, v2, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 112
    return-void
.end method
