.class Lcom/seu/magicfilter/advanced/MagicAntiqueFilter$1;
.super Ljava/lang/Object;
.source "MagicAntiqueFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seu/magicfilter/advanced/MagicAntiqueFilter;->onInitialized()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seu/magicfilter/advanced/MagicAntiqueFilter;


# direct methods
.method constructor <init>(Lcom/seu/magicfilter/advanced/MagicAntiqueFilter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/seu/magicfilter/advanced/MagicAntiqueFilter;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/seu/magicfilter/advanced/MagicAntiqueFilter$1;->this$0:Lcom/seu/magicfilter/advanced/MagicAntiqueFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 56
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/seu/magicfilter/advanced/MagicAntiqueFilter$1;->this$0:Lcom/seu/magicfilter/advanced/MagicAntiqueFilter;

    invoke-static {v2}, Lcom/seu/magicfilter/advanced/MagicAntiqueFilter;->access$000(Lcom/seu/magicfilter/advanced/MagicAntiqueFilter;)[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 57
    const/16 v1, 0xde1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/seu/magicfilter/advanced/MagicAntiqueFilter$1;->this$0:Lcom/seu/magicfilter/advanced/MagicAntiqueFilter;

    invoke-static {v2}, Lcom/seu/magicfilter/advanced/MagicAntiqueFilter;->access$000(Lcom/seu/magicfilter/advanced/MagicAntiqueFilter;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 58
    const/16 v1, 0xde1

    const/16 v2, 0x2800

    const v3, 0x46180400    # 9729.0f

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 60
    const/16 v1, 0xde1

    const/16 v2, 0x2801

    const v3, 0x46180400    # 9729.0f

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 62
    const/16 v1, 0xde1

    const/16 v2, 0x2802

    const v3, 0x47012f00    # 33071.0f

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 64
    const/16 v1, 0xde1

    const/16 v2, 0x2803

    const v3, 0x47012f00    # 33071.0f

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 66
    const/16 v1, 0x800

    new-array v10, v1, [B

    .line 67
    .local v10, "arrayOfByte":[B
    const/16 v1, 0x100

    new-array v11, v1, [I

    fill-array-data v11, :array_0

    .line 68
    .local v11, "arrayOfInt1":[I
    const/16 v1, 0x100

    new-array v12, v1, [I

    fill-array-data v12, :array_1

    .line 69
    .local v12, "arrayOfInt2":[I
    const/16 v1, 0x100

    new-array v13, v1, [I

    fill-array-data v13, :array_2

    .line 70
    .local v13, "arrayOfInt3":[I
    const/16 v1, 0x100

    new-array v14, v1, [I

    fill-array-data v14, :array_3

    .line 71
    .local v14, "arrayOfInt4":[I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    const/16 v1, 0x100

    move/from16 v0, v16

    if-ge v0, v1, :cond_0

    .line 72
    mul-int/lit8 v1, v16, 0x4

    aget v2, v11, v16

    int-to-byte v2, v2

    aput-byte v2, v10, v1

    .line 73
    mul-int/lit8 v1, v16, 0x4

    add-int/lit8 v1, v1, 0x1

    aget v2, v12, v16

    int-to-byte v2, v2

    aput-byte v2, v10, v1

    .line 74
    mul-int/lit8 v1, v16, 0x4

    add-int/lit8 v1, v1, 0x2

    aget v2, v13, v16

    int-to-byte v2, v2

    aput-byte v2, v10, v1

    .line 75
    mul-int/lit8 v1, v16, 0x4

    add-int/lit8 v1, v1, 0x3

    aget v2, v14, v16

    int-to-byte v2, v2

    aput-byte v2, v10, v1

    .line 71
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 77
    :cond_0
    const/16 v1, 0x100

    new-array v15, v1, [I

    fill-array-data v15, :array_4

    .line 78
    .local v15, "arrayOfInt5":[I
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_1
    const/16 v1, 0x100

    move/from16 v0, v17

    if-ge v0, v1, :cond_1

    .line 79
    mul-int/lit8 v1, v17, 0x4

    add-int/lit16 v1, v1, 0x400

    aget v2, v15, v17

    int-to-byte v2, v2

    aput-byte v2, v10, v1

    .line 80
    mul-int/lit8 v1, v17, 0x4

    add-int/lit16 v1, v1, 0x400

    add-int/lit8 v1, v1, 0x1

    aget v2, v15, v17

    int-to-byte v2, v2

    aput-byte v2, v10, v1

    .line 81
    mul-int/lit8 v1, v17, 0x4

    add-int/lit16 v1, v1, 0x400

    add-int/lit8 v1, v1, 0x2

    aget v2, v15, v17

    int-to-byte v2, v2

    aput-byte v2, v10, v1

    .line 82
    mul-int/lit8 v1, v17, 0x4

    add-int/lit16 v1, v1, 0x400

    add-int/lit8 v1, v1, 0x3

    const/4 v2, -0x1

    aput-byte v2, v10, v1

    .line 78
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 84
    :cond_1
    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1908

    const/16 v4, 0x100

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 85
    return-void

    .line 67
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x3
        0x3
        0x4
        0x5
        0x6
        0x6
        0x7
        0x8
        0x8
        0x9
        0xa
        0xb
        0xb
        0xc
        0xd
        0xe
        0xf
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3d
        0x3e
        0x3f
        0x40
        0x42
        0x43
        0x44
        0x45
        0x47
        0x48
        0x49
        0x4a
        0x4c
        0x4d
        0x4e
        0x4f
        0x51
        0x52
        0x53
        0x55
        0x56
        0x57
        0x59
        0x5a
        0x5b
        0x5d
        0x5e
        0x5f
        0x60
        0x62
        0x63
        0x64
        0x66
        0x67
        0x68
        0x6a
        0x6b
        0x6c
        0x6e
        0x6f
        0x70
        0x72
        0x73
        0x74
        0x76
        0x77
        0x78
        0x7a
        0x7b
        0x7c
        0x7e
        0x7f
        0x80
        0x82
        0x83
        0x84
        0x86
        0x87
        0x88
        0x89
        0x8b
        0x8c
        0x8d
        0x8f
        0x90
        0x91
        0x92
        0x94
        0x95
        0x96
        0x98
        0x99
        0x9a
        0x9b
        0x9d
        0x9e
        0x9f
        0xa0
        0xa1
        0xa3
        0xa4
        0xa5
        0xa6
        0xa8
        0xa9
        0xaa
        0xab
        0xac
        0xad
        0xaf
        0xb0
        0xb1
        0xb2
        0xb3
        0xb4
        0xb5
        0xb7
        0xb8
        0xb9
        0xba
        0xbb
        0xbc
        0xbd
        0xbe
        0xbf
        0xc0
        0xc1
        0xc2
        0xc3
        0xc4
        0xc5
        0xc6
        0xc7
        0xc8
        0xc9
        0xca
        0xcb
        0xcc
        0xcd
        0xce
        0xcf
        0xd0
        0xd1
        0xd2
        0xd3
        0xd3
        0xd4
        0xd5
        0xd6
        0xd7
        0xd8
        0xd8
        0xd9
        0xda
        0xdb
        0xdc
        0xdc
        0xdd
        0xde
        0xdf
        0xdf
        0xe0
        0xe1
        0xe2
        0xe2
        0xe3
        0xe4
        0xe4
        0xe5
        0xe6
        0xe6
        0xe7
        0xe8
        0xe8
        0xe9
        0xea
        0xea
        0xeb
        0xec
        0xec
        0xed
        0xee
        0xee
        0xef
        0xef
        0xf0
        0xf1
        0xf1
        0xf2
        0xf2
        0xf3
        0xf4
        0xf4
        0xf5
        0xf5
        0xf6
        0xf7
        0xf7
        0xf8
        0xf8
        0xf9
        0xf9
        0xfa
        0xfb
        0xfb
        0xfc
        0xfc
        0xfd
        0xfd
        0xfe
        0xfe
        0xff
    .end array-data

    .line 68
    :array_1
    .array-data 4
        0xf
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x14
        0x15
        0x16
        0x17
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2b
        0x2c
        0x2d
        0x2e
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x37
        0x38
        0x39
        0x39
        0x3a
        0x3b
        0x3d
        0x3e
        0x3f
        0x40
        0x42
        0x43
        0x44
        0x45
        0x47
        0x48
        0x48
        0x49
        0x4a
        0x4c
        0x4d
        0x4e
        0x4f
        0x51
        0x52
        0x53
        0x55
        0x56
        0x57
        0x57
        0x59
        0x5a
        0x5b
        0x5d
        0x5e
        0x5f
        0x60
        0x62
        0x63
        0x64
        0x66
        0x66
        0x67
        0x68
        0x6a
        0x6b
        0x6c
        0x6e
        0x6f
        0x70
        0x72
        0x73
        0x74
        0x76
        0x76
        0x77
        0x78
        0x7a
        0x7b
        0x7c
        0x7e
        0x7f
        0x80
        0x82
        0x83
        0x84
        0x86
        0x86
        0x87
        0x88
        0x89
        0x8b
        0x8c
        0x8d
        0x8f
        0x90
        0x91
        0x92
        0x94
        0x95
        0x95
        0x96
        0x98
        0x99
        0x9a
        0x9b
        0x9d
        0x9e
        0x9f
        0xa0
        0xa1
        0xa3
        0xa3
        0xa4
        0xa5
        0xa6
        0xa8
        0xa9
        0xaa
        0xab
        0xac
        0xad
        0xaf
        0xb0
        0xb1
        0xb1
        0xb2
        0xb3
        0xb4
        0xb5
        0xb7
        0xb8
        0xb9
        0xba
        0xbb
        0xbc
        0xbd
        0xbe
        0xbe
        0xbf
        0xc0
        0xc1
        0xc2
        0xc3
        0xc4
        0xc5
        0xc6
        0xc7
        0xc8
        0xc9
        0xca
        0xca
        0xcb
        0xcc
        0xcd
        0xce
        0xcf
        0xd0
        0xd1
        0xd2
        0xd3
        0xd3
        0xd4
        0xd4
        0xd5
        0xd6
        0xd7
        0xd8
        0xd8
        0xd9
        0xda
        0xdb
        0xdc
        0xdc
        0xdd
        0xde
        0xde
        0xdf
        0xdf
        0xe0
        0xe1
        0xe2
        0xe2
        0xe3
        0xe4
        0xe4
        0xe5
        0xe6
        0xe6
        0xe6
        0xe7
        0xe8
        0xe8
        0xe9
        0xea
        0xea
        0xeb
        0xec
        0xec
        0xed
        0xee
        0xee
        0xee
        0xef
        0xef
        0xf0
        0xf1
        0xf1
        0xf2
        0xf2
        0xf3
        0xf4
        0xf4
        0xf5
        0xf5
        0xf5
        0xf6
        0xf7
        0xf7
        0xf8
        0xf8
        0xf9
        0xf9
        0xfa
        0xfb
        0xfb
        0xfc
        0xfc
        0xfc
        0xfd
        0xfd
        0xfe
        0xfe
        0xff
    .end array-data

    .line 69
    :array_2
    .array-data 4
        0x57
        0x59
        0x59
        0x5a
        0x5a
        0x5b
        0x5b
        0x5d
        0x5d
        0x5e
        0x5f
        0x5f
        0x60
        0x60
        0x62
        0x62
        0x63
        0x64
        0x64
        0x66
        0x66
        0x67
        0x67
        0x68
        0x68
        0x6a
        0x6b
        0x6b
        0x6c
        0x6c
        0x6e
        0x6e
        0x6f
        0x70
        0x70
        0x72
        0x72
        0x73
        0x73
        0x74
        0x76
        0x76
        0x77
        0x77
        0x78
        0x78
        0x7a
        0x7b
        0x7b
        0x7c
        0x7c
        0x7e
        0x7e
        0x7f
        0x80
        0x80
        0x82
        0x82
        0x83
        0x83
        0x84
        0x86
        0x86
        0x87
        0x87
        0x88
        0x88
        0x89
        0x8b
        0x8b
        0x8c
        0x8c
        0x8d
        0x8f
        0x8f
        0x90
        0x90
        0x91
        0x92
        0x92
        0x94
        0x94
        0x95
        0x96
        0x96
        0x98
        0x98
        0x99
        0x9a
        0x9a
        0x9b
        0x9b
        0x9d
        0x9e
        0x9e
        0x9f
        0x9f
        0xa0
        0xa1
        0xa1
        0xa3
        0xa3
        0xa4
        0xa5
        0xa5
        0xa6
        0xa8
        0xa8
        0xa9
        0xa9
        0xaa
        0xab
        0xab
        0xac
        0xad
        0xad
        0xaf
        0xaf
        0xb0
        0xb1
        0xb1
        0xb2
        0xb3
        0xb3
        0xb4
        0xb5
        0xb5
        0xb7
        0xb7
        0xb8
        0xb9
        0xb9
        0xba
        0xbb
        0xbb
        0xbc
        0xbd
        0xbd
        0xbe
        0xbf
        0xbf
        0xc0
        0xc1
        0xc1
        0xc2
        0xc3
        0xc3
        0xc4
        0xc5
        0xc5
        0xc6
        0xc7
        0xc7
        0xc8
        0xc9
        0xc9
        0xca
        0xcb
        0xcc
        0xcc
        0xcd
        0xce
        0xce
        0xcf
        0xd0
        0xd0
        0xd1
        0xd2
        0xd3
        0xd3
        0xd3
        0xd4
        0xd4
        0xd5
        0xd6
        0xd7
        0xd7
        0xd8
        0xd8
        0xd9
        0xd9
        0xda
        0xdb
        0xdb
        0xdc
        0xdc
        0xdd
        0xdd
        0xde
        0xdf
        0xdf
        0xdf
        0xe0
        0xe1
        0xe2
        0xe2
        0xe2
        0xe3
        0xe4
        0xe4
        0xe4
        0xe5
        0xe6
        0xe6
        0xe6
        0xe7
        0xe8
        0xe8
        0xe8
        0xe9
        0xea
        0xea
        0xeb
        0xeb
        0xec
        0xec
        0xed
        0xee
        0xee
        0xee
        0xef
        0xef
        0xf0
        0xf0
        0xf1
        0xf1
        0xf2
        0xf2
        0xf2
        0xf3
        0xf4
        0xf4
        0xf4
        0xf5
        0xf5
        0xf6
        0xf7
        0xf7
        0xf7
        0xf8
        0xf8
        0xf9
        0xf9
        0xf9
        0xfa
        0xfb
        0xfb
        0xfc
        0xfc
        0xfc
        0xfd
        0xfd
        0xfe
        0xfe
        0xfe
        0xff
    .end array-data

    .line 70
    :array_3
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x3
        0x4
        0x4
        0x5
        0x6
        0x7
        0x7
        0x8
        0x9
        0xa
        0xa
        0xb
        0xc
        0xd
        0xd
        0xe
        0xf
        0x10
        0x11
        0x11
        0x12
        0x13
        0x14
        0x14
        0x15
        0x16
        0x17
        0x18
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x40
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
        0x48
        0x49
        0x4a
        0x4b
        0x4c
        0x4e
        0x4f
        0x50
        0x51
        0x53
        0x54
        0x55
        0x56
        0x58
        0x59
        0x5a
        0x5b
        0x5d
        0x5e
        0x5f
        0x61
        0x62
        0x63
        0x65
        0x66
        0x67
        0x69
        0x6a
        0x6b
        0x6d
        0x6e
        0x6f
        0x71
        0x72
        0x73
        0x75
        0x76
        0x77
        0x79
        0x7a
        0x7b
        0x7d
        0x7e
        0x7f
        0x81
        0x82
        0x83
        0x85
        0x86
        0x88
        0x89
        0x8a
        0x8c
        0x8d
        0x8e
        0x90
        0x91
        0x92
        0x94
        0x95
        0x96
        0x98
        0x99
        0x9a
        0x9c
        0x9d
        0x9e
        0x9f
        0xa1
        0xa2
        0xa3
        0xa5
        0xa6
        0xa7
        0xa8
        0xaa
        0xab
        0xac
        0xad
        0xaf
        0xb0
        0xb1
        0xb2
        0xb4
        0xb5
        0xb6
        0xb7
        0xb8
        0xba
        0xbb
        0xbc
        0xbd
        0xbe
        0xbf
        0xc0
        0xc1
        0xc3
        0xc4
        0xc5
        0xc6
        0xc7
        0xc8
        0xc9
        0xca
        0xcb
        0xcc
        0xcd
        0xce
        0xcf
        0xd0
        0xd1
        0xd2
        0xd3
        0xd4
        0xd5
        0xd5
        0xd6
        0xd7
        0xd8
        0xd9
        0xda
        0xdb
        0xdb
        0xdc
        0xdd
        0xde
        0xdf
        0xdf
        0xe0
        0xe1
        0xe2
        0xe3
        0xe3
        0xe4
        0xe5
        0xe6
        0xe6
        0xe7
        0xe8
        0xe8
        0xe9
        0xea
        0xea
        0xeb
        0xec
        0xec
        0xed
        0xee
        0xee
        0xef
        0xf0
        0xf0
        0xf1
        0xf2
        0xf2
        0xf3
        0xf4
        0xf4
        0xf5
        0xf5
        0xf6
        0xf7
        0xf7
        0xf8
        0xf8
        0xf9
        0xfa
        0xfa
        0xfb
        0xfb
        0xfc
        0xfd
        0xfd
        0xfe
        0xfe
        0xff
    .end array-data

    .line 77
    :array_4
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
        0x5
        0x6
        0x6
        0x6
        0x7
        0x7
        0x8
        0x8
        0x8
        0x9
        0x9
        0xa
        0xa
        0xa
        0xb
        0xb
        0xb
        0xc
        0xc
        0xd
        0xd
        0xd
        0xe
        0xe
        0xe
        0xf
        0xf
        0x10
        0x10
        0x10
        0x11
        0x11
        0x11
        0x12
        0x12
        0x12
        0x13
        0x13
        0x14
        0x14
        0x14
        0x15
        0x15
        0x15
        0x16
        0x16
        0x17
        0x17
        0x17
        0x18
        0x18
        0x18
        0x19
        0x19
        0x19
        0x19
        0x1a
        0x1a
        0x1b
        0x1b
        0x1c
        0x1c
        0x1c
        0x1c
        0x1d
        0x1d
        0x1e
        0x1d
        0x1f
        0x1f
        0x1f
        0x1f
        0x20
        0x20
        0x21
        0x21
        0x22
        0x22
        0x22
        0x22
        0x23
        0x23
        0x24
        0x24
        0x25
        0x25
        0x25
        0x26
        0x26
        0x27
        0x27
        0x27
        0x28
        0x28
        0x28
        0x29
        0x2a
        0x2a
        0x2b
        0x2b
        0x2c
        0x2c
        0x2d
        0x2d
        0x2d
        0x2e
        0x2f
        0x2f
        0x30
        0x30
        0x31
        0x32
        0x33
        0x33
        0x34
        0x34
        0x35
        0x35
        0x36
        0x37
        0x37
        0x38
        0x39
        0x39
        0x3a
        0x3b
        0x3c
        0x3c
        0x3d
        0x3e
        0x3f
        0x3f
        0x40
        0x41
        0x42
        0x43
        0x44
        0x44
        0x45
        0x46
        0x47
        0x48
        0x49
        0x4a
        0x4b
        0x4c
        0x4d
        0x4e
        0x4f
        0x50
        0x51
        0x52
        0x53
        0x54
        0x55
        0x56
        0x58
        0x59
        0x5a
        0x5b
        0x5d
        0x5e
        0x5f
        0x60
        0x61
        0x62
        0x64
        0x65
        0x67
        0x68
        0x69
        0x6b
        0x6c
        0x6e
        0x6f
        0x71
        0x73
        0x74
        0x76
        0x77
        0x78
        0x7a
        0x7b
        0x7d
        0x7f
        0x80
        0x82
        0x84
        0x86
        0x87
        0x89
        0x8b
        0x8d
        0x8f
        0x90
        0x92
        0x94
        0x96
        0x98
        0x9a
        0x9c
        0x9e
        0xa0
        0xa3
        0xa5
        0xa7
        0xa9
        0xab
        0xad
        0xaf
        0xb2
        0xb4
        0xb6
        0xb9
        0xbb
        0xbd
        0xc0
        0xc2
        0xc5
        0xc7
        0xc9
        0xcc
        0xce
        0xd1
        0xd3
        0xd6
        0xd8
        0xdb
        0xdd
        0xe0
        0xe2
        0xe5
        0xe8
        0xea
        0xec
        0xef
        0xf1
        0xf5
        0xf7
        0xfa
        0xfc
        0xff
    .end array-data
.end method
