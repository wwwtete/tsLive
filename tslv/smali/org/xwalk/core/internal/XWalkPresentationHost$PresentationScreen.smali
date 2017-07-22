.class final Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;
.super Landroid/app/Presentation;
.source "XWalkPresentationHost.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xwalk/core/internal/XWalkPresentationHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PresentationScreen"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContentView:Lorg/xwalk/core/internal/XWalkViewInternal;

.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mSession:Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;

.field final synthetic this$0:Lorg/xwalk/core/internal/XWalkPresentationHost;


# direct methods
.method public constructor <init>(Lorg/xwalk/core/internal/XWalkPresentationHost;Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;Landroid/view/Display;)V
    .locals 1
    .param p2, "session"    # Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;
    .param p3, "display"    # Landroid/view/Display;

    .prologue
    .line 243
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;->this$0:Lorg/xwalk/core/internal/XWalkPresentationHost;

    .line 244
    iget-object v0, p2, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;->context:Landroid/content/Context;

    invoke-direct {p0, v0, p3}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 246
    iput-object p2, p0, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;->mSession:Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;

    .line 247
    iget-object v0, p2, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;->context:Landroid/content/Context;

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;->mContext:Landroid/content/Context;

    .line 248
    iput-object p3, p0, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;->mDisplay:Landroid/view/Display;

    .line 249
    iget-object v0, p2, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;->activity:Landroid/app/Activity;

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;->mActivity:Landroid/app/Activity;

    .line 250
    return-void
.end method


# virtual methods
.method public loadUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 271
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;->mContentView:Lorg/xwalk/core/internal/XWalkViewInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->load(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 254
    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    .line 256
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;->mContentView:Lorg/xwalk/core/internal/XWalkViewInternal;

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lorg/xwalk/core/internal/XWalkViewInternal;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;->mContentView:Lorg/xwalk/core/internal/XWalkViewInternal;

    .line 258
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;->mContentView:Lorg/xwalk/core/internal/XWalkViewInternal;

    new-instance v1, Lorg/xwalk/core/internal/XWalkUIClientInternal;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;->mContentView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-direct {v1, v2}, Lorg/xwalk/core/internal/XWalkUIClientInternal;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->setUIClient(Lorg/xwalk/core/internal/XWalkUIClientInternal;)V

    .line 260
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;->mContentView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {p0, v0}, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;->setContentView(Landroid/view/View;)V

    .line 261
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 265
    invoke-super {p0}, Landroid/app/Presentation;->onStop()V

    .line 267
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;->mSession:Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkPresentationHost;->onPresentationScreenClose(Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;)V

    .line 268
    return-void
.end method
