.class public Lcom/seu/magicfilter/advanced/MagicBlackCatFilter;
.super Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;
.source "MagicBlackCatFilter.java"


# instance fields
.field private mToneCurveTexture:[I

.field private mToneCurveTextureUniformLocation:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 18
    sget-object v0, Lcom/seu/magicfilter/utils/MagicFilterType;->BLACKCAT:Lcom/seu/magicfilter/utils/MagicFilterType;

    sget v1, Lnet/ossrs/yasea/R$raw;->blackcat:I

    invoke-direct {p0, v0, v1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;-><init>(Lcom/seu/magicfilter/utils/MagicFilterType;I)V

    .line 14
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    iput-object v0, p0, Lcom/seu/magicfilter/advanced/MagicBlackCatFilter;->mToneCurveTexture:[I

    .line 19
    return-void
.end method

.method static synthetic access$000(Lcom/seu/magicfilter/advanced/MagicBlackCatFilter;)[I
    .locals 1
    .param p0, "x0"    # Lcom/seu/magicfilter/advanced/MagicBlackCatFilter;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicBlackCatFilter;->mToneCurveTexture:[I

    return-object v0
.end method


# virtual methods
.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onDestroy()V

    .line 24
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/seu/magicfilter/advanced/MagicBlackCatFilter;->mToneCurveTexture:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 25
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicBlackCatFilter;->mToneCurveTexture:[I

    const/4 v1, -0x1

    aput v1, v0, v2

    .line 26
    return-void
.end method

.method protected onDrawArraysAfter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicBlackCatFilter;->mToneCurveTexture:[I

    aget v0, v0, v2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 31
    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 32
    const/16 v0, 0xde1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 33
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 35
    :cond_0
    return-void
.end method

.method protected onDrawArraysPre()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicBlackCatFilter;->mToneCurveTexture:[I

    aget v0, v0, v2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 40
    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 41
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/seu/magicfilter/advanced/MagicBlackCatFilter;->mToneCurveTexture:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 42
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicBlackCatFilter;->mToneCurveTextureUniformLocation:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 44
    :cond_0
    return-void
.end method

.method protected onInit()V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInit()V

    .line 49
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicBlackCatFilter;->getProgram()I

    move-result v0

    const-string v1, "curve"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/advanced/MagicBlackCatFilter;->mToneCurveTextureUniformLocation:I

    .line 50
    return-void
.end method

.method protected onInitialized()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInitialized()V

    .line 55
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicBlackCatFilter$1;

    invoke-direct {v0, p0}, Lcom/seu/magicfilter/advanced/MagicBlackCatFilter$1;-><init>(Lcom/seu/magicfilter/advanced/MagicBlackCatFilter;)V

    invoke-virtual {p0, v0}, Lcom/seu/magicfilter/advanced/MagicBlackCatFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method
