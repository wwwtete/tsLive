.class public Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest;
.super Ljava/lang/Object;
.source "UpdateDownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest$Builder;
    }
.end annotation


# instance fields
.field private configURL:Ljava/lang/String;

.field private currentNativeVersion:I

.field private currentReleaseFS:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

.field private requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configURL"    # Ljava/lang/String;
    .param p3, "currentReleaseVersion"    # Ljava/lang/String;
    .param p4, "currentNativeVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p5, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest;->configURL:Ljava/lang/String;

    .line 36
    iput p4, p0, Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest;->currentNativeVersion:I

    .line 37
    iput-object p5, p0, Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest;->requestHeaders:Ljava/util/Map;

    .line 38
    new-instance v0, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    invoke-direct {v0, p1, p3}, Lcom/nordnetab/chcp/main/model/PluginFilesStructure;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest;->currentReleaseFS:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    .line 39
    return-void
.end method

.method public static builder(Landroid/content/Context;)Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest$Builder;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    new-instance v0, Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest$Builder;

    invoke-direct {v0, p0}, Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getConfigURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest;->configURL:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentNativeVersion()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest;->currentNativeVersion:I

    return v0
.end method

.method public getCurrentReleaseFileStructure()Lcom/nordnetab/chcp/main/model/PluginFilesStructure;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest;->currentReleaseFS:Lcom/nordnetab/chcp/main/model/PluginFilesStructure;

    return-object v0
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest;->requestHeaders:Ljava/util/Map;

    return-object v0
.end method
