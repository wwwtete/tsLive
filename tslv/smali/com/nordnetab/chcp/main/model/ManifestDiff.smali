.class public Lcom/nordnetab/chcp/main/model/ManifestDiff;
.super Ljava/lang/Object;
.source "ManifestDiff.java"


# instance fields
.field private added:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nordnetab/chcp/main/model/ManifestFile;",
            ">;"
        }
    .end annotation
.end field

.field private changed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nordnetab/chcp/main/model/ManifestFile;",
            ">;"
        }
    .end annotation
.end field

.field private deleted:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nordnetab/chcp/main/model/ManifestFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nordnetab/chcp/main/model/ManifestDiff;->added:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nordnetab/chcp/main/model/ManifestDiff;->changed:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nordnetab/chcp/main/model/ManifestDiff;->deleted:Ljava/util/List;

    .line 26
    return-void
.end method


# virtual methods
.method public addedFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nordnetab/chcp/main/model/ManifestFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/nordnetab/chcp/main/model/ManifestDiff;->added:Ljava/util/List;

    return-object v0
.end method

.method public changedFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nordnetab/chcp/main/model/ManifestFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nordnetab/chcp/main/model/ManifestDiff;->changed:Ljava/util/List;

    return-object v0
.end method

.method public deletedFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nordnetab/chcp/main/model/ManifestFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nordnetab/chcp/main/model/ManifestDiff;->deleted:Ljava/util/List;

    return-object v0
.end method

.method public getUpdateFiles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nordnetab/chcp/main/model/ManifestFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v0, "updateList":Ljava/util/List;, "Ljava/util/List<Lcom/nordnetab/chcp/main/model/ManifestFile;>;"
    iget-object v1, p0, Lcom/nordnetab/chcp/main/model/ManifestDiff;->added:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 72
    iget-object v1, p0, Lcom/nordnetab/chcp/main/model/ManifestDiff;->changed:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/nordnetab/chcp/main/model/ManifestDiff;->added:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nordnetab/chcp/main/model/ManifestDiff;->changed:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nordnetab/chcp/main/model/ManifestDiff;->deleted:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
