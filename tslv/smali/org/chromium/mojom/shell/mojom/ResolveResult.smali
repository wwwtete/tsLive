.class public final Lorg/chromium/mojom/shell/mojom/ResolveResult;
.super Lorg/chromium/mojo/bindings/Struct;
.source "ResolveResult.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final STRUCT_SIZE:I = 0x30

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public capabilities:Lorg/chromium/mojom/shell/mojom/CapabilitySpec;

.field public name:Ljava/lang/String;

.field public packagePath:Lorg/chromium/mojom/mojo/common/mojom/FilePath;

.field public qualifier:Ljava/lang/String;

.field public resolvedName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 21
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x30

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    sput-object v0, Lorg/chromium/mojom/shell/mojom/ResolveResult;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    .line 22
    sget-object v0, Lorg/chromium/mojom/shell/mojom/ResolveResult;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/shell/mojom/ResolveResult;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/shell/mojom/ResolveResult;-><init>(I)V

    .line 57
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 41
    const/16 v0, 0x30

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 53
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/shell/mojom/ResolveResult;
    .locals 5
    .param p0, "decoder0"    # Lorg/chromium/mojo/bindings/Decoder;

    .prologue
    const/4 v4, 0x0

    .line 65
    if-nez p0, :cond_1

    .line 66
    const/4 v2, 0x0

    .line 195
    :cond_0
    :goto_0
    return-object v2

    .line 68
    :cond_1
    sget-object v3, Lorg/chromium/mojom/shell/mojom/ResolveResult;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 69
    .local v1, "mainDataHeader":Lorg/chromium/mojo/bindings/DataHeader;
    new-instance v2, Lorg/chromium/mojom/shell/mojom/ResolveResult;

    iget v3, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v2, v3}, Lorg/chromium/mojom/shell/mojom/ResolveResult;-><init>(I)V

    .line 72
    .local v2, "result":Lorg/chromium/mojom/shell/mojom/ResolveResult;
    iget v3, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v3, :cond_2

    .line 75
    const/16 v3, 0x8

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/chromium/mojom/shell/mojom/ResolveResult;->name:Ljava/lang/String;

    .line 96
    :cond_2
    iget v3, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v3, :cond_3

    .line 99
    const/16 v3, 0x10

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/chromium/mojom/shell/mojom/ResolveResult;->resolvedName:Ljava/lang/String;

    .line 120
    :cond_3
    iget v3, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v3, :cond_4

    .line 123
    const/16 v3, 0x18

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/chromium/mojom/shell/mojom/ResolveResult;->qualifier:Ljava/lang/String;

    .line 144
    :cond_4
    iget v3, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v3, :cond_5

    .line 147
    const/16 v3, 0x20

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 149
    .local v0, "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    invoke-static {v0}, Lorg/chromium/mojom/shell/mojom/CapabilitySpec;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/shell/mojom/CapabilitySpec;

    move-result-object v3

    iput-object v3, v2, Lorg/chromium/mojom/shell/mojom/ResolveResult;->capabilities:Lorg/chromium/mojom/shell/mojom/CapabilitySpec;

    .line 170
    .end local v0    # "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    :cond_5
    iget v3, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v3, :cond_0

    .line 173
    const/16 v3, 0x28

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 175
    .restart local v0    # "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    invoke-static {v0}, Lorg/chromium/mojom/mojo/common/mojom/FilePath;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/mojo/common/mojom/FilePath;

    move-result-object v3

    iput-object v3, v2, Lorg/chromium/mojom/shell/mojom/ResolveResult;->packagePath:Lorg/chromium/mojom/mojo/common/mojom/FilePath;

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/shell/mojom/ResolveResult;
    .locals 1
    .param p0, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 60
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/shell/mojom/ResolveResult;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/shell/mojom/ResolveResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4
    .param p1, "encoder"    # Lorg/chromium/mojo/bindings/Encoder;

    .prologue
    const/4 v3, 0x0

    .line 202
    sget-object v1, Lorg/chromium/mojom/shell/mojom/ResolveResult;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 208
    .local v0, "encoder0":Lorg/chromium/mojo/bindings/Encoder;
    iget-object v1, p0, Lorg/chromium/mojom/shell/mojom/ResolveResult;->name:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 229
    iget-object v1, p0, Lorg/chromium/mojom/shell/mojom/ResolveResult;->resolvedName:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 250
    iget-object v1, p0, Lorg/chromium/mojom/shell/mojom/ResolveResult;->qualifier:Ljava/lang/String;

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 271
    iget-object v1, p0, Lorg/chromium/mojom/shell/mojom/ResolveResult;->capabilities:Lorg/chromium/mojom/shell/mojom/CapabilitySpec;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 292
    iget-object v1, p0, Lorg/chromium/mojom/shell/mojom/ResolveResult;->packagePath:Lorg/chromium/mojom/mojo/common/mojom/FilePath;

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 310
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 317
    if-ne p1, p0, :cond_1

    .line 342
    :cond_0
    :goto_0
    return v1

    .line 319
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 320
    goto :goto_0

    .line 321
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 322
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 324
    check-cast v0, Lorg/chromium/mojom/shell/mojom/ResolveResult;

    .line 326
    .local v0, "other":Lorg/chromium/mojom/shell/mojom/ResolveResult;
    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/ResolveResult;->name:Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/mojom/shell/mojom/ResolveResult;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 327
    goto :goto_0

    .line 329
    :cond_4
    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/ResolveResult;->resolvedName:Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/mojom/shell/mojom/ResolveResult;->resolvedName:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 330
    goto :goto_0

    .line 332
    :cond_5
    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/ResolveResult;->qualifier:Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/mojom/shell/mojom/ResolveResult;->qualifier:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 333
    goto :goto_0

    .line 335
    :cond_6
    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/ResolveResult;->capabilities:Lorg/chromium/mojom/shell/mojom/CapabilitySpec;

    iget-object v4, v0, Lorg/chromium/mojom/shell/mojom/ResolveResult;->capabilities:Lorg/chromium/mojom/shell/mojom/CapabilitySpec;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 336
    goto :goto_0

    .line 338
    :cond_7
    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/ResolveResult;->packagePath:Lorg/chromium/mojom/mojo/common/mojom/FilePath;

    iget-object v4, v0, Lorg/chromium/mojom/shell/mojom/ResolveResult;->packagePath:Lorg/chromium/mojom/mojo/common/mojom/FilePath;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 339
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 350
    const/16 v0, 0x1f

    .line 351
    .local v0, "prime":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 353
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/ResolveResult;->name:Ljava/lang/String;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 355
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/ResolveResult;->resolvedName:Ljava/lang/String;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 357
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/ResolveResult;->qualifier:Ljava/lang/String;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 359
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/ResolveResult;->capabilities:Lorg/chromium/mojom/shell/mojom/CapabilitySpec;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 361
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/ResolveResult;->packagePath:Lorg/chromium/mojom/mojo/common/mojom/FilePath;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 363
    return v1
.end method
