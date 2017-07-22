.class public final Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest$Builder;
.super Ljava/lang/Object;
.source "UpdateDownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private configURL:Ljava/lang/String;

.field private currentNativeVersion:I

.field private currentReleaseVersion:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest$Builder;->mContext:Landroid/content/Context;

    .line 104
    return-void
.end method


# virtual methods
.method public build()Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest;
    .locals 6

    .prologue
    .line 156
    new-instance v0, Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest;

    iget-object v1, p0, Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest$Builder;->configURL:Ljava/lang/String;

    iget-object v3, p0, Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest$Builder;->currentReleaseVersion:Ljava/lang/String;

    iget v4, p0, Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest$Builder;->currentNativeVersion:I

    iget-object v5, p0, Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest$Builder;->requestHeaders:Ljava/util/Map;

    invoke-direct/range {v0 .. v5}, Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    return-object v0
.end method

.method public setConfigURL(Ljava/lang/String;)Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest$Builder;
    .locals 0
    .param p1, "configURL"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest$Builder;->configURL:Ljava/lang/String;

    .line 114
    return-object p0
.end method

.method public setCurrentNativeVersion(I)Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest$Builder;
    .locals 0
    .param p1, "currentNativeVersion"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest$Builder;->currentNativeVersion:I

    .line 147
    return-object p0
.end method

.method public setCurrentReleaseVersion(Ljava/lang/String;)Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest$Builder;
    .locals 0
    .param p1, "currentReleaseVersion"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest$Builder;->currentReleaseVersion:Ljava/lang/String;

    .line 125
    return-object p0
.end method

.method public setRequestHeaders(Ljava/util/Map;)Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/nordnetab/chcp/main/updater/UpdateDownloadRequest$Builder;->requestHeaders:Ljava/util/Map;

    .line 136
    return-object p0
.end method
