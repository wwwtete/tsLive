.class public Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;
.super Ljava/lang/Object;
.source "ChcpXmlConfig.java"


# instance fields
.field private allowUpdatesAutoDownload:Z

.field private allowUpdatesAutoInstall:Z

.field private configUrl:Ljava/lang/String;

.field private nativeInterfaceVersion:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;->configUrl:Ljava/lang/String;

    .line 23
    iput-boolean v1, p0, Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;->allowUpdatesAutoDownload:Z

    .line 24
    iput-boolean v1, p0, Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;->allowUpdatesAutoInstall:Z

    .line 25
    iput v1, p0, Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;->nativeInterfaceVersion:I

    .line 26
    return-void
.end method

.method public static loadFromCordovaConfig(Landroid/content/Context;)Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    new-instance v0, Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;

    invoke-direct {v0}, Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;-><init>()V

    .line 112
    .local v0, "chcpConfig":Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;
    new-instance v1, Lcom/nordnetab/chcp/main/config/ChcpXmlConfigParser;

    invoke-direct {v1}, Lcom/nordnetab/chcp/main/config/ChcpXmlConfigParser;-><init>()V

    invoke-virtual {v1, p0, v0}, Lcom/nordnetab/chcp/main/config/ChcpXmlConfigParser;->parse(Landroid/content/Context;Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;)V

    .line 114
    return-object v0
.end method


# virtual methods
.method public allowUpdatesAutoDownload(Z)V
    .locals 0
    .param p1, "isAllowed"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;->allowUpdatesAutoDownload:Z

    .line 54
    return-void
.end method

.method public allowUpdatesAutoInstall(Z)V
    .locals 0
    .param p1, "isAllowed"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;->allowUpdatesAutoInstall:Z

    .line 73
    return-void
.end method

.method public getConfigUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;->configUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeInterfaceVersion()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;->nativeInterfaceVersion:I

    return v0
.end method

.method public isAutoDownloadIsAllowed()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;->allowUpdatesAutoDownload:Z

    return v0
.end method

.method public isAutoInstallIsAllowed()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;->allowUpdatesAutoInstall:Z

    return v0
.end method

.method public mergeOptionsFromJs(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "jsOptions"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 125
    const-string v1, "config-file"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    const-string v1, "config-file"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "configUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    invoke-virtual {p0, v0}, Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;->setConfigUrl(Ljava/lang/String;)V

    .line 132
    .end local v0    # "configUrl":Ljava/lang/String;
    :cond_0
    const-string v1, "auto-install"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    const-string v1, "auto-install"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;->allowUpdatesAutoInstall(Z)V

    .line 136
    :cond_1
    const-string v1, "auto-download"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    const-string v1, "auto-download"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;->allowUpdatesAutoDownload(Z)V

    .line 139
    :cond_2
    return-void
.end method

.method public setConfigUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "configUrl"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;->configUrl:Ljava/lang/String;

    .line 45
    return-void
.end method

.method setNativeInterfaceVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 100
    if-lez p1, :cond_0

    .end local p1    # "version":I
    :goto_0
    iput p1, p0, Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;->nativeInterfaceVersion:I

    .line 101
    return-void

    .line 100
    .restart local p1    # "version":I
    :cond_0
    const/4 p1, 0x1

    goto :goto_0
.end method
