.class public Lorg/chromium/net/NetworkChangeNotifierAutoDetect;
.super Landroid/content/BroadcastReceiver;
.source "NetworkChangeNotifierAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/NetworkChangeNotifierAutoDetect$1;,
        Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;,
        Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;,
        Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;,
        Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;,
        Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;,
        Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;,
        Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkChangeNotifierAutoDetect"

.field private static final UNKNOWN_LINK_SPEED:I = -0x1


# instance fields
.field private mConnectionType:I

.field private mConnectivityManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;

.field private mMaxBandwidthConnectionType:I

.field private mMaxBandwidthMbps:D

.field private final mNetworkCallback:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;

.field private final mNetworkRequest:Landroid/net/NetworkRequest;

.field private final mObserver:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

.field private mRegistered:Z

.field private final mRegistrationPolicy:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;

.field private mWifiManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;

.field private mWifiSSID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;Landroid/content/Context;Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;)V
    .locals 4
    .param p1, "observer"    # Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "policy"    # Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 540
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 543
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 544
    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mObserver:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    .line 545
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mContext:Landroid/content/Context;

    .line 546
    new-instance v1, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    invoke-direct {v1, p2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    .line 547
    new-instance v1, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;

    invoke-direct {v1, p2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mWifiManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;

    .line 548
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 549
    new-instance v1, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;

    invoke-direct {v1, p0, v3}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;-><init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;Lorg/chromium/net/NetworkChangeNotifierAutoDetect$1;)V

    iput-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mNetworkCallback:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;

    .line 550
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 559
    :goto_0
    iget-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getNetworkState()Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    move-result-object v0

    .line 560
    .local v0, "networkState":Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;
    invoke-virtual {p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentConnectionType(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)I

    move-result v1

    iput v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectionType:I

    .line 561
    invoke-direct {p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentWifiSSID(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mWifiSSID:Ljava/lang/String;

    .line 562
    invoke-virtual {p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentMaxBandwidthInMbps(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mMaxBandwidthMbps:D

    .line 563
    iget v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectionType:I

    iput v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mMaxBandwidthConnectionType:I

    .line 564
    new-instance v1, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;

    iget-object v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mWifiManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;

    invoke-virtual {v2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->getHasWifiPermission()Z

    move-result v2

    invoke-direct {v1, v2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;-><init>(Z)V

    iput-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mIntentFilter:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;

    .line 566
    iput-object p3, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mRegistrationPolicy:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;

    .line 567
    iget-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mRegistrationPolicy:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;

    invoke-virtual {v1, p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;->init(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)V

    .line 568
    return-void

    .line 556
    .end local v0    # "networkState":Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;
    :cond_0
    iput-object v3, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mNetworkCallback:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;

    .line 557
    iput-object v3, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mNetworkRequest:Landroid/net/NetworkRequest;

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;Landroid/net/Network;)[Landroid/net/Network;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;
    .param p1, "x1"    # Landroid/net/Network;

    .prologue
    .line 42
    invoke-static {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getAllNetworksFiltered(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;Landroid/net/Network;)[Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mObserver:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    return-object v0
.end method

.method private connectionTypeChanged(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)V
    .locals 5
    .param p1, "networkState"    # Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    .prologue
    .line 857
    invoke-virtual {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentConnectionType(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)I

    move-result v0

    .line 858
    .local v0, "newConnectionType":I
    invoke-direct {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentWifiSSID(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)Ljava/lang/String;

    move-result-object v1

    .line 859
    .local v1, "newWifiSSID":Ljava/lang/String;
    iget v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectionType:I

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mWifiSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 865
    :goto_0
    return-void

    .line 861
    :cond_0
    iput v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectionType:I

    .line 862
    iput-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mWifiSSID:Ljava/lang/String;

    .line 863
    const-string v2, "NetworkChangeNotifierAutoDetect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network connectivity changed, type is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectionType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mObserver:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    invoke-interface {v2, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;->onConnectionTypeChanged(I)V

    goto :goto_0
.end method

.method private static getAllNetworksFiltered(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;Landroid/net/Network;)[Landroid/net/Network;
    .locals 10
    .param p0, "connectivityManagerDelegate"    # Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;
    .param p1, "ignoreNetwork"    # Landroid/net/Network;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 656
    invoke-virtual {p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getAllNetworksUnfiltered()[Landroid/net/Network;

    move-result-object v7

    .line 658
    .local v7, "networks":[Landroid/net/Network;
    const/4 v2, 0x0

    .line 659
    .local v2, "filteredIndex":I
    move-object v0, v7

    .local v0, "arr$":[Landroid/net/Network;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v3, v2

    .end local v2    # "filteredIndex":I
    .local v3, "filteredIndex":I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v6, v0, v4

    .line 660
    .local v6, "network":Landroid/net/Network;
    invoke-virtual {v6, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v2, v3

    .line 659
    .end local v3    # "filteredIndex":I
    .restart local v2    # "filteredIndex":I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2    # "filteredIndex":I
    .restart local v3    # "filteredIndex":I
    goto :goto_0

    .line 663
    :cond_0
    invoke-virtual {p0, v6}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 665
    .local v1, "capabilities":Landroid/net/NetworkCapabilities;
    if-eqz v1, :cond_4

    const/16 v8, 0xc

    invoke-virtual {v1, v8}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v8

    if-nez v8, :cond_1

    move v2, v3

    .line 666
    .end local v3    # "filteredIndex":I
    .restart local v2    # "filteredIndex":I
    goto :goto_1

    .line 668
    .end local v2    # "filteredIndex":I
    .restart local v3    # "filteredIndex":I
    :cond_1
    const/4 v8, 0x4

    invoke-virtual {v1, v8}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 670
    invoke-virtual {p0, v6}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->vpnAccessible(Landroid/net/Network;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 672
    const/4 v8, 0x1

    new-array v8, v8, [Landroid/net/Network;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    .line 680
    .end local v1    # "capabilities":Landroid/net/NetworkCapabilities;
    .end local v6    # "network":Landroid/net/Network;
    :goto_2
    return-object v8

    .line 678
    .restart local v1    # "capabilities":Landroid/net/NetworkCapabilities;
    .restart local v6    # "network":Landroid/net/Network;
    :cond_2
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "filteredIndex":I
    .restart local v2    # "filteredIndex":I
    aput-object v6, v7, v3

    goto :goto_1

    .line 680
    .end local v1    # "capabilities":Landroid/net/NetworkCapabilities;
    .end local v2    # "filteredIndex":I
    .end local v6    # "network":Landroid/net/Network;
    .restart local v3    # "filteredIndex":I
    :cond_3
    invoke-static {v7, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/net/Network;

    goto :goto_2

    .restart local v1    # "capabilities":Landroid/net/NetworkCapabilities;
    .restart local v6    # "network":Landroid/net/Network;
    :cond_4
    move v2, v3

    .end local v3    # "filteredIndex":I
    .restart local v2    # "filteredIndex":I
    goto :goto_1
.end method

.method private getCurrentWifiSSID(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)Ljava/lang/String;
    .locals 2
    .param p1, "networkState"    # Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    .prologue
    .line 840
    invoke-virtual {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentConnectionType(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, ""

    .line 841
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mWifiManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;

    invoke-virtual {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->getWifiSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private maxBandwidthChanged(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)V
    .locals 4
    .param p1, "networkState"    # Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    .prologue
    .line 868
    invoke-virtual {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentMaxBandwidthInMbps(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)D

    move-result-wide v0

    .line 869
    .local v0, "newMaxBandwidthMbps":D
    iget-wide v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mMaxBandwidthMbps:D

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    iget v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectionType:I

    iget v3, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mMaxBandwidthConnectionType:I

    if-ne v2, v3, :cond_0

    .line 876
    :goto_0
    return-void

    .line 873
    :cond_0
    iput-wide v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mMaxBandwidthMbps:D

    .line 874
    iget v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectionType:I

    iput v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mMaxBandwidthConnectionType:I

    .line 875
    iget-object v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mObserver:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    invoke-interface {v2, v0, v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;->onMaxBandwidthChanged(D)V

    goto :goto_0
.end method

.method static networkToNetId(Landroid/net/Network;)I
    .locals 1
    .param p0, "network"    # Landroid/net/Network;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 894
    invoke-virtual {p0}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mRegistrationPolicy:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;

    invoke-virtual {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;->destroy()V

    .line 599
    invoke-virtual {p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->unregister()V

    .line 600
    return-void
.end method

.method public getCurrentConnectionSubtype(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)I
    .locals 2
    .param p1, "networkState"    # Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    .prologue
    const/4 v0, 0x0

    .line 770
    invoke-virtual {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 771
    const/4 v0, 0x1

    .line 817
    :goto_0
    :pswitch_0
    return v0

    .line 774
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getNetworkType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 782
    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getNetworkSubType()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 784
    :pswitch_3
    const/4 v0, 0x7

    goto :goto_0

    .line 786
    :pswitch_4
    const/16 v0, 0x8

    goto :goto_0

    .line 788
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 790
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 792
    :pswitch_7
    const/4 v0, 0x4

    goto :goto_0

    .line 794
    :pswitch_8
    const/16 v0, 0x9

    goto :goto_0

    .line 796
    :pswitch_9
    const/16 v0, 0xa

    goto :goto_0

    .line 798
    :pswitch_a
    const/16 v0, 0xb

    goto :goto_0

    .line 800
    :pswitch_b
    const/16 v0, 0xe

    goto :goto_0

    .line 802
    :pswitch_c
    const/16 v0, 0xf

    goto :goto_0

    .line 804
    :pswitch_d
    const/16 v0, 0xc

    goto :goto_0

    .line 806
    :pswitch_e
    const/16 v0, 0xd

    goto :goto_0

    .line 808
    :pswitch_f
    const/16 v0, 0x10

    goto :goto_0

    .line 810
    :pswitch_10
    const/16 v0, 0x11

    goto :goto_0

    .line 812
    :pswitch_11
    const/16 v0, 0x12

    goto :goto_0

    .line 774
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 782
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_5
        :pswitch_9
        :pswitch_a
        :pswitch_6
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_7
        :pswitch_e
        :pswitch_11
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public getCurrentConnectionType(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)I
    .locals 3
    .param p1, "networkState"    # Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    .prologue
    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 724
    invoke-virtual {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 725
    const/4 v0, 0x6

    .line 762
    :goto_0
    :pswitch_0
    return v0

    .line 728
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getNetworkType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_1
    move v0, v1

    .line 762
    goto :goto_0

    .line 730
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 732
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 736
    :pswitch_4
    const/4 v0, 0x7

    goto :goto_0

    .line 739
    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getNetworkSubType()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    move v0, v1

    .line 759
    goto :goto_0

    .line 745
    :pswitch_6
    const/4 v0, 0x3

    goto :goto_0

    .line 755
    :pswitch_7
    const/4 v0, 0x4

    goto :goto_0

    .line 728
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 739
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public getCurrentMaxBandwidthInMbps(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)D
    .locals 4
    .param p1, "networkState"    # Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    .prologue
    .line 828
    invoke-virtual {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentConnectionType(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 829
    iget-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mWifiManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;

    invoke-virtual {v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->getLinkSpeedInMbps()I

    move-result v0

    .line 830
    .local v0, "link_speed":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 831
    int-to-double v2, v0

    .line 835
    .end local v0    # "link_speed":I
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentConnectionSubtype(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)I

    move-result v1

    invoke-static {v1}, Lorg/chromium/net/NetworkChangeNotifier;->getMaxBandwidthForConnectionSubtype(I)D

    move-result-wide v2

    goto :goto_0
.end method

.method public getCurrentNetworkState()Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getNetworkState()Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultNetId()I
    .locals 2

    .prologue
    .line 714
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 715
    const/4 v0, -0x1

    .line 717
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getDefaultNetId()I

    move-result v0

    goto :goto_0
.end method

.method public getNetworksAndTypes()[I
    .locals 10

    .prologue
    .line 693
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-ge v8, v9, :cond_1

    .line 694
    const/4 v8, 0x0

    new-array v7, v8, [I

    .line 704
    :cond_0
    return-object v7

    .line 696
    :cond_1
    iget-object v8, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getAllNetworksFiltered(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;Landroid/net/Network;)[Landroid/net/Network;

    move-result-object v6

    .line 697
    .local v6, "networks":[Landroid/net/Network;
    array-length v8, v6

    mul-int/lit8 v8, v8, 0x2

    new-array v7, v8, [I

    .line 698
    .local v7, "networksAndTypes":[I
    const/4 v2, 0x0

    .line 699
    .local v2, "index":I
    move-object v0, v6

    .local v0, "arr$":[Landroid/net/Network;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    move v3, v2

    .end local v2    # "index":I
    .local v3, "index":I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 700
    .local v5, "network":Landroid/net/Network;
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    invoke-static {v5}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->networkToNetId(Landroid/net/Network;)I

    move-result v8

    aput v8, v7, v3

    .line 701
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    iget-object v8, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v8, v5}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getNetworkState(Landroid/net/Network;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentConnectionType(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)I

    move-result v8

    aput v8, v7, v2

    .line 699
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method getRegistrationPolicy()Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 586
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mRegistrationPolicy:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;

    return-object v0
.end method

.method isReceiverRegisteredForTesting()Z
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 594
    iget-boolean v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mRegistered:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 847
    invoke-virtual {p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentNetworkState()Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    move-result-object v0

    .line 848
    .local v0, "networkState":Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 849
    invoke-direct {p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->connectionTypeChanged(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)V

    .line 850
    invoke-direct {p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->maxBandwidthChanged(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)V

    .line 854
    :cond_0
    :goto_0
    return-void

    .line 851
    :cond_1
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 852
    invoke-direct {p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->maxBandwidthChanged(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)V

    goto :goto_0
.end method

.method public register()V
    .locals 7

    .prologue
    .line 606
    iget-boolean v4, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mRegistered:Z

    if-eqz v4, :cond_1

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentNetworkState()Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    move-result-object v2

    .line 609
    .local v2, "networkState":Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;
    invoke-direct {p0, v2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->connectionTypeChanged(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)V

    .line 610
    invoke-direct {p0, v2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->maxBandwidthChanged(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)V

    .line 611
    iget-object v4, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mIntentFilter:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;

    invoke-virtual {v4, p0, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 612
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mRegistered:Z

    .line 614
    iget-object v4, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mNetworkCallback:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;

    if-eqz v4, :cond_0

    .line 615
    iget-object v4, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mNetworkCallback:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;

    invoke-virtual {v4}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->initializeVpnInPlace()V

    .line 616
    iget-object v4, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    iget-object v5, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v6, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mNetworkCallback:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;

    invoke-virtual {v4, v5, v6}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 622
    iget-object v4, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getAllNetworksFiltered(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;Landroid/net/Network;)[Landroid/net/Network;

    move-result-object v3

    .line 624
    .local v3, "networks":[Landroid/net/Network;
    array-length v4, v3

    new-array v1, v4, [I

    .line 625
    .local v1, "netIds":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 626
    aget-object v4, v3, v0

    invoke-static {v4}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->networkToNetId(Landroid/net/Network;)I

    move-result v4

    aput v4, v1, v0

    .line 625
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 628
    :cond_2
    iget-object v4, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mObserver:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    invoke-interface {v4, v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;->updateActiveNetworkList([I)V

    goto :goto_0
.end method

.method setConnectivityManagerDelegateForTests(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    .prologue
    .line 574
    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    .line 575
    return-void
.end method

.method setWifiManagerDelegateForTests(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;

    .prologue
    .line 581
    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mWifiManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;

    .line 582
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 636
    iget-boolean v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mRegistered:Z

    if-nez v0, :cond_1

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 638
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mRegistered:Z

    .line 639
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mNetworkCallback:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    iget-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mNetworkCallback:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;

    invoke-virtual {v0, v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0
.end method
