.class Lde/appplant/cordova/plugin/background/ForegroundService$1;
.super Ljava/util/TimerTask;
.source "ForegroundService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/appplant/cordova/plugin/background/ForegroundService;->keepAwake()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/appplant/cordova/plugin/background/ForegroundService;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lde/appplant/cordova/plugin/background/ForegroundService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lde/appplant/cordova/plugin/background/ForegroundService;

    .prologue
    .line 96
    iput-object p1, p0, Lde/appplant/cordova/plugin/background/ForegroundService$1;->this$0:Lde/appplant/cordova/plugin/background/ForegroundService;

    iput-object p2, p0, Lde/appplant/cordova/plugin/background/ForegroundService$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lde/appplant/cordova/plugin/background/ForegroundService$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lde/appplant/cordova/plugin/background/ForegroundService$1$1;

    invoke-direct {v1, p0}, Lde/appplant/cordova/plugin/background/ForegroundService$1$1;-><init>(Lde/appplant/cordova/plugin/background/ForegroundService$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    return-void
.end method
