.class Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesConsumingMimeTypeResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "Catalog_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/catalog/mojom/Catalog$GetEntriesConsumingMimeTypeResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/catalog/mojom/Catalog_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CatalogGetEntriesConsumingMimeTypeResponseParamsProxyToResponder"
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
    .line 1365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1366
    iput-object p1, p0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesConsumingMimeTypeResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    .line 1367
    iput-object p2, p0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesConsumingMimeTypeResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 1368
    iput-wide p3, p0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesConsumingMimeTypeResponseParamsProxyToResponder;->mRequestId:J

    .line 1369
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1356
    check-cast p1, [Lorg/chromium/mojom/catalog/mojom/Entry;

    invoke-virtual {p0, p1}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesConsumingMimeTypeResponseParamsProxyToResponder;->call([Lorg/chromium/mojom/catalog/mojom/Entry;)V

    return-void
.end method

.method public call([Lorg/chromium/mojom/catalog/mojom/Entry;)V
    .locals 7
    .param p1, "entries"    # [Lorg/chromium/mojom/catalog/mojom/Entry;

    .prologue
    const/4 v6, 0x2

    .line 1373
    new-instance v1, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesConsumingMimeTypeResponseParams;

    invoke-direct {v1}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesConsumingMimeTypeResponseParams;-><init>()V

    .line 1375
    .local v1, "_response":Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesConsumingMimeTypeResponseParams;
    iput-object p1, v1, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesConsumingMimeTypeResponseParams;->entries:[Lorg/chromium/mojom/catalog/mojom/Entry;

    .line 1377
    iget-object v2, p0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesConsumingMimeTypeResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    iget-wide v4, p0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesConsumingMimeTypeResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {v3, v6, v6, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesConsumingMimeTypeResponseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 1384
    .local v0, "_message":Lorg/chromium/mojo/bindings/ServiceMessage;
    iget-object v2, p0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesConsumingMimeTypeResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {v2, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 1385
    return-void
.end method
