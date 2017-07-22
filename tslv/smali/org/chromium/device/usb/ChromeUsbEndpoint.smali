.class final Lorg/chromium/device/usb/ChromeUsbEndpoint;
.super Ljava/lang/Object;
.source "ChromeUsbEndpoint.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "device"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Usb"


# instance fields
.field final mEndpoint:Landroid/hardware/usb/UsbEndpoint;


# direct methods
.method private constructor <init>(Landroid/hardware/usb/UsbEndpoint;)V
    .locals 2
    .param p1, "endpoint"    # Landroid/hardware/usb/UsbEndpoint;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/chromium/device/usb/ChromeUsbEndpoint;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 28
    const-string v0, "Usb"

    const-string v1, "ChromeUsbEndpoint created."

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method private static create(Landroid/hardware/usb/UsbEndpoint;)Lorg/chromium/device/usb/ChromeUsbEndpoint;
    .locals 1
    .param p0, "endpoint"    # Landroid/hardware/usb/UsbEndpoint;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lorg/chromium/device/usb/ChromeUsbEndpoint;

    invoke-direct {v0, p0}, Lorg/chromium/device/usb/ChromeUsbEndpoint;-><init>(Landroid/hardware/usb/UsbEndpoint;)V

    return-object v0
.end method

.method private getAddress()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbEndpoint;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v0

    return v0
.end method

.method private getAttributes()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbEndpoint;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getAttributes()I

    move-result v0

    return v0
.end method

.method private getDirection()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbEndpoint;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 49
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 45
    :sswitch_0
    const/4 v0, 0x0

    .line 47
    :goto_0
    return v0

    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method private getInterval()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbEndpoint;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getInterval()I

    move-result v0

    return v0
.end method

.method private getMaxPacketSize()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbEndpoint;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v0

    return v0
.end method

.method private getType()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbEndpoint;->mEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 75
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 67
    :pswitch_0
    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    .line 69
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 71
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 73
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
