.class Lorg/xwalk/core/XWalkActivityDelegate$3;
.super Ljava/lang/Object;
.source "XWalkActivityDelegate.java"

# interfaces
.implements Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/XWalkActivityDelegate;->onActivateFailed()V
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
    .line 143
    iput-object p1, p0, Lorg/xwalk/core/XWalkActivityDelegate$3;->this$0:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onXWalkUpdateCancelled()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate$3;->this$0:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-static {v0}, Lorg/xwalk/core/XWalkActivityDelegate;->access$000(Lorg/xwalk/core/XWalkActivityDelegate;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 147
    return-void
.end method
