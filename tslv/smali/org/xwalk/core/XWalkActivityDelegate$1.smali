.class Lorg/xwalk/core/XWalkActivityDelegate$1;
.super Ljava/lang/Object;
.source "XWalkActivityDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/XWalkActivityDelegate;->onDecompressStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xwalk/core/XWalkActivityDelegate;


# direct methods
.method constructor <init>(Lorg/xwalk/core/XWalkActivityDelegate;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lorg/xwalk/core/XWalkActivityDelegate$1;->this$0:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 81
    const-string v0, "XWalkActivity"

    const-string v1, "Cancel by XWalkActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {}, Lorg/xwalk/core/XWalkLibraryLoader;->cancelDecompress()Z

    .line 83
    return-void
.end method
