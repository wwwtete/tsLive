.class Lorg/crosswalk/engine/XWalkWebViewEngine$2$1$1$1;
.super Lorg/xwalk/core/XWalkGetBitmapCallback;
.source "XWalkWebViewEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/crosswalk/engine/XWalkWebViewEngine$2$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/crosswalk/engine/XWalkWebViewEngine$2$1$1;


# direct methods
.method constructor <init>(Lorg/crosswalk/engine/XWalkWebViewEngine$2$1$1;)V
    .locals 0
    .param p1, "this$3"    # Lorg/crosswalk/engine/XWalkWebViewEngine$2$1$1;

    .prologue
    .line 109
    iput-object p1, p0, Lorg/crosswalk/engine/XWalkWebViewEngine$2$1$1$1;->this$3:Lorg/crosswalk/engine/XWalkWebViewEngine$2$1$1;

    invoke-direct {p0}, Lorg/xwalk/core/XWalkGetBitmapCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishGetBitmap(Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "response"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine$2$1$1$1;->this$3:Lorg/crosswalk/engine/XWalkWebViewEngine$2$1$1;

    iget-object v0, v0, Lorg/crosswalk/engine/XWalkWebViewEngine$2$1$1;->this$2:Lorg/crosswalk/engine/XWalkWebViewEngine$2$1;

    iget-object v0, v0, Lorg/crosswalk/engine/XWalkWebViewEngine$2$1;->this$1:Lorg/crosswalk/engine/XWalkWebViewEngine$2;

    iget-object v0, v0, Lorg/crosswalk/engine/XWalkWebViewEngine$2;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v0, v0, Lorg/crosswalk/engine/XWalkWebViewEngine;->pluginManager:Lorg/apache/cordova/PluginManager;

    const-string v1, "onGotXWalkBitmap"

    invoke-virtual {v0, v1, p1}, Lorg/apache/cordova/PluginManager;->postMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    return-void
.end method
