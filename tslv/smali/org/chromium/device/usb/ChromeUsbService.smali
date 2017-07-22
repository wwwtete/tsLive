.class final Lorg/chromium/device/usb/ChromeUsbService;
.super Ljava/lang/Object;
.source "ChromeUsbService.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "device"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Usb"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/chromium/device/usb/ChromeUsbService;->mContext:Landroid/content/Context;

    .line 31
    const-string v0, "Usb"

    const-string v1, "ChromeUsbService created."

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method private static create(Landroid/content/Context;)Lorg/chromium/device/usb/ChromeUsbService;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lorg/chromium/device/usb/ChromeUsbService;

    invoke-direct {v0, p0}, Lorg/chromium/device/usb/ChromeUsbService;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getDevices()[Ljava/lang/Object;
    .locals 4
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 41
    iget-object v2, p0, Lorg/chromium/device/usb/ChromeUsbService;->mContext:Landroid/content/Context;

    const-string v3, "usb"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    .line 42
    .local v1, "manager":Landroid/hardware/usb/UsbManager;
    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    .line 43
    .local v0, "deviceList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/hardware/usb/UsbDevice;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
