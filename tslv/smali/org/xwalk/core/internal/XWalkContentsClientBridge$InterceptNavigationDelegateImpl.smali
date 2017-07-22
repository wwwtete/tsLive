.class Lorg/xwalk/core/internal/XWalkContentsClientBridge$InterceptNavigationDelegateImpl;
.super Ljava/lang/Object;
.source "XWalkContentsClientBridge.java"

# interfaces
.implements Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xwalk/core/internal/XWalkContentsClientBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterceptNavigationDelegateImpl"
.end annotation


# instance fields
.field private mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

.field final synthetic this$0:Lorg/xwalk/core/internal/XWalkContentsClientBridge;


# direct methods
.method public constructor <init>(Lorg/xwalk/core/internal/XWalkContentsClientBridge;Lorg/xwalk/core/internal/XWalkContentsClient;)V
    .locals 0
    .param p2, "client"    # Lorg/xwalk/core/internal/XWalkContentsClient;

    .prologue
    .line 91
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$InterceptNavigationDelegateImpl;->this$0:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p2, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$InterceptNavigationDelegateImpl;->mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    .line 93
    return-void
.end method


# virtual methods
.method public shouldIgnoreNavigation(Lorg/chromium/components/navigation_interception/NavigationParams;)Z
    .locals 5
    .param p1, "navigationParams"    # Lorg/chromium/components/navigation_interception/NavigationParams;

    .prologue
    .line 96
    iget-object v2, p1, Lorg/chromium/components/navigation_interception/NavigationParams;->url:Ljava/lang/String;

    .line 97
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$InterceptNavigationDelegateImpl;->this$0:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-static {v3}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->access$000(Lorg/xwalk/core/internal/XWalkContentsClientBridge;)Lorg/xwalk/core/internal/XWalkNavigationHandler;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$InterceptNavigationDelegateImpl;->this$0:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-static {v3}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->access$000(Lorg/xwalk/core/internal/XWalkContentsClientBridge;)Lorg/xwalk/core/internal/XWalkNavigationHandler;

    move-result-object v3

    invoke-interface {v3, p1}, Lorg/xwalk/core/internal/XWalkNavigationHandler;->handleNavigation(Lorg/chromium/components/navigation_interception/NavigationParams;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 100
    .local v1, "ignoreNavigation":Z
    :goto_0
    if-nez v1, :cond_0

    .line 102
    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$InterceptNavigationDelegateImpl;->this$0:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-static {v3}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->access$000(Lorg/xwalk/core/internal/XWalkContentsClientBridge;)Lorg/xwalk/core/internal/XWalkNavigationHandler;

    move-result-object v3

    invoke-interface {v3}, Lorg/xwalk/core/internal/XWalkNavigationHandler;->getFallbackUrl()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "fallbackUrl":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 104
    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$InterceptNavigationDelegateImpl;->this$0:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-static {v3}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->access$000(Lorg/xwalk/core/internal/XWalkContentsClientBridge;)Lorg/xwalk/core/internal/XWalkNavigationHandler;

    move-result-object v3

    invoke-interface {v3}, Lorg/xwalk/core/internal/XWalkNavigationHandler;->resetFallbackUrl()V

    .line 105
    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$InterceptNavigationDelegateImpl;->this$0:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-static {v3}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->access$100(Lorg/xwalk/core/internal/XWalkContentsClientBridge;)Lorg/xwalk/core/internal/XWalkViewInternal;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lorg/xwalk/core/internal/XWalkViewInternal;->load(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .end local v0    # "fallbackUrl":Ljava/lang/String;
    :cond_0
    :goto_1
    return v1

    .line 97
    .end local v1    # "ignoreNavigation":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 108
    .restart local v0    # "fallbackUrl":Ljava/lang/String;
    .restart local v1    # "ignoreNavigation":Z
    :cond_2
    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$InterceptNavigationDelegateImpl;->mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    invoke-virtual {v3}, Lorg/xwalk/core/internal/XWalkContentsClient;->getCallbackHelper()Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;->postOnPageStarted(Ljava/lang/String;)V

    goto :goto_1
.end method
