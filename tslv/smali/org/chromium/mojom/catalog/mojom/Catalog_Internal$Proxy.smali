.class final Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "Catalog_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/catalog/mojom/Catalog$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/catalog/mojom/Catalog_Internal;
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
.method public getEntries([Ljava/lang/String;Lorg/chromium/mojom/catalog/mojom/Catalog$GetEntriesResponse;)V
    .locals 8
    .param p1, "names"    # [Ljava/lang/String;
    .param p2, "callback"    # Lorg/chromium/mojom/catalog/mojom/Catalog$GetEntriesResponse;

    .prologue
    .line 68
    new-instance v0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesParams;

    invoke-direct {v0}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesParams;-><init>()V

    .line 70
    .local v0, "_message":Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesParams;
    iput-object p1, v0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesParams;->names:[Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParamsForwardToCallback;

    invoke-direct {v3, p2}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParamsForwardToCallback;-><init>(Lorg/chromium/mojom/catalog/mojom/Catalog$GetEntriesResponse;)V

    invoke-interface {v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 82
    return-void
.end method

.method public getEntriesConsumingMimeType(Ljava/lang/String;Lorg/chromium/mojom/catalog/mojom/Catalog$GetEntriesConsumingMimeTypeResponse;)V
    .locals 8
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "callback"    # Lorg/chromium/mojom/catalog/mojom/Catalog$GetEntriesConsumingMimeTypeResponse;

    .prologue
    .line 112
    new-instance v0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesConsumingMimeTypeParams;

    invoke-direct {v0}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesConsumingMimeTypeParams;-><init>()V

    .line 114
    .local v0, "_message":Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesConsumingMimeTypeParams;
    iput-object p1, v0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesConsumingMimeTypeParams;->mimeType:Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesConsumingMimeTypeParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesConsumingMimeTypeResponseParamsForwardToCallback;

    invoke-direct {v3, p2}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesConsumingMimeTypeResponseParamsForwardToCallback;-><init>(Lorg/chromium/mojom/catalog/mojom/Catalog$GetEntriesConsumingMimeTypeResponse;)V

    invoke-interface {v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 126
    return-void
.end method

.method public getEntriesProvidingClass(Ljava/lang/String;Lorg/chromium/mojom/catalog/mojom/Catalog$GetEntriesProvidingClassResponse;)V
    .locals 7
    .param p1, "clazz"    # Ljava/lang/String;
    .param p2, "callback"    # Lorg/chromium/mojom/catalog/mojom/Catalog$GetEntriesProvidingClassResponse;

    .prologue
    const/4 v6, 0x1

    .line 90
    new-instance v0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesProvidingClassParams;

    invoke-direct {v0}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesProvidingClassParams;-><init>()V

    .line 92
    .local v0, "_message":Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesProvidingClassParams;
    iput-object p1, v0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesProvidingClassParams;->clazz:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesProvidingClassParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesProvidingClassResponseParamsForwardToCallback;

    invoke-direct {v3, p2}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesProvidingClassResponseParamsForwardToCallback;-><init>(Lorg/chromium/mojom/catalog/mojom/Catalog$GetEntriesProvidingClassResponse;)V

    invoke-interface {v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 104
    return-void
.end method

.method public getEntriesSupportingScheme(Ljava/lang/String;Lorg/chromium/mojom/catalog/mojom/Catalog$GetEntriesSupportingSchemeResponse;)V
    .locals 8
    .param p1, "protocolScheme"    # Ljava/lang/String;
    .param p2, "callback"    # Lorg/chromium/mojom/catalog/mojom/Catalog$GetEntriesSupportingSchemeResponse;

    .prologue
    .line 134
    new-instance v0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesSupportingSchemeParams;

    invoke-direct {v0}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesSupportingSchemeParams;-><init>()V

    .line 136
    .local v0, "_message":Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesSupportingSchemeParams;
    iput-object p1, v0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesSupportingSchemeParams;->protocolScheme:Ljava/lang/String;

    .line 139
    invoke-virtual {p0}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x3

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesSupportingSchemeParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesSupportingSchemeResponseParamsForwardToCallback;

    invoke-direct {v3, p2}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesSupportingSchemeResponseParamsForwardToCallback;-><init>(Lorg/chromium/mojom/catalog/mojom/Catalog$GetEntriesSupportingSchemeResponse;)V

    invoke-interface {v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 148
    return-void
.end method
