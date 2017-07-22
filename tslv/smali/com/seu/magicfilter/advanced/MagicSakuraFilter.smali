.class public Lcom/seu/magicfilter/advanced/MagicSakuraFilter;
.super Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;
.source "MagicSakuraFilter.java"


# instance fields
.field private mTexelHeightUniformLocation:I

.field private mTexelWidthUniformLocation:I

.field private mToneCurveTexture:[I

.field private mToneCurveTextureUniformLocation:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 19
    sget-object v0, Lcom/seu/magicfilter/utils/MagicFilterType;->SAKURA:Lcom/seu/magicfilter/utils/MagicFilterType;

    sget v1, Lnet/ossrs/yasea/R$raw;->romance:I

    invoke-direct {p0, v0, v1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;-><init>(Lcom/seu/magicfilter/utils/MagicFilterType;I)V

    .line 13
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    iput-object v0, p0, Lcom/seu/magicfilter/advanced/MagicSakuraFilter;->mToneCurveTexture:[I

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/seu/magicfilter/advanced/MagicSakuraFilter;)[I
    .locals 1
    .param p0, "x0"    # Lcom/seu/magicfilter/advanced/MagicSakuraFilter;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicSakuraFilter;->mToneCurveTexture:[I

    return-object v0
.end method


# virtual methods
.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onDestroy()V

    .line 25
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/seu/magicfilter/advanced/MagicSakuraFilter;->mToneCurveTexture:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 26
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicSakuraFilter;->mToneCurveTexture:[I

    const/4 v1, -0x1

    aput v1, v0, v2

    .line 27
    return-void
.end method

.method protected onDrawArraysAfter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicSakuraFilter;->mToneCurveTexture:[I

    aget v0, v0, v2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 32
    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 33
    const/16 v0, 0xde1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 34
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 36
    :cond_0
    return-void
.end method

.method protected onDrawArraysPre()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicSakuraFilter;->mToneCurveTexture:[I

    aget v0, v0, v2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 41
    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 42
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/seu/magicfilter/advanced/MagicSakuraFilter;->mToneCurveTexture:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 43
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicSakuraFilter;->mToneCurveTextureUniformLocation:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 45
    :cond_0
    return-void
.end method

.method protected onInit()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInit()V

    .line 50
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicSakuraFilter;->getProgram()I

    move-result v0

    const-string v1, "curve"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/advanced/MagicSakuraFilter;->mToneCurveTextureUniformLocation:I

    .line 51
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicSakuraFilter;->getProgram()I

    move-result v0

    const-string v1, "texelWidthOffset"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/advanced/MagicSakuraFilter;->mTexelWidthUniformLocation:I

    .line 52
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicSakuraFilter;->getProgram()I

    move-result v0

    const-string v1, "texelHeightOffset"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/advanced/MagicSakuraFilter;->mTexelHeightUniformLocation:I

    .line 53
    return-void
.end method

.method protected onInitialized()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInitialized()V

    .line 58
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicSakuraFilter$1;

    invoke-direct {v0, p0}, Lcom/seu/magicfilter/advanced/MagicSakuraFilter$1;-><init>(Lcom/seu/magicfilter/advanced/MagicSakuraFilter;)V

    invoke-virtual {p0, v0}, Lcom/seu/magicfilter/advanced/MagicSakuraFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method

.method public onInputSizeChanged(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 86
    invoke-super {p0, p1, p2}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInputSizeChanged(II)V

    .line 87
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicSakuraFilter;->mTexelWidthUniformLocation:I

    int-to-float v1, p1

    div-float v1, v2, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 88
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicSakuraFilter;->mTexelHeightUniformLocation:I

    int-to-float v1, p2

    div-float v1, v2, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 89
    return-void
.end method
