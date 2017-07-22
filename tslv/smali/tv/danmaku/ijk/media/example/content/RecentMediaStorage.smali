.class public Ltv/danmaku/ijk/media/example/content/RecentMediaStorage;
.super Ljava/lang/Object;
.source "RecentMediaStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/danmaku/ijk/media/example/content/RecentMediaStorage$CursorLoader;,
        Ltv/danmaku/ijk/media/example/content/RecentMediaStorage$OpenHelper;,
        Ltv/danmaku/ijk/media/example/content/RecentMediaStorage$Entry;
    }
.end annotation


# static fields
.field public static final ALL_COLUMNS:[Ljava/lang/String;


# instance fields
.field private mAppContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 84
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id as _id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "last_access"

    aput-object v2, v0, v1

    sput-object v0, Ltv/danmaku/ijk/media/example/content/RecentMediaStorage;->ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/content/RecentMediaStorage;->mAppContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method public static getNameOfUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string v0, ""

    invoke-static {p0, v0}, Ltv/danmaku/ijk/media/example/content/RecentMediaStorage;->getNameOfUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNameOfUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "defaultName"    # Ljava/lang/String;

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "name":Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 67
    .local v1, "pos":I
    if-ltz v1, :cond_0

    .line 68
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    move-object v0, p1

    .line 73
    :cond_1
    return-object v0
.end method


# virtual methods
.method public save(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "contentValue"    # Landroid/content/ContentValues;

    .prologue
    .line 55
    new-instance v1, Ltv/danmaku/ijk/media/example/content/RecentMediaStorage$OpenHelper;

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/content/RecentMediaStorage;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Ltv/danmaku/ijk/media/example/content/RecentMediaStorage$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 56
    .local v1, "openHelper":Ltv/danmaku/ijk/media/example/content/RecentMediaStorage$OpenHelper;
    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/content/RecentMediaStorage$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 57
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "RecentMedia"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 58
    return-void
.end method

.method public saveUrl(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 47
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 48
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v1, "last_access"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 50
    const-string v1, "name"

    invoke-static {p1}, Ltv/danmaku/ijk/media/example/content/RecentMediaStorage;->getNameOfUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/example/content/RecentMediaStorage;->save(Landroid/content/ContentValues;)V

    .line 52
    return-void
.end method

.method public saveUrlAsync(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 36
    new-instance v0, Ltv/danmaku/ijk/media/example/content/RecentMediaStorage$1;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/example/content/RecentMediaStorage$1;-><init>(Ltv/danmaku/ijk/media/example/content/RecentMediaStorage;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 42
    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/content/RecentMediaStorage$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 43
    return-void
.end method
