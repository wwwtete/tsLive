.class public Lcom/nordnetab/chcp/main/events/NothingToInstallEvent;
.super Lcom/nordnetab/chcp/main/events/WorkerEvent;
.source "NothingToInstallEvent.java"


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "chcp_nothingToInstall"


# direct methods
.method public constructor <init>(Lcom/nordnetab/chcp/main/config/ApplicationConfig;)V
    .locals 2
    .param p1, "config"    # Lcom/nordnetab/chcp/main/config/ApplicationConfig;

    .prologue
    .line 21
    const-string v0, "chcp_nothingToInstall"

    sget-object v1, Lcom/nordnetab/chcp/main/model/ChcpError;->NOTHING_TO_INSTALL:Lcom/nordnetab/chcp/main/model/ChcpError;

    invoke-direct {p0, v0, v1, p1}, Lcom/nordnetab/chcp/main/events/WorkerEvent;-><init>(Ljava/lang/String;Lcom/nordnetab/chcp/main/model/ChcpError;Lcom/nordnetab/chcp/main/config/ApplicationConfig;)V

    .line 22
    return-void
.end method
