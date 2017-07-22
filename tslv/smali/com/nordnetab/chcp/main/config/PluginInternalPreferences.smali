.class public Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;
.super Ljava/lang/Object;
.source "PluginInternalPreferences.java"


# static fields
.field private static final APPLICATION_BUILD_VERSION:Ljava/lang/String; = "app_build_version"

.field private static final CURRENT_RELEASE_VERSION_NAME:Ljava/lang/String; = "current_release_version_name"

.field private static final PREVIOUS_RELEASE_VERSION_NAME:Ljava/lang/String; = "previous_release_version_name"

.field private static final READY_FOR_INSTALLATION_RELEASE_VERSION_NAME:Ljava/lang/String; = "ready_for_installation_release_version_name"

.field private static final WWW_FOLDER_INSTALLED_FLAG:Ljava/lang/String; = "www_folder_installed"


# instance fields
.field private appBuildVersion:I

.field private currentReleaseVersionName:Ljava/lang/String;

.field private previousReleaseVersionName:Ljava/lang/String;

.field private readyForInstallationReleaseVersionName:Ljava/lang/String;

.field private wwwFolderInstalled:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->currentReleaseVersionName:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->previousReleaseVersionName:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->readyForInstallationReleaseVersionName:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public static createDefault(Landroid/content/Context;)Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    new-instance v1, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    invoke-direct {v1}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;-><init>()V

    .line 91
    .local v1, "pluginPrefs":Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;
    invoke-static {p0}, Lcom/nordnetab/chcp/main/utils/VersionHelper;->applicationVersionCode(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->setAppBuildVersion(I)V

    .line 92
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->setWwwFolderInstalled(Z)V

    .line 93
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->setPreviousReleaseVersionName(Ljava/lang/String;)V

    .line 94
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->setReadyForInstallationReleaseVersionName(Ljava/lang/String;)V

    .line 95
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->setCurrentReleaseVersionName(Ljava/lang/String;)V

    .line 98
    const-string v2, "chcp.json"

    invoke-static {p0, v2}, Lcom/nordnetab/chcp/main/config/ApplicationConfig;->configFromAssets(Landroid/content/Context;Ljava/lang/String;)Lcom/nordnetab/chcp/main/config/ApplicationConfig;

    move-result-object v0

    .line 99
    .local v0, "appConfig":Lcom/nordnetab/chcp/main/config/ApplicationConfig;
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/nordnetab/chcp/main/config/ApplicationConfig;->getContentConfig()Lcom/nordnetab/chcp/main/config/ContentConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nordnetab/chcp/main/config/ContentConfig;->getReleaseVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->setCurrentReleaseVersionName(Ljava/lang/String;)V

    .line 103
    :cond_0
    return-object v1
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;
    .locals 4
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 41
    new-instance v0, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;

    invoke-direct {v0}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;-><init>()V

    .line 43
    .local v0, "config":Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;
    :try_start_0
    new-instance v3, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    invoke-virtual {v3, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    .line 44
    .local v2, "jsonNode":Lcom/fasterxml/jackson/databind/JsonNode;
    const-string v3, "app_build_version"

    .line 45
    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v3

    .line 44
    invoke-virtual {v0, v3}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->setAppBuildVersion(I)V

    .line 47
    const-string v3, "www_folder_installed"

    .line 48
    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v3

    .line 47
    invoke-virtual {v0, v3}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->setWwwFolderInstalled(Z)V

    .line 51
    const-string v3, "current_release_version_name"

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    const-string v3, "current_release_version_name"

    .line 53
    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-virtual {v0, v3}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->setCurrentReleaseVersionName(Ljava/lang/String;)V

    .line 57
    :cond_0
    const-string v3, "previous_release_version_name"

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 58
    const-string v3, "previous_release_version_name"

    .line 59
    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v3

    .line 58
    invoke-virtual {v0, v3}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->setPreviousReleaseVersionName(Ljava/lang/String;)V

    .line 63
    :cond_1
    const-string v3, "ready_for_installation_release_version_name"

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 64
    const-string v3, "ready_for_installation_release_version_name"

    .line 65
    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-virtual {v0, v3}, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->setReadyForInstallationReleaseVersionName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v2    # "jsonNode":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_2
    :goto_0
    return-object v0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 71
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAppBuildVersion()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->appBuildVersion:I

    return v0
.end method

.method public getCurrentReleaseVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->currentReleaseVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousReleaseVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->previousReleaseVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public getReadyForInstallationReleaseVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->readyForInstallationReleaseVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public isWwwFolderInstalled()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->wwwFolderInstalled:Z

    return v0
.end method

.method public setAppBuildVersion(I)V
    .locals 0
    .param p1, "appBuildVersion"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->appBuildVersion:I

    .line 123
    return-void
.end method

.method public setCurrentReleaseVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "currentReleaseVersionName"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->currentReleaseVersionName:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setPreviousReleaseVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "previousReleaseVersionName"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->previousReleaseVersionName:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setReadyForInstallationReleaseVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "readyForInstallationReleaseVersionName"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->readyForInstallationReleaseVersionName:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setWwwFolderInstalled(Z)V
    .locals 0
    .param p1, "isWwwFolderInstalled"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->wwwFolderInstalled:Z

    .line 141
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 204
    sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 205
    .local v0, "nodeFactory":Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    .line 206
    .local v1, "object":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    const-string v2, "app_build_version"

    iget v3, p0, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->appBuildVersion:I

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(I)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->set(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 207
    const-string v2, "www_folder_installed"

    iget-boolean v3, p0, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->wwwFolderInstalled:Z

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->set(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 208
    const-string v2, "current_release_version_name"

    iget-object v3, p0, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->currentReleaseVersionName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->set(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 209
    const-string v2, "previous_release_version_name"

    iget-object v3, p0, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->previousReleaseVersionName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->set(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 210
    const-string v2, "ready_for_installation_release_version_name"

    iget-object v3, p0, Lcom/nordnetab/chcp/main/config/PluginInternalPreferences;->readyForInstallationReleaseVersionName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->set(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 212
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
