.class Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$1;
.super Ljava/lang/Object;
.source "NetworkChangeNotifierAutoDetect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->onAvailable(Landroid/net/Network;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;

.field final synthetic val$connectionType:I

.field final synthetic val$makeVpnDefault:Z

.field final synthetic val$netId:I


# direct methods
.method constructor <init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;IIZ)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$1;->this$1:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;

    iput p2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$1;->val$netId:I

    iput p3, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$1;->val$connectionType:I

    iput-boolean p4, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$1;->val$makeVpnDefault:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 358
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$1;->this$1:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;

    iget-object v0, v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->access$200(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    move-result-object v0

    iget v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$1;->val$netId:I

    iget v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$1;->val$connectionType:I

    invoke-interface {v0, v1, v2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;->onNetworkConnect(II)V

    .line 359
    iget-boolean v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$1;->val$makeVpnDefault:Z

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$1;->this$1:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;

    iget-object v0, v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->access$200(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    move-result-object v0

    iget v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$1;->val$connectionType:I

    invoke-interface {v0, v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;->onConnectionTypeChanged(I)V

    .line 363
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$1;->this$1:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;

    iget-object v0, v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->access$200(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$1;->val$netId:I

    aput v3, v1, v2

    invoke-interface {v0, v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;->updateActiveNetworkList([I)V

    .line 365
    :cond_0
    return-void
.end method
