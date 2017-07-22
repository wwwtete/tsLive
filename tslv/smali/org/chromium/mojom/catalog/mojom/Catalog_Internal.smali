.class Lorg/chromium/mojom/catalog/mojom/Catalog_Internal;
.super Ljava/lang/Object;
.source "Catalog_Internal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesSupportingSchemeResponseParamsProxyToResponder;,
        Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesSupportingSchemeResponseParamsForwardToCallback;,
        Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesSupportingSchemeResponseParams;,
        Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesSupportingSchemeParams;,
        Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesConsumingMimeTypeResponseParamsProxyToResponder;,
        Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesConsumingMimeTypeResponseParamsForwardToCallback;,
        Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesConsumingMimeTypeResponseParams;,
        Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesConsumingMimeTypeParams;,
        Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesProvidingClassResponseParamsProxyToResponder;,
        Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesProvidingClassResponseParamsForwardToCallback;,
        Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesProvidingClassResponseParams;,
        Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesProvidingClassParams;,
        Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParamsProxyToResponder;,
        Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParamsForwardToCallback;,
        Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParams;,
        Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesParams;,
        Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$Stub;,
        Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$Proxy;
    }
.end annotation


# static fields
.field private static final GET_ENTRIES_CONSUMING_MIME_TYPE_ORDINAL:I = 0x2

.field private static final GET_ENTRIES_ORDINAL:I = 0x0

.field private static final GET_ENTRIES_PROVIDING_CLASS_ORDINAL:I = 0x1

.field private static final GET_ENTRIES_SUPPORTING_SCHEME_ORDINAL:I = 0x3

.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<",
            "Lorg/chromium/mojom/catalog/mojom/Catalog;",
            "Lorg/chromium/mojom/catalog/mojom/Catalog$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$1;

    invoke-direct {v0}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1715
    return-void
.end method
