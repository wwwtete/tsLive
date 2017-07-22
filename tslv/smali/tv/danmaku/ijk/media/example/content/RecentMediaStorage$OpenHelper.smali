.class public Ltv/danmaku/ijk/media/example/content/RecentMediaStorage$OpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "RecentMediaStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/example/content/RecentMediaStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpenHelper"
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "RecentMedia.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final SQL_CREATE_ENTRIES:Ljava/lang/String; = " CREATE TABLE IF NOT EXISTS RecentMedia (id INTEGER PRIMARY KEY AUTOINCREMENT, url VARCHAR UNIQUE, name VARCHAR, last_access INTEGER) "


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    const-string v0, "RecentMedia.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 103
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 107
    const-string v0, " CREATE TABLE IF NOT EXISTS RecentMedia (id INTEGER PRIMARY KEY AUTOINCREMENT, url VARCHAR UNIQUE, name VARCHAR, last_access INTEGER) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 112
    return-void
.end method
