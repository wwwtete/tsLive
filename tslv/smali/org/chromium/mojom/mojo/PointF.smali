.class public final Lorg/chromium/mojom/mojo/PointF;
.super Lorg/chromium/mojo/bindings/Struct;
.source "PointF.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final STRUCT_SIZE:I = 0x10

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 21
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/PointF;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    .line 22
    sget-object v0, Lorg/chromium/mojom/mojo/PointF;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/mojo/PointF;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/mojo/PointF;-><init>(I)V

    .line 45
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 35
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 41
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/PointF;
    .locals 3
    .param p0, "decoder0"    # Lorg/chromium/mojo/bindings/Decoder;

    .prologue
    .line 53
    if-nez p0, :cond_1

    .line 54
    const/4 v1, 0x0

    .line 91
    :cond_0
    :goto_0
    return-object v1

    .line 56
    :cond_1
    sget-object v2, Lorg/chromium/mojom/mojo/PointF;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    .line 57
    .local v0, "mainDataHeader":Lorg/chromium/mojo/bindings/DataHeader;
    new-instance v1, Lorg/chromium/mojom/mojo/PointF;

    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v1, v2}, Lorg/chromium/mojom/mojo/PointF;-><init>(I)V

    .line 60
    .local v1, "result":Lorg/chromium/mojom/mojo/PointF;
    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_2

    .line 63
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v2

    iput v2, v1, Lorg/chromium/mojom/mojo/PointF;->x:F

    .line 76
    :cond_2
    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_0

    .line 79
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v2

    iput v2, v1, Lorg/chromium/mojom/mojo/PointF;->y:F

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/PointF;
    .locals 1
    .param p0, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 48
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/mojo/PointF;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/PointF;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 3
    .param p1, "encoder"    # Lorg/chromium/mojo/bindings/Encoder;

    .prologue
    .line 98
    sget-object v1, Lorg/chromium/mojom/mojo/PointF;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 104
    .local v0, "encoder0":Lorg/chromium/mojo/bindings/Encoder;
    iget v1, p0, Lorg/chromium/mojom/mojo/PointF;->x:F

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    .line 117
    iget v1, p0, Lorg/chromium/mojom/mojo/PointF;->y:F

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    .line 127
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 134
    if-ne p1, p0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v1

    .line 136
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 137
    goto :goto_0

    .line 138
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 139
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 141
    check-cast v0, Lorg/chromium/mojom/mojo/PointF;

    .line 143
    .local v0, "other":Lorg/chromium/mojom/mojo/PointF;
    iget v3, p0, Lorg/chromium/mojom/mojo/PointF;->x:F

    iget v4, v0, Lorg/chromium/mojom/mojo/PointF;->x:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    move v1, v2

    .line 144
    goto :goto_0

    .line 146
    :cond_4
    iget v3, p0, Lorg/chromium/mojom/mojo/PointF;->y:F

    iget v4, v0, Lorg/chromium/mojom/mojo/PointF;->y:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    move v1, v2

    .line 147
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 158
    const/16 v0, 0x1f

    .line 159
    .local v0, "prime":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 161
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/chromium/mojom/mojo/PointF;->x:F

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(F)I

    move-result v3

    add-int v1, v2, v3

    .line 163
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/chromium/mojom/mojo/PointF;->y:F

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(F)I

    move-result v3

    add-int v1, v2, v3

    .line 165
    return v1
.end method
