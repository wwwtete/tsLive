.class final Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "ShellResolver_Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ShellResolverResolveMojoNameResponseParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final STRUCT_SIZE:I = 0x10

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public result:Lorg/chromium/mojom/shell/mojom/ResolveResult;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 292
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    sput-object v0, Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    .line 293
    sget-object v0, Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;-><init>(I)V

    .line 312
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 304
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 308
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;
    .locals 5
    .param p0, "decoder0"    # Lorg/chromium/mojo/bindings/Decoder;

    .prologue
    .line 320
    if-nez p0, :cond_1

    .line 321
    const/4 v2, 0x0

    .line 352
    :cond_0
    :goto_0
    return-object v2

    .line 323
    :cond_1
    sget-object v3, Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 324
    .local v1, "mainDataHeader":Lorg/chromium/mojo/bindings/DataHeader;
    new-instance v2, Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;

    iget v3, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v2, v3}, Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;-><init>(I)V

    .line 327
    .local v2, "result":Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;
    iget v3, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v3, :cond_0

    .line 330
    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 332
    .local v0, "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    invoke-static {v0}, Lorg/chromium/mojom/shell/mojom/ResolveResult;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/shell/mojom/ResolveResult;

    move-result-object v3

    iput-object v3, v2, Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->result:Lorg/chromium/mojom/shell/mojom/ResolveResult;

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;
    .locals 1
    .param p0, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 315
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4
    .param p1, "encoder"    # Lorg/chromium/mojo/bindings/Encoder;

    .prologue
    .line 359
    sget-object v1, Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 365
    .local v0, "encoder0":Lorg/chromium/mojo/bindings/Encoder;
    iget-object v1, p0, Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->result:Lorg/chromium/mojom/shell/mojom/ResolveResult;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 383
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 390
    if-ne p1, p0, :cond_1

    .line 403
    :cond_0
    :goto_0
    return v1

    .line 392
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 393
    goto :goto_0

    .line 394
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 395
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 397
    check-cast v0, Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;

    .line 399
    .local v0, "other":Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;
    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->result:Lorg/chromium/mojom/shell/mojom/ResolveResult;

    iget-object v4, v0, Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->result:Lorg/chromium/mojom/shell/mojom/ResolveResult;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 400
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 411
    const/16 v0, 0x1f

    .line 412
    .local v0, "prime":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 414
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v3

    add-int v1, v2, v3

    .line 416
    return v1
.end method
