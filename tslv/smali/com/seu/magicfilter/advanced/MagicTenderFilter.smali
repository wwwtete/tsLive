.class public Lcom/seu/magicfilter/advanced/MagicTenderFilter;
.super Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;
.source "MagicTenderFilter.java"


# instance fields
.field private mMaskGrey1TextureId:I

.field private mMaskGrey1UniformLocation:I

.field private mToneCurveTexture:[I

.field private mToneCurveTextureUniformLocation:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 21
    sget-object v0, Lcom/seu/magicfilter/utils/MagicFilterType;->TENDER:Lcom/seu/magicfilter/utils/MagicFilterType;

    sget v1, Lnet/ossrs/yasea/R$raw;->tender:I

    invoke-direct {p0, v0, v1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;-><init>(Lcom/seu/magicfilter/utils/MagicFilterType;I)V

    .line 15
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    iput-object v0, p0, Lcom/seu/magicfilter/advanced/MagicTenderFilter;->mToneCurveTexture:[I

    .line 17
    iput v2, p0, Lcom/seu/magicfilter/advanced/MagicTenderFilter;->mMaskGrey1TextureId:I

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/seu/magicfilter/advanced/MagicTenderFilter;)[I
    .locals 1
    .param p0, "x0"    # Lcom/seu/magicfilter/advanced/MagicTenderFilter;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicTenderFilter;->mToneCurveTexture:[I

    return-object v0
.end method

.method static synthetic access$102(Lcom/seu/magicfilter/advanced/MagicTenderFilter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/seu/magicfilter/advanced/MagicTenderFilter;
    .param p1, "x1"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/seu/magicfilter/advanced/MagicTenderFilter;->mMaskGrey1TextureId:I

    return p1
.end method

.method static synthetic access$200(Lcom/seu/magicfilter/advanced/MagicTenderFilter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/seu/magicfilter/advanced/MagicTenderFilter;

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicTenderFilter;->getContext()Landroid/content/Context;

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

    .line 26
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onDestroy()V

    .line 27
    new-array v0, v5, [I

    iget-object v1, p0, Lcom/seu/magicfilter/advanced/MagicTenderFilter;->mToneCurveTexture:[I

    aget v1, v1, v3

    aput v1, v0, v3

    const/4 v1, 0x1

    iget v2, p0, Lcom/seu/magicfilter/advanced/MagicTenderFilter;->mMaskGrey1TextureId:I

    aput v2, v0, v1

    invoke-static {v5, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 28
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicTenderFilter;->mToneCurveTexture:[I

    aput v4, v0, v3

    .line 29
    iput v4, p0, Lcom/seu/magicfilter/advanced/MagicTenderFilter;->mMaskGrey1TextureId:I

    .line 30
    return-void
.end method

.method protected onDrawArraysAfter()V
    .locals 5

    .prologue
    const v4, 0x84c0

    const/16 v3, 0xde1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 34
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicTenderFilter;->mToneCurveTexture:[I

    aget v0, v0, v1

    if-eq v0, v2, :cond_0

    .line 35
    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 36
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 37
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 39
    :cond_0
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicTenderFilter;->mMaskGrey1TextureId:I

    if-eq v0, v2, :cond_1

    .line 40
    const v0, 0x84c4

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 41
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 42
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 44
    :cond_1
    return-void
.end method

.method protected onDrawArraysPre()V
    .locals 4

    .prologue
    const/16 v3, 0xde1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 48
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicTenderFilter;->mToneCurveTexture:[I

    aget v0, v0, v1

    if-eq v0, v2, :cond_0

    .line 49
    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 50
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicTenderFilter;->mToneCurveTexture:[I

    aget v0, v0, v1

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 51
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicTenderFilter;->mToneCurveTextureUniformLocation:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 53
    :cond_0
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicTenderFilter;->mMaskGrey1TextureId:I

    if-eq v0, v2, :cond_1

    .line 54
    const v0, 0x84c4

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 55
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicTenderFilter;->mMaskGrey1TextureId:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 56
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicTenderFilter;->mMaskGrey1UniformLocation:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 58
    :cond_1
    return-void
.end method

.method protected onInit()V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInit()V

    .line 63
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicTenderFilter;->getProgram()I

    move-result v0

    const-string v1, "curve"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/advanced/MagicTenderFilter;->mToneCurveTextureUniformLocation:I

    .line 64
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicTenderFilter;->getProgram()I

    move-result v0

    const-string v1, "grey1Frame"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/advanced/MagicTenderFilter;->mMaskGrey1UniformLocation:I

    .line 65
    return-void
.end method

.method protected onInitialized()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInitialized()V

    .line 70
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicTenderFilter$1;

    invoke-direct {v0, p0}, Lcom/seu/magicfilter/advanced/MagicTenderFilter$1;-><init>(Lcom/seu/magicfilter/advanced/MagicTenderFilter;)V

    invoke-virtual {p0, v0}, Lcom/seu/magicfilter/advanced/MagicTenderFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method
