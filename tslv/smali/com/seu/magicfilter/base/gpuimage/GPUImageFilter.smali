.class public Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;
.super Ljava/lang/Object;
.source "GPUImageFilter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mFragmentShaderId:I

.field protected mGLCubeBuffer:Ljava/nio/FloatBuffer;

.field private mGLCubeId:[I

.field private mGLFboBuffer:Ljava/nio/IntBuffer;

.field private mGLFboId:[I

.field private mGLFboTexId:[I

.field private mGLInputImageTextureIndex:I

.field private mGLPositionIndex:I

.field private mGLProgId:I

.field protected mGLTextureBuffer:Ljava/nio/FloatBuffer;

.field private mGLTextureCoordinateId:[I

.field private mGLTextureCoordinateIndex:I

.field private mGLTextureTransformIndex:I

.field private mGLTextureTransformMatrix:[F

.field protected mInputHeight:I

.field protected mInputWidth:I

.field private mIsInitialized:Z

.field protected mOutputHeight:I

.field protected mOutputWidth:I

.field private final mRunOnDraw:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mType:Lcom/seu/magicfilter/utils/MagicFilterType;

.field private final mVertexShaderId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/seu/magicfilter/utils/MagicFilterType;->NONE:Lcom/seu/magicfilter/utils/MagicFilterType;

    invoke-direct {p0, v0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;-><init>(Lcom/seu/magicfilter/utils/MagicFilterType;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/seu/magicfilter/utils/MagicFilterType;)V
    .locals 2
    .param p1, "type"    # Lcom/seu/magicfilter/utils/MagicFilterType;

    .prologue
    .line 72
    sget v0, Lnet/ossrs/yasea/R$raw;->vertex:I

    sget v1, Lnet/ossrs/yasea/R$raw;->fragment:I

    invoke-direct {p0, p1, v0, v1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;-><init>(Lcom/seu/magicfilter/utils/MagicFilterType;II)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/seu/magicfilter/utils/MagicFilterType;I)V
    .locals 1
    .param p1, "type"    # Lcom/seu/magicfilter/utils/MagicFilterType;
    .param p2, "fragmentShaderId"    # I

    .prologue
    .line 76
    sget v0, Lnet/ossrs/yasea/R$raw;->vertex:I

    invoke-direct {p0, p1, v0, p2}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;-><init>(Lcom/seu/magicfilter/utils/MagicFilterType;II)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/seu/magicfilter/utils/MagicFilterType;II)V
    .locals 4
    .param p1, "type"    # Lcom/seu/magicfilter/utils/MagicFilterType;
    .param p2, "vertexShaderId"    # I
    .param p3, "fragmentShaderId"    # I

    .prologue
    const/4 v3, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/seu/magicfilter/utils/MagicFilterType;->NONE:Lcom/seu/magicfilter/utils/MagicFilterType;

    iput-object v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mType:Lcom/seu/magicfilter/utils/MagicFilterType;

    .line 80
    iput-object p1, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mType:Lcom/seu/magicfilter/utils/MagicFilterType;

    .line 81
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mRunOnDraw:Ljava/util/LinkedList;

    .line 82
    iput p2, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mVertexShaderId:I

    .line 83
    iput p3, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mFragmentShaderId:I

    .line 85
    sget-object v0, Lcom/seu/magicfilter/utils/TextureRotationUtil;->CUBE:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 86
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    .line 88
    iget-object v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/seu/magicfilter/utils/TextureRotationUtil;->CUBE:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 90
    sget-object v0, Lcom/seu/magicfilter/utils/TextureRotationUtil;->TEXTURE_NO_ROTATION:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 91
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    .line 93
    iget-object v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/seu/magicfilter/utils/Rotation;->NORMAL:Lcom/seu/magicfilter/utils/Rotation;

    const/4 v2, 0x1

    invoke-static {v1, v3, v2}, Lcom/seu/magicfilter/utils/TextureRotationUtil;->getRotation(Lcom/seu/magicfilter/utils/Rotation;ZZ)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 94
    return-void
.end method

.method private destoryVbo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 156
    iget-object v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLCubeId:[I

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLCubeId:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 158
    iput-object v3, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLCubeId:[I

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLTextureCoordinateId:[I

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLTextureCoordinateId:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 162
    iput-object v3, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLTextureCoordinateId:[I

    .line 164
    :cond_1
    return-void
.end method

.method private destroyFboTexture()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 190
    iget-object v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLFboTexId:[I

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLFboTexId:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 192
    iput-object v3, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLFboTexId:[I

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLFboId:[I

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLFboId:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 196
    iput-object v3, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLFboId:[I

    .line 198
    :cond_1
    return-void
.end method

.method private initFboTexture(II)V
    .locals 11
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const v10, 0x46180400    # 9729.0f

    const v9, 0x8d40

    const/4 v3, 0x1

    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 167
    iget-object v2, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLFboId:[I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mInputWidth:I

    if-ne v2, p1, :cond_0

    iget v2, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mInputHeight:I

    if-eq v2, p2, :cond_1

    .line 168
    :cond_0
    invoke-direct {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->destroyFboTexture()V

    .line 171
    :cond_1
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLFboId:[I

    .line 172
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLFboTexId:[I

    .line 173
    mul-int v2, p1, p2

    invoke-static {v2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLFboBuffer:Ljava/nio/IntBuffer;

    .line 175
    iget-object v2, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLFboId:[I

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 176
    iget-object v2, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLFboTexId:[I

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 177
    iget-object v2, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLFboTexId:[I

    aget v2, v2, v1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 178
    const/16 v2, 0x1908

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v3, p1

    move v4, p2

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 179
    const/16 v2, 0x2800

    invoke-static {v0, v2, v10}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 180
    const/16 v2, 0x2801

    invoke-static {v0, v2, v10}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 181
    const/16 v2, 0x2802

    const v3, 0x47012f00    # 33071.0f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 182
    const/16 v2, 0x2803

    const v3, 0x47012f00    # 33071.0f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 183
    iget-object v2, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLFboId:[I

    aget v2, v2, v1

    invoke-static {v9, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 184
    const v2, 0x8ce0

    iget-object v3, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLFboTexId:[I

    aget v3, v3, v1

    invoke-static {v9, v2, v0, v3, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 185
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 186
    invoke-static {v9, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 187
    return-void
.end method

.method private initVbo()V
    .locals 6

    .prologue
    const v5, 0x88e4

    const v4, 0x8892

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 143
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLCubeId:[I

    .line 144
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLTextureCoordinateId:[I

    .line 146
    iget-object v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLCubeId:[I

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 147
    iget-object v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLCubeId:[I

    aget v0, v0, v2

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 148
    iget-object v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v4, v0, v1, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 150
    iget-object v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLTextureCoordinateId:[I

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 151
    iget-object v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLTextureCoordinateId:[I

    aget v0, v0, v2

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 152
    iget-object v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v4, v0, v1, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 153
    return-void
.end method

.method private loadSamplerShader()V
    .locals 3

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mVertexShaderId:I

    invoke-static {v0, v1}, Lcom/seu/magicfilter/utils/OpenGLUtils;->readShaderFromRawResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-virtual {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mFragmentShaderId:I

    invoke-static {v1, v2}, Lcom/seu/magicfilter/utils/OpenGLUtils;->readShaderFromRawResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static {v0, v1}, Lcom/seu/magicfilter/utils/OpenGLUtils;->loadProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLProgId:I

    .line 136
    iget v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLProgId:I

    const-string v1, "position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLPositionIndex:I

    .line 137
    iget v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLProgId:I

    const-string v1, "inputTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLTextureCoordinateIndex:I

    .line 138
    iget v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLProgId:I

    const-string v1, "textureTransform"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLTextureTransformIndex:I

    .line 139
    iget v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLProgId:I

    const-string v1, "inputImageTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLInputImageTextureIndex:I

    .line 140
    return-void
.end method

.method private runPendingOnDrawTasks()V
    .locals 1

    .prologue
    .line 286
    :goto_0
    iget-object v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 289
    :cond_0
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mIsInitialized:Z

    .line 113
    invoke-direct {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->destroyFboTexture()V

    .line 114
    invoke-direct {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->destoryVbo()V

    .line 115
    iget v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 116
    invoke-virtual {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onDestroy()V

    .line 117
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getFilterType()Lcom/seu/magicfilter/utils/MagicFilterType;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mType:Lcom/seu/magicfilter/utils/MagicFilterType;

    return-object v0
.end method

.method public getGLFboBuffer()Ljava/nio/IntBuffer;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLFboBuffer:Ljava/nio/IntBuffer;

    return-object v0
.end method

.method public getProgram()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLProgId:I

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mContext:Landroid/content/Context;

    .line 98
    invoke-virtual {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInit()V

    .line 99
    invoke-virtual {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInitialized()V

    .line 100
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public onDisplaySizeChanged(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mOutputWidth:I

    .line 130
    iput p2, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mOutputHeight:I

    .line 131
    return-void
.end method

.method protected onDrawArraysAfter()V
    .locals 0

    .prologue
    .line 283
    return-void
.end method

.method protected onDrawArraysPre()V
    .locals 0

    .prologue
    .line 281
    return-void
.end method

.method public onDrawFrame(I)I
    .locals 12
    .param p1, "cameraTextureId"    # I

    .prologue
    const/4 v11, 0x4

    const/4 v1, 0x2

    const/4 v0, -0x1

    const v10, 0x8892

    const/4 v3, 0x0

    .line 233
    iget-boolean v2, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mIsInitialized:Z

    if-nez v2, :cond_1

    .line 278
    :cond_0
    :goto_0
    return v0

    .line 237
    :cond_1
    iget-object v2, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLFboId:[I

    if-eqz v2, :cond_0

    .line 241
    iget v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 242
    invoke-direct {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->runPendingOnDrawTasks()V

    .line 244
    iget-object v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLCubeId:[I

    aget v0, v0, v3

    invoke-static {v10, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 245
    iget v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLPositionIndex:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 246
    iget v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLPositionIndex:I

    const/16 v2, 0x1406

    const/16 v4, 0x8

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 248
    iget-object v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLTextureCoordinateId:[I

    aget v0, v0, v3

    invoke-static {v10, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 249
    iget v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLTextureCoordinateIndex:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 250
    iget v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLTextureCoordinateIndex:I

    const/16 v2, 0x1406

    const/16 v4, 0x8

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 252
    iget v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLTextureTransformIndex:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLTextureTransformMatrix:[F

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 254
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 255
    const v0, 0x8d65

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 256
    iget v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLInputImageTextureIndex:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 258
    invoke-virtual {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onDrawArraysPre()V

    .line 260
    iget v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mInputWidth:I

    iget v1, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mInputHeight:I

    invoke-static {v3, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 261
    const v0, 0x8d40

    iget-object v1, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLFboId:[I

    aget v1, v1, v3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 262
    const/4 v0, 0x5

    invoke-static {v0, v3, v11}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 263
    iget v5, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mInputWidth:I

    iget v6, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mInputHeight:I

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    iget-object v9, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLFboBuffer:Ljava/nio/IntBuffer;

    move v4, v3

    invoke-static/range {v3 .. v9}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 264
    const v0, 0x8d40

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 265
    iget v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mOutputWidth:I

    iget v1, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mOutputHeight:I

    invoke-static {v3, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 267
    const/4 v0, 0x5

    invoke-static {v0, v3, v11}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 269
    invoke-virtual {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onDrawArraysAfter()V

    .line 271
    const v0, 0x8d65

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 273
    iget v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLPositionIndex:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 274
    iget v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLTextureCoordinateIndex:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 276
    invoke-static {v10, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 278
    iget-object v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLFboTexId:[I

    aget v0, v0, v3

    goto/16 :goto_0
.end method

.method public onDrawFrame(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I
    .locals 8
    .param p1, "textureId"    # I
    .param p2, "cubeBuffer"    # Ljava/nio/FloatBuffer;
    .param p3, "textureBuffer"    # Ljava/nio/FloatBuffer;

    .prologue
    const/16 v7, 0xde1

    const/16 v4, 0x8

    const/4 v1, 0x2

    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 201
    iget-boolean v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mIsInitialized:Z

    if-nez v0, :cond_0

    move v0, v6

    .line 229
    :goto_0
    return v0

    .line 205
    :cond_0
    iget v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 206
    invoke-direct {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->runPendingOnDrawTasks()V

    .line 208
    iget v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLPositionIndex:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 209
    iget v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLPositionIndex:I

    const/16 v2, 0x1406

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 211
    iget v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLTextureCoordinateIndex:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 212
    iget v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLTextureCoordinateIndex:I

    const/16 v2, 0x1406

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 214
    if-eq p1, v6, :cond_1

    .line 215
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 216
    invoke-static {v7, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 217
    iget v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLInputImageTextureIndex:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 220
    :cond_1
    invoke-virtual {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onDrawArraysPre()V

    .line 221
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 222
    invoke-virtual {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onDrawArraysAfter()V

    .line 224
    invoke-static {v7, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 226
    iget v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLPositionIndex:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 227
    iget v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLTextureCoordinateIndex:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 229
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onInit()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->initVbo()V

    .line 104
    invoke-direct {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->loadSamplerShader()V

    .line 105
    return-void
.end method

.method protected onInitialized()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mIsInitialized:Z

    .line 109
    return-void
.end method

.method public onInputSizeChanged(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 123
    iput p1, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mInputWidth:I

    .line 124
    iput p2, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mInputHeight:I

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->initFboTexture(II)V

    .line 126
    return-void
.end method

.method protected runOnDraw(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 399
    iget-object v1, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mRunOnDraw:Ljava/util/LinkedList;

    monitor-enter v1

    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 401
    monitor-exit v1

    .line 402
    return-void

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setFloat(IF)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "floatValue"    # F

    .prologue
    .line 321
    new-instance v0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter$2;-><init>(Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;IF)V

    invoke-virtual {p0, v0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 327
    return-void
.end method

.method protected setFloatArray(I[F)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "arrayValue"    # [F

    .prologue
    .line 357
    new-instance v0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter$6;-><init>(Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;I[F)V

    invoke-virtual {p0, v0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 363
    return-void
.end method

.method protected setFloatVec2(I[F)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "arrayValue"    # [F

    .prologue
    .line 330
    new-instance v0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter$3;-><init>(Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;I[F)V

    invoke-virtual {p0, v0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 336
    return-void
.end method

.method protected setFloatVec3(I[F)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "arrayValue"    # [F

    .prologue
    .line 339
    new-instance v0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter$4;-><init>(Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;I[F)V

    invoke-virtual {p0, v0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 345
    return-void
.end method

.method protected setFloatVec4(I[F)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "arrayValue"    # [F

    .prologue
    .line 348
    new-instance v0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter$5;-><init>(Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;I[F)V

    invoke-virtual {p0, v0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 354
    return-void
.end method

.method protected setInteger(II)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "intValue"    # I

    .prologue
    .line 312
    new-instance v0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter$1;-><init>(Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;II)V

    invoke-virtual {p0, v0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 318
    return-void
.end method

.method protected setPoint(ILandroid/graphics/PointF;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "point"    # Landroid/graphics/PointF;

    .prologue
    .line 366
    new-instance v0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter$7;

    invoke-direct {v0, p0, p2, p1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter$7;-><init>(Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;Landroid/graphics/PointF;I)V

    invoke-virtual {p0, v0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 376
    return-void
.end method

.method public setTextureTransformMatrix([F)V
    .locals 0
    .param p1, "mtx"    # [F

    .prologue
    .line 308
    iput-object p1, p0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->mGLTextureTransformMatrix:[F

    .line 309
    return-void
.end method

.method protected setUniformMatrix3f(I[F)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "matrix"    # [F

    .prologue
    .line 379
    new-instance v0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter$8;-><init>(Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;I[F)V

    invoke-virtual {p0, v0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 386
    return-void
.end method

.method protected setUniformMatrix4f(I[F)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "matrix"    # [F

    .prologue
    .line 389
    new-instance v0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter$9;-><init>(Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;I[F)V

    invoke-virtual {p0, v0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 396
    return-void
.end method
