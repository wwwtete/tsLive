.class Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;
.super Landroid/content/IntentFilter;
.source "NetworkChangeNotifierAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/NetworkChangeNotifierAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkConnectivityIntentFilter"
.end annotation


# direct methods
.method constructor <init>(Z)V
    .locals 1
    .param p1, "monitorRSSI"    # Z

    .prologue
    .line 879
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 880
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;->addAction(Ljava/lang/String;)V

    .line 881
    if-eqz p1, :cond_0

    const-string v0, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;->addAction(Ljava/lang/String;)V

    .line 882
    :cond_0
    return-void
.end method
