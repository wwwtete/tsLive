.class final Lcom/nordnetab/chcp/main/updater/UpdatesLoader$1;
.super Ljava/lang/Object;
.source "UpdatesLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nordnetab/chcp/main/updater/UpdatesLoader;->executeTask(Lcom/nordnetab/chcp/main/updater/WorkerTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$task:Lcom/nordnetab/chcp/main/updater/WorkerTask;


# direct methods
.method constructor <init>(Lcom/nordnetab/chcp/main/updater/WorkerTask;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/nordnetab/chcp/main/updater/UpdatesLoader$1;->val$task:Lcom/nordnetab/chcp/main/updater/WorkerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nordnetab/chcp/main/updater/UpdatesLoader$1;->val$task:Lcom/nordnetab/chcp/main/updater/WorkerTask;

    invoke-interface {v0}, Lcom/nordnetab/chcp/main/updater/WorkerTask;->run()V

    .line 59
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nordnetab/chcp/main/updater/UpdatesLoader;->access$002(Z)Z

    .line 61
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/nordnetab/chcp/main/updater/UpdatesLoader$1;->val$task:Lcom/nordnetab/chcp/main/updater/WorkerTask;

    invoke-interface {v1}, Lcom/nordnetab/chcp/main/updater/WorkerTask;->result()Lcom/nordnetab/chcp/main/events/WorkerEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 62
    return-void
.end method
