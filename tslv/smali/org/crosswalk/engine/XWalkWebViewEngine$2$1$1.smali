.class Lorg/crosswalk/engine/XWalkWebViewEngine$2$1$1;
.super Ljava/lang/Object;
.source "XWalkWebViewEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/crosswalk/engine/XWalkWebViewEngine$2$1;->onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/crosswalk/engine/XWalkWebViewEngine$2$1;


# direct methods
.method constructor <init>(Lorg/crosswalk/engine/XWalkWebViewEngine$2$1;)V
    .locals 0
    .param p1, "this$2"    # Lorg/crosswalk/engine/XWalkWebViewEngine$2$1;

    .prologue
    .line 106
    iput-object p1, p0, Lorg/crosswalk/engine/XWalkWebViewEngine$2$1$1;->this$2:Lorg/crosswalk/engine/XWalkWebViewEngine$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkWebViewEngine$2$1$1;->this$2:Lorg/crosswalk/engine/XWalkWebViewEngine$2$1;

    iget-object v0, v0, Lorg/crosswalk/engine/XWalkWebViewEngine$2$1;->this$1:Lorg/crosswalk/engine/XWalkWebViewEngine$2;

    iget-object v0, v0, Lorg/crosswalk/engine/XWalkWebViewEngine$2;->this$0:Lorg/crosswalk/engine/XWalkWebViewEngine;

    iget-object v0, v0, Lorg/crosswalk/engine/XWalkWebViewEngine;->webView:Lorg/crosswalk/engine/XWalkCordovaView;

    new-instance v1, Lorg/crosswalk/engine/XWalkWebViewEngine$2$1$1$1;

    invoke-direct {v1, p0}, Lorg/crosswalk/engine/XWalkWebViewEngine$2$1$1$1;-><init>(Lorg/crosswalk/engine/XWalkWebViewEngine$2$1$1;)V

    invoke-virtual {v0, v1}, Lorg/crosswalk/engine/XWalkCordovaView;->captureBitmapAsync(Lorg/xwalk/core/XWalkGetBitmapCallback;)V

    .line 117
    return-void
.end method
