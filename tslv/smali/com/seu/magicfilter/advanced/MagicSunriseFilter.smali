.class public Lcom/seu/magicfilter/advanced/MagicSunriseFilter;
.super Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;
.source "MagicSunriseFilter.java"


# instance fields
.field private mMaskGrey1TextureId:I

.field private mMaskGrey1UniformLocation:I

.field private mMaskGrey2TextureId:I

.field private mMaskGrey2UniformLocation:I

.field private mMaskGrey3TextureId:I

.field private mMaskGrey3UniformLocation:I

.field private mToneCurveTexture:[I

.field private mToneCurveTextureUniformLocation:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 25
    sget-object v0, Lcom/seu/magicfilter/utils/MagicFilterType;->SUNRISE:Lcom/seu/magicfilter/utils/MagicFilterType;

    sget v1, Lnet/ossrs/yasea/R$raw;->sunrise:I

    invoke-direct {p0, v0, v1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;-><init>(Lcom/seu/magicfilter/utils/MagicFilterType;I)V

    .line 15
    iput v2, p0, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->mMaskGrey1TextureId:I

    .line 17
    iput v2, p0, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->mMaskGrey2TextureId:I

    .line 19
    iput v2, p0, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->mMaskGrey3TextureId:I

    .line 21
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    iput-object v0, p0, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->mToneCurveTexture:[I

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/seu/magicfilter/advanced/MagicSunriseFilter;)[I
    .locals 1
    .param p0, "x0"    # Lcom/seu/magicfilter/advanced/MagicSunriseFilter;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->mToneCurveTexture:[I

    return-object v0
.end method

.method static synthetic access$102(Lcom/seu/magicfilter/advanced/MagicSunriseFilter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/seu/magicfilter/advanced/MagicSunriseFilter;
    .param p1, "x1"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->mMaskGrey1TextureId:I

    return p1
.end method

.method static synthetic access$200(Lcom/seu/magicfilter/advanced/MagicSunriseFilter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/seu/magicfilter/advanced/MagicSunriseFilter;

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/seu/magicfilter/advanced/MagicSunriseFilter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/seu/magicfilter/advanced/MagicSunriseFilter;
    .param p1, "x1"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->mMaskGrey2TextureId:I

    return p1
.end method

.method static synthetic access$400(Lcom/seu/magicfilter/advanced/MagicSunriseFilter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/seu/magicfilter/advanced/MagicSunriseFilter;

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$502(Lcom/seu/magicfilter/advanced/MagicSunriseFilter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/seu/magicfilter/advanced/MagicSunriseFilter;
    .param p1, "x1"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->mMaskGrey3TextureId:I

    return p1
.end method

.method static synthetic access$600(Lcom/seu/magicfilter/advanced/MagicSunriseFilter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/seu/magicfilter/advanced/MagicSunriseFilter;

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->getContext()Landroid/content/Context;

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

    .line 30
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onDestroy()V

    .line 31
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->mToneCurveTexture:[I

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 32
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->mToneCurveTexture:[I

    aput v4, v0, v2

    .line 33
    new-array v0, v3, [I

    iget v1, p0, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->mMaskGrey1TextureId:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 34
    iput v4, p0, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->mMaskGrey1TextureId:I

    .line 35
    new-array v0, v3, [I

    iget v1, p0, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->mMaskGrey2TextureId:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 36
    iput v4, p0, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->mMaskGrey2TextureId:I

    .line 37
    new-array v0, v3, [I

    iget v1, p0, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->mMaskGrey3TextureId:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 38
    iput v4, p0, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->mMaskGrey3TextureId:I

    .line 39
    return-void
.end method

.method protected onDrawArraysAfter()V
    .locals 5

    .prologue
    const v4, 0x84c0

    const/16 v3, 0xde1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 43
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->mToneCurveTexture:[I

    aget v0, v0, v1

    if-eq v0, v2, :cond_0

    .line 44
    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 45
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 46
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 48
    :cond_0
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->mMaskGrey1TextureId:I

    if-eq v0, v2, :cond_1

    .line 49
    const v0, 0x84c4

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 50
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 51
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 53
    :cond_1
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->mMaskGrey2TextureId:I

    if-eq v0, v2, :cond_2

    .line 54
    const v0, 0x84c5

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 55
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 56
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 58
    :cond_2
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->mMaskGrey3TextureId:I

    if-eq v0, v2, :cond_3

    .line 59
    const v0, 0x84c6

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 60
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 61
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 63
    :cond_3
    return-void
.end method

.method protected onDrawArraysPre()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0xde1

    const/4 v2, -0x1

    .line 67
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->mToneCurveTexture:[I

    aget v0, v0, v1

    if-eq v0, v2, :cond_0

    .line 68
    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 69
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->mToneCurveTexture:[I

    aget v0, v0, v1

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 70
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->mToneCurveTextureUniformLocation:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 72
    :cond_0
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->mMaskGrey1TextureId:I

    if-eq v0, v2, :cond_1

    .line 73
    const v0, 0x84c4

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 74
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->mMaskGrey1TextureId:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 75
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->mMaskGrey1UniformLocation:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 77
    :cond_1
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->mMaskGrey2TextureId:I

    if-eq v0, v2, :cond_2

    .line 78
    const v0, 0x84c5

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 79
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->mMaskGrey2TextureId:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 80
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->mMaskGrey2UniformLocation:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 82
    :cond_2
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->mMaskGrey3TextureId:I

    if-eq v0, v2, :cond_3

    .line 83
    const v0, 0x84c6

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 84
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->mMaskGrey3TextureId:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 85
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->mMaskGrey3UniformLocation:I

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 87
    :cond_3
    return-void
.end method

.method protected onInit()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInit()V

    .line 92
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->getProgram()I

    move-result v0

    const-string v1, "curve"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->mToneCurveTextureUniformLocation:I

    .line 93
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->getProgram()I

    move-result v0

    const-string v1, "grey1Frame"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->mMaskGrey1UniformLocation:I

    .line 94
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->getProgram()I

    move-result v0

    const-string v1, "grey2Frame"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->mMaskGrey2UniformLocation:I

    .line 95
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->getProgram()I

    move-result v0

    const-string v1, "grey3Frame"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->mMaskGrey3UniformLocation:I

    .line 96
    return-void
.end method

.method protected onInitialized()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInitialized()V

    .line 101
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicSunriseFilter$1;

    invoke-direct {v0, p0}, Lcom/seu/magicfilter/advanced/MagicSunriseFilter$1;-><init>(Lcom/seu/magicfilter/advanced/MagicSunriseFilter;)V

    invoke-virtual {p0, v0}, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 144
    return-void
.end method
