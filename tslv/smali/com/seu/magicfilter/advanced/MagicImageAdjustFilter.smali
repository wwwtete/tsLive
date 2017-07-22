.class public Lcom/seu/magicfilter/advanced/MagicImageAdjustFilter;
.super Lcom/seu/magicfilter/base/MagicBaseGroupFilter;
.source "MagicImageAdjustFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/seu/magicfilter/advanced/MagicImageAdjustFilter;->initFilters()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;-><init>(Ljava/util/List;)V

    .line 19
    return-void
.end method

.method private static initFilters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .local v0, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;>;"
    new-instance v1, Lcom/seu/magicfilter/base/gpuimage/GPUImageContrastFilter;

    invoke-direct {v1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageContrastFilter;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v1, Lcom/seu/magicfilter/base/gpuimage/GPUImageBrightnessFilter;

    invoke-direct {v1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageBrightnessFilter;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v1, Lcom/seu/magicfilter/base/gpuimage/GPUImageExposureFilter;

    invoke-direct {v1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageExposureFilter;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v1, Lcom/seu/magicfilter/base/gpuimage/GPUImageHueFilter;

    invoke-direct {v1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageHueFilter;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v1, Lcom/seu/magicfilter/base/gpuimage/GPUImageSaturationFilter;

    invoke-direct {v1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageSaturationFilter;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v1, Lcom/seu/magicfilter/base/gpuimage/GPUImageSharpenFilter;

    invoke-direct {v1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageSharpenFilter;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    return-object v0
.end method


# virtual methods
.method public setBrightness(F)V
    .locals 2
    .param p1, "range"    # F

    .prologue
    .line 41
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicImageAdjustFilter;->filters:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/seu/magicfilter/base/gpuimage/GPUImageBrightnessFilter;

    invoke-virtual {v0, p1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageBrightnessFilter;->setBrightness(F)V

    .line 42
    return-void
.end method

.method public setContrast(F)V
    .locals 2
    .param p1, "range"    # F

    .prologue
    .line 45
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicImageAdjustFilter;->filters:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/seu/magicfilter/base/gpuimage/GPUImageContrastFilter;

    invoke-virtual {v0, p1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageContrastFilter;->setContrast(F)V

    .line 46
    return-void
.end method

.method public setExposure(F)V
    .locals 2
    .param p1, "range"    # F

    .prologue
    .line 53
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicImageAdjustFilter;->filters:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/seu/magicfilter/base/gpuimage/GPUImageExposureFilter;

    invoke-virtual {v0, p1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageExposureFilter;->setExposure(F)V

    .line 54
    return-void
.end method

.method public setHue(F)V
    .locals 2
    .param p1, "range"    # F

    .prologue
    .line 37
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicImageAdjustFilter;->filters:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/seu/magicfilter/base/gpuimage/GPUImageHueFilter;

    invoke-virtual {v0, p1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageHueFilter;->setHue(F)V

    .line 38
    return-void
.end method

.method public setSaturation(F)V
    .locals 2
    .param p1, "range"    # F

    .prologue
    .line 49
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicImageAdjustFilter;->filters:Ljava/util/List;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/seu/magicfilter/base/gpuimage/GPUImageSaturationFilter;

    invoke-virtual {v0, p1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageSaturationFilter;->setSaturation(F)V

    .line 50
    return-void
.end method

.method public setSharpness(F)V
    .locals 2
    .param p1, "range"    # F

    .prologue
    .line 33
    iget-object v0, p0, Lcom/seu/magicfilter/advanced/MagicImageAdjustFilter;->filters:Ljava/util/List;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/seu/magicfilter/base/gpuimage/GPUImageSharpenFilter;

    invoke-virtual {v0, p1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageSharpenFilter;->setSharpness(F)V

    .line 34
    return-void
.end method
