.class public Ltv/danmaku/ijk/media/example/content/PathCursorLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "PathCursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mPath:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ltv/danmaku/ijk/media/example/content/PathCursorLoader;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/io/File;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p2, p0, Ltv/danmaku/ijk/media/example/content/PathCursorLoader;->mPath:Ljava/io/File;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/content/PathCursorLoader;->mPath:Ljava/io/File;

    .line 36
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 45
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/content/PathCursorLoader;->mPath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 46
    .local v0, "file_list":[Ljava/io/File;
    new-instance v1, Ltv/danmaku/ijk/media/example/content/PathCursor;

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/content/PathCursorLoader;->mPath:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ltv/danmaku/ijk/media/example/content/PathCursor;-><init>(Ljava/io/File;[Ljava/io/File;)V

    return-object v1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/content/PathCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 51
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/content/PathCursorLoader;->forceLoad()V

    .line 52
    return-void
.end method
