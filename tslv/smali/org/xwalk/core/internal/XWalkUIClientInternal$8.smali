.class Lorg/xwalk/core/internal/XWalkUIClientInternal$8;
.super Ljava/lang/Object;
.source "XWalkUIClientInternal.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/internal/XWalkUIClientInternal;->onJsPrompt(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xwalk/core/internal/XWalkUIClientInternal;

.field final synthetic val$fResult:Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/XWalkUIClientInternal;Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;)V
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal$8;->this$0:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iput-object p2, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal$8;->val$fResult:Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 495
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal$8;->val$fResult:Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkUIClientInternal$8;->this$0:Lorg/xwalk/core/internal/XWalkUIClientInternal;

    invoke-static {v1}, Lorg/xwalk/core/internal/XWalkUIClientInternal;->access$000(Lorg/xwalk/core/internal/XWalkUIClientInternal;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xwalk/core/internal/XWalkJavascriptResultInternal;->confirmWithResult(Ljava/lang/String;)V

    .line 496
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 497
    return-void
.end method
