.class public Ltv/danmaku/ijk/media/example/content/RecentMediaStorage$Entry;
.super Ljava/lang/Object;
.source "RecentMediaStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/example/content/RecentMediaStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# static fields
.field public static final COLUMN_NAME_ID:Ljava/lang/String; = "id"

.field public static final COLUMN_NAME_LAST_ACCESS:Ljava/lang/String; = "last_access"

.field public static final COLUMN_NAME_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_NAME_URL:Ljava/lang/String; = "url"

.field public static final TABLE_NAME:Ljava/lang/String; = "RecentMedia"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
