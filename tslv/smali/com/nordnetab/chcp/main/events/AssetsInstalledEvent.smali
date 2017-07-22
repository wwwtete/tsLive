.class public Lcom/nordnetab/chcp/main/events/AssetsInstalledEvent;
.super Lcom/nordnetab/chcp/main/events/PluginEventImpl;
.source "AssetsInstalledEvent.java"


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "chcp_assetsInstalledOnExternalStorage"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    const-string v0, "chcp_assetsInstalledOnExternalStorage"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nordnetab/chcp/main/events/PluginEventImpl;-><init>(Ljava/lang/String;Lcom/nordnetab/chcp/main/model/ChcpError;)V

    .line 17
    return-void
.end method


# virtual methods
.method public bridge synthetic data()Ljava/util/Map;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/nordnetab/chcp/main/events/PluginEventImpl;->data()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic error()Lcom/nordnetab/chcp/main/model/ChcpError;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/nordnetab/chcp/main/events/PluginEventImpl;->error()Lcom/nordnetab/chcp/main/model/ChcpError;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/nordnetab/chcp/main/events/PluginEventImpl;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
