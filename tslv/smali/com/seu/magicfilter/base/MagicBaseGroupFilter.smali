.class public Lcom/seu/magicfilter/base/MagicBaseGroupFilter;
.super Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;
.source "MagicBaseGroupFilter.java"


# static fields
.field private static frameBufferTextures:[I

.field private static frameBuffers:[I


# instance fields
.field protected filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;",
            ">;"
        }
    .end annotation
.end field

.field private frameHeight:I

.field private frameWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    sput-object v0, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->frameBuffers:[I

    .line 16
    sput-object v0, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->frameBufferTextures:[I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;>;"
    const/4 v0, -0x1

    .line 21
    invoke-direct {p0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;-><init>()V

    .line 17
    iput v0, p0, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->frameWidth:I

    .line 18
    iput v0, p0, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->frameHeight:I

    .line 22
    iput-object p1, p0, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->filters:Ljava/util/List;

    .line 23
    return-void
.end method

.method private destroyFramebuffers()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 131
    sget-object v0, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->frameBufferTextures:[I

    if-eqz v0, :cond_0

    .line 132
    sget-object v0, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->frameBufferTextures:[I

    array-length v0, v0

    sget-object v1, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->frameBufferTextures:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 133
    sput-object v3, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->frameBufferTextures:[I

    .line 135
    :cond_0
    sget-object v0, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->frameBuffers:[I

    if-eqz v0, :cond_1

    .line 136
    sget-object v0, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->frameBuffers:[I

    array-length v0, v0

    sget-object v1, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->frameBuffers:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 137
    sput-object v3, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->frameBuffers:[I

    .line 139
    :cond_1
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    iget-object v1, p0, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->filters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;

    .line 36
    .local v0, "filter":Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;
    invoke-virtual {v0, p1}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->init(Landroid/content/Context;)V

    goto :goto_0

    .line 38
    .end local v0    # "filter":Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 27
    iget-object v1, p0, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->filters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;

    .line 28
    .local v0, "filter":Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;
    invoke-virtual {v0}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->destroy()V

    goto :goto_0

    .line 30
    .end local v0    # "filter":Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;
    :cond_0
    invoke-direct {p0}, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->destroyFramebuffers()V

    .line 31
    return-void
.end method

.method public onDrawFrame(I)I
    .locals 11
    .param p1, "textureId"    # I

    .prologue
    const v10, 0x8d40

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 109
    sget-object v7, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->frameBuffers:[I

    if-eqz v7, :cond_0

    sget-object v7, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->frameBufferTextures:[I

    if-nez v7, :cond_2

    .line 110
    :cond_0
    const/4 v5, -0x1

    .line 127
    :cond_1
    return v5

    .line 112
    :cond_2
    iget-object v7, p0, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->filters:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 113
    .local v4, "size":I
    move v3, p1

    .line 114
    .local v3, "previousTexture":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 115
    iget-object v7, p0, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->filters:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;

    .line 116
    .local v0, "filter":Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;
    add-int/lit8 v7, v4, -0x1

    if-ge v1, v7, :cond_3

    move v2, v5

    .line 117
    .local v2, "isNotLast":Z
    :goto_1
    if-eqz v2, :cond_4

    .line 118
    sget-object v7, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->frameBuffers:[I

    aget v7, v7, v1

    invoke-static {v10, v7}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 119
    invoke-static {v9, v9, v9, v9}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 120
    iget-object v7, p0, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    iget-object v8, p0, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3, v7, v8}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onDrawFrame(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I

    .line 121
    invoke-static {v10, v6}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 122
    sget-object v7, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->frameBufferTextures:[I

    aget v3, v7, v1

    .line 114
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "isNotLast":Z
    :cond_3
    move v2, v6

    .line 116
    goto :goto_1

    .line 124
    .restart local v2    # "isNotLast":Z
    :cond_4
    iget-object v7, p0, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    iget-object v8, p0, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3, v7, v8}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onDrawFrame(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I

    goto :goto_2
.end method

.method public onDrawFrame(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I
    .locals 11
    .param p1, "textureId"    # I
    .param p2, "cubeBuffer"    # Ljava/nio/FloatBuffer;
    .param p3, "textureBuffer"    # Ljava/nio/FloatBuffer;

    .prologue
    const v10, 0x8d40

    const/4 v5, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 85
    sget-object v7, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->frameBuffers:[I

    if-eqz v7, :cond_0

    sget-object v7, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->frameBufferTextures:[I

    if-nez v7, :cond_2

    .line 86
    :cond_0
    const/4 v5, -0x1

    .line 105
    :cond_1
    return v5

    .line 88
    :cond_2
    iget-object v7, p0, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->filters:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 89
    .local v4, "size":I
    move v3, p1

    .line 90
    .local v3, "previousTexture":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 91
    iget-object v7, p0, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->filters:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;

    .line 92
    .local v0, "filter":Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;
    add-int/lit8 v7, v4, -0x1

    if-ge v1, v7, :cond_3

    move v2, v5

    .line 93
    .local v2, "isNotLast":Z
    :goto_1
    if-eqz v2, :cond_4

    .line 94
    iget v7, p0, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->mInputWidth:I

    iget v8, p0, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->mInputHeight:I

    invoke-static {v6, v6, v7, v8}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 95
    sget-object v7, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->frameBuffers:[I

    aget v7, v7, v1

    invoke-static {v10, v7}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 96
    invoke-static {v9, v9, v9, v9}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 97
    iget-object v7, p0, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    iget-object v8, p0, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3, v7, v8}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onDrawFrame(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I

    .line 98
    invoke-static {v10, v6}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 99
    sget-object v7, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->frameBufferTextures:[I

    aget v3, v7, v1

    .line 90
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "isNotLast":Z
    :cond_3
    move v2, v6

    .line 92
    goto :goto_1

    .line 101
    .restart local v2    # "isNotLast":Z
    :cond_4
    iget v7, p0, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->mOutputWidth:I

    iget v8, p0, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->mOutputHeight:I

    invoke-static {v6, v6, v7, v8}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 102
    invoke-virtual {v0, v3, p2, p3}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onDrawFrame(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I

    goto :goto_2
.end method

.method public onInputSizeChanged(II)V
    .locals 11
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 42
    invoke-super {p0, p1, p2}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInputSizeChanged(II)V

    .line 43
    iget-object v0, p0, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    .line 44
    .local v10, "size":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v10, :cond_0

    .line 45
    iget-object v0, p0, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->filters:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;

    invoke-virtual {v0, p1, p2}, Lcom/seu/magicfilter/base/gpuimage/GPUImageFilter;->onInputSizeChanged(II)V

    .line 44
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 47
    :cond_0
    sget-object v0, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->frameBuffers:[I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->frameWidth:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->frameHeight:I

    if-ne v0, p2, :cond_1

    sget-object v0, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->frameBuffers:[I

    array-length v0, v0

    add-int/lit8 v1, v10, -0x1

    if-eq v0, v1, :cond_2

    .line 48
    :cond_1
    invoke-direct {p0}, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->destroyFramebuffers()V

    .line 49
    iput p1, p0, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->frameWidth:I

    .line 50
    iput p2, p0, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->frameHeight:I

    .line 52
    :cond_2
    sget-object v0, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->frameBuffers:[I

    if-nez v0, :cond_3

    .line 53
    add-int/lit8 v0, v10, -0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->frameBuffers:[I

    .line 54
    add-int/lit8 v0, v10, -0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->frameBufferTextures:[I

    .line 56
    const/4 v9, 0x0

    :goto_1
    add-int/lit8 v0, v10, -0x1

    if-ge v9, v0, :cond_3

    .line 57
    const/4 v0, 0x1

    sget-object v1, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->frameBuffers:[I

    invoke-static {v0, v1, v9}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 59
    const/4 v0, 0x1

    sget-object v1, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->frameBufferTextures:[I

    invoke-static {v0, v1, v9}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 60
    const/16 v0, 0xde1

    sget-object v1, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->frameBufferTextures:[I

    aget v1, v1, v9

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 61
    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/16 v2, 0x1908

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 63
    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const v2, 0x46180400    # 9729.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 65
    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const v2, 0x46180400    # 9729.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 67
    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v2, 0x47012f00    # 33071.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 69
    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v2, 0x47012f00    # 33071.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 72
    const v0, 0x8d40

    sget-object v1, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->frameBuffers:[I

    aget v1, v1, v9

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 73
    const v0, 0x8d40

    const v1, 0x8ce0

    const/16 v2, 0xde1

    sget-object v3, Lcom/seu/magicfilter/base/MagicBaseGroupFilter;->frameBufferTextures:[I

    aget v3, v3, v9

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 76
    const/16 v0, 0xde1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 77
    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 56
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 80
    :cond_3
    return-void
.end method
