.class Lde/appplant/cordova/plugin/background/BackgroundMode$2;
.super Ljava/lang/Object;
.source "BackgroundMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/appplant/cordova/plugin/background/BackgroundMode;->fireEvent(Lde/appplant/cordova/plugin/background/BackgroundMode$Event;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/appplant/cordova/plugin/background/BackgroundMode;

.field final synthetic val$js:Ljava/lang/String;


# direct methods
.method constructor <init>(Lde/appplant/cordova/plugin/background/BackgroundMode;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lde/appplant/cordova/plugin/background/BackgroundMode;

    .prologue
    .line 305
    iput-object p1, p0, Lde/appplant/cordova/plugin/background/BackgroundMode$2;->this$0:Lde/appplant/cordova/plugin/background/BackgroundMode;

    iput-object p2, p0, Lde/appplant/cordova/plugin/background/BackgroundMode$2;->val$js:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 308
    iget-object v0, p0, Lde/appplant/cordova/plugin/background/BackgroundMode$2;->this$0:Lde/appplant/cordova/plugin/background/BackgroundMode;

    iget-object v0, v0, Lde/appplant/cordova/plugin/background/BackgroundMode;->webView:Lorg/apache/cordova/CordovaWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/appplant/cordova/plugin/background/BackgroundMode$2;->val$js:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    .line 309
    return-void
.end method
