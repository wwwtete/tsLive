.class public Lcom/nordnetab/chcp/main/config/ContentConfig;
.super Ljava/lang/Object;
.source "ContentConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nordnetab/chcp/main/config/ContentConfig$JsonKeys;
    }
.end annotation


# instance fields
.field private contentUrl:Ljava/lang/String;

.field private jsonNode:Lcom/fasterxml/jackson/databind/JsonNode;

.field private minimumNativeVersion:I

.field private releaseVersion:Ljava/lang/String;

.field private updateTime:Lcom/nordnetab/chcp/main/model/UpdateTime;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method static fromJson(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/nordnetab/chcp/main/config/ContentConfig;
    .locals 3
    .param p0, "node"    # Lcom/fasterxml/jackson/databind/JsonNode;

    .prologue
    .line 33
    new-instance v0, Lcom/nordnetab/chcp/main/config/ContentConfig;

    invoke-direct {v0}, Lcom/nordnetab/chcp/main/config/ContentConfig;-><init>()V

    .line 35
    .local v0, "config":Lcom/nordnetab/chcp/main/config/ContentConfig;
    :try_start_0
    const-string v2, "release"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    const-string v2, "release"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/nordnetab/chcp/main/config/ContentConfig;->setReleaseVersion(Ljava/lang/String;)V

    .line 39
    :cond_0
    const-string v2, "content_url"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    const-string v2, "content_url"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/nordnetab/chcp/main/config/ContentConfig;->setContentUrl(Ljava/lang/String;)V

    .line 44
    :cond_1
    const-string v2, "min_native_interface"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 45
    const-string v2, "min_native_interface"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/nordnetab/chcp/main/config/ContentConfig;->setMinimumNativeVersion(I)V

    .line 51
    :goto_0
    const-string v2, "update"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 52
    const-string v2, "update"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nordnetab/chcp/main/model/UpdateTime;->fromString(Ljava/lang/String;)Lcom/nordnetab/chcp/main/model/UpdateTime;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/nordnetab/chcp/main/config/ContentConfig;->setUpdateTime(Lcom/nordnetab/chcp/main/model/UpdateTime;)V

    .line 60
    :goto_1
    return-object v0

    .line 47
    :cond_2
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/nordnetab/chcp/main/config/ContentConfig;->setMinimumNativeVersion(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 54
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    sget-object v2, Lcom/nordnetab/chcp/main/model/UpdateTime;->ON_START:Lcom/nordnetab/chcp/main/model/UpdateTime;

    invoke-direct {v0, v2}, Lcom/nordnetab/chcp/main/config/ContentConfig;->setUpdateTime(Lcom/nordnetab/chcp/main/model/UpdateTime;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private generateJson()Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 4

    .prologue
    .line 146
    sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 148
    .local v1, "nodeFactory":Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 149
    .local v0, "node":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    const-string v2, "content_url"

    iget-object v3, p0, Lcom/nordnetab/chcp/main/config/ContentConfig;->contentUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->set(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 150
    const-string v2, "min_native_interface"

    iget v3, p0, Lcom/nordnetab/chcp/main/config/ContentConfig;->minimumNativeVersion:I

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(I)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->set(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 151
    const-string v2, "release"

    iget-object v3, p0, Lcom/nordnetab/chcp/main/config/ContentConfig;->releaseVersion:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->set(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 152
    const-string v2, "update"

    iget-object v3, p0, Lcom/nordnetab/chcp/main/config/ContentConfig;->updateTime:Lcom/nordnetab/chcp/main/model/UpdateTime;

    invoke-virtual {v3}, Lcom/nordnetab/chcp/main/model/UpdateTime;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->set(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 154
    return-object v0
.end method

.method private setContentUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentUrl"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/nordnetab/chcp/main/config/ContentConfig;->contentUrl:Ljava/lang/String;

    .line 139
    return-void
.end method

.method private setMinimumNativeVersion(I)V
    .locals 0
    .param p1, "minimumNativeVersion"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/nordnetab/chcp/main/config/ContentConfig;->minimumNativeVersion:I

    .line 135
    return-void
.end method

.method private setReleaseVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "releaseVersion"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/nordnetab/chcp/main/config/ContentConfig;->releaseVersion:Ljava/lang/String;

    .line 131
    return-void
.end method

.method private setUpdateTime(Lcom/nordnetab/chcp/main/model/UpdateTime;)V
    .locals 0
    .param p1, "updateTime"    # Lcom/nordnetab/chcp/main/model/UpdateTime;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/nordnetab/chcp/main/config/ContentConfig;->updateTime:Lcom/nordnetab/chcp/main/model/UpdateTime;

    .line 143
    return-void
.end method


# virtual methods
.method public getContentUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nordnetab/chcp/main/config/ContentConfig;->contentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMinimumNativeVersion()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/nordnetab/chcp/main/config/ContentConfig;->minimumNativeVersion:I

    return v0
.end method

.method public getReleaseVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nordnetab/chcp/main/config/ContentConfig;->releaseVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()Lcom/nordnetab/chcp/main/model/UpdateTime;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/nordnetab/chcp/main/config/ContentConfig;->updateTime:Lcom/nordnetab/chcp/main/model/UpdateTime;

    return-object v0
.end method

.method toJson()Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/nordnetab/chcp/main/config/ContentConfig;->jsonNode:Lcom/fasterxml/jackson/databind/JsonNode;

    if-nez v0, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/nordnetab/chcp/main/config/ContentConfig;->generateJson()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    iput-object v0, p0, Lcom/nordnetab/chcp/main/config/ContentConfig;->jsonNode:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/nordnetab/chcp/main/config/ContentConfig;->jsonNode:Lcom/fasterxml/jackson/databind/JsonNode;

    return-object v0
.end method
