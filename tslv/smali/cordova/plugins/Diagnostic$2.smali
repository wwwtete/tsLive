.class Lcordova/plugins/Diagnostic$2;
.super Landroid/content/BroadcastReceiver;
.source "Diagnostic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcordova/plugins/Diagnostic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcordova/plugins/Diagnostic;


# direct methods
.method constructor <init>(Lcordova/plugins/Diagnostic;)V
    .locals 0
    .param p1, "this$0"    # Lcordova/plugins/Diagnostic;

    .prologue
    .line 831
    iput-object p1, p0, Lcordova/plugins/Diagnostic$2;->this$0:Lcordova/plugins/Diagnostic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 834
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 837
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 838
    const-string v3, "android.bluetooth.adapter.extra.STATE"

    const/high16 v4, -0x80000000

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 840
    .local v2, "state":I
    packed-switch v2, :pswitch_data_0

    .line 854
    const-string v1, "unknown"

    .line 856
    .local v1, "bluetoothState":Ljava/lang/String;
    :goto_0
    sget-object v3, Lcordova/plugins/Diagnostic;->instance:Lcordova/plugins/Diagnostic;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_onBluetoothStateChange(\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\");"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcordova/plugins/Diagnostic;->executeGlobalJavascript(Ljava/lang/String;)V

    .line 858
    .end local v1    # "bluetoothState":Ljava/lang/String;
    .end local v2    # "state":I
    :cond_0
    return-void

    .line 842
    .restart local v2    # "state":I
    :pswitch_0
    const-string v1, "powered_off"

    .line 843
    .restart local v1    # "bluetoothState":Ljava/lang/String;
    goto :goto_0

    .line 845
    .end local v1    # "bluetoothState":Ljava/lang/String;
    :pswitch_1
    const-string v1, "powering_off"

    .line 846
    .restart local v1    # "bluetoothState":Ljava/lang/String;
    goto :goto_0

    .line 848
    .end local v1    # "bluetoothState":Ljava/lang/String;
    :pswitch_2
    const-string v1, "powered_on"

    .line 849
    .restart local v1    # "bluetoothState":Ljava/lang/String;
    goto :goto_0

    .line 851
    .end local v1    # "bluetoothState":Ljava/lang/String;
    :pswitch_3
    const-string v1, "powering_on"

    .line 852
    .restart local v1    # "bluetoothState":Ljava/lang/String;
    goto :goto_0

    .line 840
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
