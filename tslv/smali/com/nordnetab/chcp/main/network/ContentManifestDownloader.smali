.class public Lcom/nordnetab/chcp/main/network/ContentManifestDownloader;
.super Lcom/nordnetab/chcp/main/network/JsonDownloader;
.source "ContentManifestDownloader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nordnetab/chcp/main/network/JsonDownloader",
        "<",
        "Lcom/nordnetab/chcp/main/config/ContentManifest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/nordnetab/chcp/main/network/JsonDownloader;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/String;)Lcom/nordnetab/chcp/main/config/ContentManifest;
    .locals 1
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-static {p1}, Lcom/nordnetab/chcp/main/config/ContentManifest;->fromJson(Ljava/lang/String;)Lcom/nordnetab/chcp/main/config/ContentManifest;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/nordnetab/chcp/main/network/ContentManifestDownloader;->createInstance(Ljava/lang/String;)Lcom/nordnetab/chcp/main/config/ContentManifest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic download()Lcom/nordnetab/chcp/main/network/DownloadResult;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/nordnetab/chcp/main/network/JsonDownloader;->download()Lcom/nordnetab/chcp/main/network/DownloadResult;

    move-result-object v0

    return-object v0
.end method
