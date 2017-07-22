.class public Lorg/xwalk/core/internal/XWalkSettingsBridge;
.super Lorg/xwalk/core/internal/XWalkSettingsInternal;
.source "XWalkSettingsBridge.java"


# instance fields
.field private coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

.field private enumLayoutAlgorithmClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getAcceptLanguagesMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getAllowContentAccessMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getAllowFileAccessFromFileURLsMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getAllowFileAccessMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getAllowUniversalAccessFromFileURLsMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getBlockNetworkImageMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getBlockNetworkLoadsMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getBuiltInZoomControlsMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getCacheModeMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getDatabaseEnabledMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getDefaultFixedFontSizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getDefaultFontSizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getDomStorageEnabledMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getJavaScriptCanOpenWindowsAutomaticallyMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getJavaScriptEnabledMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getLayoutAlgorithmMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getLoadWithOverviewModeMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getLoadsImagesAutomaticallyMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getMediaPlaybackRequiresUserGestureMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getSaveFormDataMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getSupportQuirksModeMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getSupportSpatialNavigationMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getTextZoomMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getUseWideViewPortMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getUserAgentStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

.field private setAcceptLanguagesStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setAllowContentAccessbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setAllowFileAccessFromFileURLsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setAllowFileAccessbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setAllowUniversalAccessFromFileURLsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setBlockNetworkImagebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setBlockNetworkLoadsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setBuiltInZoomControlsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setCacheModeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setDatabaseEnabledbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setDefaultFixedFontSizeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setDefaultFontSizeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setDomStorageEnabledbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setInitialPageScalefloatMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setJavaScriptCanOpenWindowsAutomaticallybooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setJavaScriptEnabledbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setLayoutAlgorithmLayoutAlgorithmInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setLoadWithOverviewModebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setLoadsImagesAutomaticallybooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setMediaPlaybackRequiresUserGesturebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setSaveFormDatabooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setSupportMultipleWindowsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setSupportQuirksModebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setSupportSpatialNavigationbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setSupportZoombooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setTextZoomintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setUseWideViewPortbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setUserAgentStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private supportMultipleWindowsMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private supportZoomMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private supportsMultiTouchZoomForTestMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private wrapper:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/XWalkSettingsInternal;)V
    .locals 5
    .param p1, "internal"    # Lorg/xwalk/core/internal/XWalkSettingsInternal;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 33
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;-><init>()V

    .line 24
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    invoke-direct {v0}, Lorg/xwalk/core/internal/ReflectMethod;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->enumLayoutAlgorithmClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 55
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setCacheMode"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setCacheModeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 77
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getCacheMode"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getCacheModeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 96
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setBlockNetworkLoads"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setBlockNetworkLoadsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 118
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getBlockNetworkLoads"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getBlockNetworkLoadsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 137
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setAllowFileAccess"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowFileAccessbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 159
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getAllowFileAccess"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowFileAccessMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 178
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setAllowContentAccess"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowContentAccessbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 200
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getAllowContentAccess"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowContentAccessMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 219
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setJavaScriptEnabled"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setJavaScriptEnabledbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 238
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setAllowUniversalAccessFromFileURLs"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowUniversalAccessFromFileURLsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 257
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setAllowFileAccessFromFileURLs"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowFileAccessFromFileURLsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 276
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setLoadsImagesAutomatically"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setLoadsImagesAutomaticallybooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 298
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getLoadsImagesAutomatically"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getLoadsImagesAutomaticallyMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 317
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setBlockNetworkImage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setBlockNetworkImagebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 339
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getBlockNetworkImage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getBlockNetworkImageMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 361
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getJavaScriptEnabled"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getJavaScriptEnabledMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 383
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getAllowUniversalAccessFromFileURLs"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowUniversalAccessFromFileURLsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 405
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getAllowFileAccessFromFileURLs"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowFileAccessFromFileURLsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 424
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setJavaScriptCanOpenWindowsAutomatically"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setJavaScriptCanOpenWindowsAutomaticallybooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 446
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getJavaScriptCanOpenWindowsAutomatically"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getJavaScriptCanOpenWindowsAutomaticallyMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 465
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setSupportMultipleWindows"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportMultipleWindowsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 487
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "supportMultipleWindows"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportMultipleWindowsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 506
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setUseWideViewPort"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setUseWideViewPortbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 528
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getUseWideViewPort"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getUseWideViewPortMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 547
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setDomStorageEnabled"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDomStorageEnabledbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 569
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getDomStorageEnabled"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDomStorageEnabledMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 588
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setDatabaseEnabled"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDatabaseEnabledbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 610
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getDatabaseEnabled"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDatabaseEnabledMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 629
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setMediaPlaybackRequiresUserGesture"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setMediaPlaybackRequiresUserGesturebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 651
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getMediaPlaybackRequiresUserGesture"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getMediaPlaybackRequiresUserGestureMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 670
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setUserAgentString"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setUserAgentStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 692
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getUserAgentString"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getUserAgentStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 711
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setAcceptLanguages"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAcceptLanguagesStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 733
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getAcceptLanguages"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAcceptLanguagesMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 752
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setSaveFormData"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSaveFormDatabooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 774
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getSaveFormData"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getSaveFormDataMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 793
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setInitialPageScale"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setInitialPageScalefloatMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 812
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setTextZoom"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setTextZoomintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 834
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getTextZoom"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getTextZoomMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 853
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setDefaultFontSize"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDefaultFontSizeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 875
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getDefaultFontSize"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDefaultFontSizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 894
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setDefaultFixedFontSize"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDefaultFixedFontSizeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 916
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getDefaultFixedFontSize"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDefaultFixedFontSizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 935
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setSupportZoom"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportZoombooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 957
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "supportZoom"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportZoomMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 976
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setBuiltInZoomControls"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setBuiltInZoomControlsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 998
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getBuiltInZoomControls"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getBuiltInZoomControlsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 1020
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "supportsMultiTouchZoomForTest"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportsMultiTouchZoomForTestMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 1039
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setSupportSpatialNavigation"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportSpatialNavigationbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 1061
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getSupportSpatialNavigation"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getSupportSpatialNavigationMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 1080
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setSupportQuirksMode"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportQuirksModebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 1102
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getSupportQuirksMode"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getSupportQuirksModeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 1121
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setLayoutAlgorithm"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setLayoutAlgorithmLayoutAlgorithmInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 1143
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getLayoutAlgorithm"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getLayoutAlgorithmMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 1162
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setLoadWithOverviewMode"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setLoadWithOverviewModebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 1184
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getLoadWithOverviewMode"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getLoadWithOverviewModeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 34
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    .line 35
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->reflectionInit()V

    .line 36
    return-void
