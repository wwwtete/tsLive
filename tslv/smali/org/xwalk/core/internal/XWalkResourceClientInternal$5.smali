.class Lorg/xwalk/core/internal/XWalkResourceClientInternal$5;
.super Ljava/lang/Object;
.source "XWalkResourceClientInternal.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$passwordEditText:Landroid/widget/EditText;

.field final synthetic val$userNameEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/XWalkResourceClientInternal;Landroid/widget/EditText;Landroid/widget/EditText;Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkResourceClientInternal$5;->this$0:Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    iput-object p2, p0, Lorg/xwalk/core/internal/XWalkResourceClientInternal$5;->val$userNameEditText:Landroid/widget/EditText;

    iput-object p3, p0, Lorg/xwalk/core/internal/XWalkResourceClientInternal$5;->val$passwordEditText:Landroid/widget/EditText;

    iput-object p4, p0, Lorg/xwalk/core/internal/XWalkResourceClientInternal$5;->val$haHandler:Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 398
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkResourceClientInternal$5;->val$userNameEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, "userName":Ljava/lang/String;
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkResourceClientInternal$5;->val$passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "password":Ljava/lang/String;
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkResourceClientInternal$5;->val$haHandler:Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;

    invoke-virtual {v2, v1, v0}, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 402
    return-void
.end method
