.class public Lde/appplant/cordova/plugin/background/BackgroundMode;
.super Lorg/apache/cordova/CordovaPlugin;
.source "BackgroundMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/appplant/cordova/plugin/background/BackgroundMode$Event;
    }
.end annotation


# static fields
.field private static final JS_NAMESPACE:Ljava/lang/String; = "cordova.plugins.backgroundMode"

.field private static defaultSettings:Lorg/json/JSONObject;

.field private static updateSettings:Lorg/json/JSONObject;


# instance fields
.field private final connection:Landroid/content/ServiceConnection;

.field private inBackground:Z

.field private isBind:Z

.field private isDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lde/appplant/cordova/plugin/background/BackgroundMode;->defaultSettings:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 48
    iput-boolean v1, p0, Lde/appplant/cordova/plugin/background/BackgroundMode;->inBackground:Z

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/appplant/cordova/plugin/background/BackgroundMode;->isDisabled:Z

    .line 54
    iput-boolean v1, p0, Lde/appplant/cordova/plugin/background/BackgroundMode;->isBind:Z

    .line 63
    new-instance v0, Lde/appplant/cordova/plugin/background/BackgroundMode$1;

    invoke-direct {v0, p0}, Lde/appplant/cordova/plugin/background/BackgroundMode$1;-><init>(Lde/appplant/cordova/plugin/background/BackgroundMode;)V

    iput-object v0, p0, Lde/appplant/cordova/plugin/background/BackgroundMode;->connection:Landroid/content/ServiceConnection;

    return-void
.end method

.method protected static deleteUpdateSettings()V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    sput-object v0, Lde/appplant/cordova/plugin/background/BackgroundMode;->updateSettings:Lorg/json/JSONObject;

    .line 212
    return-void
.end method

.method private disableMode()V
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0}, Lde/appplant/cordova/plugin/background/BackgroundMode;->stopService()V

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/appplant/cordova/plugin/background/BackgroundMode;->isDisabled:Z

    .line 172
    return-void
.end method

.method private enableMode()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/appplant/cordova/plugin/background/BackgroundMode;->isDisabled:Z

    .line 161
    iget-boolean v0, p0, Lde/appplant/cordova/plugin/background/BackgroundMode;->inBackground:Z

    if-eqz v0, :cond_0

    .line 162
    invoke-direct {p0}, Lde/appplant/cordova/plugin/background/BackgroundMode;->startService()V

    .line 164
    :cond_0
    return-void
.end method

