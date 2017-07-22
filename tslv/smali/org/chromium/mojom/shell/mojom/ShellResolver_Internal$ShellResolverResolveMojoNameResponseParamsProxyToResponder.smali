.class Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "ShellResolver_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/shell/mojom/ShellResolver$ResolveMojoNameResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShellResolverResolveMojoNameResponseParamsProxyToResponder"
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
    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    iput-object p1, p0, Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    .line 460
    iput-object p2, p0, Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 461
    iput-wide p3, p0, Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParamsProxyToResponder;->mRequestId:J

    .line 462
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 449
    check-cast p1, Lorg/chromium/mojom/shell/mojom/ResolveResult;

    invoke-virtual {p0, p1}, Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParamsProxyToResponder;->call(Lorg/chromium/mojom/shell/mojom/ResolveResult;)V

    return-void
.end method

.method public call(Lorg/chromium/mojom/shell/mojom/ResolveResult;)V
    .locals 8
    .param p1, "result"    # Lorg/chromium/mojom/shell/mojom/ResolveResult;

    .prologue
    .line 466
    new-instance v1, Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;

    invoke-direct {v1}, Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;-><init>()V

    .line 468
    .local v1, "_response":Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;
    iput-object p1, v1, Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->result:Lorg/chromium/mojom/shell/mojom/ResolveResult;

    .line 470
    iget-object v2, p0, Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x0

    const/4 v5, 0x2

    iget-wide v6, p0, Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 477
    .local v0, "_message":Lorg/chromium/mojo/bindings/ServiceMessage;
    iget-object v2, p0, Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {v2, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 478
    return-void
.end method
