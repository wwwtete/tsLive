.class final Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "Connector_Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/shell/mojom/Connector_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConnectorConnectResponseParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final STRUCT_SIZE:I = 0x18

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public applicationId:I

.field public result:I

.field public userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 498
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x18

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    sput-object v0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    .line 499
    sget-object v0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 525
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;-><init>(I)V

    .line 526
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 514
    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 522
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;
    .locals 4
    .param p0, "decoder0"    # Lorg/chromium/mojo/bindings/Decoder;

    .prologue
    .line 534
    if-nez p0, :cond_1

    .line 535
    const/4 v1, 0x0

    .line 598
    :cond_0
    :goto_0
    return-object v1

    .line 537
    :cond_1
    sget-object v2, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    .line 538
    .local v0, "mainDataHeader":Lorg/chromium/mojo/bindings/DataHeader;
    new-instance v1, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;

    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v1, v2}, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;-><init>(I)V

    .line 541
    .local v1, "result":Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;
    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_2

    .line 544
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->result:I

    .line 546
    iget v2, v1, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->result:I

    invoke-static {v2}, Lorg/chromium/mojom/shell/mojom/ConnectResult;->validate(I)V

    .line 559
    :cond_2
    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_3

    .line 562
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->applicationId:I

    .line 575
    :cond_3
    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_0

    .line 578
    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->userId:Ljava/lang/String;

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;
    .locals 1
    .param p0, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 529
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4
    .param p1, "encoder"    # Lorg/chromium/mojo/bindings/Encoder;

    .prologue
    .line 605
    sget-object v1, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 611
    .local v0, "encoder0":Lorg/chromium/mojo/bindings/Encoder;
    iget v1, p0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->result:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 624
    iget v1, p0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->applicationId:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 637
    iget-object v1, p0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->userId:Ljava/lang/String;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 655
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 662
    if-ne p1, p0, :cond_1

    .line 681
    :cond_0
    :goto_0
    return v1

    .line 664
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 665
    goto :goto_0

    .line 666
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 667
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 669
    check-cast v0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;

    .line 671
    .local v0, "other":Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;
    iget v3, p0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->result:I

    iget v4, v0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->result:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 672
    goto :goto_0

    .line 674
    :cond_4
    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->userId:Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->userId:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 675
    goto :goto_0

    .line 677
    :cond_5
    iget v3, p0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->applicationId:I

    iget v4, v0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->applicationId:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 678
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 689
    const/16 v0, 0x1f

    .line 690
    .local v0, "prime":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 692
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v3

    add-int v1, v2, v3

    .line 694
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->userId:Ljava/lang/String;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 696
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->applicationId:I

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v3

    add-int v1, v2, v3

    .line 698
    return v1
.end method
