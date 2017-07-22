.class Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;
.super Ljava/lang/Object;
.source "PathCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/example/content/PathCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileItem"
.end annotation


# instance fields
.field public file:Ljava/io/File;

.field public isDirectory:Z

.field public isVideo:Z

.field final synthetic this$0:Ltv/danmaku/ijk/media/example/content/PathCursor;


# direct methods
.method public constructor <init>(Ltv/danmaku/ijk/media/example/content/PathCursor;Ljava/io/File;)V
    .locals 4
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 147
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;->this$0:Ltv/danmaku/ijk/media/example/content/PathCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p2, p0, Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;->file:Ljava/io/File;

    .line 149
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    iput-boolean v3, p0, Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;->isDirectory:Z

    .line 151
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "fileName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 153
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 154
    .local v1, "extPos":I
    if-ltz v1, :cond_0

    .line 155
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "ext":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Ltv/danmaku/ijk/media/example/content/PathCursor;->access$000()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 157
    const/4 v3, 0x1

    iput-boolean v3, p0, Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;->isVideo:Z

    .line 161
    .end local v0    # "ext":Ljava/lang/String;
    .end local v1    # "extPos":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Ltv/danmaku/ijk/media/example/content/PathCursor;Ljava/lang/String;)V
    .locals 1
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    .line 144
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;-><init>(Ltv/danmaku/ijk/media/example/content/PathCursor;Ljava/io/File;)V

    .line 145
    return-void
.end method
