.class Lcom/nordnetab/chcp/main/events/PluginEventImpl;
.super Ljava/lang/Object;
.source "PluginEventImpl.java"

# interfaces
.implements Lcom/nordnetab/chcp/main/events/IPluginEvent;


# instance fields
.field private final data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final error:Lcom/nordnetab/chcp/main/model/ChcpError;

.field private final eventName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/nordnetab/chcp/main/model/ChcpError;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/nordnetab/chcp/main/model/ChcpError;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/nordnetab/chcp/main/events/PluginEventImpl;->eventName:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/nordnetab/chcp/main/events/PluginEventImpl;->error:Lcom/nordnetab/chcp/main/model/ChcpError;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nordnetab/chcp/main/events/PluginEventImpl;->data:Ljava/util/Map;

    .line 35
    return-void
.end method


# virtual methods
.method public data()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nordnetab/chcp/main/events/PluginEventImpl;->data:Ljava/util/Map;

    return-object v0
.end method

.method public error()Lcom/nordnetab/chcp/main/model/ChcpError;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nordnetab/chcp/main/events/PluginEventImpl;->error:Lcom/nordnetab/chcp/main/model/ChcpError;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nordnetab/chcp/main/events/PluginEventImpl;->eventName:Ljava/lang/String;

    return-object v0
.end method
