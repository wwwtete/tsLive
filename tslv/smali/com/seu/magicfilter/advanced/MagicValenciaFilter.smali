.class public Lcom/seu/magicfilter/advanced/MagicValenciaFilter;
.super Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;
.source "MagicValenciaFilter.java"


# instance fields
.field private inputTextureHandles:[I

.field private inputTextureUniformLocations:[I

.field private mGLStrengthLocation:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 18
    sget-object v0, Lcom/seu/magicfilter/utils/MagicFilterType;->VALENCIA:Lcom/seu/magicfilter/utils/MagicFilterType;

    sget v1, Lnet/ossrs/yasea/R$raw;->valencia:I

    invoke-direct {p0, v0, v1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;-><init>(Lcom/seu/magicfilter/utils/MagicFilterType;I)V

    .line 13
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/seu/magicfilter/advanced/MagicValenciaFilter;->inputTextureHandles:[I

    .line 14
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/seu/magicfilter/advanced/MagicValenciaFilter;->inputTextureUniformLocations:[I

    .line 19
    return-void

    .line 13
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 14
    :array_1
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/seu/magicfilter/advanced/MagicValenciaFilter;)[I
    .locals 1
    .param p0, "x0"    # Lcom/seu/magicfilter/advanced/MagicValenciaFilter;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicValenciaFilter;->inputTextureHandles:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/seu/magicfilter/advanced/MagicValenciaFilter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/seu/magicfilter/advanced/MagicValenciaFilter;

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicValenciaFilter;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/seu/magicfilter/advanced/MagicValenciaFilter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/seu/magicfilter/advanced/MagicValenciaFilter;

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicValenciaFilter;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onDestroy()V
    .locals 4

    .prologue
    .line 52
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onDestroy()V

    .line 53
    iget-object v1, p0, Lcom/seu/magicfilter/advanced/MagicValenciaFilter;->inputTextureHandles:[I

    array-length v1, v1

    iget-object v2, p0, Lcom/seu/magicfilter/advanced/MagicValenciaFilter;->inputTextureHandles:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/seu/magicfilter/advanced/MagicValenciaFilter;->inputTextureHandles:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/seu/magicfilter/advanced/MagicValenciaFilter;->inputTextureHandles:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

.method protected onDrawArraysAfter()V
    .locals 4

    .prologue
    const v3, 0x84c0

    .line 23
    const/4 v0, 0x0

    .line 24
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/seu/magicfilter/advanced/MagicValenciaFilter;->inputTextureHandles:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/seu/magicfilter/advanced/MagicValenciaFilter;->inputTextureHandles:[I

    aget v1, v1, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 25
    add-int/lit8 v1, v0, 0x3

    add-int/2addr v1, v3

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 26
    const/16 v1, 0xde1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 27
    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method protected onDrawArraysPre()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/seu/magicfilter/advanced/MagicValenciaFilter;->inputTextureHandles:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/seu/magicfilter/advanced/MagicValenciaFilter;->inputTextureHandles:[I

    aget v1, v1, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 35
    const v1, 0x84c0

    add-int/lit8 v2, v0, 0x3

    add-int/2addr v1, v2

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 36
    const/16 v1, 0xde1

    iget-object v2, p0, Lcom/seu/magicfilter/advanced/MagicValenciaFilter;->inputTextureHandles:[I

    aget v2, v2, v0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 37
    iget-object v1, p0, Lcom/seu/magicfilter/advanced/MagicValenciaFilter;->inputTextureUniformLocations:[I

    aget v1, v1, v0

    add-int/lit8 v2, v0, 0x3

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method public onInit()V
    .locals 5

    .prologue
    .line 43
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInit()V

    .line 44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/seu/magicfilter/advanced/MagicValenciaFilter;->inputTextureUniformLocations:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/seu/magicfilter/advanced/MagicValenciaFilter;->inputTextureUniformLocations:[I

    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicValenciaFilter;->getProgram()I

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

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicValenciaFilter;->getProgram()I

    move-result v1

    const-string v2, "strength"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/seu/magicfilter/advanced/MagicValenciaFilter;->mGLStrengthLocation:I

    .line 48
    return-void
.end method

.method public onInitialized()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInitialized()V

    .line 62
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicValenciaFilter;->mGLStrengthLocation:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/seu/magicfilter/advanced/MagicValenciaFilter;->setFloat(IF)V

    .line 63
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicValenciaFilter$1;

    invoke-direct {v0, p0}, Lcom/seu/magicfilter/advanced/MagicValenciaFilter$1;-><init>(Lcom/seu/magicfilter/advanced/MagicValenciaFilter;)V

    invoke-virtual {p0, v0}, Lcom/seu/magicfilter/advanced/MagicValenciaFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 69
    return-void
.end method
