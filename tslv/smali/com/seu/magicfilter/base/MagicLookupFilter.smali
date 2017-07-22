.class public Lcom/seu/magicfilter/base/MagicLookupFilter;
.super Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;
.source "MagicLookupFilter.java"


# instance fields
.field private mLookupSourceTexture:I

.field private mLookupTextureUniform:I

.field protected table:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "table"    # Ljava/lang/String;

    .prologue
    .line 17
    sget-object v0, Lcom/seu/magicfilter/utils/MagicFilterType;->LOCKUP:Lcom/seu/magicfilter/utils/MagicFilterType;

    sget v1, Lnet/ossrs/yasea/R$raw;->lookup:I

    invoke-direct {p0, v0, v1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;-><init>(Lcom/seu/magicfilter/utils/MagicFilterType;I)V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/seu/magicfilter/base/MagicLookupFilter;->mLookupSourceTexture:I

    .line 18
    iput-object p1, p0, Lcom/seu/magicfilter/base/MagicLookupFilter;->table:Ljava/lang/String;

    .line 19
    return-void
.end method

.method static synthetic access$002(Lcom/seu/magicfilter/base/MagicLookupFilter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/seu/magicfilter/base/MagicLookupFilter;
    .param p1, "x1"    # I

    .prologue
    .line 12
    iput p1, p0, Lcom/seu/magicfilter/base/MagicLookupFilter;->mLookupSourceTexture:I

    return p1
.end method

.method static synthetic access$100(Lcom/seu/magicfilter/base/MagicLookupFilter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/seu/magicfilter/base/MagicLookupFilter;

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/seu/magicfilter/base/MagicLookupFilter;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onDestroy()V

    .line 40
    new-array v0, v3, [I

    iget v1, p0, Lcom/seu/magicfilter/base/MagicLookupFilter;->mLookupSourceTexture:I

    aput v1, v0, v2

    .line 41
    .local v0, "texture":[I
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 42
    const/4 v1, -0x1

    iput v1, p0, Lcom/seu/magicfilter/base/MagicLookupFilter;->mLookupSourceTexture:I

    .line 43
    return-void
.end method

.method protected onDrawArraysAfter()V
    .locals 2

    .prologue
    .line 46
    iget v0, p0, Lcom/seu/magicfilter/base/MagicLookupFilter;->mLookupSourceTexture:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 47
    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 48
    const/16 v0, 0xde1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 49
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 51
    :cond_0
    return-void
.end method

.method protected onDrawArraysPre()V
    .locals 2

    .prologue
    .line 54
    iget v0, p0, Lcom/seu/magicfilter/base/MagicLookupFilter;->mLookupSourceTexture:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 55
    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 56
    const/16 v0, 0xde1

    iget v1, p0, Lcom/seu/magicfilter/base/MagicLookupFilter;->mLookupSourceTexture:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 57
    iget v0, p0, Lcom/seu/magicfilter/base/MagicLookupFilter;->mLookupTextureUniform:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 59
    :cond_0
    return-void
.end method

.method protected onInit()V
    .locals 2

    .prologue
    .line 25
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInit()V

    .line 26
    invoke-virtual {p0}, Lcom/seu/magicfilter/base/MagicLookupFilter;->getProgram()I

    move-result v0

    const-string v1, "inputImageTexture2"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/base/MagicLookupFilter;->mLookupTextureUniform:I

    .line 27
    return-void
.end method

.method protected onInitialized()V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInitialized()V

    .line 31
    new-instance v0, Lcom/seu/magicfilter/base/MagicLookupFilter$1;

    invoke-direct {v0, p0}, Lcom/seu/magicfilter/base/MagicLookupFilter$1;-><init>(Lcom/seu/magicfilter/base/MagicLookupFilter;)V

    invoke-virtual {p0, v0}, Lcom/seu/magicfilter/base/MagicLookupFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 36
    return-void
.end method
