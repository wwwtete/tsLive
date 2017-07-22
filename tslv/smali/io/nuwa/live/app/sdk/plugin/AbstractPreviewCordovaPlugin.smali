.class public Lio/nuwa/live/app/sdk/plugin/AbstractPreviewCordovaPlugin;
.super Lorg/apache/cordova/CordovaPlugin;
.source "AbstractPreviewCordovaPlugin.java"


# instance fields
.field private final containerViewId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 10
    const/4 v0, 0x1

    iput v0, p0, Lio/nuwa/live/app/sdk/plugin/AbstractPreviewCordovaPlugin;->containerViewId:I

    return-void
.end method


# virtual methods
.method public attachFragment(Landroid/app/Fragment;)V
    .locals 9
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 31
    iget-object v6, p0, Lio/nuwa/live/app/sdk/plugin/AbstractPreviewCordovaPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 32
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 33
    .local v2, "containerView":Landroid/widget/FrameLayout;
    if-nez v2, :cond_0

    .line 34
    new-instance v2, Landroid/widget/FrameLayout;

    .end local v2    # "containerView":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    .restart local v2    # "containerView":Landroid/widget/FrameLayout;
    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setId(I)V

    .line 37
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 40
    .local v1, "containerLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    .end local v1    # "containerLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    .line 44
    .local v3, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 45
    .local v4, "fragmentTransaction":Landroid/app/FragmentTransaction;
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getId()I

    move-result v6

    invoke-virtual {v4, v6, p1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 46
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 48
    iget-object v6, p0, Lio/nuwa/live/app/sdk/plugin/AbstractPreviewCordovaPlugin;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v6}, Lorg/apache/cordova/CordovaWebView;->getView()Landroid/view/View;

    move-result-object v6

    const v7, 0x106000d

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 50
    iget-object v6, p0, Lio/nuwa/live/app/sdk/plugin/AbstractPreviewCordovaPlugin;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v6}, Lorg/apache/cordova/CordovaWebView;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 51
    .local v5, "layout":Landroid/widget/FrameLayout;
    iget-object v6, p0, Lio/nuwa/live/app/sdk/plugin/AbstractPreviewCordovaPlugin;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v6}, Lorg/apache/cordova/CordovaWebView;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->bringToFront()V

    .line 52
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 53
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->invalidate()V

    .line 54
    iget-object v6, p0, Lio/nuwa/live/app/sdk/plugin/AbstractPreviewCordovaPlugin;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v6}, Lorg/apache/cordova/CordovaWebView;->getView()Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lio/nuwa/live/app/sdk/plugin/AbstractPreviewCordovaPlugin;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v7}, Lorg/apache/cordova/CordovaWebView;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/FrameLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    return-void
.end method

.method public bringWebViewToFront()V
    .locals 3

    .prologue
    .line 16
    iget-object v1, p0, Lio/nuwa/live/app/sdk/plugin/AbstractPreviewCordovaPlugin;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaWebView;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 18
    iget-object v1, p0, Lio/nuwa/live/app/sdk/plugin/AbstractPreviewCordovaPlugin;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaWebView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 19
    .local v0, "layout":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lio/nuwa/live/app/sdk/plugin/AbstractPreviewCordovaPlugin;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaWebView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 20
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 21
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 22
    iget-object v1, p0, Lio/nuwa/live/app/sdk/plugin/AbstractPreviewCordovaPlugin;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaWebView;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lio/nuwa/live/app/sdk/plugin/AbstractPreviewCordovaPlugin;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaWebView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    return-void
.end method

.method public detachFragment()V
    .locals 3

    .prologue
    .line 59
    iget-object v1, p0, Lio/nuwa/live/app/sdk/plugin/AbstractPreviewCordovaPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 60
    .local v0, "layout":Landroid/widget/FrameLayout;
    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    goto :goto_0
.end method
