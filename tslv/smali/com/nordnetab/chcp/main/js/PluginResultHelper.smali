.class public Lcom/nordnetab/chcp/main/js/PluginResultHelper;
.super Ljava/lang/Object;
.source "PluginResultHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nordnetab/chcp/main/js/PluginResultHelper$JsParams;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDataNode(Ljava/util/Map;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/JsonNode;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v3, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 75
    .local v3, "factory":Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 77
    .local v0, "dataNode":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 78
    .local v1, "dataSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 79
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 80
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 84
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->set(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    goto :goto_0

    .line 87
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "value":Ljava/lang/Object;
    :cond_1
    return-object v0
.end method

.method private static createErrorNode(ILjava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 4
    .param p0, "errorCode"    # I
    .param p1, "errorDescription"    # Ljava/lang/String;

    .prologue
    .line 91
    sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 93
    .local v1, "factory":Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 94
    .local v0, "errorData":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    const-string v2, "code"

    invoke-virtual {v1, p0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(I)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->set(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 95
    const-string v2, "description"

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->set(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 97
    return-object v0
.end method

.method public static createPluginResult(Ljava/lang/String;Ljava/util/Map;Lcom/nordnetab/chcp/main/model/ChcpError;)Lorg/apache/cordova/PluginResult;
    .locals 4
    .param p0, "actionName"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/nordnetab/chcp/main/model/ChcpError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/nordnetab/chcp/main/model/ChcpError;",
            ")",
            "Lorg/apache/cordova/PluginResult;"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 58
    .local v1, "errorNode":Lcom/fasterxml/jackson/databind/JsonNode;
    const/4 v0, 0x0

    .line 60
    .local v0, "dataNode":Lcom/fasterxml/jackson/databind/JsonNode;
    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p2}, Lcom/nordnetab/chcp/main/model/ChcpError;->getErrorCode()I

    move-result v2

    invoke-virtual {p2}, Lcom/nordnetab/chcp/main/model/ChcpError;->getErrorDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nordnetab/chcp/main/js/PluginResultHelper;->createErrorNode(ILjava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    .line 64
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 65
    invoke-static {p1}, Lcom/nordnetab/chcp/main/js/PluginResultHelper;->createDataNode(Ljava/util/Map;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 68
    :cond_1
    invoke-static {p0, v0, v1}, Lcom/nordnetab/chcp/main/js/PluginResultHelper;->getResult(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/JsonNode;)Lorg/apache/cordova/PluginResult;

    move-result-object v2

    return-object v2
.end method

.method private static getResult(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/JsonNode;)Lorg/apache/cordova/PluginResult;
    .locals 5
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "data"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .param p2, "error"    # Lcom/fasterxml/jackson/databind/JsonNode;

    .prologue
    .line 101
    sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 103
    .local v0, "factory":Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    .line 104
    .local v1, "resultObject":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    if-eqz p0, :cond_0

    .line 105
    const-string v2, "action"

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->set(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 108
    :cond_0
    if-eqz p1, :cond_1

    .line 109
    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->set(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 112
    :cond_1
    if-eqz p2, :cond_2

    .line 113
    const-string v2, "error"

    invoke-virtual {v1, v2, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->set(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 116
    :cond_2
    new-instance v2, Lorg/apache/cordova/PluginResult;

    sget-object v3, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    return-object v2
.end method

.method public static pluginResultFromEvent(Lcom/nordnetab/chcp/main/events/IPluginEvent;)Lorg/apache/cordova/PluginResult;
    .locals 4
    .param p0, "event"    # Lcom/nordnetab/chcp/main/events/IPluginEvent;

    .prologue
    .line 49
    invoke-interface {p0}, Lcom/nordnetab/chcp/main/events/IPluginEvent;->name()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "actionName":Ljava/lang/String;
    invoke-interface {p0}, Lcom/nordnetab/chcp/main/events/IPluginEvent;->data()Ljava/util/Map;

    move-result-object v1

    .line 51
    .local v1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0}, Lcom/nordnetab/chcp/main/events/IPluginEvent;->error()Lcom/nordnetab/chcp/main/model/ChcpError;

    move-result-object v2

    .line 53
    .local v2, "error":Lcom/nordnetab/chcp/main/model/ChcpError;
    invoke-static {v0, v1, v2}, Lcom/nordnetab/chcp/main/js/PluginResultHelper;->createPluginResult(Ljava/lang/String;Ljava/util/Map;Lcom/nordnetab/chcp/main/model/ChcpError;)Lorg/apache/cordova/PluginResult;

    move-result-object v3

    return-object v3
.end method
