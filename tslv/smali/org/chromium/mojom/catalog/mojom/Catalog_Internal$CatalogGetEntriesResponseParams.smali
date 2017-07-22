.class final Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "Catalog_Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/catalog/mojom/Catalog_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CatalogGetEntriesResponseParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final STRUCT_SIZE:I = 0x10

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public entries:[Lorg/chromium/mojom/catalog/mojom/Entry;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 449
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    sput-object v0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    .line 450
    sget-object v0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 468
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;-><init>(I)V

    .line 469
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 461
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 465
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;
    .locals 9
    .param p0, "decoder0"    # Lorg/chromium/mojo/bindings/Decoder;

    .prologue
    const/4 v8, 0x0

    .line 477
    if-nez p0, :cond_1

    .line 478
    const/4 v4, 0x0

    .line 525
    :cond_0
    return-object v4

    .line 480
    :cond_1
    sget-object v6, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v3

    .line 481
    .local v3, "mainDataHeader":Lorg/chromium/mojo/bindings/DataHeader;
    new-instance v4, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;

    iget v6, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v4, v6}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;-><init>(I)V

    .line 484
    .local v4, "result":Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;
    iget v6, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v6, :cond_0

    .line 487
    const/16 v6, 0x8

    invoke-virtual {p0, v6, v8}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 493
    .local v0, "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    const/4 v6, -0x1

    invoke-virtual {v0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    .line 494
    .local v5, "si1":Lorg/chromium/mojo/bindings/DataHeader;
    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Lorg/chromium/mojom/catalog/mojom/Entry;

    iput-object v6, v4, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;->entries:[Lorg/chromium/mojom/catalog/mojom/Entry;

    .line 495
    const/4 v2, 0x0

    .local v2, "i1":I
    :goto_0
    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v2, v6, :cond_0

    .line 498
    mul-int/lit8 v6, v2, 0x8

    add-int/lit8 v6, v6, 0x8

    invoke-virtual {v0, v6, v8}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    .line 500
    .local v1, "decoder2":Lorg/chromium/mojo/bindings/Decoder;
    iget-object v6, v4, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;->entries:[Lorg/chromium/mojom/catalog/mojom/Entry;

    invoke-static {v1}, Lorg/chromium/mojom/catalog/mojom/Entry;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/catalog/mojom/Entry;

    move-result-object v7

    aput-object v7, v6, v2

    .line 495
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;
    .locals 1
    .param p0, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 472
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 7
    .param p1, "encoder"    # Lorg/chromium/mojo/bindings/Encoder;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 532
    sget-object v3, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v3}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 540
    .local v0, "encoder0":Lorg/chromium/mojo/bindings/Encoder;
    iget-object v3, p0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;->entries:[Lorg/chromium/mojom/catalog/mojom/Entry;

    if-nez v3, :cond_1

    .line 541
    invoke-virtual {v0, v6, v5}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    .line 572
    :cond_0
    return-void

    .line 547
    :cond_1
    iget-object v3, p0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;->entries:[Lorg/chromium/mojom/catalog/mojom/Entry;

    array-length v3, v3

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v6, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v1

    .line 548
    .local v1, "encoder1":Lorg/chromium/mojo/bindings/Encoder;
    const/4 v2, 0x0

    .local v2, "i0":I
    :goto_0
    iget-object v3, p0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;->entries:[Lorg/chromium/mojom/catalog/mojom/Entry;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 551
    iget-object v3, p0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;->entries:[Lorg/chromium/mojom/catalog/mojom/Entry;

    aget-object v3, v3, v2

    mul-int/lit8 v4, v2, 0x8

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v1, v3, v4, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 548
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 579
    if-ne p1, p0, :cond_1

    .line 592
    :cond_0
    :goto_0
    return v1

    .line 581
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 582
    goto :goto_0

    .line 583
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 584
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 586
    check-cast v0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;

    .line 588
    .local v0, "other":Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;
    iget-object v3, p0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;->entries:[Lorg/chromium/mojom/catalog/mojom/Entry;

    iget-object v4, v0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;->entries:[Lorg/chromium/mojom/catalog/mojom/Entry;

    invoke-static {v3, v4}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 589
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 600
    const/16 v0, 0x1f

    .line 601
    .local v0, "prime":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 603
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;->entries:[Lorg/chromium/mojom/catalog/mojom/Entry;

    invoke-static {v3}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 605
    return v1
.end method
