.class public Lcom/seu/magicfilter/base/gpuimage/GPUImageExposureFilter;
.super Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;
.source "GPUImageExposureFilter.java"


# static fields
.field public static final EXPOSURE_FRAGMENT_SHADER:Ljava/lang/String; = " varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform highp float exposure;\n \n void main()\n {\n     highp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     \n     gl_FragColor = vec4(textureColor.rgb * pow(2.0, exposure), textureColor.w);\n } "


# instance fields
.field private mExposure:F

.field private mExposureLocation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageExposureFilter;-><init>(F)V

    .line 47
    return-void
.end method

.method public constructor <init>(F)V
    .locals 2
    .param p1, "exposure"    # F

    .prologue
    .line 50
    sget-object v0, Lcom/seu/magicfilter/utils/MagicFilterType;->EXPOSURE:Lcom/seu/magicfilter/utils/MagicFilterType;

    sget v1, Lnet/ossrs/yasea/R$raw;->exposure:I

    invoke-direct {p0, v0, v1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;-><init>(Lcom/seu/magicfilter/utils/MagicFilterType;I)V

    .line 51
    iput p1, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageExposureFilter;->mExposure:F

    .line 52
    return-void
.end method


# virtual methods
.method public onInit()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInit()V

    .line 57
    invoke-virtual {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageExposureFilter;->getProgram()I

    move-result v0

    const-string v1, "exposure"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageExposureFilter;->mExposureLocation:I

    .line 58
    return-void
.end method

.method public onInitialized()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInitialized()V

    .line 63
    iget v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageExposureFilter;->mExposure:F

    invoke-virtual {p0, v0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageExposureFilter;->setExposure(F)V

    .line 64
    return-void
.end method

.method public setExposure(F)V
    .locals 2
    .param p1, "exposure"    # F

    .prologue
    .line 67
    iput p1, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageExposureFilter;->mExposure:F

    .line 68
    iget v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageExposureFilter;->mExposureLocation:I

    iget v1, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageExposureFilter;->mExposure:F

    invoke-virtual {p0, v0, v1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageExposureFilter;->setFloat(IF)V

    .line 69
    return-void
.end method