.end method

.method private ConvertLayoutAlgorithmInternal(Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;)Ljava/lang/Object;
    .locals 4
    .param p1, "type"    # Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    .prologue
    .line 27
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->enumLayoutAlgorithmClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAcceptLanguages()Ljava/lang/String;
    .locals 2

    .prologue
    .line 715
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAcceptLanguagesMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAcceptLanguagesSuper()Ljava/lang/String;

    move-result-object v0

    .line 718
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAcceptLanguagesMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getAcceptLanguagesSuper()Ljava/lang/String;
    .locals 2

    .prologue
    .line 724
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_1

    .line 725
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getAcceptLanguages()Ljava/lang/String;

    move-result-object v0

    .line 729
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 730
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 727
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getAcceptLanguages()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method public getAllowContentAccess()Z
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowContentAccessMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowContentAccessSuper()Z

    move-result v0

    .line 185
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowContentAccessMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getAllowContentAccessSuper()Z
    .locals 2

    .prologue
    .line 191
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 192
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getAllowContentAccess()Z

    move-result v0

    .line 197
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 194
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getAllowContentAccess()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public getAllowFileAccess()Z
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowFileAccessMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowFileAccessSuper()Z

    move-result v0

    .line 144
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowFileAccessMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getAllowFileAccessFromFileURLs()Z
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowFileAccessFromFileURLsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowFileAccessFromFileURLsSuper()Z

    move-result v0

    .line 390
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowFileAccessFromFileURLsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getAllowFileAccessFromFileURLsSuper()Z
    .locals 2

    .prologue
    .line 396
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 397
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getAllowFileAccessFromFileURLs()Z

    move-result v0

    .line 402
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 399
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getAllowFileAccessFromFileURLs()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public getAllowFileAccessSuper()Z
    .locals 2

    .prologue
    .line 150
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 151
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getAllowFileAccess()Z

    move-result v0

    .line 156
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 153
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getAllowFileAccess()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public getAllowUniversalAccessFromFileURLs()Z
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowUniversalAccessFromFileURLsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowUniversalAccessFromFileURLsSuper()Z

    move-result v0

    .line 368
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowUniversalAccessFromFileURLsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getAllowUniversalAccessFromFileURLsSuper()Z
    .locals 2

    .prologue
    .line 374
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 375
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getAllowUniversalAccessFromFileURLs()Z

    move-result v0

    .line 380
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 377
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getAllowUniversalAccessFromFileURLs()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public getBlockNetworkImage()Z
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getBlockNetworkImageMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getBlockNetworkImageSuper()Z

    move-result v0

    .line 324
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getBlockNetworkImageMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getBlockNetworkImageSuper()Z
    .locals 2

    .prologue
    .line 330
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 331
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getBlockNetworkImage()Z

    move-result v0

    .line 336
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 333
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getBlockNetworkImage()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public getBlockNetworkLoads()Z
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getBlockNetworkLoadsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getBlockNetworkLoadsSuper()Z

    move-result v0

    .line 103
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getBlockNetworkLoadsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getBlockNetworkLoadsSuper()Z
    .locals 2

    .prologue
    .line 109
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 110
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getBlockNetworkLoads()Z

    move-result v0

    .line 115
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 112
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getBlockNetworkLoads()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public getBuiltInZoomControls()Z
    .locals 2

    .prologue
    .line 980
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getBuiltInZoomControlsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 981
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getBuiltInZoomControlsSuper()Z

    move-result v0

    .line 983
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getBuiltInZoomControlsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getBuiltInZoomControlsSuper()Z
    .locals 2

    .prologue
    .line 989
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 990
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getBuiltInZoomControls()Z

    move-result v0

    .line 995
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 992
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getBuiltInZoomControls()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public getCacheMode()I
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getCacheModeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getCacheModeSuper()I

    move-result v0

    .line 62
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getCacheModeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getCacheModeSuper()I
    .locals 2

    .prologue
    .line 68
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 69
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getCacheMode()I

    move-result v0

    .line 74
    .local v0, "ret":I
    :goto_0
    return v0

    .line 71
    .end local v0    # "ret":I
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getCacheMode()I

    move-result v0

    .restart local v0    # "ret":I
    goto :goto_0
