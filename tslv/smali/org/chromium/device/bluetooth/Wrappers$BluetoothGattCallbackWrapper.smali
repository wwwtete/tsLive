.class abstract Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;
.super Ljava/lang/Object;
.source "Wrappers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/bluetooth/Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BluetoothGattCallbackWrapper"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onCharacteristicChanged(Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;)V
.end method

.method public abstract onCharacteristicRead(Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;I)V
.end method

.method public abstract onCharacteristicWrite(Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;I)V
.end method

.method public abstract onConnectionStateChange(II)V
.end method

.method public abstract onDescriptorRead(Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;I)V
.end method

.method public abstract onDescriptorWrite(Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;I)V
.end method

.method public abstract onServicesDiscovered(I)V
.end method
