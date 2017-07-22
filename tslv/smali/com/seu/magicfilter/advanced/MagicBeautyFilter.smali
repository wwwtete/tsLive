.class public Lcom/seu/magicfilter/advanced/MagicBeautyFilter;
.super Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;
.source "MagicBeautyFilter.java"


# instance fields
.field private mSingleStepOffsetLocation:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/seu/magicfilter/utils/MagicFilterType;->BEAUTY:Lcom/seu/magicfilter/utils/MagicFilterType;

    sget v1, Lnet/ossrs/yasea/R$raw;->beauty:I

    invoke-direct {p0, v0, v1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;-><init>(Lcom/seu/magicfilter/utils/MagicFilterType;I)V

    .line 18
    return-void
.end method


# virtual methods
.method protected onInit()V
    .locals 2

    .prologue
    .line 21
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInit()V

    .line 22
    invoke-virtual {p0}, Lcom/seu/magicfilter/advanced/MagicBeautyFilter;->getProgram()I

    move-result v0

    const-string v1, "singleStepOffset"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/advanced/MagicBeautyFilter;->mSingleStepOffsetLocation:I

    .line 23
    return-void
.end method

.method public onInputSizeChanged(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 27
    invoke-super {p0, p1, p2}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInputSizeChanged(II)V

    .line 28
    iget v0, p0, Lcom/seu/magicfilter/advanced/MagicBeautyFilter;->mSingleStepOffsetLocation:I

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    int-to-float v3, p1

    div-float v3, v4, v3

    aput v3, v1, v2

    const/4 v2, 0x1

    int-to-float v3, p2

    div-float v3, v4, v3

    aput v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/seu/magicfilter/advanced/MagicBeautyFilter;->setFloatVec2(I[F)V

    .line 29
    return-void
.end method