.end method

.method public getDatabaseEnabled()Z
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDatabaseEnabledMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDatabaseEnabledSuper()Z

    move-result v0

    .line 595
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDatabaseEnabledMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getDatabaseEnabledSuper()Z
    .locals 2

    .prologue
    .line 601
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 602
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getDatabaseEnabled()Z

    move-result v0

    .line 607
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 604
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getDatabaseEnabled()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public getDefaultFixedFontSize()I
    .locals 2

    .prologue
    .line 898
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDefaultFixedFontSizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDefaultFixedFontSizeSuper()I

    move-result v0

    .line 901
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDefaultFixedFontSizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getDefaultFixedFontSizeSuper()I
    .locals 2

    .prologue
    .line 907
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 908
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getDefaultFixedFontSize()I

    move-result v0

    .line 913
    .local v0, "ret":I
    :goto_0
    return v0

    .line 910
    .end local v0    # "ret":I
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getDefaultFixedFontSize()I

    move-result v0

    .restart local v0    # "ret":I
    goto :goto_0
.end method

.method public getDefaultFontSize()I
    .locals 2

    .prologue
    .line 857
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDefaultFontSizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDefaultFontSizeSuper()I

    move-result v0

    .line 860
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDefaultFontSizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getDefaultFontSizeSuper()I
    .locals 2

    .prologue
    .line 866
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 867
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getDefaultFontSize()I

    move-result v0

    .line 872
    .local v0, "ret":I
    :goto_0
    return v0

    .line 869
    .end local v0    # "ret":I
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getDefaultFontSize()I

    move-result v0

    .restart local v0    # "ret":I
    goto :goto_0
.end method

.method public getDomStorageEnabled()Z
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDomStorageEnabledMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDomStorageEnabledSuper()Z

    move-result v0

    .line 554
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDomStorageEnabledMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getDomStorageEnabledSuper()Z
    .locals 2

    .prologue
    .line 560
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 561
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getDomStorageEnabled()Z

    move-result v0

    .line 566
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 563
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getDomStorageEnabled()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public getJavaScriptCanOpenWindowsAutomatically()Z
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getJavaScriptCanOpenWindowsAutomaticallyMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getJavaScriptCanOpenWindowsAutomaticallySuper()Z

    move-result v0

    .line 431
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getJavaScriptCanOpenWindowsAutomaticallyMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getJavaScriptCanOpenWindowsAutomaticallySuper()Z
    .locals 2

    .prologue
    .line 437
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 438
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getJavaScriptCanOpenWindowsAutomatically()Z

    move-result v0

    .line 443
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 440
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getJavaScriptCanOpenWindowsAutomatically()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public getJavaScriptEnabled()Z
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getJavaScriptEnabledMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getJavaScriptEnabledSuper()Z

    move-result v0

    .line 346
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getJavaScriptEnabledMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getJavaScriptEnabledSuper()Z
    .locals 2

    .prologue
    .line 352
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 353
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getJavaScriptEnabled()Z

    move-result v0

    .line 358
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 355
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getJavaScriptEnabled()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public getLayoutAlgorithm()Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;
    .locals 2

    .prologue
    .line 1125
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getLayoutAlgorithmMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1126
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getLayoutAlgorithmSuper()Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    move-result-object v0

    .line 1128
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getLayoutAlgorithmMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    goto :goto_0
.end method

.method public getLayoutAlgorithmSuper()Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;
    .locals 2

    .prologue
    .line 1134
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_1

    .line 1135
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getLayoutAlgorithm()Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    move-result-object v0

    .line 1139
    .local v0, "ret":Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1140
    .end local v0    # "ret":Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;
    :cond_0
    return-object v0

    .line 1137
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getLayoutAlgorithm()Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    move-result-object v0

    .restart local v0    # "ret":Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;
    goto :goto_0
