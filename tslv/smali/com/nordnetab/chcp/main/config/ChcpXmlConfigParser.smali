.class Lcom/nordnetab/chcp/main/config/ChcpXmlConfigParser;
.super Lorg/apache/cordova/ConfigXmlParser;
.source "ChcpXmlConfigParser.java"


# instance fields
.field private chcpConfig:Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;

.field private didParseChcpBlock:Z

.field private isInsideChcpBlock:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/apache/cordova/ConfigXmlParser;-><init>()V

    return-void
.end method

.method private processAutoDownloadBlock(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "xml"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 101
    const/4 v1, 0x0

    const-string v2, "enabled"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 102
    .local v0, "isEnabled":Z
    iget-object v1, p0, Lcom/nordnetab/chcp/main/config/ChcpXmlConfigParser;->chcpConfig:Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;

    invoke-virtual {v1, v0}, Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;->allowUpdatesAutoDownload(Z)V

    .line 103
    return-void
.end method

.method private processAutoInstallationBlock(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "xml"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 106
    const/4 v1, 0x0

    const-string v2, "enabled"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 107
    .local v0, "isEnabled":Z
    iget-object v1, p0, Lcom/nordnetab/chcp/main/config/ChcpXmlConfigParser;->chcpConfig:Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;

    invoke-virtual {v1, v0}, Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;->allowUpdatesAutoInstall(Z)V

    .line 108
    return-void
.end method

.method private processConfigFileBlock(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "xml"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 95
    const/4 v1, 0x0

    const-string v2, "url"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "configUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/nordnetab/chcp/main/config/ChcpXmlConfigParser;->chcpConfig:Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;

    invoke-virtual {v1, v0}, Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;->setConfigUrl(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method private processNativeInterfaceBlock(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "xml"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 111
    const/4 v2, 0x0

    const-string v3, "version"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "nativeVersionStr":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 114
    .local v0, "nativeVersion":I
    iget-object v2, p0, Lcom/nordnetab/chcp/main/config/ChcpXmlConfigParser;->chcpConfig:Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;

    invoke-virtual {v2, v0}, Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;->setNativeInterfaceVersion(I)V

    .line 115
    return-void
.end method


# virtual methods
.method public handleEndTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "xml"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 83
    iget-boolean v1, p0, Lcom/nordnetab/chcp/main/config/ChcpXmlConfigParser;->didParseChcpBlock:Z

    if-eqz v1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "name":Ljava/lang/String;
    const-string v1, "chcp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nordnetab/chcp/main/config/ChcpXmlConfigParser;->didParseChcpBlock:Z

    .line 90
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nordnetab/chcp/main/config/ChcpXmlConfigParser;->isInsideChcpBlock:Z

    goto :goto_0
.end method

.method public handleStartTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "xml"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 42
    iget-boolean v1, p0, Lcom/nordnetab/chcp/main/config/ChcpXmlConfigParser;->didParseChcpBlock:Z

    if-eqz v1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "name":Ljava/lang/String;
    const-string v1, "chcp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nordnetab/chcp/main/config/ChcpXmlConfigParser;->isInsideChcpBlock:Z

    goto :goto_0

    .line 53
    :cond_2
    iget-boolean v1, p0, Lcom/nordnetab/chcp/main/config/ChcpXmlConfigParser;->isInsideChcpBlock:Z

    if-eqz v1, :cond_0

    .line 58
    const-string v1, "config-file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 59
    invoke-direct {p0, p1}, Lcom/nordnetab/chcp/main/config/ChcpXmlConfigParser;->processConfigFileBlock(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 64
    :cond_3
    const-string v1, "auto-download"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 65
    invoke-direct {p0, p1}, Lcom/nordnetab/chcp/main/config/ChcpXmlConfigParser;->processAutoDownloadBlock(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 70
    :cond_4
    const-string v1, "auto-install"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 71
    invoke-direct {p0, p1}, Lcom/nordnetab/chcp/main/config/ChcpXmlConfigParser;->processAutoInstallationBlock(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 76
    :cond_5
    const-string v1, "native-interface"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-direct {p0, p1}, Lcom/nordnetab/chcp/main/config/ChcpXmlConfigParser;->processNativeInterfaceBlock(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0
.end method

.method public parse(Landroid/content/Context;Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "chcpConfig"    # Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;

    .prologue
    const/4 v0, 0x0

    .line 32
    iput-object p2, p0, Lcom/nordnetab/chcp/main/config/ChcpXmlConfigParser;->chcpConfig:Lcom/nordnetab/chcp/main/config/ChcpXmlConfig;

    .line 34
    iput-boolean v0, p0, Lcom/nordnetab/chcp/main/config/ChcpXmlConfigParser;->isInsideChcpBlock:Z

    .line 35
    iput-boolean v0, p0, Lcom/nordnetab/chcp/main/config/ChcpXmlConfigParser;->didParseChcpBlock:Z

    .line 37
    invoke-super {p0, p1}, Lorg/apache/cordova/ConfigXmlParser;->parse(Landroid/content/Context;)V

    .line 38
    return-void
.end method
