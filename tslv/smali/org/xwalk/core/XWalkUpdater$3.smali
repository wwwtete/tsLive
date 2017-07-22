.class Lorg/xwalk/core/XWalkUpdater$3;
.super Ljava/lang/Object;
.source "XWalkUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/XWalkUpdater;->downloadXWalkApk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xwalk/core/XWalkUpdater;

.field final synthetic val$storeIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lorg/xwalk/core/XWalkUpdater;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lorg/xwalk/core/XWalkUpdater$3;->this$0:Lorg/xwalk/core/XWalkUpdater;

    iput-object p2, p0, Lorg/xwalk/core/XWalkUpdater$3;->val$storeIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lorg/xwalk/core/XWalkUpdater$3;->this$0:Lorg/xwalk/core/XWalkUpdater;

    invoke-static {v0}, Lorg/xwalk/core/XWalkUpdater;->access$400(Lorg/xwalk/core/XWalkUpdater;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/xwalk/core/XWalkUpdater$3;->val$storeIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 462
    return-void
.end method
