.class public Lcom/matimenich/plugins/nativeclick/NativeClick;
.super Lorg/apache/cordova/CordovaPlugin;
.source "NativeClick.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 16
    const-string v1, "click"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/matimenich/plugins/nativeclick/NativeClick;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/matimenich/plugins/nativeclick/NativeClick$1;

    invoke-direct {v2, p0, p3}, Lcom/matimenich/plugins/nativeclick/NativeClick$1;-><init>(Lcom/matimenich/plugins/nativeclick/NativeClick;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 35
    const/4 v1, 0x1

    .line 38
    :goto_1
    return v1

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1
.end method
