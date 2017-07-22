.class public final Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;
.super Ljava/lang/Object;
.source "DrmInitData.java"

# interfaces
.implements Lcom/google/android/exoplayer/drm/DrmInitData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/drm/DrmInitData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mapped"
.end annotation


# instance fields
.field private final schemeData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;->schemeData:Ljava/util/Map;

    .line 48
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 67
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    .line 70
    check-cast v0, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;

    .line 71
    .local v0, "rhs":Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;
    iget-object v3, p0, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;->schemeData:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    iget-object v4, v0, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;->schemeData:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 74
    iget-object v3, p0, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;->schemeData:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    .line 75
    .local v1, "uuid":Ljava/util/UUID;
    iget-object v4, p0, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;->schemeData:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;->schemeData:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/exoplayer/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 79
    .end local v1    # "uuid":Ljava/util/UUID;
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public get(Ljava/util/UUID;)Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;
    .locals 1
    .param p1, "schemeUuid"    # Ljava/util/UUID;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;->schemeData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;->schemeData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public put(Ljava/util/UUID;Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;)V
    .locals 1
    .param p1, "schemeUuid"    # Ljava/util/UUID;
    .param p2, "schemeInitData"    # Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;->schemeData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method
