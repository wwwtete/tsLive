.class Lorg/xwalk/core/internal/XWalkContent$7;
.super Ljava/lang/Object;
.source "XWalkContent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/internal/XWalkContent;->hideAutofillPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xwalk/core/internal/XWalkContent;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/XWalkContent;)V
    .locals 0

    .prologue
    .line 1015
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContent$7;->this$0:Lorg/xwalk/core/internal/XWalkContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1018
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent$7;->this$0:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->hideAutofillPopup()V

    .line 1019
    return-void
.end method
