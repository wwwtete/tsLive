.class public Lde/appplant/cordova/plugin/background/ForegroundService;
.super Landroid/app/Service;
.source "ForegroundService.java"


# static fields
.field private static final NOTIFICATION_ID:I = -0x223ed852


# instance fields
.field keepAliveTask:Ljava/util/TimerTask;

.field final scheduler:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 52
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lde/appplant/cordova/plugin/background/ForegroundService;->scheduler:Ljava/util/Timer;

    return-void
.end method

.method private getIconResId()I
    .locals 6

    .prologue
    .line 169
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/background/ForegroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 170
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 171
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "pkgName":Ljava/lang/String;
    const-string v4, "icon"

    const-string v5, "drawable"

    invoke-virtual {v2, v4, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 176
    .local v3, "resId":I
    return v3
.end method

.method private inSilentMode()Z
    .locals 3

    .prologue
    .line 186
    invoke-static {}, Lde/appplant/cordova/plugin/background/BackgroundMode;->getSettings()Lorg/json/JSONObject;

    move-result-object v0

    .line 188
    .local v0, "settings":Lorg/json/JSONObject;
    const-string v1, "silent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private makeNotification()Landroid/app/Notification;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {}, Lde/appplant/cordova/plugin/background/BackgroundMode;->getSettings()Lorg/json/JSONObject;

    move-result-object v5

    .line 132
    .local v5, "settings":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/background/ForegroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 133
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "pkgName":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 135
    invoke-virtual {v6, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 137
    .local v2, "intent":Landroid/content/Intent;
    new-instance v6, Landroid/app/Notification$Builder;

    invoke-direct {v6, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-string v7, "title"

    const-string v8, ""

    .line 138
    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    const-string v7, "text"

    const-string v8, ""

    .line 139
    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    const-string v7, "ticker"

    const-string v8, ""

    .line 140
    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v7, 0x1

    .line 141
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 142
    invoke-direct {p0}, Lde/appplant/cordova/plugin/background/ForegroundService;->getIconResId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 144
    .local v3, "notification":Landroid/app/Notification$Builder;
    if-eqz v2, :cond_0

    const-string v6, "resume"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 146
    const v6, -0x223ed852

    const/high16 v7, 0x10000000

    invoke-static {v1, v6, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 149
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 153
    .end local v0    # "contentIntent":Landroid/app/PendingIntent;
    :cond_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-ge v6, v7, :cond_1

    .line 155
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v6

    .line 158
    :goto_0
    return-object v6

    :cond_1
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    goto :goto_0
.end method

.method private sleepWell()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/appplant/cordova/plugin/background/ForegroundService;->stopForeground(Z)V

    .line 117
    iget-object v0, p0, Lde/appplant/cordova/plugin/background/ForegroundService;->keepAliveTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 118
    return-void
.end method


# virtual methods
.method public keepAwake()V
    .locals 7

    .prologue
    .line 86
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    .line 88
    .local v6, "handler":Landroid/os/Handler;
    invoke-direct {p0}, Lde/appplant/cordova/plugin/background/ForegroundService;->inSilentMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    const v0, -0x223ed852

    invoke-direct {p0}, Lde/appplant/cordova/plugin/background/ForegroundService;->makeNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lde/appplant/cordova/plugin/background/ForegroundService;->startForeground(ILandroid/app/Notification;)V

    .line 94
    :goto_0
    invoke-static {}, Lde/appplant/cordova/plugin/background/BackgroundMode;->deleteUpdateSettings()V

    .line 96
    new-instance v0, Lde/appplant/cordova/plugin/background/ForegroundService$1;

    invoke-direct {v0, p0, v6}, Lde/appplant/cordova/plugin/background/ForegroundService$1;-><init>(Lde/appplant/cordova/plugin/background/ForegroundService;Landroid/os/Handler;)V

    iput-object v0, p0, Lde/appplant/cordova/plugin/background/ForegroundService;->keepAliveTask:Ljava/util/TimerTask;

    .line 109
    iget-object v0, p0, Lde/appplant/cordova/plugin/background/ForegroundService;->scheduler:Ljava/util/Timer;

    iget-object v1, p0, Lde/appplant/cordova/plugin/background/ForegroundService;->keepAliveTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 110
    return-void

    .line 91
    :cond_0
    const-string v0, "BackgroundMode"

    const-string v1, "In silent mode app may be paused by OS!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 72
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/background/ForegroundService;->keepAwake()V

    .line 73
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 78
    invoke-direct {p0}, Lde/appplant/cordova/plugin/background/ForegroundService;->sleepWell()V

    .line 79
    return-void
.end method
