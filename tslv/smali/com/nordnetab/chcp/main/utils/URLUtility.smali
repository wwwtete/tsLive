.class public Lcom/nordnetab/chcp/main/utils/URLUtility;
.super Ljava/lang/Object;
.source "URLUtility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs construct([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "urlParts"    # [Ljava/lang/String;

    .prologue
    .line 49
    if-eqz p0, :cond_0

    array-length v5, p0

    if-nez v5, :cond_1

    .line 50
    :cond_0
    const-string v5, ""

    .line 71
    :goto_0
    return-object v5

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    aget-object v5, p0, v5

    invoke-static {v5}, Lcom/nordnetab/chcp/main/utils/URLUtility;->removeStartingDash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "startingPart":Ljava/lang/String;
    invoke-static {v3}, Lcom/nordnetab/chcp/main/utils/URLUtility;->removeEndingDash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    const-string v5, "http"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 58
    const-string v5, "http://"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const/4 v1, 0x1

    .local v1, "i":I
    array-length v2, p0

    .local v2, "len":I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 63
    aget-object v5, p0, v1

    invoke-static {v5}, Lcom/nordnetab/chcp/main/utils/URLUtility;->removeEndingDash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "urlPart":Ljava/lang/String;
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 65
    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 71
    .end local v4    # "urlPart":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private static removeEndingDash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 83
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nordnetab/chcp/main/utils/URLUtility;->removeEndingDash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 87
    :cond_0
    return-object p0
.end method

.method private static removeStartingDash(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nordnetab/chcp/main/utils/URLUtility;->removeStartingDash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 79
    :cond_0
    return-object p0
.end method

.method public static stringToUrl(Ljava/lang/String;)Ljava/net/URL;
    .locals 12
    .param p0, "urlString"    # Ljava/lang/String;

    .prologue
    .line 25
    const/4 v10, 0x0

    .line 27
    .local v10, "url":Ljava/net/URL;
    :try_start_0
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .end local v10    # "url":Ljava/net/URL;
    .local v11, "url":Ljava/net/URL;
    :try_start_1
    new-instance v0, Ljava/net/URI;

    invoke-virtual {v11}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Ljava/net/URL;->getPort()I

    move-result v4

    invoke-virtual {v11}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .local v0, "uri":Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v10

    .line 38
    .end local v0    # "uri":Ljava/net/URI;
    .end local v11    # "url":Ljava/net/URL;
    .restart local v10    # "url":Ljava/net/URL;
    :goto_0
    return-object v10

    .line 30
    :catch_0
    move-exception v8

    move-object v11, v10

    .line 32
    .end local v10    # "url":Ljava/net/URL;
    .local v8, "e":Ljava/lang/Exception;
    .restart local v11    # "url":Ljava/net/URL;
    :goto_1
    :try_start_2
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v11    # "url":Ljava/net/URL;
    .restart local v10    # "url":Ljava/net/URL;
    goto :goto_0

    .line 33
    .end local v10    # "url":Ljava/net/URL;
    .restart local v11    # "url":Ljava/net/URL;
    :catch_1
    move-exception v9

    .line 34
    .local v9, "e2":Ljava/net/MalformedURLException;
    const-string v1, "CHCP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to transfer url string \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" to actual url"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v10, v11

    .end local v11    # "url":Ljava/net/URL;
    .restart local v10    # "url":Ljava/net/URL;
    goto :goto_0

    .line 30
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "e2":Ljava/net/MalformedURLException;
    .end local v10    # "url":Ljava/net/URL;
    .restart local v11    # "url":Ljava/net/URL;
    :catch_2
    move-exception v8

    goto :goto_1
.end method
