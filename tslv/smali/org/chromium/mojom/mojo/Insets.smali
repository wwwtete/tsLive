.class public final Lorg/chromium/mojom/mojo/Insets;
.super Lorg/chromium/mojo/bindings/Struct;
.source "Insets.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final STRUCT_SIZE:I = 0x18

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public bottom:I

.field public left:I

.field public right:I

.field public top:I


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

    sput-object v0, Lorg/chromium/mojom/mojo/Insets;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    .line 22
    sget-object v0, Lorg/chromium/mojom/mojo/Insets;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/Insets;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/Insets;-><init>(I)V

    .line 53
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 39
    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 49
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/Insets;
    .locals 3
    .param p0, "decoder0"    # Lorg/chromium/mojo/bindings/Decoder;

    .prologue
    .line 61
    if-nez p0, :cond_1

    .line 62
    const/4 v1, 0x0

    .line 131
    :cond_0
    :goto_0
    return-object v1

    .line 64
    :cond_1
    sget-object v2, Lorg/chromium/mojom/mojo/Insets;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    .line 65
    .local v0, "mainDataHeader":Lorg/chromium/mojo/bindings/DataHeader;
    new-instance v1, Lorg/chromium/mojom/mojo/Insets;

    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v1, v2}, Lorg/chromium/mojom/mojo/Insets;-><init>(I)V

    .line 68
    .local v1, "result":Lorg/chromium/mojom/mojo/Insets;
    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_2

    .line 71
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/mojom/mojo/Insets;->top:I

    .line 84
    :cond_2
    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_3

    .line 87
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/mojom/mojo/Insets;->left:I

    .line 100
    :cond_3
    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_4

    .line 103
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/mojom/mojo/Insets;->bottom:I

    .line 116
    :cond_4
    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_0

    .line 119
    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/mojom/mojo/Insets;->right:I

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/Insets;
    .locals 1
    .param p0, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 56
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/Insets;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/Insets;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 3
    .param p1, "encoder"    # Lorg/chromium/mojo/bindings/Encoder;

    .prologue
    .line 138
    sget-object v1, Lorg/chromium/mojom/mojo/Insets;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 144
    .local v0, "encoder0":Lorg/chromium/mojo/bindings/Encoder;
    iget v1, p0, Lorg/chromium/mojom/mojo/Insets;->top:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 157
    iget v1, p0, Lorg/chromium/mojom/mojo/Insets;->left:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 170
    iget v1, p0, Lorg/chromium/mojom/mojo/Insets;->bottom:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 183
    iget v1, p0, Lorg/chromium/mojom/mojo/Insets;->right:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 193
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 200
    if-ne p1, p0, :cond_1

    .line 222
    :cond_0
    :goto_0
    return v1

    .line 202
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 203
    goto :goto_0

    .line 204
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 205
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 207
    check-cast v0, Lorg/chromium/mojom/mojo/Insets;

    .line 209
    .local v0, "other":Lorg/chromium/mojom/mojo/Insets;
    iget v3, p0, Lorg/chromium/mojom/mojo/Insets;->top:I

    iget v4, v0, Lorg/chromium/mojom/mojo/Insets;->top:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 210
    goto :goto_0

    .line 212
    :cond_4
    iget v3, p0, Lorg/chromium/mojom/mojo/Insets;->left:I

    iget v4, v0, Lorg/chromium/mojom/mojo/Insets;->left:I

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 213
    goto :goto_0

    .line 215
    :cond_5
    iget v3, p0, Lorg/chromium/mojom/mojo/Insets;->bottom:I

    iget v4, v0, Lorg/chromium/mojom/mojo/Insets;->bottom:I

    if-eq v3, v4, :cond_6

    move v1, v2

    .line 216
    goto :goto_0

    .line 218
    :cond_6
    iget v3, p0, Lorg/chromium/mojom/mojo/Insets;->right:I

    iget v4, v0, Lorg/chromium/mojom/mojo/Insets;->right:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 219
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 230
    const/16 v0, 0x1f

    .line 231
    .local v0, "prime":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 233
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/chromium/mojom/mojo/Insets;->top:I

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v3

    add-int v1, v2, v3

    .line 235
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/chromium/mojom/mojo/Insets;->left:I

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v3

    add-int v1, v2, v3

    .line 237
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/chromium/mojom/mojo/Insets;->bottom:I

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v3

    add-int v1, v2, v3

    .line 239
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/chromium/mojom/mojo/Insets;->right:I

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v3

    add-int v1, v2, v3

    .line 241
    return v1
.end method
