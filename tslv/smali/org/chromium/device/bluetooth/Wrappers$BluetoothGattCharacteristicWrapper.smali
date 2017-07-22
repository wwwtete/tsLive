.class Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;
.super Ljava/lang/Object;
.source "Wrappers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/bluetooth/Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BluetoothGattCharacteristicWrapper"
.end annotation


# instance fields
.field final mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field final mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothGattCharacteristic;Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)V
    .locals 0
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "deviceWrapper"    # Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    .prologue
    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    iput-object p1, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 517
    iput-object p2, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    .line 518
    return-void
.end method


# virtual methods
.method public getDescriptors()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 521
    iget-object v5, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object v2

    .line 523
    .local v2, "descriptors":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattDescriptor;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 526
    .local v3, "descriptorsWrapped":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattDescriptor;

    .line 527
    .local v0, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    iget-object v5, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    invoke-static {v5}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->access$200(Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;

    .line 529
    .local v1, "descriptorWrapper":Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;
    if-nez v1, :cond_0

    .line 530
    new-instance v1, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;

    .end local v1    # "descriptorWrapper":Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;
    iget-object v5, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    invoke-direct {v1, v0, v5}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;-><init>(Landroid/bluetooth/BluetoothGattDescriptor;Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)V

    .line 532
    .restart local v1    # "descriptorWrapper":Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;
    iget-object v5, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    invoke-static {v5}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->access$200(Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    :cond_0
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 536
    .end local v0    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    .end local v1    # "descriptorWrapper":Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;
    :cond_1
    return-object v3
.end method

.method public getInstanceId()I
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v0

    return v0
.end method

.method public getProperties()I
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public getValue()[B
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    return-object v0
.end method

.method public setValue([B)Z
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 556
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    move-result v0

    return v0
.end method
