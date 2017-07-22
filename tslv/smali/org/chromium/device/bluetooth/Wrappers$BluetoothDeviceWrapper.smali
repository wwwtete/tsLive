.class Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;
.super Ljava/lang/Object;
.source "Wrappers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/bluetooth/Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BluetoothDeviceWrapper"
.end annotation


# instance fields
.field private final mCharacteristicsToWrappers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            "Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mDescriptorsToWrappers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            "Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p1, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 285
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->mCharacteristicsToWrappers:Ljava/util/HashMap;

    .line 287
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->mDescriptorsToWrappers:Ljava/util/HashMap;

    .line 289
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    .prologue
    .line 276
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->mCharacteristicsToWrappers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    .prologue
    .line 276
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->mDescriptorsToWrappers:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public connectGatt(Landroid/content/Context;ZLorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;)Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoConnect"    # Z
    .param p3, "callback"    # Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;

    .prologue
    .line 293
    new-instance v0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;

    iget-object v1, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->mDevice:Landroid/bluetooth/BluetoothDevice;

    new-instance v2, Lorg/chromium/device/bluetooth/Wrappers$ForwardBluetoothGattCallbackToWrapper;

    invoke-direct {v2, p3, p0}, Lorg/chromium/device/bluetooth/Wrappers$ForwardBluetoothGattCallbackToWrapper;-><init>(Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCallbackWrapper;Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)V

    invoke-virtual {v1, p1, p2, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;-><init>(Landroid/bluetooth/BluetoothGatt;Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)V

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothClass_getDeviceClass()I
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    if-nez v0, :cond_1

    .line 307
    :cond_0
    const/16 v0, 0x1f00

    .line 309
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    goto :goto_0
.end method

.method public getBondState()I
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
