.class public Lcom/nordnetab/chcp/main/model/ManifestFile;
.super Ljava/lang/Object;
.source "ManifestFile.java"


# instance fields
.field public final hash:Ljava/lang/String;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "hash"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/nordnetab/chcp/main/model/ManifestFile;->name:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/nordnetab/chcp/main/model/ManifestFile;->hash:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 34
    if-nez p1, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v1

    .line 38
    :cond_1
    instance-of v2, p1, Lcom/nordnetab/chcp/main/model/ManifestFile;

    if-nez v2, :cond_2

    .line 39
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 42
    check-cast v0, Lcom/nordnetab/chcp/main/model/ManifestFile;

    .line 44
    .local v0, "comparedFile":Lcom/nordnetab/chcp/main/model/ManifestFile;
    iget-object v2, v0, Lcom/nordnetab/chcp/main/model/ManifestFile;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/nordnetab/chcp/main/model/ManifestFile;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/nordnetab/chcp/main/model/ManifestFile;->hash:Ljava/lang/String;

    iget-object v3, p0, Lcom/nordnetab/chcp/main/model/ManifestFile;->hash:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
