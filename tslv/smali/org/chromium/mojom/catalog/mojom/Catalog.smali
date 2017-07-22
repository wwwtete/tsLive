.class public interface abstract Lorg/chromium/mojom/catalog/mojom/Catalog;
.super Ljava/lang/Object;
.source "Catalog.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/catalog/mojom/Catalog$GetEntriesSupportingSchemeResponse;,
        Lorg/chromium/mojom/catalog/mojom/Catalog$GetEntriesConsumingMimeTypeResponse;,
        Lorg/chromium/mojom/catalog/mojom/Catalog$GetEntriesProvidingClassResponse;,
        Lorg/chromium/mojom/catalog/mojom/Catalog$GetEntriesResponse;,
        Lorg/chromium/mojom/catalog/mojom/Catalog$Proxy;
    }
.end annotation


# static fields
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
    .line 25
    sget-object v0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/mojom/catalog/mojom/Catalog;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract getEntries([Ljava/lang/String;Lorg/chromium/mojom/catalog/mojom/Catalog$GetEntriesResponse;)V
.end method

.method public abstract getEntriesConsumingMimeType(Ljava/lang/String;Lorg/chromium/mojom/catalog/mojom/Catalog$GetEntriesConsumingMimeTypeResponse;)V
.end method

.method public abstract getEntriesProvidingClass(Ljava/lang/String;Lorg/chromium/mojom/catalog/mojom/Catalog$GetEntriesProvidingClassResponse;)V
.end method

.method public abstract getEntriesSupportingScheme(Ljava/lang/String;Lorg/chromium/mojom/catalog/mojom/Catalog$GetEntriesSupportingSchemeResponse;)V
.end method