.method private fireEvent(Lde/appplant/cordova/plugin/background/BackgroundMode$Event;Ljava/lang/String;)V
    .locals 11
    .param p1, "event"    # Lde/appplant/cordova/plugin/background/BackgroundMode$Event;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 283
    sget-object v5, Lde/appplant/cordova/plugin/background/BackgroundMode;->updateSettings:Lorg/json/JSONObject;

    if-eqz v5, :cond_0

    sget-object v5, Lde/appplant/cordova/plugin/background/BackgroundMode$Event;->FAILURE:Lde/appplant/cordova/plugin/background/BackgroundMode$Event;

    if-eq p1, v5, :cond_0

    .line 311
    :goto_0
    return-void

    .line 286
    :cond_0
    sget-object v5, Lde/appplant/cordova/plugin/background/BackgroundMode$3;->$SwitchMap$de$appplant$cordova$plugin$background$BackgroundMode$Event:[I

    invoke-virtual {p1}, Lde/appplant/cordova/plugin/background/BackgroundMode$Event;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 292
    const-string v1, "failure"

    .line 295
    .local v1, "eventName":Ljava/lang/String;
    :goto_1
    sget-object v5, Lde/appplant/cordova/plugin/background/BackgroundMode$Event;->ACTIVATE:Lde/appplant/cordova/plugin/background/BackgroundMode$Event;

    if-ne p1, v5, :cond_1

    const-string v0, "true"

    .line 297
    .local v0, "active":Ljava/lang/String;
    :goto_2
    const-string v5, "%s._isActive=%s;"

    new-array v6, v10, [Ljava/lang/Object;

    const-string v7, "cordova.plugins.backgroundMode"

    aput-object v7, v6, v8

    aput-object v0, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "flag":Ljava/lang/String;
    const-string v5, "setTimeout(\'%s.on%s(%s)\',0);"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "cordova.plugins.backgroundMode"

    aput-object v7, v6, v8

    aput-object v1, v6, v9

    aput-object p2, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, "fn":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 305
    .local v4, "js":Ljava/lang/String;
    iget-object v5, p0, Lde/appplant/cordova/plugin/background/BackgroundMode;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lde/appplant/cordova/plugin/background/BackgroundMode$2;

    invoke-direct {v6, p0, v4}, Lde/appplant/cordova/plugin/background/BackgroundMode$2;-><init>(Lde/appplant/cordova/plugin/background/BackgroundMode;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 288
    .end local v0    # "active":Ljava/lang/String;
    .end local v1    # "eventName":Ljava/lang/String;
    .end local v2    # "flag":Ljava/lang/String;
    .end local v3    # "fn":Ljava/lang/String;
    .end local v4    # "js":Ljava/lang/String;
    :pswitch_0
    const-string v1, "activate"

    .restart local v1    # "eventName":Ljava/lang/String;
    goto :goto_1

    .line 290
    .end local v1    # "eventName":Ljava/lang/String;
    :pswitch_1
    const-string v1, "deactivate"

    .restart local v1    # "eventName":Ljava/lang/String;
    goto :goto_1

    .line 295
    :cond_1
    const-string v0, "false"

    goto :goto_2

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static getSettings()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lde/appplant/cordova/plugin/background/BackgroundMode;->updateSettings:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 202
    sget-object v0, Lde/appplant/cordova/plugin/background/BackgroundMode;->updateSettings:Lorg/json/JSONObject;

    .line 204
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lde/appplant/cordova/plugin/background/BackgroundMode;->defaultSettings:Lorg/json/JSONObject;

    goto :goto_0
.end method

.method private setDefaultSettings(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "settings"    # Lorg/json/JSONObject;

    .prologue
    .line 181
    sput-object p1, Lde/appplant/cordova/plugin/background/BackgroundMode;->defaultSettings:Lorg/json/JSONObject;

    .line 182
    return-void
.end method

.method private setUpdateSettings(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "settings"    # Lorg/json/JSONObject;

    .prologue
    .line 191
    sput-object p1, Lde/appplant/cordova/plugin/background/BackgroundMode;->updateSettings:Lorg/json/JSONObject;

    .line 192
    return-void
.end method

.method private startService()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 229
    iget-object v3, p0, Lde/appplant/cordova/plugin/background/BackgroundMode;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 231
    .local v0, "context":Landroid/app/Activity;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lde/appplant/cordova/plugin/background/ForegroundService;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    .local v2, "intent":Landroid/content/Intent;
    iget-boolean v3, p0, Lde/appplant/cordova/plugin/background/BackgroundMode;->isDisabled:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lde/appplant/cordova/plugin/background/BackgroundMode;->isBind:Z

    if-eqz v3, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    :try_start_0
    iget-object v3, p0, Lde/appplant/cordova/plugin/background/BackgroundMode;->connection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 241
    sget-object v3, Lde/appplant/cordova/plugin/background/BackgroundMode$Event;->ACTIVATE:Lde/appplant/cordova/plugin/background/BackgroundMode$Event;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lde/appplant/cordova/plugin/background/BackgroundMode;->fireEvent(Lde/appplant/cordova/plugin/background/BackgroundMode$Event;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_1
    iput-boolean v5, p0, Lde/appplant/cordova/plugin/background/BackgroundMode;->isBind:Z

    goto :goto_0

    .line 244
    :catch_0
    move-exception v1

    .line 245
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lde/appplant/cordova/plugin/background/BackgroundMode$Event;->FAILURE:Lde/appplant/cordova/plugin/background/BackgroundMode$Event;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lde/appplant/cordova/plugin/background/BackgroundMode;->fireEvent(Lde/appplant/cordova/plugin/background/BackgroundMode$Event;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private stopService()V
    .locals 4

    .prologue
    .line 256
    iget-object v2, p0, Lde/appplant/cordova/plugin/background/BackgroundMode;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 258
    .local v0, "context":Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lde/appplant/cordova/plugin/background/ForegroundService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 261
    .local v1, "intent":Landroid/content/Intent;
    iget-boolean v2, p0, Lde/appplant/cordova/plugin/background/BackgroundMode;->isBind:Z

    if-nez v2, :cond_0

    .line 270
    :goto_0
    return-void

    .line 264
    :cond_0
    sget-object v2, Lde/appplant/cordova/plugin/background/BackgroundMode$Event;->DEACTIVATE:Lde/appplant/cordova/plugin/background/BackgroundMode$Event;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lde/appplant/cordova/plugin/background/BackgroundMode;->fireEvent(Lde/appplant/cordova/plugin/background/BackgroundMode$Event;Ljava/lang/String;)V

    .line 266
    iget-object v2, p0, Lde/appplant/cordova/plugin/background/BackgroundMode;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 267
    invoke-virtual {v0, v1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 269
    const/4 v2, 0x0

    iput-boolean v2, p0, Lde/appplant/cordova/plugin/background/BackgroundMode;->isBind:Z

    goto :goto_0
.end method

.method private updateNotifcation()V
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lde/appplant/cordova/plugin/background/BackgroundMode;->isBind:Z

    if-eqz v0, :cond_0

    .line 219
    invoke-direct {p0}, Lde/appplant/cordova/plugin/background/BackgroundMode;->stopService()V

    .line 220
    invoke-direct {p0}, Lde/appplant/cordova/plugin/background/BackgroundMode;->startService()V

    .line 222
    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callback"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 93
    const-string v4, "configure"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 94
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 95
    .local v0, "settings":Lorg/json/JSONObject;
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v1

    .line 97
    .local v1, "update":Z
    if-eqz v1, :cond_0

    .line 98
    invoke-direct {p0, v0}, Lde/appplant/cordova/plugin/background/BackgroundMode;->setUpdateSettings(Lorg/json/JSONObject;)V

    .line 99
    invoke-direct {p0}, Lde/appplant/cordova/plugin/background/BackgroundMode;->updateNotifcation()V

    .line 117
    .end local v0    # "settings":Lorg/json/JSONObject;
    .end local v1    # "update":Z
    :goto_0
    return v2

    .line 101
    .restart local v0    # "settings":Lorg/json/JSONObject;
    .restart local v1    # "update":Z
    :cond_0
    invoke-direct {p0, v0}, Lde/appplant/cordova/plugin/background/BackgroundMode;->setDefaultSettings(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 107
    .end local v0    # "settings":Lorg/json/JSONObject;
    .end local v1    # "update":Z
    :cond_1
    const-string v4, "enable"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 108
    invoke-direct {p0}, Lde/appplant/cordova/plugin/background/BackgroundMode;->enableMode()V

    goto :goto_0

    .line 112
    :cond_2
    const-string v4, "disable"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 113
    invoke-direct {p0}, Lde/appplant/cordova/plugin/background/BackgroundMode;->disableMode()V

    goto :goto_0

    :cond_3
    move v2, v3

    .line 117
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 151
    invoke-super {p0}, Lorg/apache/cordova/CordovaPlugin;->onDestroy()V

    .line 152
    invoke-direct {p0}, Lde/appplant/cordova/plugin/background/BackgroundMode;->stopService()V

    .line 153
    return-void
.end method

.method public onPause(Z)V
    .locals 1
    .param p1, "multitasking"    # Z

    .prologue
    .line 128
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaPlugin;->onPause(Z)V

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/appplant/cordova/plugin/background/BackgroundMode;->inBackground:Z

    .line 130
    invoke-direct {p0}, Lde/appplant/cordova/plugin/background/BackgroundMode;->startService()V

    .line 131
    return-void
.end method

.method public onResume(Z)V
    .locals 1
    .param p1, "multitasking"    # Z

    .prologue
    .line 141
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaPlugin;->onResume(Z)V

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/appplant/cordova/plugin/background/BackgroundMode;->inBackground:Z

    .line 143
    invoke-direct {p0}, Lde/appplant/cordova/plugin/background/BackgroundMode;->stopService()V

    .line 144
    return-void
.end method
