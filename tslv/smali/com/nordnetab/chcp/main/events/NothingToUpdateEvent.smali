.class public Lcom/nordnetab/chcp/main/events/NothingToUpdateEvent;
.super Lcom/nordnetab/chcp/main/events/WorkerEvent;
.source "NothingToUpdateEvent.java"


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "chcp_nothingToUpdate"


# direct methods
.method public constructor <init>(Lcom/nordnetab/chcp/main/config/ApplicationConfig;)V
    .locals 2
    .param p1, "config"    # Lcom/nordnetab/chcp/main/config/ApplicationConfig;

    .prologue
    .line 21
    const-string v0, "chcp_nothingToUpdate"

    sget-object v1, Lcom/nordnetab/chcp/main/model/ChcpError;->NOTHING_TO_UPDATE:Lcom/nordnetab/chcp/main/model/ChcpError;

    invoke-direct {p0, v0, v1, p1}, Lcom/nordnetab/chcp/main/events/WorkerEvent;-><init>(Ljava/lang/String;Lcom/nordnetab/chcp/main/model/ChcpError;Lcom/nordnetab/chcp/main/config/ApplicationConfig;)V

    .line 22
    return-void
.end method
