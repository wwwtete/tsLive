.class Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesProvidingClassResponseParamsForwardToCallback;
.super Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;
.source "Catalog_Internal.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/MessageReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/catalog/mojom/Catalog_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CatalogGetEntriesProvidingClassResponseParamsForwardToCallback"
.end annotation


# instance fields
.field private final mCallback:Lorg/chromium/mojom/catalog/mojom/Catalog$GetEntriesProvidingClassResponse;


# direct methods
.method constructor <init>(Lorg/chromium/mojom/catalog/mojom/Catalog$GetEntriesProvidingClassResponse;)V
    .locals 0
    .param p1, "callback"    # Lorg/chromium/mojom/catalog/mojom/Catalog$GetEntriesProvidingClassResponse;

    .prologue
    .line 972
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;-><init>()V

    .line 973
    iput-object p1, p0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesProvidingClassResponseParamsForwardToCallback;->mCallback:Lorg/chromium/mojom/catalog/mojom/Catalog$GetEntriesProvidingClassResponse;

    .line 974
    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 8
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 979
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    .line 981
    .local v2, "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    .line 982
    .local v1, "header":Lorg/chromium/mojo/bindings/MessageHeader;
    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-virtual {v1, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(II)Z

    move-result v6

    if-nez v6, :cond_0

    .line 992
    .end local v1    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v2    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :goto_0
    return v4

    .line 987
    .restart local v1    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .restart local v2    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :cond_0
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v6

    invoke-static {v6}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesProvidingClassResponseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesProvidingClassResponseParams;

    move-result-object v3

    .line 989
    .local v3, "response":Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesProvidingClassResponseParams;
    iget-object v6, p0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesProvidingClassResponseParamsForwardToCallback;->mCallback:Lorg/chromium/mojom/catalog/mojom/Catalog$GetEntriesProvidingClassResponse;

    iget-object v7, v3, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesProvidingClassResponseParams;->entries:[Lorg/chromium/mojom/catalog/mojom/Entry;

    invoke-interface {v6, v7}, Lorg/chromium/mojom/catalog/mojom/Catalog$GetEntriesProvidingClassResponse;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 990
    goto :goto_0

    .line 991
    .end local v1    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v2    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    .end local v3    # "response":Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesProvidingClassResponseParams;
    :catch_0
    move-exception v0

    .line 992
    .local v0, "e":Lorg/chromium/mojo/bindings/DeserializationException;
    goto :goto_0
.end method
