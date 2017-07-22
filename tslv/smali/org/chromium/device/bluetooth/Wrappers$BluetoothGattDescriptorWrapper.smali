.class Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;
.super Ljava/lang/Object;
.source "Wrappers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/bluetooth/Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BluetoothGattDescriptorWrapper"
.end annotation


# instance fields
.field private final mDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

.field final mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothGattDescriptor;Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)V
    .locals 0
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "deviceWrapper"    # Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    .prologue
    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    iput-object p1, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;->mDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    .line 570
    iput-object p2, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    .line 571
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;)Landroid/bluetooth/BluetoothGattDescriptor;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;

    .prologue
    .line 563
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;->mDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    return-object v0
.end method


# virtual methods
.method public getCharacteristic()Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    invoke-static {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->access$100(Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;->mDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;

    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;->mDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public getValue()[B
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;->mDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v0

    return-object v0
.end method

.method public setValue([B)Z
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 586
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;->mDescriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    move-result v0

    return v0
.end method
