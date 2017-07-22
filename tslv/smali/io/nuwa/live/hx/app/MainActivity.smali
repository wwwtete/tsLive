.class public Lio/nuwa/live/hx/app/MainActivity;
.super Lorg/apache/cordova/CordovaActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/apache/cordova/CordovaActivity;-><init>()V

    return-void
.end method

.method private initUmengSDK()V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->setScenarioType(Landroid/content/Context;Lcom/umeng/analytics/MobclickAgent$EScenarioType;)V

    .line 49
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->setDebugMode(Z)V

    .line 50
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->openActivityDurationTrack(Z)V

    .line 52
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lio/nuwa/live/hx/app/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 36
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "cdvStartInBackground"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lio/nuwa/live/hx/app/MainActivity;->moveTaskToBack(Z)Z

    .line 41
    :cond_0
    iget-object v1, p0, Lio/nuwa/live/hx/app/MainActivity;->launchUrl:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lio/nuwa/live/hx/app/MainActivity;->loadUrl(Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Lio/nuwa/live/hx/app/MainActivity;->initUmengSDK()V

    .line 43
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Lorg/apache/cordova/CordovaActivity;->onPause()V

    .line 63
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Lorg/apache/cordova/CordovaActivity;->onResume()V

    .line 57
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 58
    return-void
.end method
