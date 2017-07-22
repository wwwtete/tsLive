.class final Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "ShellClient_Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/shell/mojom/ShellClient_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ShellClientAcceptConnectionParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final STRUCT_SIZE:I = 0x30

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public allowedCapabilities:Lorg/chromium/mojom/shell/mojom/CapabilityRequest;

.field public localInterfaces:Lorg/chromium/mojo/bindings/InterfaceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/InterfaceRequest",
            "<",
            "Lorg/chromium/mojom/shell/mojom/InterfaceProvider;",
            ">;"
        }
    .end annotation
.end field

.field public remoteInterfaces:Lorg/chromium/mojom/shell/mojom/InterfaceProvider;

.field public resolvedName:Ljava/lang/String;

.field public source:Lorg/chromium/mojom/shell/mojom/Identity;

.field public sourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 587
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x30

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    sput-object v0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    .line 588
    sget-object v0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 626
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;-><init>(I)V

    .line 627
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 609
    const/16 v0, 0x30

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 623
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;
    .locals 7
    .param p0, "decoder0"    # Lorg/chromium/mojo/bindings/Decoder;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 635
    if-nez p0, :cond_1

    .line 636
    const/4 v2, 0x0

    .line 773
    :cond_0
    :goto_0
    return-object v2

    .line 638
    :cond_1
    sget-object v3, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 639
    .local v1, "mainDataHeader":Lorg/chromium/mojo/bindings/DataHeader;
    new-instance v2, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;

    iget v3, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v2, v3}, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;-><init>(I)V

    .line 642
    .local v2, "result":Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;
    iget v3, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v3, :cond_2

    .line 645
    const/16 v3, 0x8

    invoke-virtual {p0, v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 647
    .local v0, "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    invoke-static {v0}, Lorg/chromium/mojom/shell/mojom/Identity;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/shell/mojom/Identity;

    move-result-object v3

    iput-object v3, v2, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->source:Lorg/chromium/mojom/shell/mojom/Identity;

    .line 668
    .end local v0    # "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    :cond_2
    iget v3, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v3, :cond_3

    .line 671
    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v2, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->sourceId:I

    .line 684
    :cond_3
    iget v3, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v3, :cond_4

    .line 687
    const/16 v3, 0x14

    invoke-virtual {p0, v3, v6}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v3

    iput-object v3, v2, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->localInterfaces:Lorg/chromium/mojo/bindings/InterfaceRequest;

    .line 700
    :cond_4
    iget v3, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v3, :cond_5

    .line 703
    const/16 v3, 0x18

    sget-object v4, Lorg/chromium/mojom/shell/mojom/InterfaceProvider;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p0, v3, v6, v4}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v3

    check-cast v3, Lorg/chromium/mojom/shell/mojom/InterfaceProvider;

    iput-object v3, v2, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->remoteInterfaces:Lorg/chromium/mojom/shell/mojom/InterfaceProvider;

    .line 724
    :cond_5
    iget v3, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v3, :cond_6

    .line 727
    const/16 v3, 0x20

    invoke-virtual {p0, v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 729
    .restart local v0    # "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    invoke-static {v0}, Lorg/chromium/mojom/shell/mojom/CapabilityRequest;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/shell/mojom/CapabilityRequest;

    move-result-object v3

    iput-object v3, v2, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->allowedCapabilities:Lorg/chromium/mojom/shell/mojom/CapabilityRequest;

    .line 750
    .end local v0    # "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    :cond_6
    iget v3, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v3, :cond_0

    .line 753
    const/16 v3, 0x28

    invoke-virtual {p0, v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->resolvedName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;
    .locals 1
    .param p0, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 630
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 6
    .param p1, "encoder"    # Lorg/chromium/mojo/bindings/Encoder;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 780
    sget-object v1, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 786
    .local v0, "encoder0":Lorg/chromium/mojo/bindings/Encoder;
    iget-object v1, p0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->source:Lorg/chromium/mojom/shell/mojom/Identity;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 807
    iget v1, p0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->sourceId:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 820
    iget-object v1, p0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->localInterfaces:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V

    .line 833
    iget-object v1, p0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->remoteInterfaces:Lorg/chromium/mojom/shell/mojom/InterfaceProvider;

    const/16 v2, 0x18

    sget-object v3, Lorg/chromium/mojom/shell/mojom/InterfaceProvider;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {v0, v1, v2, v5, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    .line 854
    iget-object v1, p0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->allowedCapabilities:Lorg/chromium/mojom/shell/mojom/CapabilityRequest;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 875
    iget-object v1, p0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->resolvedName:Ljava/lang/String;

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    .line 893
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 900
    if-ne p1, p0, :cond_1

    .line 928
    :cond_0
    :goto_0
    return v1

    .line 902
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 903
    goto :goto_0

    .line 904
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 905
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 907
    check-cast v0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;

    .line 909
    .local v0, "other":Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;
    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->source:Lorg/chromium/mojom/shell/mojom/Identity;

    iget-object v4, v0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->source:Lorg/chromium/mojom/shell/mojom/Identity;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 910
    goto :goto_0

    .line 912
    :cond_4
    iget v3, p0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->sourceId:I

    iget v4, v0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->sourceId:I

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 913
    goto :goto_0

    .line 915
    :cond_5
    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->localInterfaces:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v4, v0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->localInterfaces:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 916
    goto :goto_0

    .line 918
    :cond_6
    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->remoteInterfaces:Lorg/chromium/mojom/shell/mojom/InterfaceProvider;

    iget-object v4, v0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->remoteInterfaces:Lorg/chromium/mojom/shell/mojom/InterfaceProvider;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 919
    goto :goto_0

    .line 921
    :cond_7
    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->allowedCapabilities:Lorg/chromium/mojom/shell/mojom/CapabilityRequest;

    iget-object v4, v0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->allowedCapabilities:Lorg/chromium/mojom/shell/mojom/CapabilityRequest;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    .line 922
    goto :goto_0

    .line 924
    :cond_8
    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->resolvedName:Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->resolvedName:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 925
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 936
    const/16 v0, 0x1f

    .line 937
    .local v0, "prime":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 939
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->source:Lorg/chromium/mojom/shell/mojom/Identity;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 941
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->sourceId:I

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v3

    add-int v1, v2, v3

    .line 943
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->localInterfaces:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 945
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->remoteInterfaces:Lorg/chromium/mojom/shell/mojom/InterfaceProvider;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 947
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->allowedCapabilities:Lorg/chromium/mojom/shell/mojom/CapabilityRequest;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 949
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->resolvedName:Ljava/lang/String;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 951
    return v1
.end method
