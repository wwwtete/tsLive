.class public Lcom/nordnetab/chcp/main/events/UpdateDownloadErrorEvent;
.super Lcom/nordnetab/chcp/main/events/WorkerEvent;
.source "UpdateDownloadErrorEvent.java"


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "chcp_updateLoadFailed"


# direct methods
.method public constructor <init>(Lcom/nordnetab/chcp/main/model/ChcpError;Lcom/nordnetab/chcp/main/config/ApplicationConfig;)V
    .locals 1
    .param p1, "error"    # Lcom/nordnetab/chcp/main/model/ChcpError;
    .param p2, "config"    # Lcom/nordnetab/chcp/main/config/ApplicationConfig;

    .prologue
    .line 22
    const-string v0, "chcp_updateLoadFailed"

    invoke-direct {p0, v0, p1, p2}, Lcom/nordnetab/chcp/main/events/WorkerEvent;-><init>(Ljava/lang/String;Lcom/nordnetab/chcp/main/model/ChcpError;Lcom/nordnetab/chcp/main/config/ApplicationConfig;)V

    .line 23
    return-void
.end method
