.class Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog$2;
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
    .line 56
    iput-object p1, p0, Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog$2;->this$0:Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog$2;->this$0:Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;

    invoke-static {v0}, Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;->access$000(Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;)Lorg/apache/cordova/CallbackContext;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 60
    return-void
.end method
