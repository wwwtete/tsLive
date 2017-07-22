.class Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;
.super Ljava/lang/Object;
.source "LiveSDKPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->startLive(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;

.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$context:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p1, "this$0"    # Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;

    .prologue
    .line 97
    iput-object p1, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;->this$0:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;

    iput-object p2, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;->val$address:Ljava/lang/String;

    iput-object p3, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;->val$context:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 101
    iget-object v5, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;->this$0:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;

    iget-object v5, v5, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 102
    .local v1, "containerView":Landroid/widget/FrameLayout;
    if-nez v1, :cond_0

    .line 103
    new-instance v1, Landroid/widget/FrameLayout;

    .end local v1    # "containerView":Landroid/widget/FrameLayout;
    iget-object v5, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;->this$0:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;

    iget-object v5, v5, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 104
    .restart local v1    # "containerView":Landroid/widget/FrameLayout;
    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setId(I)V

    .line 106
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 109
    .local v0, "containerLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;->this$0:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;

    iget-object v5, v5, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v1, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    .end local v0    # "containerLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v5, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;->this$0:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;

    iget-object v5, v5, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->fragment:Landroid/app/Fragment;

    if-nez v5, :cond_1

    .line 113
    iget-object v5, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;->this$0:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;

    new-instance v6, Lio/nuwa/live/app/sdk/plugin/livekit/PreviewFragment;

    invoke-direct {v6}, Lio/nuwa/live/app/sdk/plugin/livekit/PreviewFragment;-><init>()V

    iput-object v6, v5, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->fragment:Landroid/app/Fragment;

    .line 115
    iget-object v5, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;->this$0:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;

    iget-object v5, v5, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 116
    .local v2, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 117
    .local v3, "fragmentTransaction":Landroid/app/FragmentTransaction;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v5

    iget-object v6, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;->this$0:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;

    iget-object v6, v6, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->fragment:Landroid/app/Fragment;

    invoke-virtual {v3, v5, v6}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 118
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 120
    iget-object v5, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;->this$0:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;

    iget-object v5, v5, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaWebView;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x106000d

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 122
    iget-object v5, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;->this$0:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;

    iget-object v5, v5, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaWebView;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 123
    .local v4, "layout":Landroid/widget/FrameLayout;
    iget-object v5, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;->this$0:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;

    iget-object v5, v5, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaWebView;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->bringToFront()V

    .line 124
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 125
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->invalidate()V

    .line 126
    iget-object v5, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;->this$0:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;

    iget-object v5, v5, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaWebView;->getView()Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;->this$0:Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;

    iget-object v6, v6, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v6}, Lorg/apache/cordova/CordovaWebView;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/FrameLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    .end local v2    # "fragmentManager":Landroid/app/FragmentManager;
    .end local v3    # "fragmentTransaction":Landroid/app/FragmentTransaction;
    .end local v4    # "layout":Landroid/widget/FrameLayout;
    :cond_1
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1$1;

    invoke-direct {v6, p0}, Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1$1;-><init>(Lio/nuwa/live/app/sdk/plugin/livekit/LiveSDKPlugin$1;)V

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    return-void
.end method
