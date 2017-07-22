.class Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog$1;
.super Ljava/lang/Object;
.source "AppUpdateRequestDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;


# direct methods
.method constructor <init>(Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog$1;->this$0:Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 48
    iget-object v1, p0, Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog$1;->this$0:Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;

    invoke-static {v1}, Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;->access$000(Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;)Lorg/apache/cordova/CallbackContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 49
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog$1;->this$0:Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;

    invoke-static {v1}, Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;->access$100(Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 53
    iget-object v1, p0, Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog$1;->this$0:Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;

    invoke-static {v1}, Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;->access$200(Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void
.end method
