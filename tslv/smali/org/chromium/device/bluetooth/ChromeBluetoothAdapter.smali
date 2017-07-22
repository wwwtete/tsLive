.class final Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;
.super Landroid/content/BroadcastReceiver;
.source "ChromeBluetoothAdapter.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$1;,
        Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "device"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String; = "Bluetooth"


# instance fields
.field private final mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

.field private mNativeBluetoothAdapterAndroid:J

.field private mNumDiscoverySessions:I

.field private mScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(JLorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;)V
    .locals 3
    .param p1, "nativeBluetoothAdapterAndroid"    # J
    .param p3, "adapterWrapper"    # Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 55
    iput-wide p1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNativeBluetoothAdapterAndroid:J

    .line 56
    iput-object p3, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    .line 57
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->registerBroadcastReceiver()V

    .line 58
    if-nez p3, :cond_0

    .line 59
    const-string v0, "Bluetooth"

    const-string v1, "ChromeBluetoothAdapter created with no adapterWrapper."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    const-string v0, "Bluetooth"

    const-string v1, "ChromeBluetoothAdapter created with provided adapterWrapper."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$100(Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;

    .prologue
    .line 33
    iget-wide v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNativeBluetoothAdapterAndroid:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;JLjava/lang/String;Ljava/lang/Object;Ljava/util/List;)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/Object;
    .param p5, "x4"    # Ljava/util/List;

    .prologue
    .line 33
    invoke-direct/range {p0 .. p5}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->nativeCreateOrUpdateDeviceOnScan(JLjava/lang/String;Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;J)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;
    .param p1, "x1"    # J

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->nativeOnScanFailed(J)V

    return-void
.end method

