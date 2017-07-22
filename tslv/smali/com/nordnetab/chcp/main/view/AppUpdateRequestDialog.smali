.class public Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;
.super Ljava/lang/Object;
.source "AppUpdateRequestDialog.java"


# instance fields
.field private final callback:Lorg/apache/cordova/CallbackContext;

.field private final context:Landroid/content/Context;

.field private final message:Ljava/lang/String;

.field private final storeURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "storeURL"    # Ljava/lang/String;
    .param p4, "callback"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;->message:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;->storeURL:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;->callback:Lorg/apache/cordova/CallbackContext;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;)Lorg/apache/cordova/CallbackContext;
    .locals 1
    .param p0, "x0"    # Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;->callback:Lorg/apache/cordova/CallbackContext;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;->storeURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public show()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 43
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 44
    iget-object v1, p0, Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 45
    iget-object v1, p0, Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;->context:Landroid/content/Context;

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog$1;

    invoke-direct {v2, p0}, Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog$1;-><init>(Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 56
    iget-object v1, p0, Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;->context:Landroid/content/Context;

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog$2;

    invoke-direct {v2, p0}, Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog$2;-><init>(Lcom/nordnetab/chcp/main/view/AppUpdateRequestDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 63
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 64
    return-void
.end method
