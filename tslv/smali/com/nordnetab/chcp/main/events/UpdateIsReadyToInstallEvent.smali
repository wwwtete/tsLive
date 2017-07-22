.class public Lcom/nordnetab/chcp/main/events/UpdateIsReadyToInstallEvent;
.super Lcom/nordnetab/chcp/main/events/WorkerEvent;
.source "UpdateIsReadyToInstallEvent.java"


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "chcp_updateIsReadyToInstall"


# direct methods
.method public constructor <init>(Lcom/nordnetab/chcp/main/config/ApplicationConfig;)V
    .locals 2
    .param p1, "config"    # Lcom/nordnetab/chcp/main/config/ApplicationConfig;

    .prologue
    .line 20
    const-string v0, "chcp_updateIsReadyToInstall"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/nordnetab/chcp/main/events/WorkerEvent;-><init>(Ljava/lang/String;Lcom/nordnetab/chcp/main/model/ChcpError;Lcom/nordnetab/chcp/main/config/ApplicationConfig;)V

    .line 21
    return-void
.end method