.method static synthetic access$402(Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNumDiscoverySessions:I

    return p1
.end method

.method private addDiscoverySession()Z
    .locals 5
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 147
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->isPowered()Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    const-string v1, "Bluetooth"

    const-string v2, "addDiscoverySession: Fails: !isPowered"

    invoke-static {v1, v2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :goto_0
    return v0

    .line 152
    :cond_0
    iget v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNumDiscoverySessions:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNumDiscoverySessions:I

    .line 153
    const-string v2, "Bluetooth"

    const-string v3, "addDiscoverySession: Now %d sessions."

    iget v4, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNumDiscoverySessions:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    iget v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNumDiscoverySessions:I

    if-le v2, v1, :cond_1

    move v0, v1

    .line 155
    goto :goto_0

    .line 158
    :cond_1
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->startScan()Z

    move-result v2

    if-nez v2, :cond_2

    .line 159
    iget v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNumDiscoverySessions:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNumDiscoverySessions:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 162
    goto :goto_0
.end method

.method private canScan()Z
    .locals 2

    .prologue
    .line 192
    iget-object v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    invoke-virtual {v1}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->getContext()Lorg/chromium/device/bluetooth/Wrappers$ContextWrapper;

    move-result-object v0

    .line 193
    .local v0, "context":Lorg/chromium/device/bluetooth/Wrappers$ContextWrapper;
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Lorg/chromium/device/bluetooth/Wrappers$ContextWrapper;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Lorg/chromium/device/bluetooth/Wrappers$ContextWrapper;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static create(JLjava/lang/Object;)Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;
    .locals 2
    .param p0, "nativeBluetoothAdapterAndroid"    # J
    .param p2, "adapterWrapper"    # Ljava/lang/Object;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 85
    new-instance v0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;

    check-cast p2, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    .end local p2    # "adapterWrapper":Ljava/lang/Object;
    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;-><init>(JLorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;)V

    return-object v0
.end method

.method private getAddress()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private getBluetoothStateString(I)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 322
    packed-switch p1, :pswitch_data_0

    .line 332
    sget-boolean v0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 324
    :pswitch_0
    const-string v0, "STATE_OFF"

    .line 333
    :goto_0
    return-object v0

    .line 326
    :pswitch_1
    const-string v0, "STATE_ON"

    goto :goto_0

    .line 328
    :pswitch_2
    const-string v0, "STATE_TURNING_OFF"

    goto :goto_0

    .line 330
    :pswitch_3
    const-string v0, "STATE_TURNING_ON"

    goto :goto_0

    .line 333
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->getName()Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private isDiscoverable()Z
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->getScanMode()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDiscovering()Z
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 141
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPowered()Z
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPresent()Z
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeCreateOrUpdateDeviceOnScan(JLjava/lang/String;Ljava/lang/Object;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;)V"
        }
    .end annotation
.end method

.method private native nativeOnAdapterStateChanged(JZ)V
.end method

.method private native nativeOnScanFailed(J)V
.end method

.method private onBluetoothAdapterAndroidDestruction()V
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->stopScan()Z

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNativeBluetoothAdapterAndroid:J

    .line 72
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->unregisterBroadcastReceiver()V

    .line 73
    return-void
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->getContext()Lorg/chromium/device/bluetooth/Wrappers$ContextWrapper;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/device/bluetooth/Wrappers$ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 202
    :cond_0
    return-void
.end method

.method private removeDiscoverySession()Z
    .locals 4
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 168
    iget v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNumDiscoverySessions:I

    if-nez v1, :cond_1

    .line 169
    sget-boolean v1, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 170
    :cond_0
    const-string v1, "Bluetooth"

    const-string v2, "removeDiscoverySession: No scan in progress."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :goto_0
    return v0

    .line 174
    :cond_1
    iget v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNumDiscoverySessions:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNumDiscoverySessions:I

    .line 176
    iget v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNumDiscoverySessions:I

    if-nez v0, :cond_2

    .line 177
    const-string v0, "Bluetooth"

    const-string v1, "removeDiscoverySession: Now 0 sessions. Stopping scan."

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->stopScan()Z

    move-result v0

    goto :goto_0

    .line 181
    :cond_2
    const-string v0, "Bluetooth"

    const-string v1, "removeDiscoverySession: Now %d sessions."

    iget v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNumDiscoverySessions:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setPowered(Z)Z
    .locals 3
    .param p1, "powered"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 124
    if-eqz p1, :cond_2

    .line 125
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    invoke-virtual {v2}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->enable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 125
    goto :goto_0

    .line 127
    :cond_2
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    invoke-virtual {v2}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->disable()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private startScan()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 215
    iget-object v4, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    invoke-virtual {v4}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->getBluetoothLeScanner()Lorg/chromium/device/bluetooth/Wrappers$BluetoothLeScannerWrapper;

    move-result-object v2

    .line 217
    .local v2, "scanner":Lorg/chromium/device/bluetooth/Wrappers$BluetoothLeScannerWrapper;
    if-nez v2, :cond_1

    .line 243
    :cond_0
    :goto_0
    return v3

    .line 221
    :cond_1
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->canScan()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 227
    const/4 v1, 0x2

    .line 229
    .local v1, "scanMode":I
    sget-boolean v4, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;

    if-eqz v4, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 230
    :cond_2
    new-instance v4, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;

    invoke-direct {v4, p0, v7}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;-><init>(Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$1;)V

    iput-object v4, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;

    .line 233
    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;

    invoke-virtual {v2, v4, v1, v5}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothLeScannerWrapper;->startScan(Ljava/util/List;ILorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 243
    const/4 v3, 0x1

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "Bluetooth"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot start scan: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    iput-object v7, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;

    goto :goto_0

    .line 238
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v4, "Bluetooth"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adapter is off. Cannot start scan: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    iput-object v7, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;

    goto :goto_0
.end method

.method private stopScan()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 251
    iget-object v3, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;

    if-nez v3, :cond_0

    .line 266
    :goto_0
    return v2

    .line 256
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    invoke-virtual {v3}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->getBluetoothLeScanner()Lorg/chromium/device/bluetooth/Wrappers$BluetoothLeScannerWrapper;

    move-result-object v1

    .line 257
    .local v1, "scanner":Lorg/chromium/device/bluetooth/Wrappers$BluetoothLeScannerWrapper;
    if-eqz v1, :cond_1

    .line 258
    iget-object v3, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;

    invoke-virtual {v1, v3}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothLeScannerWrapper;->stopScan(Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 265
    .end local v1    # "scanner":Lorg/chromium/device/bluetooth/Wrappers$BluetoothLeScannerWrapper;
    :cond_1
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mScanCallback:Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter$ScanCallback;

    .line 266
    const/4 v2, 0x1

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "Bluetooth"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot stop scan: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 262
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v3, "Bluetooth"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adapter is off. Cannot stop scan: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private unregisterBroadcastReceiver()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mAdapter:Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->getContext()Lorg/chromium/device/bluetooth/Wrappers$ContextWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/device/bluetooth/Wrappers$ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 208
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 300
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "action":Ljava/lang/String;
    invoke-direct {p0}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x80000000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 305
    .local v1, "state":I
    const-string v2, "Bluetooth"

    const-string v3, "onReceive: BluetoothAdapter.ACTION_STATE_CHANGED: %s"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-direct {p0, v1}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->getBluetoothStateString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    packed-switch v1, :pswitch_data_0

    .line 319
    .end local v1    # "state":I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 310
    .restart local v1    # "state":I
    :pswitch_1
    iget-wide v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNativeBluetoothAdapterAndroid:J

    invoke-direct {p0, v2, v3, v7}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->nativeOnAdapterStateChanged(JZ)V

    goto :goto_0

    .line 313
    :pswitch_2
    iget-wide v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->mNativeBluetoothAdapterAndroid:J

    invoke-direct {p0, v2, v3, v6}, Lorg/chromium/device/bluetooth/ChromeBluetoothAdapter;->nativeOnAdapterStateChanged(JZ)V

    goto :goto_0

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
