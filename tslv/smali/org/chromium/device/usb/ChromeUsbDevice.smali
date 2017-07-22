.class final Lorg/chromium/device/usb/ChromeUsbDevice;
.super Ljava/lang/Object;
.source "ChromeUsbDevice.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "device"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String; = "Usb"


# instance fields
.field final mDevice:Landroid/hardware/usb/UsbDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lorg/chromium/device/usb/ChromeUsbDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/device/usb/ChromeUsbDevice;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/chromium/device/usb/ChromeUsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 31
    const-string v0, "Usb"

    const-string v1, "ChromeUsbDevice created."

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method private static create(Landroid/hardware/usb/UsbDevice;)Lorg/chromium/device/usb/ChromeUsbDevice;
    .locals 1
    .param p0, "device"    # Landroid/hardware/usb/UsbDevice;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lorg/chromium/device/usb/ChromeUsbDevice;

    invoke-direct {v0, p0}, Lorg/chromium/device/usb/ChromeUsbDevice;-><init>(Landroid/hardware/usb/UsbDevice;)V

    return-object v0
.end method

.method private getConfigurations()[Landroid/hardware/usb/UsbConfiguration;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 98
    iget-object v3, p0, Lorg/chromium/device/usb/ChromeUsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getConfigurationCount()I

    move-result v1

    .line 99
    .local v1, "count":I
    new-array v0, v1, [Landroid/hardware/usb/UsbConfiguration;

    .line 100
    .local v0, "configurations":[Landroid/hardware/usb/UsbConfiguration;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 101
    iget-object v3, p0, Lorg/chromium/device/usb/ChromeUsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3, v2}, Landroid/hardware/usb/UsbDevice;->getConfiguration(I)Landroid/hardware/usb/UsbConfiguration;

    move-result-object v3

    aput-object v3, v0, v2

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    :cond_0
    return-object v0
.end method

.method private getDeviceClass()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v0

    return v0
.end method

.method private getDeviceProtocol()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v0

    return v0
.end method

.method private getDeviceSubclass()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v0

    return v0
.end method

.method private getDeviceVersion()I
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 72
    iget-object v1, p0, Lorg/chromium/device/usb/ChromeUsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "parts":[Ljava/lang/String;
    sget-boolean v1, Lorg/chromium/device/usb/ChromeUsbDevice;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 74
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    or-int/2addr v1, v2

    return v1
.end method

.method private getInterfaces()[Landroid/hardware/usb/UsbInterface;
    .locals 4
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 108
    iget-object v3, p0, Lorg/chromium/device/usb/ChromeUsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v0

    .line 109
    .local v0, "count":I
    new-array v2, v0, [Landroid/hardware/usb/UsbInterface;

    .line 110
    .local v2, "interfaces":[Landroid/hardware/usb/UsbInterface;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 111
    iget-object v3, p0, Lorg/chromium/device/usb/ChromeUsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v3

    aput-object v3, v2, v1

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return-object v2
.end method

.method private getManufacturerName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getProductId()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    return v0
.end method

.method private getProductName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSerialNumber()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVendorId()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    return v0
.end method
