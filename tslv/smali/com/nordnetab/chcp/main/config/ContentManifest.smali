.class public Lcom/nordnetab/chcp/main/config/ContentManifest;
.super Ljava/lang/Object;
.source "ContentManifest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nordnetab/chcp/main/config/ContentManifest$JsonKeys;
    }
.end annotation


# instance fields
.field private final files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nordnetab/chcp/main/model/ManifestFile;",
            ">;"
        }
    .end annotation
.end field

.field private jsonString:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nordnetab/chcp/main/config/ContentManifest;->files:Ljava/util/List;

    .line 92
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/nordnetab/chcp/main/config/ContentManifest;
    .locals 9
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 41
    new-instance v5, Lcom/nordnetab/chcp/main/config/ContentManifest;

    invoke-direct {v5}, Lcom/nordnetab/chcp/main/config/ContentManifest;-><init>()V

    .line 43
    .local v5, "manifest":Lcom/nordnetab/chcp/main/config/ContentManifest;
    :try_start_0
    new-instance v6, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v6}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    invoke-virtual {v6, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    .line 44
    .local v4, "filesListNode":Lcom/fasterxml/jackson/databind/JsonNode;
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 45
    .local v3, "fileNode":Lcom/fasterxml/jackson/databind/JsonNode;
    const-string v7, "file"

    invoke-virtual {v3, v7}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "fileName":Ljava/lang/String;
    const-string v7, "hash"

    invoke-virtual {v3, v7}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "fileHash":Ljava/lang/String;
    iget-object v7, v5, Lcom/nordnetab/chcp/main/config/ContentManifest;->files:Ljava/util/List;

    new-instance v8, Lcom/nordnetab/chcp/main/model/ManifestFile;

    invoke-direct {v8, v2, v1}, Lcom/nordnetab/chcp/main/model/ManifestFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    .end local v1    # "fileHash":Ljava/lang/String;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "fileNode":Lcom/fasterxml/jackson/databind/JsonNode;
    .end local v4    # "filesListNode":Lcom/fasterxml/jackson/databind/JsonNode;
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iput-object p0, v5, Lcom/nordnetab/chcp/main/config/ContentManifest;->jsonString:Ljava/lang/String;

    .line 55
    return-object v5
.end method

.method private generateJson()Ljava/lang/String;
    .locals 7

    .prologue
    .line 73
    sget-object v3, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 74
    .local v3, "nodeFactory":Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->arrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v2

    .line 75
    .local v2, "filesListNode":Lcom/fasterxml/jackson/databind/node/ArrayNode;
    iget-object v4, p0, Lcom/nordnetab/chcp/main/config/ContentManifest;->files:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nordnetab/chcp/main/model/ManifestFile;

    .line 76
    .local v0, "fileEntry":Lcom/nordnetab/chcp/main/model/ManifestFile;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    .line 77
    .local v1, "fileNode":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    const-string v5, "file"

    iget-object v6, v0, Lcom/nordnetab/chcp/main/model/ManifestFile;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->set(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 78
    const-string v5, "hash"

    iget-object v6, v0, Lcom/nordnetab/chcp/main/model/ManifestFile;->hash:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->set(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 79
    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_0

    .line 82
    .end local v0    # "fileEntry":Lcom/nordnetab/chcp/main/model/ManifestFile;
    .end local v1    # "fileNode":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    :cond_0
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public calculateDifference(Lcom/nordnetab/chcp/main/config/ContentManifest;)Lcom/nordnetab/chcp/main/model/ManifestDiff;
    .locals 14
    .param p1, "manifest"    # Lcom/nordnetab/chcp/main/config/ContentManifest;

    .prologue
    .line 114
    iget-object v9, p0, Lcom/nordnetab/chcp/main/config/ContentManifest;->files:Ljava/util/List;

    .line 115
    .local v9, "oldManifestFiles":Ljava/util/List;, "Ljava/util/List<Lcom/nordnetab/chcp/main/model/ManifestFile;>;"
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/nordnetab/chcp/main/config/ContentManifest;->getFiles()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 116
    invoke-virtual {p1}, Lcom/nordnetab/chcp/main/config/ContentManifest;->getFiles()Ljava/util/List;

    move-result-object v7

    .line 118
    .local v7, "newManifestFiles":Ljava/util/List;, "Ljava/util/List<Lcom/nordnetab/chcp/main/model/ManifestFile;>;"
    :goto_0
    new-instance v3, Lcom/nordnetab/chcp/main/model/ManifestDiff;

    invoke-direct {v3}, Lcom/nordnetab/chcp/main/model/ManifestDiff;-><init>()V

    .line 119
    .local v3, "diff":Lcom/nordnetab/chcp/main/model/ManifestDiff;
    invoke-virtual {v3}, Lcom/nordnetab/chcp/main/model/ManifestDiff;->changedFiles()Ljava/util/List;

    move-result-object v1

    .line 120
    .local v1, "changedFiles":Ljava/util/List;, "Ljava/util/List<Lcom/nordnetab/chcp/main/model/ManifestFile;>;"
    invoke-virtual {v3}, Lcom/nordnetab/chcp/main/model/ManifestDiff;->deletedFiles()Ljava/util/List;

    move-result-object v2

    .line 121
    .local v2, "deletedFiles":Ljava/util/List;, "Ljava/util/List<Lcom/nordnetab/chcp/main/model/ManifestFile;>;"
    invoke-virtual {v3}, Lcom/nordnetab/chcp/main/model/ManifestDiff;->addedFiles()Ljava/util/List;

    move-result-object v0

    .line 125
    .local v0, "addedFiles":Ljava/util/List;, "Ljava/util/List<Lcom/nordnetab/chcp/main/model/ManifestFile;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nordnetab/chcp/main/model/ManifestFile;

    .line 126
    .local v8, "oldFile":Lcom/nordnetab/chcp/main/model/ManifestFile;
    const/4 v4, 0x1

    .line 127
    .local v4, "isDeleted":Z
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nordnetab/chcp/main/model/ManifestFile;

    .line 128
    .local v6, "newFile":Lcom/nordnetab/chcp/main/model/ManifestFile;
    iget-object v12, v8, Lcom/nordnetab/chcp/main/model/ManifestFile;->name:Ljava/lang/String;

    iget-object v13, v6, Lcom/nordnetab/chcp/main/model/ManifestFile;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 129
    const/4 v4, 0x0

    .line 130
    iget-object v11, v6, Lcom/nordnetab/chcp/main/model/ManifestFile;->hash:Ljava/lang/String;

    iget-object v12, v8, Lcom/nordnetab/chcp/main/model/ManifestFile;->hash:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 131
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    .end local v6    # "newFile":Lcom/nordnetab/chcp/main/model/ManifestFile;
    :cond_2
    if-eqz v4, :cond_0

    .line 138
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 116
    .end local v0    # "addedFiles":Ljava/util/List;, "Ljava/util/List<Lcom/nordnetab/chcp/main/model/ManifestFile;>;"
    .end local v1    # "changedFiles":Ljava/util/List;, "Ljava/util/List<Lcom/nordnetab/chcp/main/model/ManifestFile;>;"
    .end local v2    # "deletedFiles":Ljava/util/List;, "Ljava/util/List<Lcom/nordnetab/chcp/main/model/ManifestFile;>;"
    .end local v3    # "diff":Lcom/nordnetab/chcp/main/model/ManifestDiff;
    .end local v4    # "isDeleted":Z
    .end local v7    # "newManifestFiles":Ljava/util/List;, "Ljava/util/List<Lcom/nordnetab/chcp/main/model/ManifestFile;>;"
    .end local v8    # "oldFile":Lcom/nordnetab/chcp/main/model/ManifestFile;
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 143
    .restart local v0    # "addedFiles":Ljava/util/List;, "Ljava/util/List<Lcom/nordnetab/chcp/main/model/ManifestFile;>;"
    .restart local v1    # "changedFiles":Ljava/util/List;, "Ljava/util/List<Lcom/nordnetab/chcp/main/model/ManifestFile;>;"
    .restart local v2    # "deletedFiles":Ljava/util/List;, "Ljava/util/List<Lcom/nordnetab/chcp/main/model/ManifestFile;>;"
    .restart local v3    # "diff":Lcom/nordnetab/chcp/main/model/ManifestDiff;
    .restart local v7    # "newManifestFiles":Ljava/util/List;, "Ljava/util/List<Lcom/nordnetab/chcp/main/model/ManifestFile;>;"
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nordnetab/chcp/main/model/ManifestFile;

    .line 144
    .restart local v6    # "newFile":Lcom/nordnetab/chcp/main/model/ManifestFile;
    const/4 v5, 0x0

    .line 145
    .local v5, "isFound":Z
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nordnetab/chcp/main/model/ManifestFile;

    .line 146
    .restart local v8    # "oldFile":Lcom/nordnetab/chcp/main/model/ManifestFile;
    iget-object v12, v6, Lcom/nordnetab/chcp/main/model/ManifestFile;->name:Ljava/lang/String;

    iget-object v13, v8, Lcom/nordnetab/chcp/main/model/ManifestFile;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 147
    const/4 v5, 0x1

    .line 151
    .end local v8    # "oldFile":Lcom/nordnetab/chcp/main/model/ManifestFile;
    :cond_7
    if-nez v5, :cond_5

    .line 152
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 156
    .end local v5    # "isFound":Z
    .end local v6    # "newFile":Lcom/nordnetab/chcp/main/model/ManifestFile;
    :cond_8
    return-object v3
.end method

.method public getFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nordnetab/chcp/main/model/ManifestFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nordnetab/chcp/main/config/ContentManifest;->files:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nordnetab/chcp/main/config/ContentManifest;->jsonString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/nordnetab/chcp/main/config/ContentManifest;->generateJson()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nordnetab/chcp/main/config/ContentManifest;->jsonString:Ljava/lang/String;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/nordnetab/chcp/main/config/ContentManifest;->jsonString:Ljava/lang/String;

    return-object v0
.end method
