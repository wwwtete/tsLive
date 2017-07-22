.class public Lcom/seu/magicfilter/advanced/MagicFreudFilter;
.super Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;
.source "MagicFreudFilter.java"


# instance fields
.field private inputTextureHandles:[I

.field private inputTextureUniformLocations:[I

.field private mGLStrengthLocation:I

.field private mTexelHeightUniformLocation:I

.field private mTexelWidthUniformLocation:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 20
    sget-object v0, Lcom/seu/magicfilter/utils/MagicFilterType;->FREUD:Lcom/seu/magicfilter/utils/MagicFilterType;

    sget v1, Lnet/ossrs/yasea/R$raw;->freud:I

    invoke-direct {p0, v0, v1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;-><init>(Lcom/seu/magicfilter/utils/MagicFilterType;I)V

    .line 15
    new-array v0, v4, [I

    aput v2, v0, v3

    iput-object v0, p0, Lcom/seu/magicfilter/advanced/MagicFreudFilter;->inputTextureHandles:[I

    .line 16
    new-array v0, v4, [I

    aput v2, v0, v3

    iput-object v0, p0, Lcom/seu/magicfilter/advanced/MagicFreudFilter;->inputTextureUniformLocations:[I

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/seu/magicfilter/advanced/MagicFreudFilter;)[I
    .locals 1
    .param p0, "x0"    # Lcom/seu/magicfilter/advanced/MagicFreudFilter;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicFreudFilter;->inputTextureHandles:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/seu/magicfilter/advanced/MagicFreudFilter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/seu/magicfilter/advanced/MagicFreudFilter;

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicFreudFilter;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onDestroy()V
    .locals 4

    .prologue
    .line 25
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onDestroy()V

    .line 26
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/seu/magicfilter/advanced/MagicFreudFilter;->inputTextureHandles:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 27
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/seu/magicfilter/advanced/MagicFreudFilter;->inputTextureHandles:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/seu/magicfilter/advanced/MagicFreudFilter;->inputTextureHandles:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method protected onDrawArraysAfter()V
    .locals 4

    .prologue
    const v3, 0x84c0

    .line 33
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/seu/magicfilter/advanced/MagicFreudFilter;->inputTextureHandles:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/seu/magicfilter/advanced/MagicFreudFilter;->inputTextureHandles:[I

    aget v1, v1, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 34
    add-int/lit8 v1, v0, 0x3

    add-int/2addr v1, v3

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 35
    const/16 v1, 0xde1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 36
    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method protected onDrawArraysPre()V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/seu/magicfilter/advanced/MagicFreudFilter;->inputTextureHandles:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/seu/magicfilter/advanced/MagicFreudFilter;->inputTextureHandles:[I

    aget v1, v1, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 43
    const v1, 0x84c0

    add-int/lit8 v2, v0, 0x3

    add-int/2addr v1, v2

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 44
    const/16 v1, 0xde1

    iget-object v2, p0, Lcom/seu/magicfilter/advanced/MagicFreudFilter;->inputTextureHandles:[I

    aget v2, v2, v0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 45
    iget-object v1, p0, Lcom/seu/magicfilter/advanced/MagicFreudFilter;->inputTextureUniformLocations:[I

    aget v1, v1, v0

    add-int/lit8 v2, v0, 0x3

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method

.method protected onInit()V
    .locals 4

    .prologue
    .line 51
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInit()V

    .line 52
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicFreudFilter;->inputTextureUniformLocations:[I

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicFreudFilter;->getProgram()I

    move-result v2

    const-string v3, "inputImageTexture2"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 54
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicFreudFilter;->getProgram()I

    move-result v0

    const-string v1, "inputImageTextureWidth"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/advanced/MagicFreudFilter;->mTexelWidthUniformLocation:I

    .line 55
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicFreudFilter;->getProgram()I

    move-result v0

    const-string v1, "inputImageTextureHeight"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/advanced/MagicFreudFilter;->mTexelHeightUniformLocation:I

    .line 57
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicFreudFilter;->getProgram()I

    move-result v0

    const-string v1, "strength"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/advanced/MagicFreudFilter;->mGLStrengthLocation:I

    .line 58
    return-void
.end method

.method protected onInitialized()V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInitialized()V

    .line 63
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicFreudFilter;->mGLStrengthLocation:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/seu/magicfilter/advanced/MagicFreudFilter;->setFloat(IF)V

    .line 64
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicFreudFilter$1;

    invoke-direct {v0, p0}, Lcom/seu/magicfilter/advanced/MagicFreudFilter$1;-><init>(Lcom/seu/magicfilter/advanced/MagicFreudFilter;)V

    invoke-virtual {p0, v0}, Lcom/seu/magicfilter/advanced/MagicFreudFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 69
    return-void
.end method

.method public onInputSizeChanged(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInputSizeChanged(II)V

    .line 74
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicFreudFilter;->mTexelWidthUniformLocation:I

    int-to-float v1, p1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 75
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicFreudFilter;->mTexelHeightUniformLocation:I

    int-to-float v1, p2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 76
    return-void
.end method
