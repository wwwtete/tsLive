.class Lcordova/plugins/Diagnostic$1;
.super Ljava/lang/Object;
.source "Diagnostic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcordova/plugins/Diagnostic;->executeGlobalJavascript(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcordova/plugins/Diagnostic;

.field final synthetic val$jsString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcordova/plugins/Diagnostic;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcordova/plugins/Diagnostic;

    .prologue
    .line 770
    iput-object p1, p0, Lcordova/plugins/Diagnostic$1;->this$0:Lcordova/plugins/Diagnostic;

    iput-object p2, p0, Lcordova/plugins/Diagnostic$1;->val$jsString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 773
    iget-object v0, p0, Lcordova/plugins/Diagnostic$1;->this$0:Lcordova/plugins/Diagnostic;

    iget-object v0, v0, Lcordova/plugins/Diagnostic;->webView:Lorg/apache/cordova/CordovaWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:cordova.plugins.diagnostic."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcordova/plugins/Diagnostic$1;->val$jsString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    .line 774
    return-void
.end method
