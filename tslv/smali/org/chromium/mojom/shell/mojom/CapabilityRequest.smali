.class public final Lorg/chromium/mojom/shell/mojom/CapabilityRequest;
.super Lorg/chromium/mojo/bindings/Struct;
.source "CapabilityRequest.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final STRUCT_SIZE:I = 0x18

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public classes:[Ljava/lang/String;

.field public interfaces:[Ljava/lang/String;


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

    sput-object v0, Lorg/chromium/mojom/shell/mojom/CapabilityRequest;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    .line 22
    sget-object v0, Lorg/chromium/mojom/shell/mojom/CapabilityRequest;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/shell/mojom/CapabilityRequest;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/shell/mojom/CapabilityRequest;-><init>(I)V

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

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/shell/mojom/CapabilityRequest;
    .locals 9
    .param p0, "decoder0"    # Lorg/chromium/mojo/bindings/Decoder;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 53
    if-nez p0, :cond_1

    .line 54
    const/4 v3, 0x0

    .line 139
    :cond_0
    return-object v3

    .line 56
    :cond_1
    sget-object v5, Lorg/chromium/mojom/shell/mojom/CapabilityRequest;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v2

    .line 57
    .local v2, "mainDataHeader":Lorg/chromium/mojo/bindings/DataHeader;
    new-instance v3, Lorg/chromium/mojom/shell/mojom/CapabilityRequest;

    iget v5, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v3, v5}, Lorg/chromium/mojom/shell/mojom/CapabilityRequest;-><init>(I)V

    .line 60
    .local v3, "result":Lorg/chromium/mojom/shell/mojom/CapabilityRequest;
    iget v5, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v5, :cond_2

    .line 63
    const/16 v5, 0x8

    invoke-virtual {p0, v5, v7}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 69
    .local v0, "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    invoke-virtual {v0, v8}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    .line 70
    .local v4, "si1":Lorg/chromium/mojo/bindings/DataHeader;
    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, v3, Lorg/chromium/mojom/shell/mojom/CapabilityRequest;->classes:[Ljava/lang/String;

    .line 71
    const/4 v1, 0x0

    .local v1, "i1":I
    :goto_0
    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v1, v5, :cond_2

    .line 74
    iget-object v5, v3, Lorg/chromium/mojom/shell/mojom/CapabilityRequest;->classes:[Ljava/lang/String;

    mul-int/lit8 v6, v1, 0x8

    add-int/lit8 v6, v6, 0x8

    invoke-virtual {v0, v6, v7}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    .end local v0    # "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    .end local v1    # "i1":I
    .end local v4    # "si1":Lorg/chromium/mojo/bindings/DataHeader;
    :cond_2
    iget v5, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v5, :cond_0

    .line 103
    const/16 v5, 0x10

    invoke-virtual {p0, v5, v7}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 109
    .restart local v0    # "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    invoke-virtual {v0, v8}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    .line 110
    .restart local v4    # "si1":Lorg/chromium/mojo/bindings/DataHeader;
    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, v3, Lorg/chromium/mojom/shell/mojom/CapabilityRequest;->interfaces:[Ljava/lang/String;

    .line 111
    const/4 v1, 0x0

    .restart local v1    # "i1":I
    :goto_1
    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v1, v5, :cond_0

    .line 114
    iget-object v5, v3, Lorg/chromium/mojom/shell/mojom/CapabilityRequest;->interfaces:[Ljava/lang/String;

    mul-int/lit8 v6, v1, 0x8

    add-int/lit8 v6, v6, 0x8

    invoke-virtual {v0, v6, v7}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/shell/mojom/CapabilityRequest;
    .locals 1
    .param p0, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 48
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/shell/mojom/CapabilityRequest;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/shell/mojom/CapabilityRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 8
    .param p1, "encoder"    # Lorg/chromium/mojo/bindings/Encoder;

    .prologue
    const/16 v7, 0x10

    const/16 v4, 0x8

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 146
    sget-object v3, Lorg/chromium/mojom/shell/mojom/CapabilityRequest;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v3}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 154
    .local v0, "encoder0":Lorg/chromium/mojo/bindings/Encoder;
    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/CapabilityRequest;->classes:[Ljava/lang/String;

    if-nez v3, :cond_2

    .line 155
    invoke-virtual {v0, v4, v5}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    .line 191
    :cond_0
    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/CapabilityRequest;->interfaces:[Ljava/lang/String;

    if-nez v3, :cond_3

    .line 192
    invoke-virtual {v0, v7, v5}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    .line 223
    :cond_1
    return-void

    .line 161
    :cond_2
    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/CapabilityRequest;->classes:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v0, v3, v4, v6}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v1

    .line 162
    .local v1, "encoder1":Lorg/chromium/mojo/bindings/Encoder;
    const/4 v2, 0x0

    .local v2, "i0":I
    :goto_0
    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/CapabilityRequest;->classes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 165
    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/CapabilityRequest;->classes:[Ljava/lang/String;

    aget-object v3, v3, v2

    mul-int/lit8 v4, v2, 0x8

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v1, v3, v4, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    .end local v1    # "encoder1":Lorg/chromium/mojo/bindings/Encoder;
    .end local v2    # "i0":I
    :cond_3
    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/CapabilityRequest;->interfaces:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v0, v3, v7, v6}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v1

    .line 199
    .restart local v1    # "encoder1":Lorg/chromium/mojo/bindings/Encoder;
    const/4 v2, 0x0

    .restart local v2    # "i0":I
    :goto_1
    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/CapabilityRequest;->interfaces:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 202
    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/CapabilityRequest;->interfaces:[Ljava/lang/String;

    aget-object v3, v3, v2

    mul-int/lit8 v4, v2, 0x8

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v1, v3, v4, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 230
    if-ne p1, p0, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v1

    .line 232
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 233
    goto :goto_0

    .line 234
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 235
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 237
    check-cast v0, Lorg/chromium/mojom/shell/mojom/CapabilityRequest;

    .line 239
    .local v0, "other":Lorg/chromium/mojom/shell/mojom/CapabilityRequest;
    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/CapabilityRequest;->classes:[Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/mojom/shell/mojom/CapabilityRequest;->classes:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 240
    goto :goto_0

    .line 242
    :cond_4
    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/CapabilityRequest;->interfaces:[Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/mojom/shell/mojom/CapabilityRequest;->interfaces:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 243
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 254
    const/16 v0, 0x1f

    .line 255
    .local v0, "prime":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 257
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/CapabilityRequest;->classes:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 259
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/CapabilityRequest;->interfaces:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 261
    return v1
.end method
