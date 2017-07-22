.class Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattServiceWrapper;
.super Ljava/lang/Object;
.source "Wrappers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/bluetooth/Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BluetoothGattServiceWrapper"
.end annotation


# instance fields
.field private final mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

.field private final mService:Landroid/bluetooth/BluetoothGattService;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothGattService;Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)V
    .locals 0
    .param p1, "service"    # Landroid/bluetooth/BluetoothGattService;
    .param p2, "deviceWrapper"    # Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    .prologue
    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    iput-object p1, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattServiceWrapper;->mService:Landroid/bluetooth/BluetoothGattService;

    .line 477
    iput-object p2, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattServiceWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    .line 478
    return-void
.end method


# virtual methods
.method public getCharacteristics()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 481
    iget-object v5, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattServiceWrapper;->mService:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v2

    .line 482
    .local v2, "characteristics":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 484
    .local v3, "characteristicsWrapped":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 485
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    iget-object v5, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattServiceWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    invoke-static {v5}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->access$100(Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;

    .line 487
    .local v1, "characteristicWrapper":Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;
    if-nez v1, :cond_0

    .line 488
    new-instance v1, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;

    .end local v1    # "characteristicWrapper":Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;
    iget-object v5, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattServiceWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    invoke-direct {v1, v0, v5}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;-><init>(Landroid/bluetooth/BluetoothGattCharacteristic;Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)V

    .line 490
    .restart local v1    # "characteristicWrapper":Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;
    iget-object v5, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattServiceWrapper;->mDeviceWrapper:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    invoke-static {v5}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->access$100(Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    :cond_0
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 495
    .end local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v1    # "characteristicWrapper":Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;
    :cond_1
    return-object v3
.end method

.method public getInstanceId()I
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattServiceWrapper;->mService:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattServiceWrapper;->mService:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method
