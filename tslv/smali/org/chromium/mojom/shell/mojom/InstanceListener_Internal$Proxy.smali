.class final Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "InstanceListener_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/shell/mojom/InstanceListener$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal;
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
    .line 59
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    .line 60
    return-void
.end method


# virtual methods
.method public instanceCreated(Lorg/chromium/mojom/shell/mojom/InstanceInfo;)V
    .locals 5
    .param p1, "instance"    # Lorg/chromium/mojom/shell/mojom/InstanceInfo;

    .prologue
    .line 84
    new-instance v0, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerInstanceCreatedParams;

    invoke-direct {v0}, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerInstanceCreatedParams;-><init>()V

    .line 86
    .local v0, "_message":Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerInstanceCreatedParams;
    iput-object p1, v0, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerInstanceCreatedParams;->instance:Lorg/chromium/mojom/shell/mojom/InstanceInfo;

    .line 89
    invoke-virtual {p0}, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerInstanceCreatedParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 94
    return-void
.end method

.method public instanceDestroyed(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 101
    new-instance v0, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerInstanceDestroyedParams;

    invoke-direct {v0}, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerInstanceDestroyedParams;-><init>()V

    .line 103
    .local v0, "_message":Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerInstanceDestroyedParams;
    iput p1, v0, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerInstanceDestroyedParams;->id:I

    .line 106
    invoke-virtual {p0}, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerInstanceDestroyedParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 111
    return-void
.end method

.method public instancePidAvailable(II)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "pid"    # I

    .prologue
    .line 118
    new-instance v0, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;

    invoke-direct {v0}, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;-><init>()V

    .line 120
    .local v0, "_message":Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;
    iput p1, v0, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;->id:I

    .line 122
    iput p2, v0, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;->pid:I

    .line 125
    invoke-virtual {p0}, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 130
    return-void
.end method

.method public setExistingInstances([Lorg/chromium/mojom/shell/mojom/InstanceInfo;)V
    .locals 5
    .param p1, "instances"    # [Lorg/chromium/mojom/shell/mojom/InstanceInfo;

    .prologue
    .line 67
    new-instance v0, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerSetExistingInstancesParams;

    invoke-direct {v0}, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerSetExistingInstancesParams;-><init>()V

    .line 69
    .local v0, "_message":Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerSetExistingInstancesParams;
    iput-object p1, v0, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerSetExistingInstancesParams;->instances:[Lorg/chromium/mojom/shell/mojom/InstanceInfo;

    .line 72
    invoke-virtual {p0}, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerSetExistingInstancesParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 77
    return-void
.end method
