.class public Lorg/xwalk/core/XWalkView;
.super Landroid/widget/FrameLayout;
.source "XWalkView.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ANIMATABLE:Ljava/lang/String; = "animatable"

.field public static final RELOAD_IGNORE_CACHE:I = 0x1

.field public static final RELOAD_NORMAL:I = 0x0

.field public static final SURFACE_VIEW:Ljava/lang/String; = "SurfaceView"

.field public static final TEXTURE_VIEW:Ljava/lang/String; = "TextureView"

.field private static final XWALK_ATTRS_NAMESPACE:Ljava/lang/String; = "http://schemas.android.com/apk/res-auto"


# instance fields
.field private addJavascriptInterfaceObjectStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private bridge:Ljava/lang/Object;

.field private canZoomInMethod:Lorg/xwalk/core/ReflectMethod;

.field private canZoomOutMethod:Lorg/xwalk/core/ReflectMethod;

.field private captureBitmapAsyncXWalkGetBitmapCallbackInternalMethod:Lorg/xwalk/core/ReflectMethod;

.field private clearCacheForSingleFileStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private clearCachebooleanMethod:Lorg/xwalk/core/ReflectMethod;

.field private clearClientCertPreferencesRunnableMethod:Lorg/xwalk/core/ReflectMethod;

.field private clearFormDataMethod:Lorg/xwalk/core/ReflectMethod;

.field private clearMatchesMethod:Lorg/xwalk/core/ReflectMethod;

.field private clearSslPreferencesMethod:Lorg/xwalk/core/ReflectMethod;

.field private computeHorizontalScrollOffsetMethod:Lorg/xwalk/core/ReflectMethod;

.field private computeHorizontalScrollRangeMethod:Lorg/xwalk/core/ReflectMethod;

.field private computeVerticalScrollExtentMethod:Lorg/xwalk/core/ReflectMethod;

.field private computeVerticalScrollOffsetMethod:Lorg/xwalk/core/ReflectMethod;

.field private computeVerticalScrollRangeMethod:Lorg/xwalk/core/ReflectMethod;

.field private constructorParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private constructorTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

.field private evaluateJavascriptStringValueCallbackMethod:Lorg/xwalk/core/ReflectMethod;

.field private findAllAsyncStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private findNextbooleanMethod:Lorg/xwalk/core/ReflectMethod;

.field private getAPIVersionMethod:Lorg/xwalk/core/ReflectMethod;

.field private getCertificateMethod:Lorg/xwalk/core/ReflectMethod;

.field private getCompositingSurfaceTypeMethod:Lorg/xwalk/core/ReflectMethod;

.field private getContentHeightMethod:Lorg/xwalk/core/ReflectMethod;

.field private getExtensionManagerMethod:Lorg/xwalk/core/ReflectMethod;

.field private getFaviconMethod:Lorg/xwalk/core/ReflectMethod;

.field private getHitTestResultMethod:Lorg/xwalk/core/ReflectMethod;

.field private getNavigationHistoryMethod:Lorg/xwalk/core/ReflectMethod;

.field private getOriginalUrlMethod:Lorg/xwalk/core/ReflectMethod;

.field private getRemoteDebuggingUrlMethod:Lorg/xwalk/core/ReflectMethod;

.field private getSettingsMethod:Lorg/xwalk/core/ReflectMethod;

.field private getTitleMethod:Lorg/xwalk/core/ReflectMethod;

.field private getUrlMethod:Lorg/xwalk/core/ReflectMethod;

.field private getUserAgentStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private getXWalkVersionMethod:Lorg/xwalk/core/ReflectMethod;

.field private hasEnteredFullscreenMethod:Lorg/xwalk/core/ReflectMethod;

.field private leaveFullscreenMethod:Lorg/xwalk/core/ReflectMethod;

.field private loadAppFromManifestStringStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private loadStringStringMapMethod:Lorg/xwalk/core/ReflectMethod;

.field private loadStringStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private mAnimatable:Ljava/lang/String;

.field private onActivityResultintintIntentMethod:Lorg/xwalk/core/ReflectMethod;

.field private onCreateInputConnectionEditorInfoMethod:Lorg/xwalk/core/ReflectMethod;

.field private onDestroyMethod:Lorg/xwalk/core/ReflectMethod;

.field private onHideMethod:Lorg/xwalk/core/ReflectMethod;

.field private onNewIntentIntentMethod:Lorg/xwalk/core/ReflectMethod;

.field private onShowMethod:Lorg/xwalk/core/ReflectMethod;

.field private onTouchEventMotionEventMethod:Lorg/xwalk/core/ReflectMethod;

.field private pauseTimersMethod:Lorg/xwalk/core/ReflectMethod;

.field private postWrapperMethod:Lorg/xwalk/core/ReflectMethod;

.field private reloadintMethod:Lorg/xwalk/core/ReflectMethod;

.field private removeJavascriptInterfaceStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private restoreStateBundleMethod:Lorg/xwalk/core/ReflectMethod;

.field private resumeTimersMethod:Lorg/xwalk/core/ReflectMethod;

.field private saveStateBundleMethod:Lorg/xwalk/core/ReflectMethod;

.field private scrollByintintMethod:Lorg/xwalk/core/ReflectMethod;

.field private scrollTointintMethod:Lorg/xwalk/core/ReflectMethod;

.field private setAcceptLanguagesStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private setBackgroundColorintMethod:Lorg/xwalk/core/ReflectMethod;

.field private setDownloadListenerXWalkDownloadListenerInternalMethod:Lorg/xwalk/core/ReflectMethod;

.field private setFindListenerXWalkFindListenerInternalMethod:Lorg/xwalk/core/ReflectMethod;

.field private setInitialScaleintMethod:Lorg/xwalk/core/ReflectMethod;

.field private setNetworkAvailablebooleanMethod:Lorg/xwalk/core/ReflectMethod;

.field private setOnTouchListenerOnTouchListenerMethod:Lorg/xwalk/core/ReflectMethod;

.field private setOriginAccessWhitelistStringStringArrayMethod:Lorg/xwalk/core/ReflectMethod;

.field private setResourceClientXWalkResourceClientInternalMethod:Lorg/xwalk/core/ReflectMethod;

.field private setSurfaceViewVisibilityintMethod:Lorg/xwalk/core/ReflectMethod;

.field private setUIClientXWalkUIClientInternalMethod:Lorg/xwalk/core/ReflectMethod;

.field private setUserAgentStringStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private setXWalkViewInternalVisibilityintMethod:Lorg/xwalk/core/ReflectMethod;

.field private setZOrderOnTopbooleanMethod:Lorg/xwalk/core/ReflectMethod;

.field private startActivityForResultIntentintBundleMethod:Lorg/xwalk/core/ReflectMethod;

.field private stopLoadingMethod:Lorg/xwalk/core/ReflectMethod;

.field private zoomByfloatMethod:Lorg/xwalk/core/ReflectMethod;

.field private zoomInMethod:Lorg/xwalk/core/ReflectMethod;

