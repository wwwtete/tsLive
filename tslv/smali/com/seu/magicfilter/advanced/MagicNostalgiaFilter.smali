.class public Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter;
.super Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;
.source "MagicNostalgiaFilter.java"


# instance fields
.field private mBlurSizeUniformLocation:I

.field private mTexelHeightUniformLocation:I

.field private mTexelWidthUniformLocation:I

.field private mToneCurveTexture:[I

.field private mToneCurveTexture2:[I

.field private mToneCurveTextureUniformLocation:I

.field private mToneCurveTextureUniformLocation2:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 22
    sget-object v0, Lcom/seu/magicfilter/utils/MagicFilterType;->NOSTALGIA:Lcom/seu/magicfilter/utils/MagicFilterType;

    sget v1, Lnet/ossrs/yasea/R$raw;->nostalgia:I

    invoke-direct {p0, v0, v1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;-><init>(Lcom/seu/magicfilter/utils/MagicFilterType;I)V

    .line 16
    new-array v0, v4, [I

    aput v2, v0, v3

    iput-object v0, p0, Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter;->mToneCurveTexture:[I

    .line 17
    new-array v0, v4, [I

    aput v2, v0, v3

    iput-object v0, p0, Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter;->mToneCurveTexture2:[I

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter;)[I
    .locals 1
    .param p0, "x0"    # Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter;->mToneCurveTexture:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter;)[I
    .locals 1
    .param p0, "x0"    # Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter;->mToneCurveTexture2:[I

    return-object v0
.end method


# virtual methods
.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 27
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onDestroy()V

    .line 28
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter;->mToneCurveTexture:[I

    invoke-static {v3, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 29
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter;->mToneCurveTexture:[I

    aput v2, v0, v1

    .line 30
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter;->mToneCurveTexture2:[I

    invoke-static {v3, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 31
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter;->mToneCurveTexture2:[I

    aput v2, v0, v1

    .line 32
    return-void
.end method

.method protected onDrawArraysAfter()V
    .locals 5

    .prologue
    const v4, 0x84c0

    const/16 v3, 0xde1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 36
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter;->mToneCurveTexture:[I

    aget v0, v0, v1

    if-eq v0, v2, :cond_0

    .line 37
    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 38
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 39
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter;->mToneCurveTexture2:[I

    aget v0, v0, v1

    if-eq v0, v2, :cond_1

    .line 42
    const v0, 0x84c4

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 43
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 44
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 46
    :cond_1
    return-void
.end method

.method protected onDrawArraysPre()V
    .locals 5

    .prologue
    const/16 v4, 0xde1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 50
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter;->mToneCurveTexture:[I

    aget v0, v0, v2

    if-eq v0, v3, :cond_0

    .line 51
    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 52
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter;->mToneCurveTexture:[I

    aget v0, v0, v2

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 53
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter;->mToneCurveTextureUniformLocation:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter;->mToneCurveTexture2:[I

    aget v0, v0, v2

    if-eq v0, v3, :cond_1

    .line 56
    const v0, 0x84c4

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 57
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter;->mToneCurveTexture:[I

    aget v0, v0, v2

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 58
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter;->mToneCurveTextureUniformLocation2:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 60
    :cond_1
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter;->mBlurSizeUniformLocation:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 61
    return-void
.end method

.method protected onInit()V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInit()V

    .line 66
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter;->getProgram()I

    move-result v0

    const-string v1, "curve"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter;->mToneCurveTextureUniformLocation:I

    .line 67
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter;->getProgram()I

    move-result v0

    const-string v1, "curve2"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter;->mToneCurveTextureUniformLocation2:I

    .line 68
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter;->getProgram()I

    move-result v0

    const-string v1, "texelWidthOffset"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter;->mTexelWidthUniformLocation:I

    .line 69
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter;->getProgram()I

    move-result v0

    const-string v1, "texelHeightOffset"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter;->mTexelHeightUniformLocation:I

    .line 70
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter;->getProgram()I

    move-result v0

    const-string v1, "blurSize"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter;->mBlurSizeUniformLocation:I

    .line 71
    return-void
.end method

.method protected onInitialized()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInitialized()V

    .line 76
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter$1;

    invoke-direct {v0, p0}, Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter$1;-><init>(Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter;)V

    invoke-virtual {p0, v0}, Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method

.method public onInputSizeChanged(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 137
    invoke-super {p0, p1, p2}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInputSizeChanged(II)V

    .line 138
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter;->mTexelWidthUniformLocation:I

    int-to-float v1, p1

    div-float v1, v2, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 139
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter;->mTexelHeightUniformLocation:I

    int-to-float v1, p2

    div-float v1, v2, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 140
    return-void
.end method
