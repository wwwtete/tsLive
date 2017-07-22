.class public Lcom/seu/magicfilter/utils/OpenGLUtils;
.super Ljava/lang/Object;
.source "OpenGLUtils.java"


# static fields
.field public static final NOT_INIT:I = -0x1

.field public static final NO_TEXTURE:I = -0x1

.field public static final ON_DRAWN:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExternalOESTextureID()I
    .locals 6

    .prologue
    const v5, 0x812f

    const/4 v1, 0x1

    const v4, 0x46180400    # 9729.0f

    const/4 v3, 0x0

    const v2, 0x8d65

    .line 197
    new-array v0, v1, [I

    .line 198
    .local v0, "texture":[I
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 199
    aget v1, v0, v3

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 200
    const/16 v1, 0x2801

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 202
    const/16 v1, 0x2800

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 204
    const/16 v1, 0x2802

    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 206
    const/16 v1, 0x2803

    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 208
    aget v1, v0, v3

    return v1
.end method

.method private static getImageFromAssetsFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 141
    const/4 v2, 0x0

    .line 142
    .local v2, "image":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 144
    .local v0, "am":Landroid/content/res/AssetManager;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 145
    .local v3, "is":Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 146
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v3    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static loadProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "strVSource"    # Ljava/lang/String;
    .param p1, "strFSource"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 157
    const/4 v5, 0x1

    new-array v3, v5, [I

    .line 158
    .local v3, "link":[I
    const v5, 0x8b31

    invoke-static {p0, v5}, Lcom/seu/magicfilter/utils/OpenGLUtils;->loadShader(Ljava/lang/String;I)I

    move-result v2

    .line 159
    .local v2, "iVShader":I
    if-nez v2, :cond_0

    .line 160
    const-string v5, "Load Program"

    const-string v6, "Vertex Shader Failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 180
    :goto_0
    return v1

    .line 163
    :cond_0
    const v5, 0x8b30

    invoke-static {p1, v5}, Lcom/seu/magicfilter/utils/OpenGLUtils;->loadShader(Ljava/lang/String;I)I

    move-result v0

    .line 164
    .local v0, "iFShader":I
    if-nez v0, :cond_1

    .line 165
    const-string v5, "Load Program"

    const-string v6, "Fragment Shader Failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 166
    goto :goto_0

    .line 169
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    .line 170
    .local v1, "iProgId":I
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 171
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 172
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 173
    const v5, 0x8b82

    invoke-static {v1, v5, v3, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 174
    aget v5, v3, v4

    if-gtz v5, :cond_2

    .line 175
    const-string v5, "Load Program"

    const-string v6, "Linking Failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 176
    goto :goto_0

    .line 178
    :cond_2
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 179
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    goto :goto_0
.end method

.method private static loadShader(Ljava/lang/String;I)I
    .locals 6
    .param p0, "strSource"    # Ljava/lang/String;
    .param p1, "iType"    # I

    .prologue
    const/4 v2, 0x0

    .line 184
    const/4 v3, 0x1

    new-array v0, v3, [I

    .line 185
    .local v0, "compiled":[I
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 186
    .local v1, "iShader":I
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 187
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 188
    const v3, 0x8b81

    invoke-static {v1, v3, v0, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 189
    aget v3, v0, v2

    if-nez v3, :cond_0

    .line 190
    const-string v3, "Load Shader Failed"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Compilation\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 193
    .end local v1    # "iShader":I
    :cond_0
    return v1
.end method

.method public static loadTexture(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const v6, 0x812f

    const/16 v5, 0x2601

    const/4 v2, 0x1

    const/16 v4, 0xde1

    const/4 v3, 0x0

    .line 109
    new-array v1, v2, [I

    .line 111
    .local v1, "textureHandle":[I
    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 113
    aget v2, v1, v3

    if-eqz v2, :cond_0

    .line 116
    invoke-static {p0, p1}, Lcom/seu/magicfilter/utils/OpenGLUtils;->getImageFromAssetsFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 119
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    aget v2, v1, v3

    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 122
    const/16 v2, 0x2800

    invoke-static {v4, v2, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 123
    const/16 v2, 0x2801

    invoke-static {v4, v2, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 124
    const/16 v2, 0x2802

    invoke-static {v4, v2, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 125
    const/16 v2, 0x2803

    invoke-static {v4, v2, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 127
    invoke-static {v4, v3, v0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 130
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 133
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    aget v2, v1, v3

    if-nez v2, :cond_1

    .line 134
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error loading texture."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 137
    :cond_1
    aget v2, v1, v3

    return v2
.end method

.method public static loadTexture(Landroid/graphics/Bitmap;I)I
    .locals 1
    .param p0, "img"    # Landroid/graphics/Bitmap;
    .param p1, "usedTexId"    # I

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/seu/magicfilter/utils/OpenGLUtils;->loadTexture(Landroid/graphics/Bitmap;IZ)I

    move-result v0

    return v0
.end method

.method public static loadTexture(Landroid/graphics/Bitmap;IZ)I
    .locals 7
    .param p0, "img"    # Landroid/graphics/Bitmap;
    .param p1, "usedTexId"    # I
    .param p2, "recyled"    # Z

    .prologue
    const/4 v1, -0x1

    const v6, 0x47012f00    # 33071.0f

    const v5, 0x46180400    # 9729.0f

    const/16 v4, 0xde1

    const/4 v3, 0x0

    .line 30
    if-nez p0, :cond_0

    .line 53
    :goto_0
    return v1

    .line 32
    :cond_0
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 33
    .local v0, "textures":[I
    if-ne p1, v1, :cond_2

    .line 34
    const/4 v1, 0x1

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 35
    aget v1, v0, v3

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 36
    const/16 v1, 0x2800

    invoke-static {v4, v1, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 38
    const/16 v1, 0x2801

    invoke-static {v4, v1, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 40
    const/16 v1, 0x2802

    invoke-static {v4, v1, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 42
    const/16 v1, 0x2803

    invoke-static {v4, v1, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 45
    invoke-static {v4, v3, p0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 51
    :goto_1
    if-eqz p2, :cond_1

    .line 52
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 53
    :cond_1
    aget v1, v0, v3

    goto :goto_0

    .line 47
    :cond_2
    invoke-static {v4, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 48
    invoke-static {v4, v3, v3, v3, p0}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 49
    aput p1, v0, v3

    goto :goto_1
.end method

.method public static loadTexture(Ljava/nio/Buffer;III)I
    .locals 10
    .param p0, "data"    # Ljava/nio/Buffer;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "usedTexId"    # I

    .prologue
    .line 57
    if-nez p0, :cond_0

    .line 58
    const/4 v0, -0x1

    .line 79
    :goto_0
    return v0

    .line 59
    :cond_0
    const/4 v0, 0x1

    new-array v9, v0, [I

    .line 60
    .local v9, "textures":[I
    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    .line 61
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v9, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 62
    const/16 v0, 0xde1

    const/4 v1, 0x0

    aget v1, v9, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

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

    .line 71
    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/16 v2, 0x1908

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move v3, p1

    move v4, p2

    move-object v8, p0

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 79
    :goto_1
    const/4 v0, 0x0

    aget v0, v9, v0

    goto :goto_0

    .line 74
    :cond_1
    const/16 v0, 0xde1

    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 75
    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move v4, p1

    move v5, p2

    move-object v8, p0

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 77
    const/4 v0, 0x0

    aput p3, v9, v0

    goto :goto_1
.end method

.method public static loadTexture(Ljava/nio/Buffer;IIII)I
    .locals 10
    .param p0, "data"    # Ljava/nio/Buffer;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "usedTexId"    # I
    .param p4, "type"    # I

    .prologue
    .line 83
    if-nez p0, :cond_0

    .line 84
    const/4 v0, -0x1

    .line 105
    :goto_0
    return v0

    .line 85
    :cond_0
    const/4 v0, 0x1

    new-array v9, v0, [I

    .line 86
    .local v9, "textures":[I
    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    .line 87
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v9, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 88
    const/16 v0, 0xde1

    const/4 v1, 0x0

    aget v1, v9, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 89
    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const v2, 0x46180400    # 9729.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 91
    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const v2, 0x46180400    # 9729.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 93
    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v2, 0x47012f00    # 33071.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 95
    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v2, 0x47012f00    # 33071.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 97
    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/16 v2, 0x1908

    const/4 v5, 0x0

    const/16 v6, 0x1908

    move v3, p1

    move v4, p2

    move v7, p4

    move-object v8, p0

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 105
    :goto_1
    const/4 v0, 0x0

    aget v0, v9, v0

    goto :goto_0

    .line 100
    :cond_1
    const/16 v0, 0xde1

    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 101
    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x1908

    move v4, p1

    move v5, p2

    move v7, p4

    move-object v8, p0

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 103
    const/4 v0, 0x0

    aput p3, v9, v0

    goto :goto_1
.end method

.method public static readShaderFromRawResource(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I

    .prologue
    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 213
    .local v3, "inputStream":Ljava/io/InputStream;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 214
    .local v4, "inputStreamReader":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 217
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .local v0, "body":Ljava/lang/StringBuilder;
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "nextLine":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 221
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    .end local v5    # "nextLine":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 226
    .local v2, "e":Ljava/io/IOException;
    const/4 v6, 0x0

    .line 228
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return-object v6

    .restart local v5    # "nextLine":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method
