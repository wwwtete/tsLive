.class Lorg/xwalk/core/internal/XWalkSettingsInternal$4;
.super Ljava/lang/Object;
.source "XWalkSettingsInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/internal/XWalkSettingsInternal;->setInitialPageScale(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xwalk/core/internal/XWalkSettingsInternal;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/XWalkSettingsInternal;)V
    .locals 0

    .prologue
    .line 1062
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal$4;->this$0:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1065
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal$4;->this$0:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->access$400(Lorg/xwalk/core/internal/XWalkSettingsInternal;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal$4;->this$0:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal$4;->this$0:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-static {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->access$400(Lorg/xwalk/core/internal/XWalkSettingsInternal;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->access$1000(Lorg/xwalk/core/internal/XWalkSettingsInternal;J)V

    .line 1068
    :cond_0
    return-void
.end method