.end method

.method public getLoadWithOverviewMode()Z
    .locals 2

    .prologue
    .line 1166
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getLoadWithOverviewModeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1167
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getLoadWithOverviewModeSuper()Z

    move-result v0

    .line 1169
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getLoadWithOverviewModeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getLoadWithOverviewModeSuper()Z
    .locals 2

    .prologue
    .line 1175
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 1176
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getLoadWithOverviewMode()Z

    move-result v0

    .line 1181
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 1178
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getLoadWithOverviewMode()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public getLoadsImagesAutomatically()Z
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getLoadsImagesAutomaticallyMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getLoadsImagesAutomaticallySuper()Z

    move-result v0

    .line 283
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getLoadsImagesAutomaticallyMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getLoadsImagesAutomaticallySuper()Z
    .locals 2

    .prologue
    .line 289
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 290
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getLoadsImagesAutomatically()Z

    move-result v0

    .line 295
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 292
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getLoadsImagesAutomatically()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public getMediaPlaybackRequiresUserGesture()Z
    .locals 2

    .prologue
    .line 633
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getMediaPlaybackRequiresUserGestureMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getMediaPlaybackRequiresUserGestureSuper()Z

    move-result v0

    .line 636
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getMediaPlaybackRequiresUserGestureMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getMediaPlaybackRequiresUserGestureSuper()Z
    .locals 2

    .prologue
    .line 642
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 643
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getMediaPlaybackRequiresUserGesture()Z

    move-result v0

    .line 648
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 645
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getMediaPlaybackRequiresUserGesture()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public getSaveFormData()Z
    .locals 2

    .prologue
    .line 756
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getSaveFormDataMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getSaveFormDataSuper()Z

    move-result v0

    .line 759
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getSaveFormDataMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getSaveFormDataSuper()Z
    .locals 2

    .prologue
    .line 765
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 766
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getSaveFormData()Z

    move-result v0

    .line 771
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 768
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getSaveFormData()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public getSupportQuirksMode()Z
    .locals 2

    .prologue
    .line 1084
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getSupportQuirksModeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1085
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getSupportQuirksModeSuper()Z

    move-result v0

    .line 1087
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getSupportQuirksModeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getSupportQuirksModeSuper()Z
    .locals 2

    .prologue
    .line 1093
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 1094
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getSupportQuirksMode()Z

    move-result v0

    .line 1099
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 1096
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getSupportQuirksMode()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public getSupportSpatialNavigation()Z
    .locals 2

    .prologue
    .line 1043
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getSupportSpatialNavigationMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1044
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getSupportSpatialNavigationSuper()Z

    move-result v0

    .line 1046
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getSupportSpatialNavigationMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getSupportSpatialNavigationSuper()Z
    .locals 2

    .prologue
    .line 1052
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 1053
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getSupportSpatialNavigation()Z

    move-result v0

    .line 1058
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 1055
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getSupportSpatialNavigation()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public getTextZoom()I
    .locals 2

    .prologue
    .line 816
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getTextZoomMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getTextZoomSuper()I

    move-result v0

    .line 819
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getTextZoomMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getTextZoomSuper()I
    .locals 2

    .prologue
    .line 825
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 826
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getTextZoom()I

    move-result v0

    .line 831
    .local v0, "ret":I
    :goto_0
    return v0

    .line 828
    .end local v0    # "ret":I
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getTextZoom()I

    move-result v0

    .restart local v0    # "ret":I
    goto :goto_0
.end method

