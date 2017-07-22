.class final Lorg/xwalk/core/XWalkCoreWrapper$1;
.super Ljava/lang/Object;
.source "XWalkCoreWrapper.java"

# interfaces
.implements Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lorg/xwalk/core/XWalkCoreWrapper$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onXWalkUpdateCancelled()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/xwalk/core/XWalkCoreWrapper$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 127
    return-void
.end method
