.class public Lcordova/plugins/Diagnostic$LocationProviderChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Diagnostic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcordova/plugins/Diagnostic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationProviderChangedReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 861
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 865
    sget-object v0, Lcordova/plugins/Diagnostic;->instance:Lcordova/plugins/Diagnostic;

    if-eqz v0, :cond_0

    .line 866
    const-string v0, "Diagnostic"

    const-string v1, "onReceiveLocationProviderChange"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    sget-object v0, Lcordova/plugins/Diagnostic;->instance:Lcordova/plugins/Diagnostic;

    invoke-virtual {v0}, Lcordova/plugins/Diagnostic;->notifyLocationStateChange()V

    .line 869
    :cond_0
    return-void
.end method
