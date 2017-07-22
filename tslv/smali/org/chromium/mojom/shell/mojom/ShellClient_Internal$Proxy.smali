.class final Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "ShellClient_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/shell/mojom/ShellClient$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/shell/mojom/ShellClient_Internal;
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
.method public acceptConnection(Lorg/chromium/mojom/shell/mojom/Identity;ILorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojom/shell/mojom/InterfaceProvider;Lorg/chromium/mojom/shell/mojom/CapabilityRequest;Ljava/lang/String;)V
    .locals 5
    .param p1, "source"    # Lorg/chromium/mojom/shell/mojom/Identity;
    .param p2, "sourceId"    # I
    .param p4, "remoteInterfaces"    # Lorg/chromium/mojom/shell/mojom/InterfaceProvider;
    .param p5, "allowedCapabilities"    # Lorg/chromium/mojom/shell/mojom/CapabilityRequest;
    .param p6, "resolvedName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojom/shell/mojom/Identity;",
            "I",
            "Lorg/chromium/mojo/bindings/InterfaceRequest",
            "<",
            "Lorg/chromium/mojom/shell/mojom/InterfaceProvider;",
            ">;",
            "Lorg/chromium/mojom/shell/mojom/InterfaceProvider;",
            "Lorg/chromium/mojom/shell/mojom/CapabilityRequest;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    .local p3, "localInterfaces":Lorg/chromium/mojo/bindings/InterfaceRequest;, "Lorg/chromium/mojo/bindings/InterfaceRequest<Lorg/chromium/mojom/shell/mojom/InterfaceProvider;>;"
    new-instance v0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;

    invoke-direct {v0}, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;-><init>()V

    .line 89
    .local v0, "_message":Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;
    iput-object p1, v0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->source:Lorg/chromium/mojom/shell/mojom/Identity;

    .line 91
    iput p2, v0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->sourceId:I

    .line 93
    iput-object p3, v0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->localInterfaces:Lorg/chromium/mojo/bindings/InterfaceRequest;

    .line 95
    iput-object p4, v0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->remoteInterfaces:Lorg/chromium/mojom/shell/mojom/InterfaceProvider;

    .line 97
    iput-object p5, v0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->allowedCapabilities:Lorg/chromium/mojom/shell/mojom/CapabilityRequest;

    .line 99
    iput-object p6, v0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->resolvedName:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 107
    return-void
.end method

.method public initialize(Lorg/chromium/mojom/shell/mojom/Identity;ILorg/chromium/mojom/shell/mojom/ShellClient$InitializeResponse;)V
    .locals 8
    .param p1, "identity"    # Lorg/chromium/mojom/shell/mojom/Identity;
    .param p2, "id"    # I
    .param p3, "callback"    # Lorg/chromium/mojom/shell/mojom/ShellClient$InitializeResponse;

    .prologue
    .line 64
    new-instance v0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;

    invoke-direct {v0}, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;-><init>()V

    .line 66
    .local v0, "_message":Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;
    iput-object p1, v0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;->identity:Lorg/chromium/mojom/shell/mojom/Identity;

    .line 68
    iput p2, v0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;->id:I

    .line 71
    invoke-virtual {p0}, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParamsForwardToCallback;

    invoke-direct {v3, p3}, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParamsForwardToCallback;-><init>(Lorg/chromium/mojom/shell/mojom/ShellClient$InitializeResponse;)V

    invoke-interface {v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 80
    return-void
.end method
