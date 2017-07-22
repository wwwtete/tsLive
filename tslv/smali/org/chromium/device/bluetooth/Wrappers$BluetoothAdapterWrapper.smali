.class Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;
.super Ljava/lang/Object;
.source "Wrappers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/bluetooth/Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BluetoothAdapterWrapper"
.end annotation


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field protected final mContext:Lorg/chromium/device/bluetooth/Wrappers$ContextWrapper;

.field protected mScannerWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothLeScannerWrapper;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;Lorg/chromium/device/bluetooth/Wrappers$ContextWrapper;)V
    .locals 0
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p2, "context"    # Lorg/chromium/device/bluetooth/Wrappers$ContextWrapper;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 108
    iput-object p2, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->mContext:Lorg/chromium/device/bluetooth/Wrappers$ContextWrapper;

    .line 109
    return-void
.end method

.method public static createWithDefaultAdapter(Landroid/content/Context;)Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
        value = "BluetoothAdapterWrapper"
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 70
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_0

    move v2, v1

    .line 71
    .local v2, "hasMinAPI":Z
    :goto_0
    if-nez v2, :cond_1

    .line 72
    const-string v6, "Bluetooth"

    const-string v7, "BluetoothAdapterWrapper.create failed: SDK version (%d) too low."

    new-array v8, v1, [Ljava/lang/Object;

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v6, v7, v8}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    :goto_1
    return-object v4

    .end local v2    # "hasMinAPI":Z
    :cond_0
    move v2, v5

    .line 70
    goto :goto_0

    .line 77
    .restart local v2    # "hasMinAPI":Z
    :cond_1
    const-string v6, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p0, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    move v3, v1

    .line 82
    .local v3, "hasPermissions":Z
    :goto_2
    if-nez v3, :cond_3

    .line 83
    const-string v6, "Bluetooth"

    const-string v7, "BluetoothAdapterWrapper.create failed: Lacking Bluetooth permissions."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6, v7, v5}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .end local v3    # "hasPermissions":Z
    :cond_2
    move v3, v5

    .line 77
    goto :goto_2

    .line 88
    .restart local v3    # "hasPermissions":Z
    :cond_3
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x12

    if-lt v6, v7, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.bluetooth_le"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 92
    .local v1, "hasLowEnergyFeature":Z
    :goto_3
    if-nez v1, :cond_5

    .line 93
    const-string v6, "Bluetooth"

    const-string v7, "BluetoothAdapterWrapper.create failed: No Low Energy support."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6, v7, v5}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "hasLowEnergyFeature":Z
    :cond_4
    move v1, v5

    .line 88
    goto :goto_3

    .line 97
    .restart local v1    # "hasLowEnergyFeature":Z
    :cond_5
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 98
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_6

    .line 99
    const-string v6, "Bluetooth"

    const-string v7, "BluetoothAdapterWrapper.create failed: Default adapter not found."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6, v7, v5}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 102
    :cond_6
    new-instance v4, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    new-instance v5, Lorg/chromium/device/bluetooth/Wrappers$ContextWrapper;

    invoke-direct {v5, p0}, Lorg/chromium/device/bluetooth/Wrappers$ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, v0, v5}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;-><init>(Landroid/bluetooth/BluetoothAdapter;Lorg/chromium/device/bluetooth/Wrappers$ContextWrapper;)V

    goto :goto_1
.end method


# virtual methods
.method public disable()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    return v0
.end method

.method public enable()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothLeScanner()Lorg/chromium/device/bluetooth/Wrappers$BluetoothLeScannerWrapper;
    .locals 2

    .prologue
    .line 124
    iget-object v1, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    .line 125
    .local v0, "scanner":Landroid/bluetooth/le/BluetoothLeScanner;
    if-nez v0, :cond_0

    .line 126
    const/4 v1, 0x0

    .line 131
    :goto_0
    return-object v1

    .line 128
    :cond_0
    iget-object v1, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->mScannerWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothLeScannerWrapper;

    if-nez v1, :cond_1

    .line 129
    new-instance v1, Lorg/chromium/device/bluetooth/Wrappers$BluetoothLeScannerWrapper;

    invoke-direct {v1, v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothLeScannerWrapper;-><init>(Landroid/bluetooth/le/BluetoothLeScanner;)V

    iput-object v1, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->mScannerWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothLeScannerWrapper;

    .line 131
    :cond_1
    iget-object v1, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->mScannerWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothLeScannerWrapper;

    goto :goto_0
.end method

.method public getContext()Lorg/chromium/device/bluetooth/Wrappers$ContextWrapper;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->mContext:Lorg/chromium/device/bluetooth/Wrappers$ContextWrapper;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScanMode()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v0

    return v0
.end method

.method public isDiscovering()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method
