.class public Lcom/nordnetab/chcp/main/events/WorkerEvent;
.super Lcom/nordnetab/chcp/main/events/PluginEventImpl;
.source "WorkerEvent.java"


# static fields
.field private static final CONFIG_KEY:Ljava/lang/String; = "config"


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/nordnetab/chcp/main/model/ChcpError;Lcom/nordnetab/chcp/main/config/ApplicationConfig;)V
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/nordnetab/chcp/main/model/ChcpError;
    .param p3, "appConfig"    # Lcom/nordnetab/chcp/main/config/ApplicationConfig;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/nordnetab/chcp/main/events/PluginEventImpl;-><init>(Ljava/lang/String;Lcom/nordnetab/chcp/main/model/ChcpError;)V

    .line 33
    if-eqz p3, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/nordnetab/chcp/main/events/WorkerEvent;->data()Ljava/util/Map;

    move-result-object v0

    const-string v1, "config"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_0
    return-void
.end method


# virtual methods
.method public applicationConfig()Lcom/nordnetab/chcp/main/config/ApplicationConfig;
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/nordnetab/chcp/main/events/WorkerEvent;->data()Ljava/util/Map;

    move-result-object v0

    .line 46
    .local v0, "eventData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "config"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    const/4 v1, 0x0

    .line 50
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "config"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nordnetab/chcp/main/config/ApplicationConfig;

    goto :goto_0
.end method

.method public bridge synthetic data()Ljava/util/Map;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/nordnetab/chcp/main/events/PluginEventImpl;->data()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic error()Lcom/nordnetab/chcp/main/model/ChcpError;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/nordnetab/chcp/main/events/PluginEventImpl;->error()Lcom/nordnetab/chcp/main/model/ChcpError;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/nordnetab/chcp/main/events/PluginEventImpl;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
