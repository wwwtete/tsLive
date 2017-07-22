.class final Lorg/chromium/mojom/shell/mojom/ShellClientFactory_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "ShellClientFactory_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/shell/mojom/ShellClientFactory$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/shell/mojom/ShellClientFactory_Internal;
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
    .line 53
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    .line 54
    return-void
.end method


# virtual methods
.method public createShellClient(Lorg/chromium/mojo/bindings/InterfaceRequest;Ljava/lang/String;)V
    .locals 5
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest",
            "<",
            "Lorg/chromium/mojom/shell/mojom/ShellClient;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "shellClient":Lorg/chromium/mojo/bindings/InterfaceRequest;, "Lorg/chromium/mojo/bindings/InterfaceRequest<Lorg/chromium/mojom/shell/mojom/ShellClient;>;"
    new-instance v0, Lorg/chromium/mojom/shell/mojom/ShellClientFactory_Internal$ShellClientFactoryCreateShellClientParams;

    invoke-direct {v0}, Lorg/chromium/mojom/shell/mojom/ShellClientFactory_Internal$ShellClientFactoryCreateShellClientParams;-><init>()V

    .line 63
    .local v0, "_message":Lorg/chromium/mojom/shell/mojom/ShellClientFactory_Internal$ShellClientFactoryCreateShellClientParams;
    iput-object p1, v0, Lorg/chromium/mojom/shell/mojom/ShellClientFactory_Internal$ShellClientFactoryCreateShellClientParams;->shellClient:Lorg/chromium/mojo/bindings/InterfaceRequest;

    .line 65
    iput-object p2, v0, Lorg/chromium/mojom/shell/mojom/ShellClientFactory_Internal$ShellClientFactoryCreateShellClientParams;->name:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lorg/chromium/mojom/shell/mojom/ShellClientFactory_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/shell/mojom/ShellClientFactory_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/shell/mojom/ShellClientFactory_Internal$ShellClientFactoryCreateShellClientParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 73
    return-void
.end method
