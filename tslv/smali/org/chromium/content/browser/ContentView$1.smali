.class Lorg/chromium/content/browser/ContentView$1;
.super Ljava/lang/Object;
.source "ContentView.java"

# interfaces
.implements Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/ContentView;->setSmartClipResultHandler(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/ContentView;

.field final synthetic val$resultHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/ContentView;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lorg/chromium/content/browser/ContentView$1;->this$0:Lorg/chromium/content/browser/ContentView;

    iput-object p2, p0, Lorg/chromium/content/browser/ContentView$1;->val$resultHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSmartClipDataExtracted(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "html"    # Ljava/lang/String;
    .param p3, "clipRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x0

    .line 298
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 299
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "url"

    iget-object v4, p0, Lorg/chromium/content/browser/ContentView$1;->this$0:Lorg/chromium/content/browser/ContentView;

    iget-object v4, v4, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v4

    invoke-interface {v4}, Lorg/chromium/content_public/browser/WebContents;->getVisibleUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v3, "title"

    iget-object v4, p0, Lorg/chromium/content/browser/ContentView$1;->this$0:Lorg/chromium/content/browser/ContentView;

    iget-object v4, v4, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v4

    invoke-interface {v4}, Lorg/chromium/content_public/browser/WebContents;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v3, "rect"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 302
    const-string v3, "text"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v3, "html"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :try_start_0
    iget-object v3, p0, Lorg/chromium/content/browser/ContentView$1;->val$resultHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 306
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 307
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .end local v2    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v1

    .line 309
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "cr.ContentView"

    const-string v4, "Error calling handler for smart clip data: "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
