.class Lcom/nordnetab/chcp/main/HotCodePushPlugin$1;
.super Ljava/lang/Object;
.source "HotCodePushPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nordnetab/chcp/main/HotCodePushPlugin;->jsInit(Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nordnetab/chcp/main/HotCodePushPlugin;


# direct methods
.method constructor <init>(Lcom/nordnetab/chcp/main/HotCodePushPlugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nordnetab/chcp/main/HotCodePushPlugin;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin$1;->this$0:Lcom/nordnetab/chcp/main/HotCodePushPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin$1;->this$0:Lcom/nordnetab/chcp/main/HotCodePushPlugin;

    iget-object v0, v0, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebView;->clearHistory()V

    .line 319
    return-void
.end method
