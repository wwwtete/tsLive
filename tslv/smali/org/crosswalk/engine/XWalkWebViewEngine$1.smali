.class Lorg/crosswalk/engine/XWalkWebViewEngine$1;
.super Ljava/lang/Object;
.source "XWalkWebViewEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/crosswalk/engine/XWalkWebViewEngine;-><init>(Landroid/content/Context;Lorg/apache/cordova/CordovaPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;


# direct methods
.method constructor <init>(Lorg/crosswalk/engine/XWalkWebViewEngine;)V
    .locals 0
    .param p1, "this$0"    # Lorg/crosswalk/engine/XWalkWebViewEngine;

    .prologue
    .line 80
    iput-object p1, p0, Lorg/crosswalk/engine/XWalkWebViewEngine$1;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine$1;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v0, v0, Lorg/crosswalk/engine/XWalkWebViewEngine;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 84
    return-void
.end method
