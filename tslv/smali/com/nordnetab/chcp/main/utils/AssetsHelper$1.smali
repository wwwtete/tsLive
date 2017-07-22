.class final Lcom/nordnetab/chcp/main/utils/AssetsHelper$1;
.super Ljava/lang/Object;
.source "AssetsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nordnetab/chcp/main/utils/AssetsHelper;->copyAssetDirectoryToAppDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$applicationContext:Landroid/content/Context;

.field final synthetic val$fromDirectory:Ljava/lang/String;

.field final synthetic val$toDirectory:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/nordnetab/chcp/main/utils/AssetsHelper$1;->val$applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/nordnetab/chcp/main/utils/AssetsHelper$1;->val$fromDirectory:Ljava/lang/String;

    iput-object p3, p0, Lcom/nordnetab/chcp/main/utils/AssetsHelper$1;->val$toDirectory:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/nordnetab/chcp/main/utils/AssetsHelper$1;->val$applicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/nordnetab/chcp/main/utils/AssetsHelper$1;->val$fromDirectory:Ljava/lang/String;

    iget-object v3, p0, Lcom/nordnetab/chcp/main/utils/AssetsHelper$1;->val$toDirectory:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/nordnetab/chcp/main/utils/AssetsHelper;->access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/nordnetab/chcp/main/events/AssetsInstalledEvent;

    invoke-direct {v2}, Lcom/nordnetab/chcp/main/events/AssetsInstalledEvent;-><init>()V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-static {v4}, Lcom/nordnetab/chcp/main/utils/AssetsHelper;->access$102(Z)Z

    .line 64
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 60
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/nordnetab/chcp/main/events/AssetsInstallationErrorEvent;

    invoke-direct {v2}, Lcom/nordnetab/chcp/main/events/AssetsInstallationErrorEvent;-><init>()V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    invoke-static {v4}, Lcom/nordnetab/chcp/main/utils/AssetsHelper;->access$102(Z)Z

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-static {v4}, Lcom/nordnetab/chcp/main/utils/AssetsHelper;->access$102(Z)Z

    throw v1
.end method