.method public getUseWideViewPort()Z
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getUseWideViewPortMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getUseWideViewPortSuper()Z

    move-result v0

    .line 513
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getUseWideViewPortMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getUseWideViewPortSuper()Z
    .locals 2

    .prologue
    .line 519
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 520
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getUseWideViewPort()Z

    move-result v0

    .line 525
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 522
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getUseWideViewPort()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 674
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getUserAgentStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getUserAgentStringSuper()Ljava/lang/String;

    move-result-object v0

    .line 677
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getUserAgentStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getUserAgentStringSuper()Ljava/lang/String;
    .locals 2

    .prologue
    .line 683
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_1

    .line 684
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 688
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 689
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 686
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method reflectionInit()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1188
    invoke-static {}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;

    move-result-object v2

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 1189
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    if-nez v2, :cond_0

    .line 1314
    :goto_0
    return-void

    .line 1191
    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/ReflectConstructor;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v3, "XWalkSettings"

    invoke-virtual {v2, v3}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v10, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v3, v8

    invoke-direct {v0, v2, v3}, Lorg/xwalk/core/internal/ReflectConstructor;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 1194
    .local v0, "constructor":Lorg/xwalk/core/internal/ReflectConstructor;
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v2}, Lorg/xwalk/core/internal/ReflectConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1199
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->enumLayoutAlgorithmClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v4, "XWalkSettings$LayoutAlgorithm"

    invoke-virtual {v3, v4}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "valueOf"

    new-array v5, v10, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v2, v9, v3, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1202
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setCacheModeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setCacheMode"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1204
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getCacheModeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getCacheMode"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1206
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setBlockNetworkLoadsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setBlockNetworkLoads"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1208
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getBlockNetworkLoadsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getBlockNetworkLoads"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1210
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowFileAccessbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setAllowFileAccess"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1212
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowFileAccessMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getAllowFileAccess"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1214
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowContentAccessbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setAllowContentAccess"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1216
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowContentAccessMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getAllowContentAccess"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1218
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setJavaScriptEnabledbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setJavaScriptEnabled"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1220
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowUniversalAccessFromFileURLsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setAllowUniversalAccessFromFileURLs"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1222
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowFileAccessFromFileURLsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setAllowFileAccessFromFileURLs"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1224
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setLoadsImagesAutomaticallybooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setLoadsImagesAutomatically"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1226
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getLoadsImagesAutomaticallyMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getLoadsImagesAutomatically"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1228
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setBlockNetworkImagebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setBlockNetworkImage"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1230
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getBlockNetworkImageMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getBlockNetworkImage"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1232
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getJavaScriptEnabledMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getJavaScriptEnabled"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1234
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowUniversalAccessFromFileURLsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getAllowUniversalAccessFromFileURLs"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1236
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAllowFileAccessFromFileURLsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getAllowFileAccessFromFileURLs"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1238
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setJavaScriptCanOpenWindowsAutomaticallybooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setJavaScriptCanOpenWindowsAutomatically"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1240
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getJavaScriptCanOpenWindowsAutomaticallyMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getJavaScriptCanOpenWindowsAutomatically"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1242
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportMultipleWindowsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setSupportMultipleWindows"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1244
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportMultipleWindowsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "supportMultipleWindows"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1246
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setUseWideViewPortbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setUseWideViewPort"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1248
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getUseWideViewPortMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getUseWideViewPort"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1250
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDomStorageEnabledbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setDomStorageEnabled"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1252
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDomStorageEnabledMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getDomStorageEnabled"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1254
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDatabaseEnabledbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setDatabaseEnabled"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1256
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDatabaseEnabledMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getDatabaseEnabled"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1258
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setMediaPlaybackRequiresUserGesturebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setMediaPlaybackRequiresUserGesture"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1260
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getMediaPlaybackRequiresUserGestureMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getMediaPlaybackRequiresUserGesture"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1262
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setUserAgentStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setUserAgentString"

    new-array v5, v10, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1264
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getUserAgentStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getUserAgentString"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1266
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAcceptLanguagesStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setAcceptLanguages"

    new-array v5, v10, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1268
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getAcceptLanguagesMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getAcceptLanguages"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1270
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSaveFormDatabooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setSaveFormData"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1272
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getSaveFormDataMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getSaveFormData"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1274
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setInitialPageScalefloatMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setInitialPageScale"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1276
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setTextZoomintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setTextZoom"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1278
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getTextZoomMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getTextZoom"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1280
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDefaultFontSizeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setDefaultFontSize"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1282
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDefaultFontSizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getDefaultFontSize"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1284
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDefaultFixedFontSizeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setDefaultFixedFontSize"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1286
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getDefaultFixedFontSizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getDefaultFixedFontSize"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1288
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportZoombooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setSupportZoom"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1290
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportZoomMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "supportZoom"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1292
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setBuiltInZoomControlsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setBuiltInZoomControls"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1294
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getBuiltInZoomControlsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getBuiltInZoomControls"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1296
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportsMultiTouchZoomForTestMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "supportsMultiTouchZoomForTest"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1298
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportSpatialNavigationbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setSupportSpatialNavigation"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1300
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getSupportSpatialNavigationMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getSupportSpatialNavigation"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1302
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportQuirksModebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setSupportQuirksMode"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1304
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getSupportQuirksModeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getSupportQuirksMode"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1306
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setLayoutAlgorithmLayoutAlgorithmInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setLayoutAlgorithm"

    new-array v5, v10, [Ljava/lang/Class;

    iget-object v6, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v7, "XWalkSettings$LayoutAlgorithm"

    invoke-virtual {v6, v7}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1308
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getLayoutAlgorithmMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getLayoutAlgorithm"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1310
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setLoadWithOverviewModebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setLoadWithOverviewMode"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1312
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->getLoadWithOverviewModeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getLoadWithOverviewMode"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto/16 :goto_0

    .line 1195
    :catch_0
    move-exception v1

    .line 1196
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    goto/16 :goto_0
.end method

.method public setAcceptLanguages(Ljava/lang/String;)V
    .locals 3
    .param p1, "acceptLanguages"    # Ljava/lang/String;

    .prologue
    .line 696
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAcceptLanguagesStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAcceptLanguagesSuper(Ljava/lang/String;)V

    .line 701
    :goto_0
    return-void

    .line 699
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAcceptLanguagesStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setAcceptLanguagesSuper(Ljava/lang/String;)V
    .locals 1
    .param p1, "acceptLanguages"    # Ljava/lang/String;

    .prologue
    .line 704
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 705
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setAcceptLanguages(Ljava/lang/String;)V

    .line 709
    :goto_0
    return-void

    .line 707
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setAcceptLanguages(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAllowContentAccess(Z)V
    .locals 4
    .param p1, "allow"    # Z

    .prologue
    .line 163
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowContentAccessbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowContentAccessSuper(Z)V

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowContentAccessbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setAllowContentAccessSuper(Z)V
    .locals 1
    .param p1, "allow"    # Z

    .prologue
    .line 171
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 172
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setAllowContentAccess(Z)V

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setAllowContentAccess(Z)V

    goto :goto_0
.end method

.method public setAllowFileAccess(Z)V
    .locals 4
    .param p1, "allow"    # Z

    .prologue
    .line 122
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowFileAccessbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowFileAccessSuper(Z)V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowFileAccessbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setAllowFileAccessFromFileURLs(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    .line 242
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowFileAccessFromFileURLsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowFileAccessFromFileURLsSuper(Z)V

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowFileAccessFromFileURLsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setAllowFileAccessFromFileURLsSuper(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 250
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 251
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setAllowFileAccessFromFileURLs(Z)V

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setAllowFileAccessFromFileURLs(Z)V

    goto :goto_0
.end method

.method public setAllowFileAccessSuper(Z)V
    .locals 1
    .param p1, "allow"    # Z

    .prologue
    .line 130
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 131
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setAllowFileAccess(Z)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setAllowFileAccess(Z)V

    goto :goto_0
.end method

.method public setAllowUniversalAccessFromFileURLs(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    .line 223
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowUniversalAccessFromFileURLsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowUniversalAccessFromFileURLsSuper(Z)V

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setAllowUniversalAccessFromFileURLsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setAllowUniversalAccessFromFileURLsSuper(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 231
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 232
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setAllowUniversalAccessFromFileURLs(Z)V

    goto :goto_0
.end method

.method public setBlockNetworkImage(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    .line 302
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setBlockNetworkImagebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setBlockNetworkImageSuper(Z)V

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setBlockNetworkImagebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setBlockNetworkImageSuper(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 310
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 311
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setBlockNetworkImage(Z)V

    .line 315
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setBlockNetworkImage(Z)V

    goto :goto_0
.end method

.method public setBlockNetworkLoads(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    .line 81
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setBlockNetworkLoadsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setBlockNetworkLoadsSuper(Z)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setBlockNetworkLoadsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setBlockNetworkLoadsSuper(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 89
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 90
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setBlockNetworkLoads(Z)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setBlockNetworkLoads(Z)V

    goto :goto_0
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 961
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setBuiltInZoomControlsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setBuiltInZoomControlsSuper(Z)V

    .line 966
    :goto_0
    return-void

    .line 964
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setBuiltInZoomControlsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setBuiltInZoomControlsSuper(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 969
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 970
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setBuiltInZoomControls(Z)V

    .line 974
    :goto_0
    return-void

    .line 972
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setBuiltInZoomControls(Z)V

    goto :goto_0
.end method

.method public setCacheMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setCacheModeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setCacheModeSuper(I)V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setCacheModeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setCacheModeSuper(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 49
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setCacheMode(I)V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setCacheMode(I)V

    goto :goto_0
.end method

.method public setDatabaseEnabled(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    .line 573
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDatabaseEnabledbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDatabaseEnabledSuper(Z)V

    .line 578
    :goto_0
    return-void

    .line 576
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDatabaseEnabledbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setDatabaseEnabledSuper(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 581
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 582
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setDatabaseEnabled(Z)V

    .line 586
    :goto_0
    return-void

    .line 584
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setDatabaseEnabled(Z)V

    goto :goto_0
.end method

.method public setDefaultFixedFontSize(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    .line 879
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDefaultFixedFontSizeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDefaultFixedFontSizeSuper(I)V

    .line 884
    :goto_0
    return-void

    .line 882
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDefaultFixedFontSizeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setDefaultFixedFontSizeSuper(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 887
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 888
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setDefaultFixedFontSize(I)V

    .line 892
    :goto_0
    return-void

    .line 890
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setDefaultFixedFontSize(I)V

    goto :goto_0
.end method

.method public setDefaultFontSize(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    .line 838
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDefaultFontSizeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 839
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDefaultFontSizeSuper(I)V

    .line 843
    :goto_0
    return-void

    .line 841
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDefaultFontSizeintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setDefaultFontSizeSuper(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 846
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 847
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setDefaultFontSize(I)V

    .line 851
    :goto_0
    return-void

    .line 849
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setDefaultFontSize(I)V

    goto :goto_0
.end method

.method public setDomStorageEnabled(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    .line 532
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDomStorageEnabledbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDomStorageEnabledSuper(Z)V

    .line 537
    :goto_0
    return-void

    .line 535
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setDomStorageEnabledbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setDomStorageEnabledSuper(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 540
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 541
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setDomStorageEnabled(Z)V

    .line 545
    :goto_0
    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setDomStorageEnabled(Z)V

    goto :goto_0
.end method

.method public setInitialPageScale(F)V
    .locals 4
    .param p1, "scaleInPercent"    # F

    .prologue
    .line 778
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setInitialPageScalefloatMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setInitialPageScaleSuper(F)V

    .line 783
    :goto_0
    return-void

    .line 781
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setInitialPageScalefloatMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setInitialPageScaleSuper(F)V
    .locals 1
    .param p1, "scaleInPercent"    # F

    .prologue
    .line 786
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 787
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setInitialPageScale(F)V

    .line 791
    :goto_0
    return-void

    .line 789
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setInitialPageScale(F)V

    goto :goto_0
.end method

.method public setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    .line 409
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setJavaScriptCanOpenWindowsAutomaticallybooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setJavaScriptCanOpenWindowsAutomaticallySuper(Z)V

    .line 414
    :goto_0
    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setJavaScriptCanOpenWindowsAutomaticallybooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setJavaScriptCanOpenWindowsAutomaticallySuper(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 417
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 418
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 422
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    goto :goto_0
.end method

.method public setJavaScriptEnabled(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    .line 204
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setJavaScriptEnabledbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setJavaScriptEnabledSuper(Z)V

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setJavaScriptEnabledbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setJavaScriptEnabledSuper(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 212
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 213
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setJavaScriptEnabled(Z)V

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setJavaScriptEnabled(Z)V

    goto :goto_0
.end method

.method public setLayoutAlgorithm(Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;)V
    .locals 4
    .param p1, "la"    # Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    .prologue
    .line 1106
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setLayoutAlgorithmLayoutAlgorithmInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1107
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setLayoutAlgorithmSuper(Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;)V

    .line 1111
    :goto_0
    return-void

    .line 1109
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setLayoutAlgorithmLayoutAlgorithmInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->ConvertLayoutAlgorithmInternal(Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setLayoutAlgorithmSuper(Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;)V
    .locals 1
    .param p1, "la"    # Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    .prologue
    .line 1114
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 1115
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setLayoutAlgorithm(Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;)V

    .line 1119
    :goto_0
    return-void

    .line 1117
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setLayoutAlgorithm(Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;)V

    goto :goto_0
.end method

.method public setLoadWithOverviewMode(Z)V
    .locals 4
    .param p1, "overview"    # Z

    .prologue
    .line 1147
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setLoadWithOverviewModebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1148
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setLoadWithOverviewModeSuper(Z)V

    .line 1152
    :goto_0
    return-void

    .line 1150
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setLoadWithOverviewModebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setLoadWithOverviewModeSuper(Z)V
    .locals 1
    .param p1, "overview"    # Z

    .prologue
    .line 1155
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 1156
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setLoadWithOverviewMode(Z)V

    .line 1160
    :goto_0
    return-void

    .line 1158
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setLoadWithOverviewMode(Z)V

    goto :goto_0
.end method

.method public setLoadsImagesAutomatically(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    .line 261
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setLoadsImagesAutomaticallybooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setLoadsImagesAutomaticallySuper(Z)V

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setLoadsImagesAutomaticallybooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setLoadsImagesAutomaticallySuper(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 269
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 270
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setLoadsImagesAutomatically(Z)V

    .line 274
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setLoadsImagesAutomatically(Z)V

    goto :goto_0
.end method

.method public setMediaPlaybackRequiresUserGesture(Z)V
    .locals 4
    .param p1, "require"    # Z

    .prologue
    .line 614
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setMediaPlaybackRequiresUserGesturebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setMediaPlaybackRequiresUserGestureSuper(Z)V

    .line 619
    :goto_0
    return-void

    .line 617
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setMediaPlaybackRequiresUserGesturebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setMediaPlaybackRequiresUserGestureSuper(Z)V
    .locals 1
    .param p1, "require"    # Z

    .prologue
    .line 622
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 623
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 627
    :goto_0
    return-void

    .line 625
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setMediaPlaybackRequiresUserGesture(Z)V

    goto :goto_0
.end method

.method public setSaveFormData(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 737
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSaveFormDatabooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSaveFormDataSuper(Z)V

    .line 742
    :goto_0
    return-void

    .line 740
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSaveFormDatabooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setSaveFormDataSuper(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 745
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 746
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setSaveFormData(Z)V

    .line 750
    :goto_0
    return-void

    .line 748
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setSaveFormData(Z)V

    goto :goto_0
.end method

.method public setSupportMultipleWindows(Z)V
    .locals 4
    .param p1, "support"    # Z

    .prologue
    .line 450
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportMultipleWindowsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportMultipleWindowsSuper(Z)V

    .line 455
    :goto_0
    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportMultipleWindowsbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setSupportMultipleWindowsSuper(Z)V
    .locals 1
    .param p1, "support"    # Z

    .prologue
    .line 458
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 459
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setSupportMultipleWindows(Z)V

    .line 463
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setSupportMultipleWindows(Z)V

    goto :goto_0
.end method

.method public setSupportQuirksMode(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 1065
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportQuirksModebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1066
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportQuirksModeSuper(Z)V

    .line 1070
    :goto_0
    return-void

    .line 1068
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportQuirksModebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setSupportQuirksModeSuper(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1073
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 1074
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setSupportQuirksMode(Z)V

    .line 1078
    :goto_0
    return-void

    .line 1076
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setSupportQuirksMode(Z)V

    goto :goto_0
.end method

.method public setSupportSpatialNavigation(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 1024
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportSpatialNavigationbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1025
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportSpatialNavigationSuper(Z)V

    .line 1029
    :goto_0
    return-void

    .line 1027
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportSpatialNavigationbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setSupportSpatialNavigationSuper(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1032
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 1033
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setSupportSpatialNavigation(Z)V

    .line 1037
    :goto_0
    return-void

    .line 1035
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setSupportSpatialNavigation(Z)V

    goto :goto_0
.end method

.method public setSupportZoom(Z)V
    .locals 4
    .param p1, "support"    # Z

    .prologue
    .line 920
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportZoombooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 921
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportZoomSuper(Z)V

    .line 925
    :goto_0
    return-void

    .line 923
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setSupportZoombooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setSupportZoomSuper(Z)V
    .locals 1
    .param p1, "support"    # Z

    .prologue
    .line 928
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 929
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setSupportZoom(Z)V

    .line 933
    :goto_0
    return-void

    .line 931
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setSupportZoom(Z)V

    goto :goto_0
.end method

.method public setTextZoom(I)V
    .locals 4
    .param p1, "textZoom"    # I

    .prologue
    .line 797
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setTextZoomintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setTextZoomSuper(I)V

    .line 802
    :goto_0
    return-void

    .line 800
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setTextZoomintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setTextZoomSuper(I)V
    .locals 1
    .param p1, "textZoom"    # I

    .prologue
    .line 805
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 806
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setTextZoom(I)V

    .line 810
    :goto_0
    return-void

    .line 808
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setTextZoom(I)V

    goto :goto_0
.end method

.method public setUseWideViewPort(Z)V
    .locals 4
    .param p1, "use"    # Z

    .prologue
    .line 491
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setUseWideViewPortbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setUseWideViewPortSuper(Z)V

    .line 496
    :goto_0
    return-void

    .line 494
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setUseWideViewPortbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setUseWideViewPortSuper(Z)V
    .locals 1
    .param p1, "use"    # Z

    .prologue
    .line 499
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 500
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setUseWideViewPort(Z)V

    .line 504
    :goto_0
    return-void

    .line 502
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setUseWideViewPort(Z)V

    goto :goto_0
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 3
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 655
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setUserAgentStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setUserAgentStringSuper(Ljava/lang/String;)V

    .line 660
    :goto_0
    return-void

    .line 658
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->setUserAgentStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setUserAgentStringSuper(Ljava/lang/String;)V
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 663
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v0, :cond_0

    .line 664
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setUserAgentString(Ljava/lang/String;)V

    .line 668
    :goto_0
    return-void

    .line 666
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public supportMultipleWindows()Z
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportMultipleWindowsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportMultipleWindowsSuper()Z

    move-result v0

    .line 472
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportMultipleWindowsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public supportMultipleWindowsSuper()Z
    .locals 2

    .prologue
    .line 478
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 479
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->supportMultipleWindows()Z

    move-result v0

    .line 484
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 481
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->supportMultipleWindows()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public supportZoom()Z
    .locals 2

    .prologue
    .line 939
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportZoomMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 940
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportZoomSuper()Z

    move-result v0

    .line 942
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportZoomMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public supportZoomSuper()Z
    .locals 2

    .prologue
    .line 948
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 949
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->supportZoom()Z

    move-result v0

    .line 954
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 951
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->supportZoom()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public supportsMultiTouchZoomForTest()Z
    .locals 2

    .prologue
    .line 1002
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportsMultiTouchZoomForTestMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1003
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportsMultiTouchZoomForTestSuper()Z

    move-result v0

    .line 1005
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->supportsMultiTouchZoomForTestMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public supportsMultiTouchZoomForTestSuper()Z
    .locals 2

    .prologue
    .line 1011
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-nez v1, :cond_0

    .line 1012
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->supportsMultiTouchZoomForTest()Z

    move-result v0

    .line 1017
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 1014
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsBridge;->internal:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->supportsMultiTouchZoomForTest()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method
