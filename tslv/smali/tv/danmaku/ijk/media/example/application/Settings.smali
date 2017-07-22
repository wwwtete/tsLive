.class public Ltv/danmaku/ijk/media/example/application/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field public static final PV_PLAYER__AndroidMediaPlayer:I = 0x1

.field public static final PV_PLAYER__Auto:I = 0x0

.field public static final PV_PLAYER__IjkExoMediaPlayer:I = 0x3

.field public static final PV_PLAYER__IjkMediaPlayer:I = 0x2


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/application/Settings;->mAppContext:Landroid/content/Context;

    .line 36
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/application/Settings;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/application/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 37
    return-void
.end method


# virtual methods
.method public getEnableBackgroundPlay()Z
    .locals 3

    .prologue
    .line 40
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/application/Settings;->mAppContext:Landroid/content/Context;

    const v2, 0x7f08009e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/application/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getEnableDetachedSurfaceTextureView()Z
    .locals 3

    .prologue
    .line 95
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/application/Settings;->mAppContext:Landroid/content/Context;

    const v2, 0x7f08009f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/application/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getEnableNoView()Z
    .locals 3

    .prologue
    .line 80
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/application/Settings;->mAppContext:Landroid/content/Context;

    const v2, 0x7f0800a0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/application/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getEnableSurfaceView()Z
    .locals 3

    .prologue
    .line 85
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/application/Settings;->mAppContext:Landroid/content/Context;

    const v2, 0x7f0800a1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/application/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getEnableTextureView()Z
    .locals 3

    .prologue
    .line 90
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/application/Settings;->mAppContext:Landroid/content/Context;

    const v2, 0x7f0800a2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/application/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getLastDirectory()Ljava/lang/String;
    .locals 3

    .prologue
    .line 105
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/application/Settings;->mAppContext:Landroid/content/Context;

    const v2, 0x7f0800a3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/application/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "/"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMediaCodecHandleResolutionChange()Z
    .locals 3

    .prologue
    .line 65
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/application/Settings;->mAppContext:Landroid/content/Context;

    const v2, 0x7f0800a4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/application/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getPixelFormat()Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/application/Settings;->mAppContext:Landroid/content/Context;

    const v2, 0x7f0800a5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/application/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPlayer()I
    .locals 5

    .prologue
    .line 45
    iget-object v3, p0, Ltv/danmaku/ijk/media/example/application/Settings;->mAppContext:Landroid/content/Context;

    const v4, 0x7f0800a6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Ltv/danmaku/ijk/media/example/application/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, ""

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 50
    :goto_0
    return v3

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getUsingMediaCodec()Z
    .locals 3

    .prologue
    .line 55
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/application/Settings;->mAppContext:Landroid/content/Context;

    const v2, 0x7f0800a8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/application/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getUsingMediaCodecAutoRotate()Z
    .locals 3

    .prologue
    .line 60
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/application/Settings;->mAppContext:Landroid/content/Context;

    const v2, 0x7f0800a9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/application/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getUsingMediaDataSource()Z
    .locals 3

    .prologue
    .line 100
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/application/Settings;->mAppContext:Landroid/content/Context;

    const v2, 0x7f0800aa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/application/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getUsingOpenSLES()Z
    .locals 3

    .prologue
    .line 70
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/application/Settings;->mAppContext:Landroid/content/Context;

    const v2, 0x7f0800ab

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/application/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public setLastDirectory(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/application/Settings;->mAppContext:Landroid/content/Context;

    const v2, 0x7f0800a3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/application/Settings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 112
    return-void
.end method
