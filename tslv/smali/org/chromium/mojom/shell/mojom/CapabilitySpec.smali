.class public final Lorg/chromium/mojom/shell/mojom/CapabilitySpec;
.super Lorg/chromium/mojo/bindings/Struct;
.source "CapabilitySpec.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final STRUCT_SIZE:I = 0x18

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public provided:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public required:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/chromium/mojom/shell/mojom/CapabilityRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 21
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x18

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    sput-object v0, Lorg/chromium/mojom/shell/mojom/CapabilitySpec;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    .line 22
    sget-object v0, Lorg/chromium/mojom/shell/mojom/CapabilitySpec;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/shell/mojom/CapabilitySpec;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/shell/mojom/CapabilitySpec;-><init>(I)V

    .line 45
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 35
    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 41
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/shell/mojom/CapabilitySpec;
    .locals 15
    .param p0, "decoder0"    # Lorg/chromium/mojo/bindings/Decoder;

    .prologue
    .line 53
    if-nez p0, :cond_1

    .line 54
    const/4 v8, 0x0

    .line 245
    :cond_0
    return-object v8

    .line 56
    :cond_1
    sget-object v12, Lorg/chromium/mojom/shell/mojom/CapabilitySpec;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v12}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v7

    .line 57
    .local v7, "mainDataHeader":Lorg/chromium/mojo/bindings/DataHeader;
    new-instance v8, Lorg/chromium/mojom/shell/mojom/CapabilitySpec;

    iget v12, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v8, v12}, Lorg/chromium/mojom/shell/mojom/CapabilitySpec;-><init>(I)V

    .line 60
    .local v8, "result":Lorg/chromium/mojom/shell/mojom/CapabilitySpec;
    iget v12, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v12, :cond_5

    .line 63
    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 69
    .local v0, "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    .line 75
    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    .line 81
    .local v1, "decoder2":Lorg/chromium/mojo/bindings/Decoder;
    const/4 v12, -0x1

    invoke-virtual {v1, v12}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v9

    .line 82
    .local v9, "si2":Lorg/chromium/mojo/bindings/DataHeader;
    iget v12, v9, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v12, [Ljava/lang/String;

    .line 83
    .local v6, "keys0":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i2":I
    :goto_0
    iget v12, v9, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v3, v12, :cond_2

    .line 86
    mul-int/lit8 v12, v3, 0x8

    add-int/lit8 v12, v12, 0x8

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v3

    .line 83
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    :cond_2
    const/16 v12, 0x10

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    .line 104
    array-length v12, v6

    invoke-virtual {v1, v12}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v9

    .line 105
    iget v12, v9, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v11, v12, [[Ljava/lang/String;

    .line 106
    .local v11, "values0":[[Ljava/lang/String;
    const/4 v3, 0x0

    :goto_1
    iget v12, v9, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v3, v12, :cond_4

    .line 109
    mul-int/lit8 v12, v3, 0x8

    add-int/lit8 v12, v12, 0x8

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    .line 115
    .local v2, "decoder3":Lorg/chromium/mojo/bindings/Decoder;
    const/4 v12, -0x1

    invoke-virtual {v2, v12}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v10

    .line 116
    .local v10, "si3":Lorg/chromium/mojo/bindings/DataHeader;
    iget v12, v10, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v12, v12, [Ljava/lang/String;

    aput-object v12, v11, v3

    .line 117
    const/4 v4, 0x0

    .local v4, "i3":I
    :goto_2
    iget v12, v10, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v4, v12, :cond_3

    .line 120
    aget-object v12, v11, v3

    mul-int/lit8 v13, v4, 0x8

    add-int/lit8 v13, v13, 0x8

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v4

    .line 117
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 106
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 134
    .end local v2    # "decoder3":Lorg/chromium/mojo/bindings/Decoder;
    .end local v4    # "i3":I
    .end local v10    # "si3":Lorg/chromium/mojo/bindings/DataHeader;
    :cond_4
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    iput-object v12, v8, Lorg/chromium/mojom/shell/mojom/CapabilitySpec;->provided:Ljava/util/Map;

    .line 135
    const/4 v5, 0x0

    .local v5, "index0":I
    :goto_3
    array-length v12, v6

    if-ge v5, v12, :cond_5

    .line 136
    iget-object v12, v8, Lorg/chromium/mojom/shell/mojom/CapabilitySpec;->provided:Ljava/util/Map;

    aget-object v13, v6, v5

    aget-object v14, v11, v5

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 160
    .end local v0    # "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    .end local v1    # "decoder2":Lorg/chromium/mojo/bindings/Decoder;
    .end local v3    # "i2":I
    .end local v5    # "index0":I
    .end local v6    # "keys0":[Ljava/lang/String;
    .end local v9    # "si2":Lorg/chromium/mojo/bindings/DataHeader;
    .end local v11    # "values0":[[Ljava/lang/String;
    :cond_5
    iget v12, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v12, :cond_0

    .line 163
    const/16 v12, 0x10

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 169
    .restart local v0    # "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    .line 175
    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    .line 181
    .restart local v1    # "decoder2":Lorg/chromium/mojo/bindings/Decoder;
    const/4 v12, -0x1

    invoke-virtual {v1, v12}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v9

    .line 182
    .restart local v9    # "si2":Lorg/chromium/mojo/bindings/DataHeader;
    iget v12, v9, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v12, [Ljava/lang/String;

    .line 183
    .restart local v6    # "keys0":[Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3    # "i2":I
    :goto_4
    iget v12, v9, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v3, v12, :cond_6

    .line 186
    mul-int/lit8 v12, v3, 0x8

    add-int/lit8 v12, v12, 0x8

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v3

    .line 183
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 198
    :cond_6
    const/16 v12, 0x10

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    .line 204
    array-length v12, v6

    invoke-virtual {v1, v12}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v9

    .line 205
    iget v12, v9, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v11, v12, [Lorg/chromium/mojom/shell/mojom/CapabilityRequest;

    .line 206
    .local v11, "values0":[Lorg/chromium/mojom/shell/mojom/CapabilityRequest;
    const/4 v3, 0x0

    :goto_5
    iget v12, v9, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v3, v12, :cond_7

    .line 209
    mul-int/lit8 v12, v3, 0x8

    add-int/lit8 v12, v12, 0x8

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    .line 211
    .restart local v2    # "decoder3":Lorg/chromium/mojo/bindings/Decoder;
    invoke-static {v2}, Lorg/chromium/mojom/shell/mojom/CapabilityRequest;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/shell/mojom/CapabilityRequest;

    move-result-object v12

    aput-object v12, v11, v3

    .line 206
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 220
    .end local v2    # "decoder3":Lorg/chromium/mojo/bindings/Decoder;
    :cond_7
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    iput-object v12, v8, Lorg/chromium/mojom/shell/mojom/CapabilitySpec;->required:Ljava/util/Map;

    .line 221
    const/4 v5, 0x0

    .restart local v5    # "index0":I
    :goto_6
    array-length v12, v6

    if-ge v5, v12, :cond_0

    .line 222
    iget-object v12, v8, Lorg/chromium/mojom/shell/mojom/CapabilitySpec;->required:Ljava/util/Map;

    aget-object v13, v6, v5

    aget-object v14, v11, v5

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    add-int/lit8 v5, v5, 0x1

    goto :goto_6
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/shell/mojom/CapabilitySpec;
    .locals 1
    .param p0, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 48
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/shell/mojom/CapabilitySpec;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/shell/mojom/CapabilitySpec;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 17
    .param p1, "encoder"    # Lorg/chromium/mojo/bindings/Encoder;

    .prologue
    .line 252
    sget-object v14, Lorg/chromium/mojom/shell/mojom/CapabilitySpec;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v1

    .line 258
    .local v1, "encoder0":Lorg/chromium/mojo/bindings/Encoder;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/chromium/mojom/shell/mojom/CapabilitySpec;->provided:Ljava/util/Map;

    if-nez v14, :cond_2

    .line 259
    const/16 v14, 0x8

    const/4 v15, 0x0

    invoke-virtual {v1, v14, v15}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    .line 344
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/chromium/mojom/shell/mojom/CapabilitySpec;->required:Ljava/util/Map;

    if-nez v14, :cond_7

    .line 345
    const/16 v14, 0x10

    const/4 v15, 0x0

    invoke-virtual {v1, v14, v15}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    .line 411
    :cond_1
    return-void

    .line 261
    :cond_2
    const/16 v14, 0x8

    invoke-virtual {v1, v14}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    .line 262
    .local v2, "encoder1":Lorg/chromium/mojo/bindings/Encoder;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/chromium/mojom/shell/mojom/CapabilitySpec;->provided:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v12

    .line 263
    .local v12, "size0":I
    new-array v11, v12, [Ljava/lang/String;

    .line 264
    .local v11, "keys0":[Ljava/lang/String;
    new-array v13, v12, [[Ljava/lang/String;

    .line 265
    .local v13, "values0":[[Ljava/lang/String;
    const/4 v10, 0x0

    .line 266
    .local v10, "index0":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/chromium/mojom/shell/mojom/CapabilitySpec;->provided:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 267
    .local v6, "entry0":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    aput-object v14, v11, v10

    .line 268
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    aput-object v14, v13, v10

    .line 269
    add-int/lit8 v10, v10, 0x1

    .line 270
    goto :goto_0

    .line 280
    .end local v6    # "entry0":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    :cond_3
    array-length v14, v11

    const/16 v15, 0x8

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v2, v14, v15, v0}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v3

    .line 281
    .local v3, "encoder2":Lorg/chromium/mojo/bindings/Encoder;
    const/4 v8, 0x0

    .local v8, "i1":I
    :goto_1
    array-length v14, v11

    if-ge v8, v14, :cond_4

    .line 284
    aget-object v14, v11, v8

    mul-int/lit8 v15, v8, 0x8

    add-int/lit8 v15, v15, 0x8

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v14, v15, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 281
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 298
    :cond_4
    array-length v14, v13

    const/16 v15, 0x10

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v2, v14, v15, v0}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v3

    .line 299
    const/4 v8, 0x0

    :goto_2
    array-length v14, v13

    if-ge v8, v14, :cond_0

    .line 304
    aget-object v14, v13, v8

    if-nez v14, :cond_6

    .line 305
    mul-int/lit8 v14, v8, 0x8

    add-int/lit8 v14, v14, 0x8

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    .line 299
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 311
    :cond_6
    aget-object v14, v13, v8

    array-length v14, v14

    mul-int/lit8 v15, v8, 0x8

    add-int/lit8 v15, v15, 0x8

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v3, v14, v15, v0}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v4

    .line 312
    .local v4, "encoder3":Lorg/chromium/mojo/bindings/Encoder;
    const/4 v9, 0x0

    .local v9, "i2":I
    :goto_3
    aget-object v14, v13, v8

    array-length v14, v14

    if-ge v9, v14, :cond_5

    .line 315
    aget-object v14, v13, v8

    aget-object v14, v14, v9

    mul-int/lit8 v15, v9, 0x8

    add-int/lit8 v15, v15, 0x8

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v14, v15, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 312
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 347
    .end local v2    # "encoder1":Lorg/chromium/mojo/bindings/Encoder;
    .end local v3    # "encoder2":Lorg/chromium/mojo/bindings/Encoder;
    .end local v4    # "encoder3":Lorg/chromium/mojo/bindings/Encoder;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "i1":I
    .end local v9    # "i2":I
    .end local v10    # "index0":I
    .end local v11    # "keys0":[Ljava/lang/String;
    .end local v12    # "size0":I
    .end local v13    # "values0":[[Ljava/lang/String;
    :cond_7
    const/16 v14, 0x10

    invoke-virtual {v1, v14}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    .line 348
    .restart local v2    # "encoder1":Lorg/chromium/mojo/bindings/Encoder;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/chromium/mojom/shell/mojom/CapabilitySpec;->required:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v12

    .line 349
    .restart local v12    # "size0":I
    new-array v11, v12, [Ljava/lang/String;

    .line 350
    .restart local v11    # "keys0":[Ljava/lang/String;
    new-array v13, v12, [Lorg/chromium/mojom/shell/mojom/CapabilityRequest;

    .line 351
    .local v13, "values0":[Lorg/chromium/mojom/shell/mojom/CapabilityRequest;
    const/4 v10, 0x0

    .line 352
    .restart local v10    # "index0":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/chromium/mojom/shell/mojom/CapabilitySpec;->required:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 353
    .local v5, "entry0":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/chromium/mojom/shell/mojom/CapabilityRequest;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    aput-object v14, v11, v10

    .line 354
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/chromium/mojom/shell/mojom/CapabilityRequest;

    aput-object v14, v13, v10

    .line 355
    add-int/lit8 v10, v10, 0x1

    .line 356
    goto :goto_4

    .line 366
    .end local v5    # "entry0":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/chromium/mojom/shell/mojom/CapabilityRequest;>;"
    :cond_8
    array-length v14, v11

    const/16 v15, 0x8

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v2, v14, v15, v0}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v3

    .line 367
    .restart local v3    # "encoder2":Lorg/chromium/mojo/bindings/Encoder;
    const/4 v8, 0x0

    .restart local v8    # "i1":I
    :goto_5
    array-length v14, v11

    if-ge v8, v14, :cond_9

    .line 370
    aget-object v14, v11, v8

    mul-int/lit8 v15, v8, 0x8

    add-int/lit8 v15, v15, 0x8

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v14, v15, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 367
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 384
    :cond_9
    array-length v14, v13

    const/16 v15, 0x10

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v2, v14, v15, v0}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v3

    .line 385
    const/4 v8, 0x0

    :goto_6
    array-length v14, v13

    if-ge v8, v14, :cond_1

    .line 388
    aget-object v14, v13, v8

    mul-int/lit8 v15, v8, 0x8

    add-int/lit8 v15, v15, 0x8

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v14, v15, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 385
    add-int/lit8 v8, v8, 0x1

    goto :goto_6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 418
    if-ne p1, p0, :cond_1

    .line 434
    :cond_0
    :goto_0
    return v1

    .line 420
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 421
    goto :goto_0

    .line 422
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 423
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 425
    check-cast v0, Lorg/chromium/mojom/shell/mojom/CapabilitySpec;

    .line 427
    .local v0, "other":Lorg/chromium/mojom/shell/mojom/CapabilitySpec;
    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/CapabilitySpec;->provided:Ljava/util/Map;

    iget-object v4, v0, Lorg/chromium/mojom/shell/mojom/CapabilitySpec;->provided:Ljava/util/Map;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 428
    goto :goto_0

    .line 430
    :cond_4
    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/CapabilitySpec;->required:Ljava/util/Map;

    iget-object v4, v0, Lorg/chromium/mojom/shell/mojom/CapabilitySpec;->required:Ljava/util/Map;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 431
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 442
    const/16 v0, 0x1f

    .line 443
    .local v0, "prime":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 445
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/CapabilitySpec;->provided:Ljava/util/Map;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 447
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/CapabilitySpec;->required:Ljava/util/Map;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 449
    return v1
.end method
