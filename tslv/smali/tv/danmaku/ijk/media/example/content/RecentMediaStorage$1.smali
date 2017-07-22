.class Ltv/danmaku/ijk/media/example/content/RecentMediaStorage$1;
.super Landroid/os/AsyncTask;
.source "RecentMediaStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/danmaku/ijk/media/example/content/RecentMediaStorage;->saveUrlAsync(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/ijk/media/example/content/RecentMediaStorage;


# direct methods
.method constructor <init>(Ltv/danmaku/ijk/media/example/content/RecentMediaStorage;)V
    .locals 0
    .param p1, "this$0"    # Ltv/danmaku/ijk/media/example/content/RecentMediaStorage;

    .prologue
    .line 36
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/content/RecentMediaStorage$1;->this$0:Ltv/danmaku/ijk/media/example/content/RecentMediaStorage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/example/content/RecentMediaStorage$1;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/content/RecentMediaStorage$1;->this$0:Ltv/danmaku/ijk/media/example/content/RecentMediaStorage;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/content/RecentMediaStorage;->saveUrl(Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method
