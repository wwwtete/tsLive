.class Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "Catalog_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/catalog/mojom/Catalog$GetEntriesResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/catalog/mojom/Catalog_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CatalogGetEntriesResponseParamsProxyToResponder"
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
    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    iput-object p1, p0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    .line 649
    iput-object p2, p0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 650
    iput-wide p3, p0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParamsProxyToResponder;->mRequestId:J

    .line 651
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 638
    check-cast p1, [Lorg/chromium/mojom/catalog/mojom/Entry;

    invoke-virtual {p0, p1}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParamsProxyToResponder;->call([Lorg/chromium/mojom/catalog/mojom/Entry;)V

    return-void
.end method

.method public call([Lorg/chromium/mojom/catalog/mojom/Entry;)V
    .locals 8
    .param p1, "entries"    # [Lorg/chromium/mojom/catalog/mojom/Entry;

    .prologue
    .line 655
    new-instance v1, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;

    invoke-direct {v1}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;-><init>()V

    .line 657
    .local v1, "_response":Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;
    iput-object p1, v1, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;->entries:[Lorg/chromium/mojom/catalog/mojom/Entry;

    .line 659
    iget-object v2, p0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x0

    const/4 v5, 0x2

    iget-wide v6, p0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 666
    .local v0, "_message":Lorg/chromium/mojo/bindings/ServiceMessage;
    iget-object v2, p0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {v2, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 667
    return-void
.end method
