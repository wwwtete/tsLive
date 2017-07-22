.class public Lcom/seu/magicfilter/utils/MagicFilterFactory;
.super Ljava/lang/Object;
.source "MagicFilterFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initFilters(Lcom/seu/magicfilter/utils/MagicFilterType;)Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;
    .locals 2
    .param p0, "type"    # Lcom/seu/magicfilter/utils/MagicFilterType;

    .prologue
    .line 59
    sget-object v0, Lcom/seu/magicfilter/utils/MagicFilterFactory$1;->$SwitchMap$com$seu$magicfilter$utils$MagicFilterType:[I

    invoke-virtual {p0}, Lcom/seu/magicfilter/utils/MagicFilterType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 162
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 61
    :pswitch_0
    new-instance v0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;-><init>()V

    goto :goto_0

    .line 63
    :pswitch_1
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicWhiteCatFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicWhiteCatFilter;-><init>()V

    goto :goto_0

    .line 65
    :pswitch_2
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicBlackCatFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicBlackCatFilter;-><init>()V

    goto :goto_0

    .line 67
    :pswitch_3
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicSkinWhitenFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicSkinWhitenFilter;-><init>()V

    goto :goto_0

    .line 69
    :pswitch_4
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicBeautyFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicBeautyFilter;-><init>()V

    goto :goto_0

    .line 71
    :pswitch_5
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicRomanceFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicRomanceFilter;-><init>()V

    goto :goto_0

    .line 73
    :pswitch_6
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicSakuraFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicSakuraFilter;-><init>()V

    goto :goto_0

    .line 75
    :pswitch_7
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicAmaroFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicAmaroFilter;-><init>()V

    goto :goto_0

    .line 77
    :pswitch_8
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicWaldenFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicWaldenFilter;-><init>()V

    goto :goto_0

    .line 79
    :pswitch_9
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicAntiqueFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicAntiqueFilter;-><init>()V

    goto :goto_0

    .line 81
    :pswitch_a
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicCalmFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicCalmFilter;-><init>()V

    goto :goto_0

    .line 83
    :pswitch_b
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicBrannanFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicBrannanFilter;-><init>()V

    goto :goto_0

    .line 85
    :pswitch_c
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicBrooklynFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicBrooklynFilter;-><init>()V

    goto :goto_0

    .line 87
    :pswitch_d
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicEarlyBirdFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicEarlyBirdFilter;-><init>()V

    goto :goto_0

    .line 89
    :pswitch_e
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicFreudFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicFreudFilter;-><init>()V

    goto :goto_0

    .line 91
    :pswitch_f
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicHefeFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicHefeFilter;-><init>()V

    goto :goto_0

    .line 93
    :pswitch_10
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicHudsonFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicHudsonFilter;-><init>()V

    goto :goto_0

    .line 95
    :pswitch_11
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicInkwellFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicInkwellFilter;-><init>()V

    goto :goto_0

    .line 97
    :pswitch_12
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicKevinFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicKevinFilter;-><init>()V

    goto :goto_0

    .line 99
    :pswitch_13
    new-instance v0, Lcom/seu/magicfilter/base/MagicLookupFilter;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/seu/magicfilter/base/MagicLookupFilter;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :pswitch_14
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicLomoFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicLomoFilter;-><init>()V

    goto :goto_0

    .line 103
    :pswitch_15
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicN1977Filter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicN1977Filter;-><init>()V

    goto/16 :goto_0

    .line 105
    :pswitch_16
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicNashvilleFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicNashvilleFilter;-><init>()V

    goto/16 :goto_0

    .line 107
    :pswitch_17
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicPixarFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicPixarFilter;-><init>()V

    goto/16 :goto_0

    .line 109
    :pswitch_18
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicRiseFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicRiseFilter;-><init>()V

    goto/16 :goto_0

    .line 111
    :pswitch_19
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicSierraFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicSierraFilter;-><init>()V

    goto/16 :goto_0

    .line 113
    :pswitch_1a
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicSutroFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicSutroFilter;-><init>()V

    goto/16 :goto_0

    .line 115
    :pswitch_1b
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicToasterFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicToasterFilter;-><init>()V

    goto/16 :goto_0

    .line 117
    :pswitch_1c
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicValenciaFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicValenciaFilter;-><init>()V

    goto/16 :goto_0

    .line 119
    :pswitch_1d
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicXproIIFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicXproIIFilter;-><init>()V

    goto/16 :goto_0

    .line 121
    :pswitch_1e
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicEvergreenFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicEvergreenFilter;-><init>()V

    goto/16 :goto_0

    .line 123
    :pswitch_1f
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicHealthyFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicHealthyFilter;-><init>()V

    goto/16 :goto_0

    .line 125
    :pswitch_20
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicCoolFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicCoolFilter;-><init>()V

    goto/16 :goto_0

    .line 127
    :pswitch_21
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicEmeraldFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicEmeraldFilter;-><init>()V

    goto/16 :goto_0

    .line 129
    :pswitch_22
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicLatteFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicLatteFilter;-><init>()V

    goto/16 :goto_0

    .line 131
    :pswitch_23
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicWarmFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicWarmFilter;-><init>()V

    goto/16 :goto_0

    .line 133
    :pswitch_24
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicTenderFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicTenderFilter;-><init>()V

    goto/16 :goto_0

    .line 135
    :pswitch_25
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicSweetsFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicSweetsFilter;-><init>()V

    goto/16 :goto_0

    .line 137
    :pswitch_26
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicNostalgiaFilter;-><init>()V

    goto/16 :goto_0

    .line 139
    :pswitch_27
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicSunriseFilter;-><init>()V

    goto/16 :goto_0

    .line 141
    :pswitch_28
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicSunsetFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicSunsetFilter;-><init>()V

    goto/16 :goto_0

    .line 143
    :pswitch_29
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicCrayonFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicCrayonFilter;-><init>()V

    goto/16 :goto_0

    .line 145
    :pswitch_2a
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicSketchFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicSketchFilter;-><init>()V

    goto/16 :goto_0

    .line 148
    :pswitch_2b
    new-instance v0, Lcom/seu/magicfilter/base/gpuimage/GPUImageBrightnessFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageBrightnessFilter;-><init>()V

    goto/16 :goto_0

    .line 150
    :pswitch_2c
    new-instance v0, Lcom/seu/magicfilter/base/gpuimage/GPUImageContrastFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageContrastFilter;-><init>()V

    goto/16 :goto_0

    .line 152
    :pswitch_2d
    new-instance v0, Lcom/seu/magicfilter/base/gpuimage/GPUImageExposureFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageExposureFilter;-><init>()V

    goto/16 :goto_0

    .line 154
    :pswitch_2e
    new-instance v0, Lcom/seu/magicfilter/base/gpuimage/GPUImageHueFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageHueFilter;-><init>()V

    goto/16 :goto_0

    .line 156
    :pswitch_2f
    new-instance v0, Lcom/seu/magicfilter/base/gpuimage/GPUImageSaturationFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageSaturationFilter;-><init>()V

    goto/16 :goto_0

    .line 158
    :pswitch_30
    new-instance v0, Lcom/seu/magicfilter/base/gpuimage/GPUImageSharpenFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageSharpenFilter;-><init>()V

    goto/16 :goto_0

    .line 160
    :pswitch_31
    new-instance v0, Lcom/seu/magicfilter/advanced/MagicImageAdjustFilter;

    invoke-direct {v0}, Lcom/seu/magicfilter/advanced/MagicImageAdjustFilter;-><init>()V

    goto/16 :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
    .end packed-switch
.end method
