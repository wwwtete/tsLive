.class public Lcom/nordnetab/chcp/main/config/ApplicationConfig;
.super Ljava/lang/Object;
.source "ApplicationConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nordnetab/chcp/main/config/ApplicationConfig$JsonKeys;
    }
.end annotation


# static fields
.field private static final MARKET_URL_FORMAT:Ljava/lang/String; = "market://details?id=%s"


# instance fields
.field private contentConfig:Lcom/nordnetab/chcp/main/config/ContentConfig;

.field private jsonString:Ljava/lang/String;

.field private storeIdentifier:Ljava/lang/String;

.field private storeUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static configFromAssets(Landroid/content/Context;Ljava/lang/String;)Lcom/nordnetab/chcp/main/config/ApplicationConfig;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configFileName"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 76
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v8, "returnString":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "www/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "configFilePath":Ljava/lang/String;
    const/4 v6, 0x0

    .line 80
    .local v6, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 81
    .local v4, "isr":Ljava/io/InputStreamReader;
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v7, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 84
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 86
    .end local v5    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v6, v7

    .line 87
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    const-string v9, "CHCP"

    const-string v10, "Failed to read chcp.json from assets"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    if-eqz v6, :cond_0

    .line 91
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 98
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/nordnetab/chcp/main/config/ApplicationConfig;->fromJson(Ljava/lang/String;)Lcom/nordnetab/chcp/main/config/ApplicationConfig;

    move-result-object v9

    return-object v9

    .line 90
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :cond_1
    if-eqz v7, :cond_2

    .line 91
    :try_start_4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    move-object v6, v7

    .line 95
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 93
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v3

    .line 94
    .local v3, "e2":Ljava/lang/Exception;
    const-string v9, "CHCP"

    const-string v10, "Failed to clear resources after reading chcp.json from the assets"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v6, v7

    .line 96
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 93
    .end local v3    # "e2":Ljava/lang/Exception;
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .end local v5    # "line":Ljava/lang/String;
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 94
    .restart local v3    # "e2":Ljava/lang/Exception;
    const-string v9, "CHCP"

    const-string v10, "Failed to clear resources after reading chcp.json from the assets"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 89
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "e2":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 90
    :goto_3
    if-eqz v6, :cond_3

    .line 91
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 95
    :cond_3
    :goto_4
    throw v9

    .line 93
    :catch_3
    move-exception v3

    .line 94
    .restart local v3    # "e2":Ljava/lang/Exception;
    const-string v10, "CHCP"

    const-string v11, "Failed to clear resources after reading chcp.json from the assets"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 89
    .end local v3    # "e2":Ljava/lang/Exception;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 86
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/nordnetab/chcp/main/config/ApplicationConfig;
    .locals 5
    .param p0, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v0, Lcom/nordnetab/chcp/main/config/ApplicationConfig;

    invoke-direct {v0}, Lcom/nordnetab/chcp/main/config/ApplicationConfig;-><init>()V

    .line 48
    .local v0, "config":Lcom/nordnetab/chcp/main/config/ApplicationConfig;
    :try_start_0
    new-instance v3, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    invoke-virtual {v3, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    .line 50
    .local v2, "json":Lcom/fasterxml/jackson/databind/JsonNode;
    invoke-static {v2}, Lcom/nordnetab/chcp/main/config/ContentConfig;->fromJson(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/nordnetab/chcp/main/config/ContentConfig;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/nordnetab/chcp/main/config/ApplicationConfig;->setContentConfig(Lcom/nordnetab/chcp/main/config/ContentConfig;)V

    .line 53
    const-string v3, "android_identifier"

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    const-string v3, "android_identifier"

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/nordnetab/chcp/main/config/ApplicationConfig;->setStoreIdentifier(Ljava/lang/String;)V

    .line 59
    :goto_0
    iput-object p0, v0, Lcom/nordnetab/chcp/main/config/ApplicationConfig;->jsonString:Ljava/lang/String;

    .line 65
    .end local v2    # "json":Lcom/fasterxml/jackson/databind/JsonNode;
    :goto_1
    return-object v0

    .line 56
    .restart local v2    # "json":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_0
    const-string v3, ""

    invoke-direct {v0, v3}, Lcom/nordnetab/chcp/main/config/ApplicationConfig;->setStoreIdentifier(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    .end local v2    # "json":Lcom/fasterxml/jackson/databind/JsonNode;
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "CHCP"

    const-string v4, "Failed to convert json string into application config"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private generateJson()Ljava/lang/String;
    .locals 4

    .prologue
    .line 160
    sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 162
    .local v1, "nodeFactory":Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
    iget-object v2, p0, Lcom/nordnetab/chcp/main/config/ApplicationConfig;->contentConfig:Lcom/nordnetab/chcp/main/config/ContentConfig;

    invoke-virtual {v2}, Lcom/nordnetab/chcp/main/config/ContentConfig;->toJson()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 163
    .local v0, "json":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    const-string v2, "android_identifier"

    iget-object v3, p0, Lcom/nordnetab/chcp/main/config/ApplicationConfig;->storeIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->set(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 165
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private setContentConfig(Lcom/nordnetab/chcp/main/config/ContentConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/nordnetab/chcp/main/config/ContentConfig;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/nordnetab/chcp/main/config/ApplicationConfig;->contentConfig:Lcom/nordnetab/chcp/main/config/ContentConfig;

    .line 152
    return-void
.end method

.method private setStoreIdentifier(Ljava/lang/String;)V
    .locals 1
    .param p1, "storeIdentifier"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/nordnetab/chcp/main/config/ApplicationConfig;->storeIdentifier:Ljava/lang/String;

    .line 156
    const-string v0, ""

    iput-object v0, p0, Lcom/nordnetab/chcp/main/config/ApplicationConfig;->storeUrl:Ljava/lang/String;

    .line 157
    return-void
.end method


# virtual methods
.method public getContentConfig()Lcom/nordnetab/chcp/main/config/ContentConfig;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nordnetab/chcp/main/config/ApplicationConfig;->contentConfig:Lcom/nordnetab/chcp/main/config/ContentConfig;

    return-object v0
.end method

.method public getStoreUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/nordnetab/chcp/main/config/ApplicationConfig;->storeIdentifier:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string v0, ""

    .line 145
    :goto_0
    return-object v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/nordnetab/chcp/main/config/ApplicationConfig;->storeUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/nordnetab/chcp/main/config/ApplicationConfig;->storeIdentifier:Ljava/lang/String;

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nordnetab/chcp/main/config/ApplicationConfig;->storeIdentifier:Ljava/lang/String;

    const-string v1, "https://"

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nordnetab/chcp/main/config/ApplicationConfig;->storeIdentifier:Ljava/lang/String;

    const-string v1, "market://"

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/nordnetab/chcp/main/config/ApplicationConfig;->storeIdentifier:Ljava/lang/String;

    iput-object v0, p0, Lcom/nordnetab/chcp/main/config/ApplicationConfig;->storeUrl:Ljava/lang/String;

    .line 145
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/nordnetab/chcp/main/config/ApplicationConfig;->storeUrl:Ljava/lang/String;

    goto :goto_0

    .line 141
    :cond_3
    const-string v0, "market://details?id=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nordnetab/chcp/main/config/ApplicationConfig;->storeIdentifier:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nordnetab/chcp/main/config/ApplicationConfig;->storeUrl:Ljava/lang/String;

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nordnetab/chcp/main/config/ApplicationConfig;->jsonString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/nordnetab/chcp/main/config/ApplicationConfig;->generateJson()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nordnetab/chcp/main/config/ApplicationConfig;->jsonString:Ljava/lang/String;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/nordnetab/chcp/main/config/ApplicationConfig;->jsonString:Ljava/lang/String;

    return-object v0
.end method
