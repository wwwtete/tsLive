.class Lorg/chromium/content/app/ChildProcessService$1;
.super Lorg/chromium/content/common/IChildProcessService$Stub;
.source "ChildProcessService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/app/ChildProcessService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/app/ChildProcessService;


# direct methods
.method constructor <init>(Lorg/chromium/content/app/ChildProcessService;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lorg/chromium/content/app/ChildProcessService$1;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-direct {p0}, Lorg/chromium/content/common/IChildProcessService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public crashIntentionallyForTesting()V
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 104
    return-void
.end method

.method public setupConnection(Landroid/os/Bundle;Lorg/chromium/content/common/IChildProcessCallback;)I
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "callback"    # Lorg/chromium/content/common/IChildProcessCallback;

    .prologue
    .line 96
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$1;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0, p2}, Lorg/chromium/content/app/ChildProcessService;->access$002(Lorg/chromium/content/app/ChildProcessService;Lorg/chromium/content/common/IChildProcessCallback;)Lorg/chromium/content/common/IChildProcessCallback;

    .line 97
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$1;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-virtual {v0, p1}, Lorg/chromium/content/app/ChildProcessService;->getServiceInfo(Landroid/os/Bundle;)V

    .line 98
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    return v0
.end method
