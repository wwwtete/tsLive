.class Lorg/chromium/device/bluetooth/Wrappers$ScanResultWrapper;
.super Ljava/lang/Object;
.source "Wrappers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/bluetooth/Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScanResultWrapper"
.end annotation


# instance fields
.field private final mScanResult:Landroid/bluetooth/le/ScanResult;


# direct methods
.method public constructor <init>(Landroid/bluetooth/le/ScanResult;)V
    .locals 0
    .param p1, "scanResult"    # Landroid/bluetooth/le/ScanResult;

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p1, p0, Lorg/chromium/device/bluetooth/Wrappers$ScanResultWrapper;->mScanResult:Landroid/bluetooth/le/ScanResult;

    .line 262
    return-void
.end method


# virtual methods
.method public getDevice()Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;
    .locals 2

    .prologue
    .line 265
    new-instance v0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    iget-object v1, p0, Lorg/chromium/device/bluetooth/Wrappers$ScanResultWrapper;->mScanResult:Landroid/bluetooth/le/ScanResult;

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    return-object v0
.end method

.method public getScanRecord_getServiceUuids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$ScanResultWrapper;->mScanResult:Landroid/bluetooth/le/ScanResult;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getServiceUuids()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
