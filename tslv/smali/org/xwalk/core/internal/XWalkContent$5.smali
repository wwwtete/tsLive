.class Lorg/xwalk/core/internal/XWalkContent$5;
.super Ljava/lang/Object;
.source "XWalkContent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/internal/XWalkContent;->clearCacheForSingleFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xwalk/core/internal/XWalkContent;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/XWalkContent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContent$5;->this$0:Lorg/xwalk/core/internal/XWalkContent;

    iput-object p2, p0, Lorg/xwalk/core/internal/XWalkContent$5;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent$5;->this$0:Lorg/xwalk/core/internal/XWalkContent;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent$5;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkContent;->clearCacheForSingleFile(Ljava/lang/String;)V

    .line 455
    return-void
.end method