.field private zoomOutMethod:Lorg/xwalk/core/ReflectMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 217
    const-class v0, Lorg/xwalk/core/XWalkView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/xwalk/core/XWalkView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 266
    invoke-direct {p0, p1, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 392
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "load"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->loadStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 414
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "load"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->loadStringStringMapMethod:Lorg/xwalk/core/ReflectMethod;

    .line 441
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "loadAppFromManifest"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->loadAppFromManifestStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 461
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "reload"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->reloadintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 480
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "stopLoading"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->stopLoadingMethod:Lorg/xwalk/core/ReflectMethod;

    .line 501
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getUrl"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getUrlMethod:Lorg/xwalk/core/ReflectMethod;

    .line 521
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getHitTestResult"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getHitTestResultMethod:Lorg/xwalk/core/ReflectMethod;

    .line 543
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getContentHeight"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getContentHeightMethod:Lorg/xwalk/core/ReflectMethod;

    .line 564
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getTitle"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getTitleMethod:Lorg/xwalk/core/ReflectMethod;

    .line 584
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getOriginalUrl"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getOriginalUrlMethod:Lorg/xwalk/core/ReflectMethod;

    .line 605
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getNavigationHistory"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getNavigationHistoryMethod:Lorg/xwalk/core/ReflectMethod;

    .line 629
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "addJavascriptInterface"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->addJavascriptInterfaceObjectStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 652
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "removeJavascriptInterface"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->removeJavascriptInterfaceStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 673
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "evaluateJavascript"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->evaluateJavascriptStringValueCallbackMethod:Lorg/xwalk/core/ReflectMethod;

    .line 694
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "clearCache"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->clearCachebooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 715
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "clearCacheForSingleFile"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->clearCacheForSingleFileStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 735
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "hasEnteredFullscreen"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->hasEnteredFullscreenMethod:Lorg/xwalk/core/ReflectMethod;

    .line 755
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "leaveFullscreen"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->leaveFullscreenMethod:Lorg/xwalk/core/ReflectMethod;

    .line 780
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "pauseTimers"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->pauseTimersMethod:Lorg/xwalk/core/ReflectMethod;

    .line 805
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "resumeTimers"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->resumeTimersMethod:Lorg/xwalk/core/ReflectMethod;

    .line 828
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onHide"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onHideMethod:Lorg/xwalk/core/ReflectMethod;

    .line 851
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onShow"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onShowMethod:Lorg/xwalk/core/ReflectMethod;

    .line 872
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onDestroy"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onDestroyMethod:Lorg/xwalk/core/ReflectMethod;

    .line 892
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "startActivityForResult"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->startActivityForResultIntentintBundleMethod:Lorg/xwalk/core/ReflectMethod;

    .line 917
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onActivityResult"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onActivityResultintintIntentMethod:Lorg/xwalk/core/ReflectMethod;

    .line 940
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onNewIntent"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onNewIntentIntentMethod:Lorg/xwalk/core/ReflectMethod;

    .line 961
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "saveState"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->saveStateBundleMethod:Lorg/xwalk/core/ReflectMethod;

    .line 982
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "restoreState"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->restoreStateBundleMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1002
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getAPIVersion"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getAPIVersionMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1022
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getXWalkVersion"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getXWalkVersionMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1044
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setUIClient"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setUIClientXWalkUIClientInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1066
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setResourceClient"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setResourceClientXWalkResourceClientInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1082
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setBackgroundColor"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setBackgroundColorintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1103
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setOriginAccessWhitelist"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setOriginAccessWhitelistStringStringArrayMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1127
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setUserAgentString"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setUserAgentStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1147
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getUserAgentString"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getUserAgentStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1167
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setAcceptLanguages"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setAcceptLanguagesStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1187
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "captureBitmapAsync"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->captureBitmapAsyncXWalkGetBitmapCallbackInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1207
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getSettings"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getSettingsMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1226
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setNetworkAvailable"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setNetworkAvailablebooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1247
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getRemoteDebuggingUrl"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getRemoteDebuggingUrlMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1267
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "zoomIn"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->zoomInMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1287
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "zoomOut"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->zoomOutMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1309
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "zoomBy"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->zoomByfloatMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1329
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "canZoomIn"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->canZoomInMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1349
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "canZoomOut"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->canZoomOutMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1371
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onCreateInputConnection"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onCreateInputConnectionEditorInfoMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1391
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setInitialScale"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setInitialScaleintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1411
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getFavicon"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getFaviconMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1432
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setZOrderOnTop"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setZOrderOnTopbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1454
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "clearFormData"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->clearFormDataMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1486
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setSurfaceViewVisibility"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setSurfaceViewVisibilityintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1507
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setXWalkViewInternalVisibility"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setXWalkViewInternalVisibilityintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1530
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setDownloadListener"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setDownloadListenerXWalkDownloadListenerInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1552
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onTouchEvent"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onTouchEventMotionEventMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1577
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setOnTouchListener"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setOnTouchListenerOnTouchListenerMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1593
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "scrollTo"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->scrollTointintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1609
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "scrollBy"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->scrollByintintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1629
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "computeHorizontalScrollRange"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->computeHorizontalScrollRangeMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1650
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "computeHorizontalScrollOffset"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->computeHorizontalScrollOffsetMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1670
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "computeVerticalScrollRange"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->computeVerticalScrollRangeMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1691
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "computeVerticalScrollOffset"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->computeVerticalScrollOffsetMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1712
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "computeVerticalScrollExtent"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->computeVerticalScrollExtentMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1732
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getExtensionManager"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getExtensionManagerMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1752
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "clearSslPreferences"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->clearSslPreferencesMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1772
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "clearClientCertPreferences"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->clearClientCertPreferencesRunnableMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1793
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getCertificate"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getCertificateMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1815
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setFindListener"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setFindListenerXWalkFindListenerInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1838
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "findAllAsync"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->findAllAsyncStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1863
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "findNext"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->findNextbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1883
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "clearMatches"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->clearMatchesMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1903
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getCompositingSurfaceType"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getCompositingSurfaceTypeMethod:Lorg/xwalk/core/ReflectMethod;

    .line 267
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 268
    .local v0, "surfaceView":Landroid/view/SurfaceView;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    invoke-virtual {p0, v0}, Lorg/xwalk/core/XWalkView;->addView(Landroid/view/View;)V

    .line 271
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->constructorTypes:Ljava/util/ArrayList;

    .line 272
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->constructorTypes:Ljava/util/ArrayList;

    const-class v2, Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->constructorParams:Ljava/util/ArrayList;

    .line 275
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "postXWalkViewInternalContextConstructor"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, p0, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->postWrapperMethod:Lorg/xwalk/core/ReflectMethod;

    .line 280
    invoke-virtual {p0}, Lorg/xwalk/core/XWalkView;->reflectionInit()V

    .line 281
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 337
    invoke-direct {p0, p1, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 392
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "load"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->loadStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 414
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "load"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->loadStringStringMapMethod:Lorg/xwalk/core/ReflectMethod;

    .line 441
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "loadAppFromManifest"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->loadAppFromManifestStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 461
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "reload"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->reloadintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 480
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "stopLoading"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->stopLoadingMethod:Lorg/xwalk/core/ReflectMethod;

    .line 501
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getUrl"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getUrlMethod:Lorg/xwalk/core/ReflectMethod;

    .line 521
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getHitTestResult"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getHitTestResultMethod:Lorg/xwalk/core/ReflectMethod;

    .line 543
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getContentHeight"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getContentHeightMethod:Lorg/xwalk/core/ReflectMethod;

    .line 564
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getTitle"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getTitleMethod:Lorg/xwalk/core/ReflectMethod;

    .line 584
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getOriginalUrl"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getOriginalUrlMethod:Lorg/xwalk/core/ReflectMethod;

    .line 605
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getNavigationHistory"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getNavigationHistoryMethod:Lorg/xwalk/core/ReflectMethod;

    .line 629
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "addJavascriptInterface"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->addJavascriptInterfaceObjectStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 652
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "removeJavascriptInterface"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->removeJavascriptInterfaceStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 673
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "evaluateJavascript"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->evaluateJavascriptStringValueCallbackMethod:Lorg/xwalk/core/ReflectMethod;

    .line 694
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "clearCache"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->clearCachebooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 715
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "clearCacheForSingleFile"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->clearCacheForSingleFileStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 735
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "hasEnteredFullscreen"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->hasEnteredFullscreenMethod:Lorg/xwalk/core/ReflectMethod;

    .line 755
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "leaveFullscreen"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->leaveFullscreenMethod:Lorg/xwalk/core/ReflectMethod;

    .line 780
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "pauseTimers"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->pauseTimersMethod:Lorg/xwalk/core/ReflectMethod;

    .line 805
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "resumeTimers"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->resumeTimersMethod:Lorg/xwalk/core/ReflectMethod;

    .line 828
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onHide"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onHideMethod:Lorg/xwalk/core/ReflectMethod;

    .line 851
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onShow"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onShowMethod:Lorg/xwalk/core/ReflectMethod;

    .line 872
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onDestroy"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onDestroyMethod:Lorg/xwalk/core/ReflectMethod;

    .line 892
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "startActivityForResult"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->startActivityForResultIntentintBundleMethod:Lorg/xwalk/core/ReflectMethod;

    .line 917
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onActivityResult"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onActivityResultintintIntentMethod:Lorg/xwalk/core/ReflectMethod;

    .line 940
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onNewIntent"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onNewIntentIntentMethod:Lorg/xwalk/core/ReflectMethod;

    .line 961
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "saveState"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->saveStateBundleMethod:Lorg/xwalk/core/ReflectMethod;

    .line 982
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "restoreState"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->restoreStateBundleMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1002
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getAPIVersion"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getAPIVersionMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1022
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getXWalkVersion"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getXWalkVersionMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1044
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setUIClient"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setUIClientXWalkUIClientInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1066
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setResourceClient"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setResourceClientXWalkResourceClientInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1082
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setBackgroundColor"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setBackgroundColorintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1103
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setOriginAccessWhitelist"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setOriginAccessWhitelistStringStringArrayMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1127
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setUserAgentString"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setUserAgentStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1147
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getUserAgentString"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getUserAgentStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1167
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setAcceptLanguages"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setAcceptLanguagesStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1187
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "captureBitmapAsync"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->captureBitmapAsyncXWalkGetBitmapCallbackInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1207
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getSettings"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getSettingsMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1226
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setNetworkAvailable"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setNetworkAvailablebooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1247
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getRemoteDebuggingUrl"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getRemoteDebuggingUrlMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1267
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "zoomIn"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->zoomInMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1287
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "zoomOut"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->zoomOutMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1309
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "zoomBy"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->zoomByfloatMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1329
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "canZoomIn"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->canZoomInMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1349
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "canZoomOut"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->canZoomOutMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1371
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onCreateInputConnection"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onCreateInputConnectionEditorInfoMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1391
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setInitialScale"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setInitialScaleintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1411
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getFavicon"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getFaviconMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1432
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setZOrderOnTop"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setZOrderOnTopbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1454
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "clearFormData"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->clearFormDataMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1486
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setSurfaceViewVisibility"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setSurfaceViewVisibilityintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1507
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setXWalkViewInternalVisibility"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setXWalkViewInternalVisibilityintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1530
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setDownloadListener"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setDownloadListenerXWalkDownloadListenerInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1552
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onTouchEvent"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onTouchEventMotionEventMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1577
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setOnTouchListener"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setOnTouchListenerOnTouchListenerMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1593
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "scrollTo"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->scrollTointintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1609
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "scrollBy"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->scrollByintintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1629
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "computeHorizontalScrollRange"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->computeHorizontalScrollRangeMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1650
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "computeHorizontalScrollOffset"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->computeHorizontalScrollOffsetMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1670
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "computeVerticalScrollRange"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->computeVerticalScrollRangeMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1691
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "computeVerticalScrollOffset"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->computeVerticalScrollOffsetMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1712
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "computeVerticalScrollExtent"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->computeVerticalScrollExtentMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1732
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getExtensionManager"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getExtensionManagerMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1752
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "clearSslPreferences"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->clearSslPreferencesMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1772
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "clearClientCertPreferences"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->clearClientCertPreferencesRunnableMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1793
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getCertificate"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getCertificateMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1815
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setFindListener"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setFindListenerXWalkFindListenerInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1838
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "findAllAsync"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->findAllAsyncStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1863
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "findNext"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->findNextbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1883
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "clearMatches"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->clearMatchesMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1903
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getCompositingSurfaceType"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getCompositingSurfaceTypeMethod:Lorg/xwalk/core/ReflectMethod;

    .line 338
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 339
    .local v0, "surfaceView":Landroid/view/SurfaceView;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    invoke-virtual {p0, v0}, Lorg/xwalk/core/XWalkView;->addView(Landroid/view/View;)V

    .line 342
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->constructorTypes:Ljava/util/ArrayList;

    .line 343
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->constructorTypes:Ljava/util/ArrayList;

    const-class v2, Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->constructorTypes:Ljava/util/ArrayList;

    const-class v2, Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->constructorParams:Ljava/util/ArrayList;

    .line 347
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "postXWalkViewInternalContextActivityConstructor"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, p0, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->postWrapperMethod:Lorg/xwalk/core/ReflectMethod;

    .line 353
    invoke-virtual {p0}, Lorg/xwalk/core/XWalkView;->reflectionInit()V

    .line 354
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 298
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 392
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "load"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->loadStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 414
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "load"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->loadStringStringMapMethod:Lorg/xwalk/core/ReflectMethod;

    .line 441
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "loadAppFromManifest"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->loadAppFromManifestStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 461
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "reload"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->reloadintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 480
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "stopLoading"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->stopLoadingMethod:Lorg/xwalk/core/ReflectMethod;

    .line 501
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getUrl"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getUrlMethod:Lorg/xwalk/core/ReflectMethod;

    .line 521
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getHitTestResult"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getHitTestResultMethod:Lorg/xwalk/core/ReflectMethod;

    .line 543
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getContentHeight"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getContentHeightMethod:Lorg/xwalk/core/ReflectMethod;

    .line 564
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getTitle"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getTitleMethod:Lorg/xwalk/core/ReflectMethod;

    .line 584
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getOriginalUrl"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getOriginalUrlMethod:Lorg/xwalk/core/ReflectMethod;

    .line 605
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getNavigationHistory"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getNavigationHistoryMethod:Lorg/xwalk/core/ReflectMethod;

    .line 629
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "addJavascriptInterface"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->addJavascriptInterfaceObjectStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 652
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "removeJavascriptInterface"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->removeJavascriptInterfaceStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 673
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "evaluateJavascript"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->evaluateJavascriptStringValueCallbackMethod:Lorg/xwalk/core/ReflectMethod;

    .line 694
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "clearCache"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->clearCachebooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 715
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "clearCacheForSingleFile"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->clearCacheForSingleFileStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 735
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "hasEnteredFullscreen"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->hasEnteredFullscreenMethod:Lorg/xwalk/core/ReflectMethod;

    .line 755
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "leaveFullscreen"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->leaveFullscreenMethod:Lorg/xwalk/core/ReflectMethod;

    .line 780
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "pauseTimers"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->pauseTimersMethod:Lorg/xwalk/core/ReflectMethod;

    .line 805
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "resumeTimers"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->resumeTimersMethod:Lorg/xwalk/core/ReflectMethod;

    .line 828
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onHide"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onHideMethod:Lorg/xwalk/core/ReflectMethod;

    .line 851
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onShow"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onShowMethod:Lorg/xwalk/core/ReflectMethod;

    .line 872
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onDestroy"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onDestroyMethod:Lorg/xwalk/core/ReflectMethod;

    .line 892
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "startActivityForResult"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->startActivityForResultIntentintBundleMethod:Lorg/xwalk/core/ReflectMethod;

    .line 917
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onActivityResult"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onActivityResultintintIntentMethod:Lorg/xwalk/core/ReflectMethod;

    .line 940
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onNewIntent"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onNewIntentIntentMethod:Lorg/xwalk/core/ReflectMethod;

    .line 961
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "saveState"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->saveStateBundleMethod:Lorg/xwalk/core/ReflectMethod;

    .line 982
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "restoreState"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->restoreStateBundleMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1002
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getAPIVersion"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getAPIVersionMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1022
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getXWalkVersion"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getXWalkVersionMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1044
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setUIClient"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setUIClientXWalkUIClientInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1066
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setResourceClient"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setResourceClientXWalkResourceClientInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1082
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setBackgroundColor"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setBackgroundColorintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1103
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setOriginAccessWhitelist"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setOriginAccessWhitelistStringStringArrayMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1127
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setUserAgentString"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setUserAgentStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1147
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getUserAgentString"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getUserAgentStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1167
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setAcceptLanguages"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setAcceptLanguagesStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1187
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "captureBitmapAsync"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->captureBitmapAsyncXWalkGetBitmapCallbackInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1207
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getSettings"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getSettingsMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1226
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setNetworkAvailable"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setNetworkAvailablebooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1247
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getRemoteDebuggingUrl"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getRemoteDebuggingUrlMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1267
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "zoomIn"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->zoomInMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1287
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "zoomOut"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->zoomOutMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1309
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "zoomBy"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->zoomByfloatMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1329
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "canZoomIn"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->canZoomInMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1349
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "canZoomOut"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->canZoomOutMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1371
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onCreateInputConnection"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onCreateInputConnectionEditorInfoMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1391
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setInitialScale"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setInitialScaleintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1411
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getFavicon"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getFaviconMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1432
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setZOrderOnTop"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setZOrderOnTopbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1454
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "clearFormData"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->clearFormDataMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1486
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setSurfaceViewVisibility"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setSurfaceViewVisibilityintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1507
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setXWalkViewInternalVisibility"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setXWalkViewInternalVisibilityintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1530
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setDownloadListener"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setDownloadListenerXWalkDownloadListenerInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1552
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "onTouchEvent"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->onTouchEventMotionEventMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1577
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setOnTouchListener"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setOnTouchListenerOnTouchListenerMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1593
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "scrollTo"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->scrollTointintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1609
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "scrollBy"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->scrollByintintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1629
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "computeHorizontalScrollRange"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->computeHorizontalScrollRangeMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1650
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "computeHorizontalScrollOffset"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->computeHorizontalScrollOffsetMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1670
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "computeVerticalScrollRange"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->computeVerticalScrollRangeMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1691
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "computeVerticalScrollOffset"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->computeVerticalScrollOffsetMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1712
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "computeVerticalScrollExtent"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->computeVerticalScrollExtentMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1732
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getExtensionManager"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getExtensionManagerMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1752
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "clearSslPreferences"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->clearSslPreferencesMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1772
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "clearClientCertPreferences"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->clearClientCertPreferencesRunnableMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1793
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getCertificate"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getCertificateMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1815
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "setFindListener"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->setFindListenerXWalkFindListenerInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1838
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "findAllAsync"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->findAllAsyncStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1863
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "findNext"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->findNextbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1883
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "clearMatches"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->clearMatchesMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1903
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "getCompositingSurfaceType"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->getCompositingSurfaceTypeMethod:Lorg/xwalk/core/ReflectMethod;

    .line 299
    invoke-virtual {p0}, Lorg/xwalk/core/XWalkView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    :goto_0
    return-void

    .line 300
    :cond_0
    if-eqz p2, :cond_1

    .line 301
    const-string v1, "http://schemas.android.com/apk/res-auto"

    const-string v2, "animatable"

    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->mAnimatable:Ljava/lang/String;

    .line 303
    :cond_1
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 304
    .local v0, "surfaceView":Landroid/view/SurfaceView;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    invoke-virtual {p0, v0}, Lorg/xwalk/core/XWalkView;->addView(Landroid/view/View;)V

    .line 307
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->constructorTypes:Ljava/util/ArrayList;

    .line 308
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->constructorTypes:Ljava/util/ArrayList;

    const-class v2, Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->constructorTypes:Ljava/util/ArrayList;

    const-class v2, Landroid/util/AttributeSet;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->constructorParams:Ljava/util/ArrayList;

    .line 312
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    new-instance v1, Lorg/xwalk/core/ReflectMethod;

    const-string v2, "postXWalkViewInternalContextAttributeSetConstructor"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v1, p0, v2, v3}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkView;->postWrapperMethod:Lorg/xwalk/core/ReflectMethod;

    .line 318
    invoke-virtual {p0}, Lorg/xwalk/core/XWalkView;->reflectionInit()V

    goto :goto_0
.end method

.method private onFocusChangedDelegate(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1558
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/XWalkView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1559
    return-void
.end method

.method private onOverScrolledDelegate(IIZZ)V
    .locals 0
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 1561
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/xwalk/core/XWalkView;->onOverScrolled(IIZZ)V

    .line 1562
    return-void
.end method

.method private onScrollChangedDelegate(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 1555
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/xwalk/core/XWalkView;->onScrollChanged(IIII)V

    .line 1556
    return-void
.end method

.method private onTouchEventDelegate(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1536
    invoke-virtual {p0, p1}, Lorg/xwalk/core/XWalkView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private performLongClickDelegate()Z
    .locals 1

    .prologue
    .line 1533
    invoke-virtual {p0}, Lorg/xwalk/core/XWalkView;->performLongClick()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 617
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->addJavascriptInterfaceObjectStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    :goto_0
    return-void

    .line 618
    :catch_0
    move-exception v0

    .line 619
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 620
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->addJavascriptInterfaceObjectStringMethod:Lorg/xwalk/core/ReflectMethod;

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->setArguments([Ljava/lang/Object;)V

    .line 621
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->addJavascriptInterfaceObjectStringMethod:Lorg/xwalk/core/ReflectMethod;

    invoke-static {v1}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectMethod(Lorg/xwalk/core/ReflectMethod;)V

    goto :goto_0

    .line 623
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public canZoomIn()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1318
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->canZoomInMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1326
    :goto_0
    return v1

    .line 1319
    :catch_0
    move-exception v0

    .line 1320
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1321
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 1326
    goto :goto_0

    .line 1323
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public canZoomOut()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1338
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->canZoomOutMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1346
    :goto_0
    return v1

    .line 1339
    :catch_0
    move-exception v0

    .line 1340
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1341
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 1346
    goto :goto_0

    .line 1343
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public captureBitmapAsync(Lorg/xwalk/core/XWalkGetBitmapCallback;)V
    .locals 5
    .param p1, "callback"    # Lorg/xwalk/core/XWalkGetBitmapCallback;

    .prologue
    .line 1176
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->captureBitmapAsyncXWalkGetBitmapCallbackInternalMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkGetBitmapCallback;->getBridge()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1185
    :goto_0
    return-void

    .line 1177
    :catch_0
    move-exception v0

    .line 1178
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1179
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 1181
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public clearCache(Z)V
    .locals 5
    .param p1, "includeDiskFiles"    # Z

    .prologue
    .line 683
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->clearCachebooleanMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    :goto_0
    return-void

    .line 684
    :catch_0
    move-exception v0

    .line 685
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 686
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 688
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public clearCacheForSingleFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 704
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->clearCacheForSingleFileStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    :goto_0
    return-void

    .line 705
    :catch_0
    move-exception v0

    .line 706
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 707
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 709
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public clearClientCertPreferences(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 1761
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->clearClientCertPreferencesRunnableMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1770
    :goto_0
    return-void

    .line 1762
    :catch_0
    move-exception v0

    .line 1763
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1764
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 1766
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public clearFormData()V
    .locals 3

    .prologue
    .line 1443
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->clearFormDataMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1452
    :goto_0
    return-void

    .line 1444
    :catch_0
    move-exception v0

    .line 1445
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1446
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 1448
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public clearMatches()V
    .locals 3

    .prologue
    .line 1872
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->clearMatchesMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1881
    :goto_0
    return-void

    .line 1873
    :catch_0
    move-exception v0

    .line 1874
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1875
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 1877
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public clearSslPreferences()V
    .locals 3

    .prologue
    .line 1741
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->clearSslPreferencesMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1750
    :goto_0
    return-void

    .line 1742
    :catch_0
    move-exception v0

    .line 1743
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1744
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 1746
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1639
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->computeHorizontalScrollOffsetMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1647
    :goto_0
    return v1

    .line 1640
    :catch_0
    move-exception v0

    .line 1641
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1642
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 1647
    goto :goto_0

    .line 1644
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public computeHorizontalScrollRange()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1618
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->computeHorizontalScrollRangeMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1626
    :goto_0
    return v1

    .line 1619
    :catch_0
    move-exception v0

    .line 1620
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1621
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 1626
    goto :goto_0

    .line 1623
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public computeVerticalScrollExtent()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1701
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->computeVerticalScrollExtentMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1709
    :goto_0
    return v1

    .line 1702
    :catch_0
    move-exception v0

    .line 1703
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1704
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 1709
    goto :goto_0

    .line 1706
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public computeVerticalScrollOffset()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1680
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->computeVerticalScrollOffsetMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1688
    :goto_0
    return v1

    .line 1681
    :catch_0
    move-exception v0

    .line 1682
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1683
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 1688
    goto :goto_0

    .line 1685
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public computeVerticalScrollRange()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1659
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->computeVerticalScrollRangeMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1667
    :goto_0
    return v1

    .line 1660
    :catch_0
    move-exception v0

    .line 1661
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1662
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 1667
    goto :goto_0

    .line 1664
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 4
    .param p1, "script"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 662
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->evaluateJavascriptStringValueCallbackMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    :goto_0
    return-void

    .line 663
    :catch_0
    move-exception v0

    .line 664
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 665
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 667
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public findAllAsync(Ljava/lang/String;)V
    .locals 4
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 1827
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->findAllAsyncStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1836
    :goto_0
    return-void

    .line 1828
    :catch_0
    move-exception v0

    .line 1829
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1830
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 1832
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public findNext(Z)V
    .locals 5
    .param p1, "forward"    # Z

    .prologue
    .line 1852
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->findNextbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1861
    :goto_0
    return-void

    .line 1853
    :catch_0
    move-exception v0

    .line 1854
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1855
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 1857
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public getAPIVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 991
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->getAPIVersionMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 999
    :goto_0
    return-object v1

    .line 992
    :catch_0
    move-exception v0

    .line 993
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 994
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 999
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 996
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method protected getBridge()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    return-object v0
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 3

    .prologue
    .line 1782
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->getCertificateMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/http/SslCertificate;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1790
    :goto_0
    return-object v1

    .line 1783
    :catch_0
    move-exception v0

    .line 1784
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1785
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 1790
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1787
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getCompositingSurfaceType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1892
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->getCompositingSurfaceTypeMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1900
    :goto_0
    return-object v1

    .line 1893
    :catch_0
    move-exception v0

    .line 1894
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1895
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 1900
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1897
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getContentHeight()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 532
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->getContentHeightMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 540
    :goto_0
    return v1

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 535
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 540
    goto :goto_0

    .line 537
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getExtensionManager()Lorg/xwalk/core/XWalkExternalExtensionManager;
    .locals 4

    .prologue
    .line 1721
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    iget-object v2, p0, Lorg/xwalk/core/XWalkView;->getExtensionManagerMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xwalk/core/XWalkCoreWrapper;->getWrapperObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xwalk/core/XWalkExternalExtensionManager;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1729
    :goto_0
    return-object v1

    .line 1722
    :catch_0
    move-exception v0

    .line 1723
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1724
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 1729
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1726
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 1400
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->getFaviconMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1408
    :goto_0
    return-object v1

    .line 1401
    :catch_0
    move-exception v0

    .line 1402
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1403
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 1408
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1405
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getHitTestResult()Lorg/xwalk/core/XWalkHitTestResult;
    .locals 4

    .prologue
    .line 510
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    iget-object v2, p0, Lorg/xwalk/core/XWalkView;->getHitTestResultMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xwalk/core/XWalkCoreWrapper;->getWrapperObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xwalk/core/XWalkHitTestResult;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    :goto_0
    return-object v1

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 513
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 518
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 515
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getNavigationHistory()Lorg/xwalk/core/XWalkNavigationHistory;
    .locals 4

    .prologue
    .line 594
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    iget-object v2, p0, Lorg/xwalk/core/XWalkView;->getNavigationHistoryMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xwalk/core/XWalkCoreWrapper;->getWrapperObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xwalk/core/XWalkNavigationHistory;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    :goto_0
    return-object v1

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 597
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 602
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 599
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 573
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->getOriginalUrlMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    :goto_0
    return-object v1

    .line 574
    :catch_0
    move-exception v0

    .line 575
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 576
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 581
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 578
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getRemoteDebuggingUrl()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 1236
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->getRemoteDebuggingUrlMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1244
    :goto_0
    return-object v1

    .line 1237
    :catch_0
    move-exception v0

    .line 1238
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1239
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 1244
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1241
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getSettings()Lorg/xwalk/core/XWalkSettings;
    .locals 4

    .prologue
    .line 1196
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    iget-object v2, p0, Lorg/xwalk/core/XWalkView;->getSettingsMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xwalk/core/XWalkCoreWrapper;->getWrapperObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xwalk/core/XWalkSettings;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1204
    :goto_0
    return-object v1

    .line 1197
    :catch_0
    move-exception v0

    .line 1198
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1199
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 1204
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1201
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 553
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->getTitleMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :goto_0
    return-object v1

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 556
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 561
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 558
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 490
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->getUrlMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    :goto_0
    return-object v1

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 493
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 498
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 495
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1136
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->getUserAgentStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1144
    :goto_0
    return-object v1

    .line 1137
    :catch_0
    move-exception v0

    .line 1138
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1139
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 1144
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1141
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getXWalkVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1011
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->getXWalkVersionMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1019
    :goto_0
    return-object v1

    .line 1012
    :catch_0
    move-exception v0

    .line 1013
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1014
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 1019
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1016
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public hasEnteredFullscreen()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 724
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->hasEnteredFullscreenMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 732
    :goto_0
    return v1

    .line 725
    :catch_0
    move-exception v0

    .line 726
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 727
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 732
    goto :goto_0

    .line 729
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public leaveFullscreen()V
    .locals 3

    .prologue
    .line 744
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->leaveFullscreenMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    :goto_0
    return-void

    .line 745
    :catch_0
    move-exception v0

    .line 746
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 747
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 749
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 381
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->loadStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 384
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 403
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->loadStringStringMapMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :goto_0
    return-void

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 406
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 408
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public loadAppFromManifest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 430
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->loadAppFromManifestStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :goto_0
    return-void

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 433
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 906
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->onActivityResultintintIntentMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 915
    :goto_0
    return-void

    .line 907
    :catch_0
    move-exception v0

    .line 908
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 909
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 911
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 4
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 1360
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->onCreateInputConnectionEditorInfoMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputConnection;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1368
    :goto_0
    return-object v1

    .line 1361
    :catch_0
    move-exception v0

    .line 1362
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1363
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 1368
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1365
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 861
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->onDestroyMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 870
    :goto_0
    return-void

    .line 862
    :catch_0
    move-exception v0

    .line 863
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 864
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 866
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public onHide()V
    .locals 3

    .prologue
    .line 817
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->onHideMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    :goto_0
    return-void

    .line 818
    :catch_0
    move-exception v0

    .line 819
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 820
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 822
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 929
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->onNewIntentIntentMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 937
    :goto_0
    return v1

    .line 930
    :catch_0
    move-exception v0

    .line 931
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 932
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 937
    goto :goto_0

    .line 934
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public onShow()V
    .locals 3

    .prologue
    .line 840
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->onShowMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    :goto_0
    return-void

    .line 841
    :catch_0
    move-exception v0

    .line 842
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 843
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 845
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 1541
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->onTouchEventMotionEventMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1549
    :goto_0
    return v1

    .line 1542
    :catch_0
    move-exception v0

    .line 1543
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1544
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 1549
    goto :goto_0

    .line 1546
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public pauseTimers()V
    .locals 3

    .prologue
    .line 769
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->pauseTimersMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    :goto_0
    return-void

    .line 770
    :catch_0
    move-exception v0

    .line 771
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 772
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 774
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public postXWalkViewInternalContextActivityConstructor()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 357
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lorg/xwalk/core/XWalkView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/xwalk/core/XWalkView;->removeViewAt(I)V

    .line 361
    new-instance v0, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;

    invoke-direct {v0, p0}, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;-><init>(Lorg/xwalk/core/XWalkView;)V

    .line 362
    return-void
.end method

.method public postXWalkViewInternalContextAttributeSetConstructor()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 322
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lorg/xwalk/core/XWalkView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/xwalk/core/XWalkView;->removeViewAt(I)V

    .line 326
    new-instance v0, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;

    invoke-direct {v0, p0}, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;-><init>(Lorg/xwalk/core/XWalkView;)V

    .line 327
    return-void
.end method

.method public postXWalkViewInternalContextConstructor()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 284
    iget-object v0, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lorg/xwalk/core/XWalkView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/xwalk/core/XWalkView;->removeViewAt(I)V

    .line 288
    new-instance v0, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;

    invoke-direct {v0, p0}, Lorg/xwalk/core/extension/XWalkExternalExtensionManagerImpl;-><init>(Lorg/xwalk/core/XWalkView;)V

    .line 289
    return-void
.end method

.method reflectionInit()V
    .locals 14

    .prologue
    .line 1907
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->initEmbeddedMode()V

    .line 1909
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->getInstance()Lorg/xwalk/core/XWalkCoreWrapper;

    move-result-object v6

    iput-object v6, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    .line 1910
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v6, :cond_0

    .line 1911
    invoke-static {p0}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectObject(Ljava/lang/Object;)V

    .line 2086
    :goto_0
    return-void

    .line 1915
    :cond_0
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->constructorTypes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1916
    .local v3, "length":I
    add-int/lit8 v6, v3, 0x1

    new-array v4, v6, [Ljava/lang/Class;

    .line 1917
    .local v4, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 1918
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->constructorTypes:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 1919
    .local v5, "type":Ljava/lang/Object;
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 1920
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    check-cast v5, Ljava/lang/String;

    .end local v5    # "type":Ljava/lang/Object;
    invoke-virtual {v6, v5}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v2

    .line 1921
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->constructorParams:Ljava/util/ArrayList;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    iget-object v8, p0, Lorg/xwalk/core/XWalkView;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1917
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1922
    .restart local v5    # "type":Ljava/lang/Object;
    :cond_2
    instance-of v6, v5, Ljava/lang/Class;

    if-eqz v6, :cond_3

    .line 1923
    check-cast v5, Ljava/lang/Class;

    .end local v5    # "type":Ljava/lang/Object;
    aput-object v5, v4, v2

    goto :goto_2

    .line 1925
    .restart local v5    # "type":Ljava/lang/Object;
    :cond_3
    sget-boolean v6, Lorg/xwalk/core/XWalkView;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1929
    .end local v5    # "type":Ljava/lang/Object;
    :cond_4
    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v3

    .line 1930
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1932
    new-instance v0, Lorg/xwalk/core/ReflectConstructor;

    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v7, "XWalkViewBridge"

    invoke-virtual {v6, v7}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v0, v6, v4}, Lorg/xwalk/core/ReflectConstructor;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 1935
    .local v0, "constructor":Lorg/xwalk/core/ReflectConstructor;
    :try_start_0
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/xwalk/core/ReflectConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1940
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->postWrapperMethod:Lorg/xwalk/core/ReflectMethod;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->postWrapperMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v7}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 1942
    :cond_5
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->loadStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "loadSuper"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1944
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->loadStringStringMapMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "loadSuper"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-class v12, Ljava/util/Map;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1946
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->loadAppFromManifestStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "loadAppFromManifestSuper"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1948
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->reloadintMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "reloadSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1950
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->stopLoadingMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "stopLoadingSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1952
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->getUrlMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "getUrlSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1954
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->getHitTestResultMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "getHitTestResultSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1956
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->getContentHeightMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "getContentHeightSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1958
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->getTitleMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "getTitleSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1960
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->getOriginalUrlMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "getOriginalUrlSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1962
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->getNavigationHistoryMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "getNavigationHistorySuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1964
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->addJavascriptInterfaceObjectStringMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "addJavascriptInterfaceSuper"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/Object;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1966
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->removeJavascriptInterfaceStringMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "removeJavascriptInterfaceSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1968
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->evaluateJavascriptStringValueCallbackMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "evaluateJavascriptSuper"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Landroid/webkit/ValueCallback;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1970
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->clearCachebooleanMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "clearCacheSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1972
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->clearCacheForSingleFileStringMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "clearCacheForSingleFileSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1974
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->hasEnteredFullscreenMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "hasEnteredFullscreenSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1976
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->leaveFullscreenMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "leaveFullscreenSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1978
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->pauseTimersMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "pauseTimersSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1980
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->resumeTimersMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "resumeTimersSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1982
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->onHideMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onHideSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1984
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->onShowMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onShowSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1986
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->onDestroyMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onDestroySuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1988
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->startActivityForResultIntentintBundleMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "startActivityForResultSuper"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/content/Intent;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-class v12, Landroid/os/Bundle;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1990
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->onActivityResultintintIntentMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onActivityResultSuper"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-class v12, Landroid/content/Intent;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1992
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->onNewIntentIntentMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onNewIntentSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/content/Intent;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1994
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->saveStateBundleMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "saveStateSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/os/Bundle;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1996
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->restoreStateBundleMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "restoreStateSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/os/Bundle;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1998
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->getAPIVersionMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "getAPIVersionSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2000
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->getXWalkVersionMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "getXWalkVersionSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2002
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->setUIClientXWalkUIClientInternalMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "setUIClientSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkUIClientBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2004
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->setResourceClientXWalkResourceClientInternalMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "setResourceClientSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkResourceClientBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2006
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->setBackgroundColorintMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "setBackgroundColorSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2008
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->setOriginAccessWhitelistStringStringArrayMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "setOriginAccessWhitelistSuper"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, [Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2010
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->setUserAgentStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "setUserAgentStringSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2012
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->getUserAgentStringMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "getUserAgentStringSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2014
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->setAcceptLanguagesStringMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "setAcceptLanguagesSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2016
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->captureBitmapAsyncXWalkGetBitmapCallbackInternalMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "captureBitmapAsyncSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkGetBitmapCallbackBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2018
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->getSettingsMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "getSettingsSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2020
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->setNetworkAvailablebooleanMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "setNetworkAvailableSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2022
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->getRemoteDebuggingUrlMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "getRemoteDebuggingUrlSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2024
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->zoomInMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "zoomInSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2026
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->zoomOutMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "zoomOutSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2028
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->zoomByfloatMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "zoomBySuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2030
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->canZoomInMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "canZoomInSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2032
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->canZoomOutMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "canZoomOutSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2034
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->onCreateInputConnectionEditorInfoMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onCreateInputConnectionSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/view/inputmethod/EditorInfo;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2036
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->setInitialScaleintMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "setInitialScaleSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2038
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->getFaviconMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "getFaviconSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2040
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->setZOrderOnTopbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "setZOrderOnTopSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2042
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->clearFormDataMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "clearFormDataSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2044
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->setSurfaceViewVisibilityintMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "setSurfaceViewVisibilitySuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2046
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->setXWalkViewInternalVisibilityintMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "setXWalkViewInternalVisibilitySuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2048
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->setDownloadListenerXWalkDownloadListenerInternalMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "setDownloadListenerSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkDownloadListenerBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2050
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->onTouchEventMotionEventMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onTouchEventSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/view/MotionEvent;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2052
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->setOnTouchListenerOnTouchListenerMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "setOnTouchListenerSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/view/View$OnTouchListener;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2054
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->scrollTointintMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "scrollToSuper"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2056
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->scrollByintintMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "scrollBySuper"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2058
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->computeHorizontalScrollRangeMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "computeHorizontalScrollRangeSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2060
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->computeHorizontalScrollOffsetMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "computeHorizontalScrollOffsetSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2062
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->computeVerticalScrollRangeMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "computeVerticalScrollRangeSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2064
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->computeVerticalScrollOffsetMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "computeVerticalScrollOffsetSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2066
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->computeVerticalScrollExtentMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "computeVerticalScrollExtentSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2068
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->getExtensionManagerMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "getExtensionManagerSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2070
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->clearSslPreferencesMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "clearSslPreferencesSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2072
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->clearClientCertPreferencesRunnableMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "clearClientCertPreferencesSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/Runnable;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2074
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->getCertificateMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "getCertificateSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2076
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->setFindListenerXWalkFindListenerInternalMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "setFindListenerSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkFindListenerBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2078
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->findAllAsyncStringMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "findAllAsyncSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2080
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->findNextbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "findNextSuper"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2082
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->clearMatchesMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "clearMatchesSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 2084
    iget-object v6, p0, Lorg/xwalk/core/XWalkView;->getCompositingSurfaceTypeMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkView;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "getCompositingSurfaceTypeSuper"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto/16 :goto_0

    .line 1936
    :catch_0
    move-exception v1

    .line 1937
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    goto/16 :goto_0
.end method

.method public reload(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    .line 450
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->reloadintMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :goto_0
    return-void

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 453
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 455
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 640
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->removeJavascriptInterfaceStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    :goto_0
    return-void

    .line 641
    :catch_0
    move-exception v0

    .line 642
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 643
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->removeJavascriptInterfaceStringMethod:Lorg/xwalk/core/ReflectMethod;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->setArguments([Ljava/lang/Object;)V

    .line 644
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->removeJavascriptInterfaceStringMethod:Lorg/xwalk/core/ReflectMethod;

    invoke-static {v1}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectMethod(Lorg/xwalk/core/ReflectMethod;)V

    goto :goto_0

    .line 646
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 971
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->restoreStateBundleMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 979
    :goto_0
    return v1

    .line 972
    :catch_0
    move-exception v0

    .line 973
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 974
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 979
    goto :goto_0

    .line 976
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public resumeTimers()V
    .locals 3

    .prologue
    .line 794
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->resumeTimersMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    :goto_0
    return-void

    .line 795
    :catch_0
    move-exception v0

    .line 796
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 797
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 799
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 950
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->saveStateBundleMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 958
    :goto_0
    return v1

    .line 951
    :catch_0
    move-exception v0

    .line 952
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 953
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 958
    goto :goto_0

    .line 955
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public scrollBy(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1598
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->scrollByintintMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1607
    :goto_0
    return-void

    .line 1599
    :catch_0
    move-exception v0

    .line 1600
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1601
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 1603
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1582
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->scrollTointintMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1591
    :goto_0
    return-void

    .line 1583
    :catch_0
    move-exception v0

    .line 1584
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1585
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 1587
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setAcceptLanguages(Ljava/lang/String;)V
    .locals 4
    .param p1, "acceptLanguages"    # Ljava/lang/String;

    .prologue
    .line 1156
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setAcceptLanguagesStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1165
    :goto_0
    return-void

    .line 1157
    :catch_0
    move-exception v0

    .line 1158
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1159
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 1161
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 5
    .param p1, "color"    # I

    .prologue
    .line 1071
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setBackgroundColorintMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1080
    :goto_0
    return-void

    .line 1072
    :catch_0
    move-exception v0

    .line 1073
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1074
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 1076
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setDownloadListener(Lorg/xwalk/core/XWalkDownloadListener;)V
    .locals 7
    .param p1, "listener"    # Lorg/xwalk/core/XWalkDownloadListener;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1518
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setDownloadListenerXWalkDownloadListenerInternalMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkDownloadListener;->getBridge()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1528
    :goto_0
    return-void

    .line 1519
    :catch_0
    move-exception v0

    .line 1520
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1521
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setDownloadListenerXWalkDownloadListenerInternalMethod:Lorg/xwalk/core/ReflectMethod;

    new-array v2, v5, [Ljava/lang/Object;

    new-instance v3, Lorg/xwalk/core/ReflectMethod;

    const-string v4, "getBridge"

    new-array v5, v6, [Ljava/lang/Class;

    invoke-direct {v3, p1, v4, v5}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->setArguments([Ljava/lang/Object;)V

    .line 1522
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setDownloadListenerXWalkDownloadListenerInternalMethod:Lorg/xwalk/core/ReflectMethod;

    invoke-static {v1}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectMethod(Lorg/xwalk/core/ReflectMethod;)V

    goto :goto_0

    .line 1524
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setFindListener(Lorg/xwalk/core/XWalkFindListener;)V
    .locals 7
    .param p1, "listener"    # Lorg/xwalk/core/XWalkFindListener;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1803
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setFindListenerXWalkFindListenerInternalMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkFindListener;->getBridge()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1813
    :goto_0
    return-void

    .line 1804
    :catch_0
    move-exception v0

    .line 1805
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1806
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setFindListenerXWalkFindListenerInternalMethod:Lorg/xwalk/core/ReflectMethod;

    new-array v2, v5, [Ljava/lang/Object;

    new-instance v3, Lorg/xwalk/core/ReflectMethod;

    const-string v4, "getBridge"

    new-array v5, v6, [Ljava/lang/Class;

    invoke-direct {v3, p1, v4, v5}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->setArguments([Ljava/lang/Object;)V

    .line 1807
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setFindListenerXWalkFindListenerInternalMethod:Lorg/xwalk/core/ReflectMethod;

    invoke-static {v1}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectMethod(Lorg/xwalk/core/ReflectMethod;)V

    goto :goto_0

    .line 1809
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setInitialScale(I)V
    .locals 5
    .param p1, "scaleInPercent"    # I

    .prologue
    .line 1380
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setInitialScaleintMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1389
    :goto_0
    return-void

    .line 1381
    :catch_0
    move-exception v0

    .line 1382
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1383
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 1385
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 0
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1107
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 5
    .param p1, "networkUp"    # Z

    .prologue
    .line 1215
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setNetworkAvailablebooleanMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1224
    :goto_0
    return-void

    .line 1216
    :catch_0
    move-exception v0

    .line 1217
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1218
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 1220
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 4
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 1566
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setOnTouchListenerOnTouchListenerMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1575
    :goto_0
    return-void

    .line 1567
    :catch_0
    move-exception v0

    .line 1568
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1569
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 1571
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setOriginAccessWhitelist(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "patterns"    # [Ljava/lang/String;

    .prologue
    .line 1092
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setOriginAccessWhitelistStringStringArrayMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1101
    :goto_0
    return-void

    .line 1093
    :catch_0
    move-exception v0

    .line 1094
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1095
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 1097
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setResourceClient(Lorg/xwalk/core/XWalkResourceClient;)V
    .locals 7
    .param p1, "client"    # Lorg/xwalk/core/XWalkResourceClient;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1054
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setResourceClientXWalkResourceClientInternalMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkResourceClient;->getBridge()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1064
    :goto_0
    return-void

    .line 1055
    :catch_0
    move-exception v0

    .line 1056
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1057
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setResourceClientXWalkResourceClientInternalMethod:Lorg/xwalk/core/ReflectMethod;

    new-array v2, v5, [Ljava/lang/Object;

    new-instance v3, Lorg/xwalk/core/ReflectMethod;

    const-string v4, "getBridge"

    new-array v5, v6, [Ljava/lang/Class;

    invoke-direct {v3, p1, v4, v5}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->setArguments([Ljava/lang/Object;)V

    .line 1058
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setResourceClientXWalkResourceClientInternalMethod:Lorg/xwalk/core/ReflectMethod;

    invoke-static {v1}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectMethod(Lorg/xwalk/core/ReflectMethod;)V

    goto :goto_0

    .line 1060
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setSurfaceViewVisibility(I)V
    .locals 7
    .param p1, "visibility"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1474
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setSurfaceViewVisibilityintMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1484
    :goto_0
    return-void

    .line 1475
    :catch_0
    move-exception v0

    .line 1476
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1477
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setSurfaceViewVisibilityintMethod:Lorg/xwalk/core/ReflectMethod;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->setArguments([Ljava/lang/Object;)V

    .line 1478
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setSurfaceViewVisibilityintMethod:Lorg/xwalk/core/ReflectMethod;

    invoke-static {v1}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectMethod(Lorg/xwalk/core/ReflectMethod;)V

    goto :goto_0

    .line 1480
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setUIClient(Lorg/xwalk/core/XWalkUIClient;)V
    .locals 7
    .param p1, "client"    # Lorg/xwalk/core/XWalkUIClient;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1032
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setUIClientXWalkUIClientInternalMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkUIClient;->getBridge()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1042
    :goto_0
    return-void

    .line 1033
    :catch_0
    move-exception v0

    .line 1034
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1035
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setUIClientXWalkUIClientInternalMethod:Lorg/xwalk/core/ReflectMethod;

    new-array v2, v5, [Ljava/lang/Object;

    new-instance v3, Lorg/xwalk/core/ReflectMethod;

    const-string v4, "getBridge"

    new-array v5, v6, [Ljava/lang/Class;

    invoke-direct {v3, p1, v4, v5}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->setArguments([Ljava/lang/Object;)V

    .line 1036
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setUIClientXWalkUIClientInternalMethod:Lorg/xwalk/core/ReflectMethod;

    invoke-static {v1}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectMethod(Lorg/xwalk/core/ReflectMethod;)V

    goto :goto_0

    .line 1038
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 4
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 1116
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setUserAgentStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1125
    :goto_0
    return-void

    .line 1117
    :catch_0
    move-exception v0

    .line 1118
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1119
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 1121
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 1462
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/16 p1, 0x8

    .line 1463
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1464
    invoke-virtual {p0, p1}, Lorg/xwalk/core/XWalkView;->setXWalkViewInternalVisibility(I)V

    .line 1465
    invoke-virtual {p0, p1}, Lorg/xwalk/core/XWalkView;->setSurfaceViewVisibility(I)V

    .line 1466
    return-void
.end method

.method public setXWalkViewInternalVisibility(I)V
    .locals 7
    .param p1, "visibility"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1495
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setXWalkViewInternalVisibilityintMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1505
    :goto_0
    return-void

    .line 1496
    :catch_0
    move-exception v0

    .line 1497
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1498
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setXWalkViewInternalVisibilityintMethod:Lorg/xwalk/core/ReflectMethod;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->setArguments([Ljava/lang/Object;)V

    .line 1499
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setXWalkViewInternalVisibilityintMethod:Lorg/xwalk/core/ReflectMethod;

    invoke-static {v1}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectMethod(Lorg/xwalk/core/ReflectMethod;)V

    goto :goto_0

    .line 1501
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setZOrderOnTop(Z)V
    .locals 5
    .param p1, "onTop"    # Z

    .prologue
    .line 1421
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->setZOrderOnTopbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1430
    :goto_0
    return-void

    .line 1422
    :catch_0
    move-exception v0

    .line 1423
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1424
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 1426
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 881
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->startActivityForResultIntentintBundleMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    :goto_0
    return-void

    .line 882
    :catch_0
    move-exception v0

    .line 883
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 884
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 886
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 3

    .prologue
    .line 469
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->stopLoadingMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :goto_0
    return-void

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 472
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 474
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public zoomBy(F)V
    .locals 5
    .param p1, "factor"    # F

    .prologue
    .line 1298
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->zoomByfloatMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1307
    :goto_0
    return-void

    .line 1299
    :catch_0
    move-exception v0

    .line 1300
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1301
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 1303
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public zoomIn()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1256
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->zoomInMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1264
    :goto_0
    return v1

    .line 1257
    :catch_0
    move-exception v0

    .line 1258
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1259
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 1264
    goto :goto_0

    .line 1261
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public zoomOut()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1276
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->zoomOutMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1284
    :goto_0
    return v1

    .line 1277
    :catch_0
    move-exception v0

    .line 1278
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkView;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1279
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 1284
    goto :goto_0

    .line 1281
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method
