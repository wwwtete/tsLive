.class Lorg/chromium/content/browser/TracingControllerAndroid$TracingBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TracingControllerAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/TracingControllerAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TracingBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/TracingControllerAndroid;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/TracingControllerAndroid;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lorg/chromium/content/browser/TracingControllerAndroid$TracingBroadcastReceiver;->this$0:Lorg/chromium/content/browser/TracingControllerAndroid;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 278
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GPU_PROFILER_START"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 279
    const-string v3, "categories"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "categories":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 281
    iget-object v3, p0, Lorg/chromium/content/browser/TracingControllerAndroid$TracingBroadcastReceiver;->this$0:Lorg/chromium/content/browser/TracingControllerAndroid;

    invoke-static {v3}, Lorg/chromium/content/browser/TracingControllerAndroid;->access$000(Lorg/chromium/content/browser/TracingControllerAndroid;)Ljava/lang/String;

    move-result-object v0

    .line 286
    :goto_0
    const-string v3, "continuous"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v2, "record-until-full"

    .line 288
    .local v2, "traceOptions":Ljava/lang/String;
    :goto_1
    const-string v3, "file"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "filename":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 290
    iget-object v3, p0, Lorg/chromium/content/browser/TracingControllerAndroid$TracingBroadcastReceiver;->this$0:Lorg/chromium/content/browser/TracingControllerAndroid;

    invoke-virtual {v3, v1, v5, v0, v2}, Lorg/chromium/content/browser/TracingControllerAndroid;->startTracing(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    .line 301
    .end local v0    # "categories":Ljava/lang/String;
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "traceOptions":Ljava/lang/String;
    :goto_2
    return-void

    .line 283
    .restart local v0    # "categories":Ljava/lang/String;
    :cond_0
    const-string v3, "_DEFAULT_CHROME_CATEGORIES"

    iget-object v4, p0, Lorg/chromium/content/browser/TracingControllerAndroid$TracingBroadcastReceiver;->this$0:Lorg/chromium/content/browser/TracingControllerAndroid;

    invoke-static {v4}, Lorg/chromium/content/browser/TracingControllerAndroid;->access$000(Lorg/chromium/content/browser/TracingControllerAndroid;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 286
    :cond_1
    const-string v2, "record-continuously"

    goto :goto_1

    .line 292
    .restart local v1    # "filename":Ljava/lang/String;
    .restart local v2    # "traceOptions":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lorg/chromium/content/browser/TracingControllerAndroid$TracingBroadcastReceiver;->this$0:Lorg/chromium/content/browser/TracingControllerAndroid;

    invoke-virtual {v3, v5, v0, v2}, Lorg/chromium/content/browser/TracingControllerAndroid;->startTracing(ZLjava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 294
    .end local v0    # "categories":Ljava/lang/String;
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "traceOptions":Ljava/lang/String;
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GPU_PROFILER_STOP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 295
    iget-object v3, p0, Lorg/chromium/content/browser/TracingControllerAndroid$TracingBroadcastReceiver;->this$0:Lorg/chromium/content/browser/TracingControllerAndroid;

    invoke-virtual {v3}, Lorg/chromium/content/browser/TracingControllerAndroid;->stopTracing()V

    goto :goto_2

    .line 296
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GPU_PROFILER_LIST_CATEGORIES"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 297
    iget-object v3, p0, Lorg/chromium/content/browser/TracingControllerAndroid$TracingBroadcastReceiver;->this$0:Lorg/chromium/content/browser/TracingControllerAndroid;

    invoke-virtual {v3}, Lorg/chromium/content/browser/TracingControllerAndroid;->getCategoryGroups()V

    goto :goto_2

    .line 299
    :cond_5
    const-string v3, "cr.TracingController"

    const-string v4, "Unexpected intent: %s"

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method
