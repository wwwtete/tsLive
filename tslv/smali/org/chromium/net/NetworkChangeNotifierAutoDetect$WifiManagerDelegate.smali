.class Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;
.super Ljava/lang/Object;
.source "NetworkChangeNotifierAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/NetworkChangeNotifierAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WifiManagerDelegate"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHasWifiPermission:Z

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->mContext:Landroid/content/Context;

    .line 239
    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->mHasWifiPermission:Z

    .line 241
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->mContext:Landroid/content/Context;

    .line 228
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    iget-object v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->mHasWifiPermission:Z

    .line 231
    iget-boolean v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->mHasWifiPermission:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    :goto_1
    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 233
    return-void

    .line 228
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 231
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method getHasWifiPermission()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->mHasWifiPermission:Z

    return v0
.end method

.method getLinkSpeedInMbps()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 263
    iget-boolean v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->mHasWifiPermission:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_1

    .line 269
    :cond_0
    :goto_0
    return v1

    .line 264
    :cond_1
    iget-object v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 265
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v1

    goto :goto_0
.end method

.method getWifiSSID()Ljava/lang/String;
    .locals 7

    .prologue
    .line 244
    iget-object v3, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 246
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 247
    const-string v3, "wifiInfo"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiInfo;

    .line 248
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_0

    .line 249
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "ssid":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 255
    .end local v1    # "ssid":Ljava/lang/String;
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method
