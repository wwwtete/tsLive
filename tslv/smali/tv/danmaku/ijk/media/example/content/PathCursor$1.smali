.class final Ltv/danmaku/ijk/media/example/content/PathCursor$1;
.super Ljava/lang/Object;
.source "PathCursor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/example/content/PathCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 120
    check-cast p1, Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;

    check-cast p2, Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;

    invoke-virtual {p0, p1, p2}, Ltv/danmaku/ijk/media/example/content/PathCursor$1;->compare(Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;)I

    move-result v0

    return v0
.end method

.method public compare(Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;)I
    .locals 2
    .param p1, "lhs"    # Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;
    .param p2, "rhs"    # Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;

    .prologue
    .line 123
    iget-boolean v0, p1, Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;->isDirectory:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;->isDirectory:Z

    if-nez v0, :cond_0

    .line 124
    const/4 v0, -0x1

    .line 127
    :goto_0
    return v0

    .line 125
    :cond_0
    iget-boolean v0, p1, Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;->isDirectory:Z

    if-nez v0, :cond_1

    iget-boolean v0, p2, Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;->isDirectory:Z

    if-eqz v0, :cond_1

    .line 126
    const/4 v0, 0x1

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p1, Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
