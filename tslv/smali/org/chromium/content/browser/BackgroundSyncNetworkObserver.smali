.class Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;
.super Ljava/lang/Object;
.source "BackgroundSyncNetworkObserver.java"

# interfaces
.implements Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "content"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "cr_BgSyncNetObserver"

.field private static sInstance:Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNativePtrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mNotifier:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->sInstance:Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 50
    iput-object p1, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->mNativePtrs:Ljava/util/List;

    .line 52
    return-void
.end method

.method private static canCreateObserver(Landroid/content/Context;)Z
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 55
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static createObserver(Landroid/content/Context;J)Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "nativePtr"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 62
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 63
    sget-object v0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->sInstance:Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->sInstance:Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;

    .line 66
    :cond_0
    sget-object v0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->sInstance:Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;

    invoke-direct {v0, p1, p2}, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->registerObserver(J)V

    .line 67
    sget-object v0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->sInstance:Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;

    return-object v0
.end method

.method private native nativeNotifyConnectionTypeChanged(JI)V
    .annotation runtime Lorg/chromium/base/annotations/NativeClassQualifiedName;
        value = "BackgroundSyncNetworkObserverAndroid::Observer"
    .end annotation
.end method

.method private registerObserver(J)V
    .locals 3
    .param p1, "nativePtr"    # J

    .prologue
    .line 71
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 72
    iget-object v0, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->canCreateObserver(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    const-string v0, "BackgroundSync.NetworkObserver.HasPermission"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    .line 89
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->mNotifier:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    if-nez v0, :cond_1

    .line 80
    new-instance v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    iget-object v1, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->mContext:Landroid/content/Context;

    new-instance v2, Lorg/chromium/net/RegistrationPolicyAlwaysRegister;

    invoke-direct {v2}, Lorg/chromium/net/RegistrationPolicyAlwaysRegister;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;-><init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;Landroid/content/Context;Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;)V

    iput-object v0, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->mNotifier:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    .line 82
    const-string v0, "BackgroundSync.NetworkObserver.HasPermission"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    .line 85
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->mNativePtrs:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->mNotifier:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    iget-object v1, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->mNotifier:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-virtual {v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentNetworkState()Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentConnectionType(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->nativeNotifyConnectionTypeChanged(JI)V

    goto :goto_0
.end method

.method private removeObserver(J)V
    .locals 3
    .param p1, "nativePtr"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 93
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 94
    iget-object v0, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->mNativePtrs:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->mNativePtrs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->mNotifier:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->mNotifier:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-virtual {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->destroy()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->mNotifier:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    .line 100
    :cond_0
    return-void
.end method


# virtual methods
.method public onConnectionTypeChanged(I)V
    .locals 4
    .param p1, "newConnectionType"    # I

    .prologue
    .line 104
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 105
    iget-object v2, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->mNativePtrs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 106
    .local v1, "nativePtr":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, p1}, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->nativeNotifyConnectionTypeChanged(JI)V

    goto :goto_0

    .line 108
    .end local v1    # "nativePtr":Ljava/lang/Long;
    :cond_0
    return-void
.end method

.method public onMaxBandwidthChanged(D)V
    .locals 0
    .param p1, "maxBandwidthMbps"    # D

    .prologue
    .line 111
    return-void
.end method

.method public onNetworkConnect(II)V
    .locals 0
    .param p1, "netId"    # I
    .param p2, "connectionType"    # I

    .prologue
    .line 113
    return-void
.end method

.method public onNetworkDisconnect(I)V
    .locals 0
    .param p1, "netId"    # I

    .prologue
    .line 117
    return-void
.end method

.method public onNetworkSoonToDisconnect(I)V
    .locals 0
    .param p1, "netId"    # I

    .prologue
    .line 115
    return-void
.end method

.method public updateActiveNetworkList([I)V
    .locals 0
    .param p1, "activeNetIds"    # [I

    .prologue
    .line 119
    return-void
.end method
