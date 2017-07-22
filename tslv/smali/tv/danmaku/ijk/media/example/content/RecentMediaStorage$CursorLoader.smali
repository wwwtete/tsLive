.class public Ltv/danmaku/ijk/media/example/content/RecentMediaStorage$CursorLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "RecentMediaStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/example/content/RecentMediaStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CursorLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 118
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 122
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/content/RecentMediaStorage$CursorLoader;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 123
    .local v9, "context":Landroid/content/Context;
    new-instance v10, Ltv/danmaku/ijk/media/example/content/RecentMediaStorage$OpenHelper;

    invoke-direct {v10, v9}, Ltv/danmaku/ijk/media/example/content/RecentMediaStorage$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 124
    .local v10, "openHelper":Ltv/danmaku/ijk/media/example/content/RecentMediaStorage$OpenHelper;
    invoke-virtual {v10}, Ltv/danmaku/ijk/media/example/content/RecentMediaStorage$OpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 126
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "RecentMedia"

    sget-object v2, Ltv/danmaku/ijk/media/example/content/RecentMediaStorage;->ALL_COLUMNS:[Ljava/lang/String;

    const-string v7, "last_access DESC"

    const-string v8, "100"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/content/RecentMediaStorage$CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 133
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/content/RecentMediaStorage$CursorLoader;->forceLoad()V

    .line 134
    return-void
.end method
