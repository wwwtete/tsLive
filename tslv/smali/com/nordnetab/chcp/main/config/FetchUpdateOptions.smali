.class public Lcom/nordnetab/chcp/main/config/FetchUpdateOptions;
.super Ljava/lang/Object;
.source "FetchUpdateOptions.java"


# static fields
.field private static final CONFIG_URL_JSON_KEY:Ljava/lang/String; = "config-file"

.field private static final REQUEST_HEADERS_JSON_KEY:Ljava/lang/String; = "request-headers"


# instance fields
.field private configURL:Ljava/lang/String;

.field private requestHeaders:Ljava/util/Map;
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
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, v0, v0}, Lcom/nordnetab/chcp/main/config/FetchUpdateOptions;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "configURL"    # Ljava/lang/String;
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
    .line 47
    .local p2, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/nordnetab/chcp/main/config/FetchUpdateOptions;->configURL:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/nordnetab/chcp/main/config/FetchUpdateOptions;->requestHeaders:Ljava/util/Map;

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-nez p1, :cond_0

    .line 30
    new-instance v1, Lorg/json/JSONException;

    const-string v2, "Can\'t parse null json object"

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_0
    const-string v1, "config-file"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nordnetab/chcp/main/config/FetchUpdateOptions;->configURL:Ljava/lang/String;

    .line 35
    const-string v1, "request-headers"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 36
    .local v0, "requestHeadersJson":Lorg/json/JSONObject;
    if-eqz v0, :cond_1

    .line 37
    invoke-static {v0}, Lcom/nordnetab/chcp/main/utils/JSONUtils;->toFlatStringMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/nordnetab/chcp/main/config/FetchUpdateOptions;->requestHeaders:Ljava/util/Map;

    .line 39
    :cond_1
    return-void
.end method


# virtual methods
.method public getConfigURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nordnetab/chcp/main/config/FetchUpdateOptions;->configURL:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nordnetab/chcp/main/config/FetchUpdateOptions;->requestHeaders:Ljava/util/Map;

    return-object v0
.end method

.method protected setConfigURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "configURL"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/nordnetab/chcp/main/config/FetchUpdateOptions;->configURL:Ljava/lang/String;

    .line 69
    return-void
.end method

.method protected setRequestHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/nordnetab/chcp/main/config/FetchUpdateOptions;->requestHeaders:Ljava/util/Map;

    .line 88
    return-void
.end method
