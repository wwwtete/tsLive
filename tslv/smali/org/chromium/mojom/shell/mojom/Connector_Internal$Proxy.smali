.class final Lorg/chromium/mojom/shell/mojom/Connector_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "Connector_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/shell/mojom/Connector$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/shell/mojom/Connector_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Proxy"
.end annotation


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 0
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;
    .param p2, "messageReceiver"    # Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    .line 56
    return-void
.end method


# virtual methods
.method public clone(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest",
            "<",
            "Lorg/chromium/mojom/shell/mojom/Connector;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "request":Lorg/chromium/mojo/bindings/InterfaceRequest;, "Lorg/chromium/mojo/bindings/InterfaceRequest<Lorg/chromium/mojom/shell/mojom/Connector;>;"
    new-instance v0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorCloneParams;

    invoke-direct {v0}, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorCloneParams;-><init>()V

    .line 93
    .local v0, "_message":Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorCloneParams;
    iput-object p1, v0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorCloneParams;->request:Lorg/chromium/mojo/bindings/InterfaceRequest;

    .line 96
    invoke-virtual {p0}, Lorg/chromium/mojom/shell/mojom/Connector_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/shell/mojom/Connector_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorCloneParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 101
    return-void
.end method

.method public connect(Lorg/chromium/mojom/shell/mojom/Identity;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojom/shell/mojom/InterfaceProvider;Lorg/chromium/mojom/shell/mojom/ClientProcessConnection;Lorg/chromium/mojom/shell/mojom/Connector$ConnectResponse;)V
    .locals 8
    .param p1, "target"    # Lorg/chromium/mojom/shell/mojom/Identity;
    .param p3, "localInterfaces"    # Lorg/chromium/mojom/shell/mojom/InterfaceProvider;
    .param p4, "clientProcessConnection"    # Lorg/chromium/mojom/shell/mojom/ClientProcessConnection;
    .param p5, "callback"    # Lorg/chromium/mojom/shell/mojom/Connector$ConnectResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojom/shell/mojom/Identity;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest",
            "<",
            "Lorg/chromium/mojom/shell/mojom/InterfaceProvider;",
            ">;",
            "Lorg/chromium/mojom/shell/mojom/InterfaceProvider;",
            "Lorg/chromium/mojom/shell/mojom/ClientProcessConnection;",
            "Lorg/chromium/mojom/shell/mojom/Connector$ConnectResponse;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .local p2, "remoteInterfaces":Lorg/chromium/mojo/bindings/InterfaceRequest;, "Lorg/chromium/mojo/bindings/InterfaceRequest<Lorg/chromium/mojom/shell/mojom/InterfaceProvider;>;"
    new-instance v0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;

    invoke-direct {v0}, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;-><init>()V

    .line 66
    .local v0, "_message":Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;
    iput-object p1, v0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;->target:Lorg/chromium/mojom/shell/mojom/Identity;

    .line 68
    iput-object p2, v0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;->remoteInterfaces:Lorg/chromium/mojo/bindings/InterfaceRequest;

    .line 70
    iput-object p3, v0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;->localInterfaces:Lorg/chromium/mojom/shell/mojom/InterfaceProvider;

    .line 72
    iput-object p4, v0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;->clientProcessConnection:Lorg/chromium/mojom/shell/mojom/ClientProcessConnection;

    .line 75
    invoke-virtual {p0}, Lorg/chromium/mojom/shell/mojom/Connector_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/shell/mojom/Connector_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParamsForwardToCallback;

    invoke-direct {v3, p5}, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParamsForwardToCallback;-><init>(Lorg/chromium/mojom/shell/mojom/Connector$ConnectResponse;)V

    invoke-interface {v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 84
    return-void
.end method
