.class public Lcom/nordnetab/chcp/main/events/BeforeInstallEvent;
.super Lcom/nordnetab/chcp/main/events/WorkerEvent;
.source "BeforeInstallEvent.java"


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "chcp_beforeInstall"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    const-string v0, "chcp_beforeInstall"

    invoke-direct {p0, v0, v1, v1}, Lcom/nordnetab/chcp/main/events/WorkerEvent;-><init>(Ljava/lang/String;Lcom/nordnetab/chcp/main/model/ChcpError;Lcom/nordnetab/chcp/main/config/ApplicationConfig;)V

    .line 17
    return-void
.end method
