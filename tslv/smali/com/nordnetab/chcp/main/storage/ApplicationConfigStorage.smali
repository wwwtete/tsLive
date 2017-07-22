.class public Lcom/nordnetab/chcp/main/storage/ApplicationConfigStorage;
.super Lcom/nordnetab/chcp/main/storage/FileStorageAbs;
.source "ApplicationConfigStorage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nordnetab/chcp/main/storage/FileStorageAbs",
        "<",
        "Lcom/nordnetab/chcp/main/config/ApplicationConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private final fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/nordnetab/chcp/main/storage/FileStorageAbs;-><init>()V

    .line 23
    const-string v0, "chcp.json"

    iput-object v0, p0, Lcom/nordnetab/chcp/main/storage/ApplicationConfigStorage;->fileName:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/String;)Lcom/nordnetab/chcp/main/config/ApplicationConfig;
    .locals 1
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {p1}, Lcom/nordnetab/chcp/main/config/ApplicationConfig;->fromJson(Ljava/lang/String;)Lcom/nordnetab/chcp/main/config/ApplicationConfig;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/nordnetab/chcp/main/storage/ApplicationConfigStorage;->createInstance(Ljava/lang/String;)Lcom/nordnetab/chcp/main/config/ApplicationConfig;

    move-result-object v0

    return-object v0
.end method

.method protected getFullPathForFileInFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nordnetab/chcp/main/storage/ApplicationConfigStorage;->fileName:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/nordnetab/chcp/main/utils/Paths;->get([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
