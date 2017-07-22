.class abstract Lcom/nordnetab/chcp/main/network/JsonDownloader;
.super Ljava/lang/Object;
.source "JsonDownloader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final downloadUrl:Ljava/lang/String;

.field private final requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


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
    .line 38
    .local p0, "this":Lcom/nordnetab/chcp/main/network/JsonDownloader;, "Lcom/nordnetab/chcp/main/network/JsonDownloader<TT;>;"
    .local p2, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/nordnetab/chcp/main/network/JsonDownloader;->downloadUrl:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/nordnetab/chcp/main/network/JsonDownloader;->requestHeaders:Ljava/util/Map;

    .line 41
    return-void
.end method

.method private downloadJson()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/nordnetab/chcp/main/network/JsonDownloader;, "Lcom/nordnetab/chcp/main/network/JsonDownloader<TT;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v3, "jsonContent":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/nordnetab/chcp/main/network/JsonDownloader;->downloadUrl:Ljava/lang/String;

    iget-object v7, p0, Lcom/nordnetab/chcp/main/network/JsonDownloader;->requestHeaders:Ljava/util/Map;

    invoke-static {v6, v7}, Lcom/nordnetab/chcp/main/utils/URLConnectionHelper;->createConnectionToURL(Ljava/lang/String;Ljava/util/Map;)Ljava/net/URLConnection;

    move-result-object v5

    .line 70
    .local v5, "urlConnection":Ljava/net/URLConnection;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 71
    .local v4, "streamReader":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 73
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    const/16 v6, 0x400

    new-array v2, v6, [C

    .line 75
    .local v2, "data":[C
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/BufferedReader;->read([C)I

    move-result v1

    .local v1, "count":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    .line 76
    const/4 v6, 0x0

    invoke-virtual {v3, v2, v6, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method protected abstract createInstance(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public download()Lcom/nordnetab/chcp/main/network/DownloadResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nordnetab/chcp/main/network/DownloadResult",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/nordnetab/chcp/main/network/JsonDownloader;, "Lcom/nordnetab/chcp/main/network/JsonDownloader<TT;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/nordnetab/chcp/main/network/JsonDownloader;->downloadJson()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "json":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/nordnetab/chcp/main/network/JsonDownloader;->createInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 56
    .local v3, "value":Ljava/lang/Object;, "TT;"
    new-instance v2, Lcom/nordnetab/chcp/main/network/DownloadResult;

    invoke-direct {v2, v3}, Lcom/nordnetab/chcp/main/network/DownloadResult;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v1    # "json":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;, "TT;"
    .local v2, "result":Lcom/nordnetab/chcp/main/network/DownloadResult;, "Lcom/nordnetab/chcp/main/network/DownloadResult<TT;>;"
    :goto_0
    return-object v2

    .line 57
    .end local v2    # "result":Lcom/nordnetab/chcp/main/network/DownloadResult;, "Lcom/nordnetab/chcp/main/network/DownloadResult<TT;>;"
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    new-instance v2, Lcom/nordnetab/chcp/main/network/DownloadResult;

    invoke-direct {v2, v0}, Lcom/nordnetab/chcp/main/network/DownloadResult;-><init>(Ljava/lang/Exception;)V

    .restart local v2    # "result":Lcom/nordnetab/chcp/main/network/DownloadResult;, "Lcom/nordnetab/chcp/main/network/DownloadResult<TT;>;"
    goto :goto_0
.end method
