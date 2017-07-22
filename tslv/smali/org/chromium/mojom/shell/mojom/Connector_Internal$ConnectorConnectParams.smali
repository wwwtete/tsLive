.class final Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "Connector_Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/shell/mojom/Connector_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConnectorConnectParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final STRUCT_SIZE:I = 0x28

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public clientProcessConnection:Lorg/chromium/mojom/shell/mojom/ClientProcessConnection;

.field public localInterfaces:Lorg/chromium/mojom/shell/mojom/InterfaceProvider;

.field public remoteInterfaces:Lorg/chromium/mojo/bindings/InterfaceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/InterfaceRequest",
            "<",
            "Lorg/chromium/mojom/shell/mojom/InterfaceProvider;",
            ">;"
        }
    .end annotation
.end field

.field public target:Lorg/chromium/mojom/shell/mojom/Identity;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 200
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x28

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    sput-object v0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    .line 201
    sget-object v0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;-><init>(I)V

    .line 232
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 218
    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 228
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;
    .locals 6
    .param p0, "decoder0"    # Lorg/chromium/mojo/bindings/Decoder;

    .prologue
    const/4 v5, 0x1

    .line 240
    if-nez p0, :cond_1

    .line 241
    const/4 v2, 0x0

    .line 346
    :cond_0
    :goto_0
    return-object v2

    .line 243
    :cond_1
    sget-object v3, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 244
    .local v1, "mainDataHeader":Lorg/chromium/mojo/bindings/DataHeader;
    new-instance v2, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;

    iget v3, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v2, v3}, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;-><init>(I)V

    .line 247
    .local v2, "result":Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;
    iget v3, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v3, :cond_2

    .line 250
    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 252
    .local v0, "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    invoke-static {v0}, Lorg/chromium/mojom/shell/mojom/Identity;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/shell/mojom/Identity;

    move-result-object v3

    iput-object v3, v2, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;->target:Lorg/chromium/mojom/shell/mojom/Identity;

    .line 273
    .end local v0    # "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    :cond_2
    iget v3, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v3, :cond_3

    .line 276
    const/16 v3, 0x10

    invoke-virtual {p0, v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v3

    iput-object v3, v2, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;->remoteInterfaces:Lorg/chromium/mojo/bindings/InterfaceRequest;

    .line 289
    :cond_3
    iget v3, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v3, :cond_4

    .line 292
    const/16 v3, 0x14

    sget-object v4, Lorg/chromium/mojom/shell/mojom/InterfaceProvider;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p0, v3, v5, v4}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v3

    check-cast v3, Lorg/chromium/mojom/shell/mojom/InterfaceProvider;

    iput-object v3, v2, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;->localInterfaces:Lorg/chromium/mojom/shell/mojom/InterfaceProvider;

    .line 321
    :cond_4
    iget v3, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v3, :cond_0

    .line 324
    const/16 v3, 0x20

    invoke-virtual {p0, v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 326
    .restart local v0    # "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    invoke-static {v0}, Lorg/chromium/mojom/shell/mojom/ClientProcessConnection;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/shell/mojom/ClientProcessConnection;

    move-result-object v3

    iput-object v3, v2, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;->clientProcessConnection:Lorg/chromium/mojom/shell/mojom/ClientProcessConnection;

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;
    .locals 1
    .param p0, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 235
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 5
    .param p1, "encoder"    # Lorg/chromium/mojo/bindings/Encoder;

    .prologue
    const/4 v4, 0x1

    .line 353
    sget-object v1, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 359
    .local v0, "encoder0":Lorg/chromium/mojo/bindings/Encoder;
    iget-object v1, p0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;->target:Lorg/chromium/mojom/shell/mojom/Identity;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 380
    iget-object v1, p0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;->remoteInterfaces:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V

    .line 393
    iget-object v1, p0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;->localInterfaces:Lorg/chromium/mojom/shell/mojom/InterfaceProvider;

    const/16 v2, 0x14

    sget-object v3, Lorg/chromium/mojom/shell/mojom/InterfaceProvider;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    .line 422
    iget-object v1, p0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;->clientProcessConnection:Lorg/chromium/mojom/shell/mojom/ClientProcessConnection;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 440
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 447
    if-ne p1, p0, :cond_1

    .line 469
    :cond_0
    :goto_0
    return v1

    .line 449
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 450
    goto :goto_0

    .line 451
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 452
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 454
    check-cast v0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;

    .line 456
    .local v0, "other":Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;
    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;->target:Lorg/chromium/mojom/shell/mojom/Identity;

    iget-object v4, v0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;->target:Lorg/chromium/mojom/shell/mojom/Identity;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 457
    goto :goto_0

    .line 459
    :cond_4
    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;->remoteInterfaces:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v4, v0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;->remoteInterfaces:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 460
    goto :goto_0

    .line 462
    :cond_5
    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;->localInterfaces:Lorg/chromium/mojom/shell/mojom/InterfaceProvider;

    iget-object v4, v0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;->localInterfaces:Lorg/chromium/mojom/shell/mojom/InterfaceProvider;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 463
    goto :goto_0

    .line 465
    :cond_6
    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;->clientProcessConnection:Lorg/chromium/mojom/shell/mojom/ClientProcessConnection;

    iget-object v4, v0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;->clientProcessConnection:Lorg/chromium/mojom/shell/mojom/ClientProcessConnection;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 466
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 477
    const/16 v0, 0x1f

    .line 478
    .local v0, "prime":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 480
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;->target:Lorg/chromium/mojom/shell/mojom/Identity;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 482
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;->remoteInterfaces:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 484
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;->localInterfaces:Lorg/chromium/mojom/shell/mojom/InterfaceProvider;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 486
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;->clientProcessConnection:Lorg/chromium/mojom/shell/mojom/ClientProcessConnection;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 488
    return v1
.end method
