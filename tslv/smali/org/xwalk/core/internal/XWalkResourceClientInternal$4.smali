.class Lorg/xwalk/core/internal/XWalkResourceClientInternal$4;
.super Ljava/lang/Object;
.source "XWalkResourceClientInternal.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onReceivedHttpAuthRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

.field final synthetic val$haHandler:Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/XWalkResourceClientInternal;Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkResourceClientInternal$4;->this$0:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    iput-object p2, p0, Lorg/xwalk/core/internal/XWalkResourceClientInternal$4;->val$haHandler:Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 407
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientInternal$4;->val$haHandler:Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;->cancel()V

    .line 408
    return-void
.end method
