.class Lorg/xwalk/core/XWalkUpdater$ForegroundListener$1;
.super Ljava/lang/Object;
.source "XWalkUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/XWalkUpdater$ForegroundListener;->onDownloadStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/xwalk/core/XWalkUpdater$ForegroundListener;


# direct methods
.method constructor <init>(Lorg/xwalk/core/XWalkUpdater$ForegroundListener;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lorg/xwalk/core/XWalkUpdater$ForegroundListener$1;->this$1:Lorg/xwalk/core/XWalkUpdater$ForegroundListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 472
    invoke-static {}, Lorg/xwalk/core/XWalkLibraryLoader;->cancelDownloadManager()Z

    .line 473
    return-void
.end method
