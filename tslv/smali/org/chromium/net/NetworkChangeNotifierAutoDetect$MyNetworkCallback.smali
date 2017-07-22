.class Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkChangeNotifierAutoDetect.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/NetworkChangeNotifierAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyNetworkCallback"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mVpnInPlace:Landroid/net/Network;

.field final synthetic this$0:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 281
    const-class v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)V
    .locals 1

    .prologue
    .line 282
    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->mVpnInPlace:Landroid/net/Network;

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;Lorg/chromium/net/NetworkChangeNotifierAutoDetect$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/net/NetworkChangeNotifierAutoDetect;
    .param p2, "x1"    # Lorg/chromium/net/NetworkChangeNotifierAutoDetect$1;

    .prologue
    .line 282
    invoke-direct {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;-><init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)V

    return-void
.end method

.method private ignoreConnectedInaccessibleVpn(Landroid/net/Network;Landroid/net/NetworkCapabilities;)Z
    .locals 1
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "capabilities"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 321
    if-nez p2, :cond_0

    .line 322
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->access$100(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p2

    .line 325
    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->access$100(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->vpnAccessible(Landroid/net/Network;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ignoreConnectedNetwork(Landroid/net/Network;Landroid/net/NetworkCapabilities;)Z
    .locals 1
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "capabilities"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 337
    invoke-direct {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->ignoreNetworkDueToVpn(Landroid/net/Network;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->ignoreConnectedInaccessibleVpn(Landroid/net/Network;Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ignoreNetworkDueToVpn(Landroid/net/Network;)Z
    .locals 1
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 307
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->mVpnInPlace:Landroid/net/Network;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->mVpnInPlace:Landroid/net/Network;

    invoke-virtual {v0, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method initializeVpnInPlace()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 289
    iget-object v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->access$100(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->access$000(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;Landroid/net/Network;)[Landroid/net/Network;

    move-result-object v1

    .line 290
    .local v1, "networks":[Landroid/net/Network;
    iput-object v3, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->mVpnInPlace:Landroid/net/Network;

    .line 292
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 293
    iget-object v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->access$100(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 295
    .local v0, "capabilities":Landroid/net/NetworkCapabilities;
    if-eqz v0, :cond_0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    aget-object v2, v1, v4

    iput-object v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->mVpnInPlace:Landroid/net/Network;

    .line 299
    .end local v0    # "capabilities":Landroid/net/NetworkCapabilities;
    :cond_0
    return-void
.end method

.method public onAvailable(Landroid/net/Network;)V
    .locals 6
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 343
    iget-object v4, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v4}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->access$100(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 345
    .local v0, "capabilities":Landroid/net/NetworkCapabilities;
    invoke-direct {p0, p1, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->ignoreConnectedNetwork(Landroid/net/Network;Landroid/net/NetworkCapabilities;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 367
    :goto_0
    return-void

    .line 348
    :cond_0
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    .line 349
    .local v2, "makeVpnDefault":Z
    if-eqz v2, :cond_1

    .line 350
    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->mVpnInPlace:Landroid/net/Network;

    .line 352
    :cond_1
    invoke-static {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->networkToNetId(Landroid/net/Network;)I

    move-result v3

    .line 353
    .local v3, "netId":I
    iget-object v4, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    iget-object v5, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v5}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->access$100(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getNetworkState(Landroid/net/Network;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentConnectionType(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)I

    move-result v1

    .line 355
    .local v1, "connectionType":I
    new-instance v4, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$1;

    invoke-direct {v4, p0, v3, v1, v2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$1;-><init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;IIZ)V

    invoke-static {v4}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 372
    invoke-direct {p0, p1, p2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->ignoreConnectedNetwork(Landroid/net/Network;Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 386
    :goto_0
    return-void

    .line 377
    :cond_0
    invoke-static {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->networkToNetId(Landroid/net/Network;)I

    move-result v1

    .line 378
    .local v1, "netId":I
    iget-object v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    iget-object v3, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v3}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->access$100(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getNetworkState(Landroid/net/Network;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentConnectionType(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)I

    move-result v0

    .line 380
    .local v0, "connectionType":I
    new-instance v2, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$2;

    invoke-direct {v2, p0, v1, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$2;-><init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;II)V

    invoke-static {v2}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "maxMsToLive"    # I

    .prologue
    .line 390
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->ignoreConnectedNetwork(Landroid/net/Network;Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    :goto_0
    return-void

    .line 393
    :cond_0
    invoke-static {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->networkToNetId(Landroid/net/Network;)I

    move-result v0

    .line 394
    .local v0, "netId":I
    new-instance v1, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$3;

    invoke-direct {v1, p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$3;-><init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;I)V

    invoke-static {v1}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 7
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 404
    invoke-direct {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->ignoreNetworkDueToVpn(Landroid/net/Network;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    new-instance v5, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$4;

    invoke-direct {v5, p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$4;-><init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;Landroid/net/Network;)V

    invoke-static {v5}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 416
    iget-object v5, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->mVpnInPlace:Landroid/net/Network;

    if-eqz v5, :cond_0

    .line 417
    sget-boolean v5, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->mVpnInPlace:Landroid/net/Network;

    invoke-virtual {p1, v5}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 418
    :cond_2
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->mVpnInPlace:Landroid/net/Network;

    .line 420
    iget-object v5, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v5}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->access$100(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    move-result-object v5

    invoke-static {v5, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->access$000(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;Landroid/net/Network;)[Landroid/net/Network;

    move-result-object v0

    .local v0, "arr$":[Landroid/net/Network;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 421
    .local v4, "newNetwork":Landroid/net/Network;
    invoke-virtual {p0, v4}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 420
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 423
    .end local v4    # "newNetwork":Landroid/net/Network;
    :cond_3
    iget-object v5, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    iget-object v6, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v6}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->access$100(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    move-result-object v6

    invoke-virtual {v6}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getNetworkState()Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentConnectionType(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)I

    move-result v3

    .line 425
    .local v3, "newConnectionType":I
    new-instance v5, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$5;

    invoke-direct {v5, p0, v3}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$5;-><init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;I)V

    invoke-static {v5}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
