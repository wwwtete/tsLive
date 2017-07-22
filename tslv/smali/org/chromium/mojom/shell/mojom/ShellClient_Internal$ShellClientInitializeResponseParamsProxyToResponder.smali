.class Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "ShellClient_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/shell/mojom/ShellClient$InitializeResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/shell/mojom/ShellClient_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShellClientInitializeResponseParamsProxyToResponder"
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
    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    iput-object p1, p0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    .line 560
    iput-object p2, p0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 561
    iput-wide p3, p0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParamsProxyToResponder;->mRequestId:J

    .line 562
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 549
    check-cast p1, Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-virtual {p0, p1}, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParamsProxyToResponder;->call(Lorg/chromium/mojo/bindings/InterfaceRequest;)V

    return-void
.end method

.method public call(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 8
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
    .line 566
    .local p1, "connectorRequest":Lorg/chromium/mojo/bindings/InterfaceRequest;, "Lorg/chromium/mojo/bindings/InterfaceRequest<Lorg/chromium/mojom/shell/mojom/Connector;>;"
    new-instance v1, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParams;

    invoke-direct {v1}, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParams;-><init>()V

    .line 568
    .local v1, "_response":Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParams;
    iput-object p1, v1, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParams;->connectorRequest:Lorg/chromium/mojo/bindings/InterfaceRequest;

    .line 570
    iget-object v2, p0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x0

    const/4 v5, 0x2

    iget-wide v6, p0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 577
    .local v0, "_message":Lorg/chromium/mojo/bindings/ServiceMessage;
    iget-object v2, p0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {v2, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 578
    return-void
.end method
