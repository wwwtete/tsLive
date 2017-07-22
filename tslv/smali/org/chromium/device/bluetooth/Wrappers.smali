.class Lorg/chromium/device/bluetooth/Wrappers;
.super Ljava/lang/Object;
.source "Wrappers.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;,
        Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;,
        Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattServiceWrapper;,
        Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;,
        Lorg/chromium/device/bluetooth/Wrappers$ForwardBluetoothGattCallbackToWrapper;,
        Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;,
        Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;,
        Lorg/chromium/device/bluetooth/Wrappers$ScanResultWrapper;,
        Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;,
        Lorg/chromium/device/bluetooth/Wrappers$ForwardScanCallbackToWrapper;,
        Lorg/chromium/device/bluetooth/Wrappers$BluetoothLeScannerWrapper;,
        Lorg/chromium/device/bluetooth/Wrappers$ContextWrapper;,
        Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "device"
.end annotation


# static fields
.field public static final DEVICE_CLASS_UNSPECIFIED:I = 0x1f00

.field private static final TAG:Ljava/lang/String; = "Bluetooth"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 563
    return-void
.end method
