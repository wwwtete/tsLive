.class Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "Connector_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/shell/mojom/Connector$ConnectResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/shell/mojom/Connector_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectorConnectResponseParamsProxyToResponder"
.end annotation


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 1
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;
    .param p2, "messageReceiver"    # Lorg/chromium/mojo/bindings/MessageReceiver;
    .param p3, "requestId"    # J

    .prologue
    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 741
    iput-object p1, p0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    .line 742
    iput-object p2, p0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 743
    iput-wide p3, p0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParamsProxyToResponder;->mRequestId:J

    .line 744
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/Integer;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "applicationId"    # Ljava/lang/Integer;

    .prologue
    .line 748
    new-instance v1, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;

    invoke-direct {v1}, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;-><init>()V

    .line 750
    .local v1, "_response":Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->result:I

    .line 752
    iput-object p2, v1, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->userId:Ljava/lang/String;

    .line 754
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->applicationId:I

    .line 756
    iget-object v2, p0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x0

    const/4 v5, 0x2

    iget-wide v6, p0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 763
    .local v0, "_message":Lorg/chromium/mojo/bindings/ServiceMessage;
    iget-object v2, p0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {v2, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 764
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 731
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParamsProxyToResponder;->call(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
