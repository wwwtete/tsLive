.class public Lcom/seu/magicfilter/advanced/MagicSutroFilter;
.super Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;
.source "MagicSutroFilter.java"


# instance fields
.field private inputTextureHandles:[I

.field private inputTextureUniformLocations:[I

.field private mGLStrengthLocation:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 18
    sget-object v0, Lcom/seu/magicfilter/utils/MagicFilterType;->SUTRO:Lcom/seu/magicfilter/utils/MagicFilterType;

    sget v1, Lnet/ossrs/yasea/R$raw;->sutro:I

    invoke-direct {p0, v0, v1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;-><init>(Lcom/seu/magicfilter/utils/MagicFilterType;I)V

    .line 13
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/seu/magicfilter/advanced/MagicSutroFilter;->inputTextureHandles:[I

    .line 14
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/seu/magicfilter/advanced/MagicSutroFilter;->inputTextureUniformLocations:[I

    .line 19
    return-void

    .line 13
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 14
    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/seu/magicfilter/advanced/MagicSutroFilter;)[I
    .locals 1
    .param p0, "x0"    # Lcom/seu/magicfilter/advanced/MagicSutroFilter;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicSutroFilter;->inputTextureHandles:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/seu/magicfilter/advanced/MagicSutroFilter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/seu/magicfilter/advanced/MagicSutroFilter;

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicSutroFilter;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/seu/magicfilter/advanced/MagicSutroFilter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/seu/magicfilter/advanced/MagicSutroFilter;

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicSutroFilter;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/seu/magicfilter/advanced/MagicSutroFilter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/seu/magicfilter/advanced/MagicSutroFilter;

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicSutroFilter;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/seu/magicfilter/advanced/MagicSutroFilter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/seu/magicfilter/advanced/MagicSutroFilter;

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicSutroFilter;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/seu/magicfilter/advanced/MagicSutroFilter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/seu/magicfilter/advanced/MagicSutroFilter;

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicSutroFilter;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onDestroy()V
    .locals 4

    .prologue
    .line 23
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onDestroy()V

    .line 24
    iget-object v1, p0, Lcom/seu/magicfilter/advanced/MagicSutroFilter;->inputTextureHandles:[I

    array-length v1, v1

    iget-object v2, p0, Lcom/seu/magicfilter/advanced/MagicSutroFilter;->inputTextureHandles:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 25
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/seu/magicfilter/advanced/MagicSutroFilter;->inputTextureHandles:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/seu/magicfilter/advanced/MagicSutroFilter;->inputTextureHandles:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method protected onDrawArraysAfter()V
    .locals 4

    .prologue
    const v3, 0x84c0

    .line 31
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/seu/magicfilter/advanced/MagicSutroFilter;->inputTextureHandles:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/seu/magicfilter/advanced/MagicSutroFilter;->inputTextureHandles:[I

    aget v1, v1, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 32
    add-int/lit8 v1, v0, 0x3

    add-int/2addr v1, v3

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 33
    const/16 v1, 0xde1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 34
    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method protected onDrawArraysPre()V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/seu/magicfilter/advanced/MagicSutroFilter;->inputTextureHandles:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/seu/magicfilter/advanced/MagicSutroFilter;->inputTextureHandles:[I

    aget v1, v1, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 41
    const v1, 0x84c0

    add-int/lit8 v2, v0, 0x3

    add-int/2addr v1, v2

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 42
    const/16 v1, 0xde1

    iget-object v2, p0, Lcom/seu/magicfilter/advanced/MagicSutroFilter;->inputTextureHandles:[I

    aget v2, v2, v0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 43
    iget-object v1, p0, Lcom/seu/magicfilter/advanced/MagicSutroFilter;->inputTextureUniformLocations:[I

    aget v1, v1, v0

    add-int/lit8 v2, v0, 0x3

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method protected onInit()V
    .locals 5

    .prologue
    .line 49
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInit()V

    .line 50
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/seu/magicfilter/advanced/MagicSutroFilter;->inputTextureUniformLocations:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/seu/magicfilter/advanced/MagicSutroFilter;->inputTextureUniformLocations:[I

    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicSutroFilter;->getProgram()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inputImageTexture"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicSutroFilter;->getProgram()I

    move-result v1

    const-string v2, "strength"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/seu/magicfilter/advanced/MagicSutroFilter;->mGLStrengthLocation:I

    .line 54
    return-void
.end method

.method protected onInitialized()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInitialized()V

    .line 59
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicSutroFilter;->mGLStrengthLocation:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/seu/magicfilter/advanced/MagicSutroFilter;->setFloat(IF)V

    .line 60
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicSutroFilter$1;

    invoke-direct {v0, p0}, Lcom/seu/magicfilter/advanced/MagicSutroFilter$1;-><init>(Lcom/seu/magicfilter/advanced/MagicSutroFilter;)V

    invoke-virtual {p0, v0}, Lcom/seu/magicfilter/advanced/MagicSutroFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 69
    return-void
.end method
