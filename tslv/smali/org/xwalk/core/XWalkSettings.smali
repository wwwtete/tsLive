.class public Lorg/xwalk/core/XWalkSettings;
.super Ljava/lang/Object;
.source "XWalkSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/XWalkSettings$LayoutAlgorithm;
    }
.end annotation


# static fields
.field public static final LOAD_CACHE_ELSE_NETWORK:I = 0x1

.field public static final LOAD_CACHE_ONLY:I = 0x3

.field public static final LOAD_DEFAULT:I = -0x1

.field public static final LOAD_NO_CACHE:I = 0x2


# instance fields
.field private bridge:Ljava/lang/Object;

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

.field private enumLayoutAlgorithmClassValueOfMethod:Lorg/xwalk/core/ReflectMethod;

.field private getAcceptLanguagesMethod:Lorg/xwalk/core/ReflectMethod;

.field private getAllowContentAccessMethod:Lorg/xwalk/core/ReflectMethod;

.field private getAllowFileAccessFromFileURLsMethod:Lorg/xwalk/core/ReflectMethod;

.field private getAllowFileAccessMethod:Lorg/xwalk/core/ReflectMethod;

.field private getAllowUniversalAccessFromFileURLsMethod:Lorg/xwalk/core/ReflectMethod;

.field private getBlockNetworkImageMethod:Lorg/xwalk/core/ReflectMethod;

.field private getBlockNetworkLoadsMethod:Lorg/xwalk/core/ReflectMethod;

.field private getBuiltInZoomControlsMethod:Lorg/xwalk/core/ReflectMethod;

.field private getCacheModeMethod:Lorg/xwalk/core/ReflectMethod;

.field private getDatabaseEnabledMethod:Lorg/xwalk/core/ReflectMethod;

.field private getDefaultFixedFontSizeMethod:Lorg/xwalk/core/ReflectMethod;

.field private getDefaultFontSizeMethod:Lorg/xwalk/core/ReflectMethod;

.field private getDomStorageEnabledMethod:Lorg/xwalk/core/ReflectMethod;

.field private getJavaScriptCanOpenWindowsAutomaticallyMethod:Lorg/xwalk/core/ReflectMethod;

.field private getJavaScriptEnabledMethod:Lorg/xwalk/core/ReflectMethod;

.field private getLayoutAlgorithmMethod:Lorg/xwalk/core/ReflectMethod;

.field private getLoadWithOverviewModeMethod:Lorg/xwalk/core/ReflectMethod;

.field private getLoadsImagesAutomaticallyMethod:Lorg/xwalk/core/ReflectMethod;

.field private getMediaPlaybackRequiresUserGestureMethod:Lorg/xwalk/core/ReflectMethod;

.field private getSaveFormDataMethod:Lorg/xwalk/core/ReflectMethod;

.field private getSupportQuirksModeMethod:Lorg/xwalk/core/ReflectMethod;

.field private getSupportSpatialNavigationMethod:Lorg/xwalk/core/ReflectMethod;

.field private getTextZoomMethod:Lorg/xwalk/core/ReflectMethod;

.field private getUseWideViewPortMethod:Lorg/xwalk/core/ReflectMethod;

.field private getUserAgentStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private postWrapperMethod:Lorg/xwalk/core/ReflectMethod;

.field private setAcceptLanguagesStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private setAllowContentAccessbooleanMethod:Lorg/xwalk/core/ReflectMethod;

.field private setAllowFileAccessFromFileURLsbooleanMethod:Lorg/xwalk/core/ReflectMethod;

.field private setAllowFileAccessbooleanMethod:Lorg/xwalk/core/ReflectMethod;

.field private setAllowUniversalAccessFromFileURLsbooleanMethod:Lorg/xwalk/core/ReflectMethod;

.field private setBlockNetworkImagebooleanMethod:Lorg/xwalk/core/ReflectMethod;

.field private setBlockNetworkLoadsbooleanMethod:Lorg/xwalk/core/ReflectMethod;

.field private setBuiltInZoomControlsbooleanMethod:Lorg/xwalk/core/ReflectMethod;

.field private setCacheModeintMethod:Lorg/xwalk/core/ReflectMethod;

.field private setDatabaseEnabledbooleanMethod:Lorg/xwalk/core/ReflectMethod;

.field private setDefaultFixedFontSizeintMethod:Lorg/xwalk/core/ReflectMethod;

.field private setDefaultFontSizeintMethod:Lorg/xwalk/core/ReflectMethod;

.field private setDomStorageEnabledbooleanMethod:Lorg/xwalk/core/ReflectMethod;

.field private setInitialPageScalefloatMethod:Lorg/xwalk/core/ReflectMethod;

.field private setJavaScriptCanOpenWindowsAutomaticallybooleanMethod:Lorg/xwalk/core/ReflectMethod;

.field private setJavaScriptEnabledbooleanMethod:Lorg/xwalk/core/ReflectMethod;

.field private setLayoutAlgorithmLayoutAlgorithmInternalMethod:Lorg/xwalk/core/ReflectMethod;

.field private setLoadWithOverviewModebooleanMethod:Lorg/xwalk/core/ReflectMethod;

.field private setLoadsImagesAutomaticallybooleanMethod:Lorg/xwalk/core/ReflectMethod;

.field private setMediaPlaybackRequiresUserGesturebooleanMethod:Lorg/xwalk/core/ReflectMethod;

.field private setSaveFormDatabooleanMethod:Lorg/xwalk/core/ReflectMethod;

.field private setSupportMultipleWindowsbooleanMethod:Lorg/xwalk/core/ReflectMethod;

.field private setSupportQuirksModebooleanMethod:Lorg/xwalk/core/ReflectMethod;

.field private setSupportSpatialNavigationbooleanMethod:Lorg/xwalk/core/ReflectMethod;

.field private setSupportZoombooleanMethod:Lorg/xwalk/core/ReflectMethod;

.field private setTextZoomintMethod:Lorg/xwalk/core/ReflectMethod;

.field private setUseWideViewPortbooleanMethod:Lorg/xwalk/core/ReflectMethod;

.field private setUserAgentStringStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private supportMultipleWindowsMethod:Lorg/xwalk/core/ReflectMethod;

.field private supportZoomMethod:Lorg/xwalk/core/ReflectMethod;

.field private supportsMultiTouchZoomForTestMethod:Lorg/xwalk/core/ReflectMethod;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 5
    .param p1, "bridge"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    invoke-direct {v0}, Lorg/xwalk/core/ReflectMethod;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->enumLayoutAlgorithmClassValueOfMethod:Lorg/xwalk/core/ReflectMethod;

    .line 111
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "setCacheMode"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setCacheModeintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 133
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getCacheMode"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getCacheModeMethod:Lorg/xwalk/core/ReflectMethod;

    .line 167
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "setBlockNetworkLoads"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setBlockNetworkLoadsbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 189
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getBlockNetworkLoads"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getBlockNetworkLoadsMethod:Lorg/xwalk/core/ReflectMethod;

    .line 211
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "setAllowFileAccess"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setAllowFileAccessbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 232
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getAllowFileAccess"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getAllowFileAccessMethod:Lorg/xwalk/core/ReflectMethod;

    .line 253
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "setAllowContentAccess"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setAllowContentAccessbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 274
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getAllowContentAccess"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getAllowContentAccessMethod:Lorg/xwalk/core/ReflectMethod;

    .line 297
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "setJavaScriptEnabled"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setJavaScriptEnabledbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 326
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "setAllowUniversalAccessFromFileURLs"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setAllowUniversalAccessFromFileURLsbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 356
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "setAllowFileAccessFromFileURLs"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setAllowFileAccessFromFileURLsbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 383
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "setLoadsImagesAutomatically"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setLoadsImagesAutomaticallybooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 406
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getLoadsImagesAutomatically"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getLoadsImagesAutomaticallyMethod:Lorg/xwalk/core/ReflectMethod;

    .line 437
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "setBlockNetworkImage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setBlockNetworkImagebooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 459
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getBlockNetworkImage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getBlockNetworkImageMethod:Lorg/xwalk/core/ReflectMethod;

    .line 481
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getJavaScriptEnabled"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getJavaScriptEnabledMethod:Lorg/xwalk/core/ReflectMethod;

    .line 506
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getAllowUniversalAccessFromFileURLs"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getAllowUniversalAccessFromFileURLsMethod:Lorg/xwalk/core/ReflectMethod;

    .line 530
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getAllowFileAccessFromFileURLs"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getAllowFileAccessFromFileURLsMethod:Lorg/xwalk/core/ReflectMethod;

    .line 552
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "setJavaScriptCanOpenWindowsAutomatically"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setJavaScriptCanOpenWindowsAutomaticallybooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 575
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getJavaScriptCanOpenWindowsAutomatically"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getJavaScriptCanOpenWindowsAutomaticallyMethod:Lorg/xwalk/core/ReflectMethod;

    .line 598
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "setSupportMultipleWindows"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setSupportMultipleWindowsbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 620
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "supportMultipleWindows"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->supportMultipleWindowsMethod:Lorg/xwalk/core/ReflectMethod;

    .line 646
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "setUseWideViewPort"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setUseWideViewPortbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 667
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getUseWideViewPort"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getUseWideViewPortMethod:Lorg/xwalk/core/ReflectMethod;

    .line 689
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "setDomStorageEnabled"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setDomStorageEnabledbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 711
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getDomStorageEnabled"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getDomStorageEnabledMethod:Lorg/xwalk/core/ReflectMethod;

    .line 738
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "setDatabaseEnabled"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setDatabaseEnabledbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 759
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getDatabaseEnabled"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getDatabaseEnabledMethod:Lorg/xwalk/core/ReflectMethod;

    .line 781
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "setMediaPlaybackRequiresUserGesture"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setMediaPlaybackRequiresUserGesturebooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 803
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getMediaPlaybackRequiresUserGesture"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getMediaPlaybackRequiresUserGestureMethod:Lorg/xwalk/core/ReflectMethod;

    .line 823
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "setUserAgentString"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setUserAgentStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 843
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getUserAgentString"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getUserAgentStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 863
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "setAcceptLanguages"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setAcceptLanguagesStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 883
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getAcceptLanguages"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getAcceptLanguagesMethod:Lorg/xwalk/core/ReflectMethod;

    .line 902
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "setSaveFormData"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setSaveFormDatabooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 923
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getSaveFormData"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getSaveFormDataMethod:Lorg/xwalk/core/ReflectMethod;

    .line 943
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "setInitialPageScale"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setInitialPageScalefloatMethod:Lorg/xwalk/core/ReflectMethod;

    .line 963
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "setTextZoom"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setTextZoomintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 983
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getTextZoom"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getTextZoomMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1004
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "setDefaultFontSize"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setDefaultFontSizeintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1024
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getDefaultFontSize"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getDefaultFontSizeMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1045
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "setDefaultFixedFontSize"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setDefaultFixedFontSizeintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1065
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getDefaultFixedFontSize"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getDefaultFixedFontSizeMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1088
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "setSupportZoom"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setSupportZoombooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1108
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "supportZoom"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->supportZoomMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1132
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "setBuiltInZoomControls"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setBuiltInZoomControlsbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1152
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getBuiltInZoomControls"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getBuiltInZoomControlsMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1172
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "supportsMultiTouchZoomForTest"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->supportsMultiTouchZoomForTestMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1193
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "setSupportSpatialNavigation"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setSupportSpatialNavigationbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1213
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getSupportSpatialNavigation"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getSupportSpatialNavigationMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1233
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "setSupportQuirksMode"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setSupportQuirksModebooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1253
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getSupportQuirksMode"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getSupportQuirksModeMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1274
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "setLayoutAlgorithm"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setLayoutAlgorithmLayoutAlgorithmInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1294
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getLayoutAlgorithm"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getLayoutAlgorithmMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1317
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "setLoadWithOverviewMode"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setLoadWithOverviewModebooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 1337
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getLoadWithOverviewMode"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getLoadWithOverviewModeMethod:Lorg/xwalk/core/ReflectMethod;

    .line 81
    iput-object p1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    .line 82
    invoke-virtual {p0}, Lorg/xwalk/core/XWalkSettings;->reflectionInit()V

    .line 83
    return-void
.end method

.method private ConvertLayoutAlgorithm(Lorg/xwalk/core/XWalkSettings$LayoutAlgorithm;)Ljava/lang/Object;
    .locals 4
    .param p1, "type"    # Lorg/xwalk/core/XWalkSettings$LayoutAlgorithm;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->enumLayoutAlgorithmClassValueOfMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkSettings$LayoutAlgorithm;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAcceptLanguages()Ljava/lang/String;
    .locals 3

    .prologue
    .line 872
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->getAcceptLanguagesMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    :goto_0
    return-object v1

    .line 873
    :catch_0
    move-exception v0

    .line 874
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 875
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 880
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 877
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getAllowContentAccess()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 263
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->getAllowContentAccessMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 271
    :goto_0
    return v1

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 266
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 271
    goto :goto_0

    .line 268
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getAllowFileAccess()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 221
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->getAllowFileAccessMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 229
    :goto_0
    return v1

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 224
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 229
    goto :goto_0

    .line 226
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getAllowFileAccessFromFileURLs()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 519
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->getAllowFileAccessFromFileURLsMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 527
    :goto_0
    return v1

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 522
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 527
    goto :goto_0

    .line 524
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getAllowUniversalAccessFromFileURLs()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 495
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->getAllowUniversalAccessFromFileURLsMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 503
    :goto_0
    return v1

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 498
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 503
    goto :goto_0

    .line 500
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getBlockNetworkImage()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 448
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->getBlockNetworkImageMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 456
    :goto_0
    return v1

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 451
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 456
    goto :goto_0

    .line 453
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getBlockNetworkLoads()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 178
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->getBlockNetworkLoadsMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 186
    :goto_0
    return v1

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 181
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 186
    goto :goto_0

    .line 183
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method protected getBridge()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    return-object v0
.end method

.method public getBuiltInZoomControls()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1141
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->getBuiltInZoomControlsMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1149
    :goto_0
    return v1

    .line 1142
    :catch_0
    move-exception v0

    .line 1143
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1144
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 1149
    goto :goto_0

    .line 1146
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getCacheMode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 122
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->getCacheModeMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 130
    :goto_0
    return v1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 125
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 130
    goto :goto_0

    .line 127
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getDatabaseEnabled()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 748
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->getDatabaseEnabledMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 756
    :goto_0
    return v1

    .line 749
    :catch_0
    move-exception v0

    .line 750
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 751
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 756
    goto :goto_0

    .line 753
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getDefaultFixedFontSize()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1054
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->getDefaultFixedFontSizeMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1062
    :goto_0
    return v1

    .line 1055
    :catch_0
    move-exception v0

    .line 1056
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1057
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 1062
    goto :goto_0

    .line 1059
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getDefaultFontSize()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1013
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->getDefaultFontSizeMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1021
    :goto_0
    return v1

    .line 1014
    :catch_0
    move-exception v0

    .line 1015
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1016
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 1021
    goto :goto_0

    .line 1018
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getDomStorageEnabled()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 700
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->getDomStorageEnabledMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 708
    :goto_0
    return v1

    .line 701
    :catch_0
    move-exception v0

    .line 702
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 703
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 708
    goto :goto_0

    .line 705
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getJavaScriptCanOpenWindowsAutomatically()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 564
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->getJavaScriptCanOpenWindowsAutomaticallyMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 572
    :goto_0
    return v1

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 567
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 572
    goto :goto_0

    .line 569
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getJavaScriptEnabled()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 470
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->getJavaScriptEnabledMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 478
    :goto_0
    return v1

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 473
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 478
    goto :goto_0

    .line 475
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getLayoutAlgorithm()Lorg/xwalk/core/XWalkSettings$LayoutAlgorithm;
    .locals 3

    .prologue
    .line 1283
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->getLayoutAlgorithmMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/xwalk/core/XWalkSettings$LayoutAlgorithm;->valueOf(Ljava/lang/String;)Lorg/xwalk/core/XWalkSettings$LayoutAlgorithm;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1291
    :goto_0
    return-object v1

    .line 1284
    :catch_0
    move-exception v0

    .line 1285
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1286
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 1291
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1288
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getLoadWithOverviewMode()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1326
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->getLoadWithOverviewModeMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1334
    :goto_0
    return v1

    .line 1327
    :catch_0
    move-exception v0

    .line 1328
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1329
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 1334
    goto :goto_0

    .line 1331
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getLoadsImagesAutomatically()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 395
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->getLoadsImagesAutomaticallyMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 403
    :goto_0
    return v1

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 398
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 403
    goto :goto_0

    .line 400
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getMediaPlaybackRequiresUserGesture()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 792
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->getMediaPlaybackRequiresUserGestureMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 800
    :goto_0
    return v1

    .line 793
    :catch_0
    move-exception v0

    .line 794
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 795
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 800
    goto :goto_0

    .line 797
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getSaveFormData()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 912
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->getSaveFormDataMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 920
    :goto_0
    return v1

    .line 913
    :catch_0
    move-exception v0

    .line 914
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 915
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 920
    goto :goto_0

    .line 917
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getSupportQuirksMode()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1242
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->getSupportQuirksModeMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1250
    :goto_0
    return v1

    .line 1243
    :catch_0
    move-exception v0

    .line 1244
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1245
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 1250
    goto :goto_0

    .line 1247
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getSupportSpatialNavigation()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1202
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->getSupportSpatialNavigationMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1210
    :goto_0
    return v1

    .line 1203
    :catch_0
    move-exception v0

    .line 1204
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1205
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 1210
    goto :goto_0

    .line 1207
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getTextZoom()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 972
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->getTextZoomMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 980
    :goto_0
    return v1

    .line 973
    :catch_0
    move-exception v0

    .line 974
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 975
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 980
    goto :goto_0

    .line 977
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getUseWideViewPort()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 656
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->getUseWideViewPortMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 664
    :goto_0
    return v1

    .line 657
    :catch_0
    move-exception v0

    .line 658
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 659
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 664
    goto :goto_0

    .line 661
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 832
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->getUserAgentStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    :goto_0
    return-object v1

    .line 833
    :catch_0
    move-exception v0

    .line 834
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 835
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 840
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 837
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method reflectionInit()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1341
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->initEmbeddedMode()V

    .line 1343
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->getInstance()Lorg/xwalk/core/XWalkCoreWrapper;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    .line 1344
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v0, :cond_0

    .line 1345
    invoke-static {p0}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectObject(Ljava/lang/Object;)V

    .line 1464
    :goto_0
    return-void

    .line 1349
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->enumLayoutAlgorithmClassValueOfMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v2, "XWalkSettingsInternal$LayoutAlgorithmInternal"

    invoke-virtual {v1, v2}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "valueOf"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v0, v7, v1, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1352
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setCacheModeintMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "setCacheModeSuper"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1354
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getCacheModeMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "getCacheModeSuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1356
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setBlockNetworkLoadsbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "setBlockNetworkLoadsSuper"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1358
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getBlockNetworkLoadsMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "getBlockNetworkLoadsSuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1360
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setAllowFileAccessbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "setAllowFileAccessSuper"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1362
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getAllowFileAccessMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "getAllowFileAccessSuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1364
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setAllowContentAccessbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "setAllowContentAccessSuper"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1366
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getAllowContentAccessMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "getAllowContentAccessSuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1368
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setJavaScriptEnabledbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "setJavaScriptEnabledSuper"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1370
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setAllowUniversalAccessFromFileURLsbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "setAllowUniversalAccessFromFileURLsSuper"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1372
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setAllowFileAccessFromFileURLsbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "setAllowFileAccessFromFileURLsSuper"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1374
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setLoadsImagesAutomaticallybooleanMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "setLoadsImagesAutomaticallySuper"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1376
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getLoadsImagesAutomaticallyMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "getLoadsImagesAutomaticallySuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1378
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setBlockNetworkImagebooleanMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "setBlockNetworkImageSuper"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1380
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getBlockNetworkImageMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "getBlockNetworkImageSuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1382
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getJavaScriptEnabledMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "getJavaScriptEnabledSuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1384
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getAllowUniversalAccessFromFileURLsMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "getAllowUniversalAccessFromFileURLsSuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1386
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getAllowFileAccessFromFileURLsMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "getAllowFileAccessFromFileURLsSuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1388
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setJavaScriptCanOpenWindowsAutomaticallybooleanMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "setJavaScriptCanOpenWindowsAutomaticallySuper"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1390
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getJavaScriptCanOpenWindowsAutomaticallyMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "getJavaScriptCanOpenWindowsAutomaticallySuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1392
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setSupportMultipleWindowsbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "setSupportMultipleWindowsSuper"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1394
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->supportMultipleWindowsMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "supportMultipleWindowsSuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1396
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setUseWideViewPortbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "setUseWideViewPortSuper"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1398
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getUseWideViewPortMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "getUseWideViewPortSuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1400
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setDomStorageEnabledbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "setDomStorageEnabledSuper"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1402
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getDomStorageEnabledMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "getDomStorageEnabledSuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1404
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setDatabaseEnabledbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "setDatabaseEnabledSuper"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1406
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getDatabaseEnabledMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "getDatabaseEnabledSuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1408
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setMediaPlaybackRequiresUserGesturebooleanMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "setMediaPlaybackRequiresUserGestureSuper"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1410
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getMediaPlaybackRequiresUserGestureMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "getMediaPlaybackRequiresUserGestureSuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1412
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setUserAgentStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "setUserAgentStringSuper"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1414
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getUserAgentStringMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "getUserAgentStringSuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1416
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setAcceptLanguagesStringMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "setAcceptLanguagesSuper"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1418
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getAcceptLanguagesMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "getAcceptLanguagesSuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1420
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setSaveFormDatabooleanMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "setSaveFormDataSuper"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1422
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getSaveFormDataMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "getSaveFormDataSuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1424
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setInitialPageScalefloatMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "setInitialPageScaleSuper"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1426
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setTextZoomintMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "setTextZoomSuper"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1428
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getTextZoomMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "getTextZoomSuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1430
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setDefaultFontSizeintMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "setDefaultFontSizeSuper"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1432
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getDefaultFontSizeMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "getDefaultFontSizeSuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1434
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setDefaultFixedFontSizeintMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "setDefaultFixedFontSizeSuper"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1436
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getDefaultFixedFontSizeMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "getDefaultFixedFontSizeSuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1438
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setSupportZoombooleanMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "setSupportZoomSuper"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1440
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->supportZoomMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "supportZoomSuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1442
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setBuiltInZoomControlsbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "setBuiltInZoomControlsSuper"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1444
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getBuiltInZoomControlsMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "getBuiltInZoomControlsSuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1446
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->supportsMultiTouchZoomForTestMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "supportsMultiTouchZoomForTestSuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1448
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setSupportSpatialNavigationbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "setSupportSpatialNavigationSuper"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1450
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getSupportSpatialNavigationMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "getSupportSpatialNavigationSuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1452
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setSupportQuirksModebooleanMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "setSupportQuirksModeSuper"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1454
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getSupportQuirksModeMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "getSupportQuirksModeSuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1456
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setLayoutAlgorithmLayoutAlgorithmInternalMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "setLayoutAlgorithmSuper"

    new-array v3, v8, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v5, "XWalkSettingsInternal$LayoutAlgorithmInternal"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1458
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getLayoutAlgorithmMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "getLayoutAlgorithmSuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1460
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->setLoadWithOverviewModebooleanMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "setLoadWithOverviewModeSuper"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 1462
    iget-object v0, p0, Lorg/xwalk/core/XWalkSettings;->getLoadWithOverviewModeMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->bridge:Ljava/lang/Object;

    const-string v2, "getLoadWithOverviewModeSuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto/16 :goto_0
.end method

.method public setAcceptLanguages(Ljava/lang/String;)V
    .locals 4
    .param p1, "acceptLanguages"    # Ljava/lang/String;

    .prologue
    .line 852
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->setAcceptLanguagesStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    :goto_0
    return-void

    .line 853
    :catch_0
    move-exception v0

    .line 854
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 855
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 857
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setAllowContentAccess(Z)V
    .locals 5
    .param p1, "allow"    # Z

    .prologue
    .line 242
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->setAllowContentAccessbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 245
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setAllowFileAccess(Z)V
    .locals 5
    .param p1, "allow"    # Z

    .prologue
    .line 200
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->setAllowFileAccessbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 203
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setAllowFileAccessFromFileURLs(Z)V
    .locals 5
    .param p1, "flag"    # Z

    .prologue
    .line 345
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->setAllowFileAccessFromFileURLsbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    return-void

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 348
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setAllowUniversalAccessFromFileURLs(Z)V
    .locals 5
    .param p1, "flag"    # Z

    .prologue
    .line 315
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->setAllowUniversalAccessFromFileURLsbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :goto_0
    return-void

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 318
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setBlockNetworkImage(Z)V
    .locals 5
    .param p1, "flag"    # Z

    .prologue
    .line 426
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->setBlockNetworkImagebooleanMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :goto_0
    return-void

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 429
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 431
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setBlockNetworkLoads(Z)V
    .locals 5
    .param p1, "flag"    # Z

    .prologue
    .line 156
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->setBlockNetworkLoadsbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 159
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 1121
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->setBuiltInZoomControlsbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1130
    :goto_0
    return-void

    .line 1122
    :catch_0
    move-exception v0

    .line 1123
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1124
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 1126
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setCacheMode(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    .line 100
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->setCacheModeintMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 103
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setDatabaseEnabled(Z)V
    .locals 5
    .param p1, "flag"    # Z

    .prologue
    .line 727
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->setDatabaseEnabledbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    :goto_0
    return-void

    .line 728
    :catch_0
    move-exception v0

    .line 729
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 730
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 732
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setDefaultFixedFontSize(I)V
    .locals 5
    .param p1, "size"    # I

    .prologue
    .line 1034
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->setDefaultFixedFontSizeintMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1043
    :goto_0
    return-void

    .line 1035
    :catch_0
    move-exception v0

    .line 1036
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1037
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 1039
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setDefaultFontSize(I)V
    .locals 5
    .param p1, "size"    # I

    .prologue
    .line 993
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->setDefaultFontSizeintMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1002
    :goto_0
    return-void

    .line 994
    :catch_0
    move-exception v0

    .line 995
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 996
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 998
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setDomStorageEnabled(Z)V
    .locals 5
    .param p1, "flag"    # Z

    .prologue
    .line 678
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->setDomStorageEnabledbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    :goto_0
    return-void

    .line 679
    :catch_0
    move-exception v0

    .line 680
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 681
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 683
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setInitialPageScale(F)V
    .locals 5
    .param p1, "scaleInPercent"    # F

    .prologue
    .line 932
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->setInitialPageScalefloatMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 941
    :goto_0
    return-void

    .line 933
    :catch_0
    move-exception v0

    .line 934
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 935
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 937
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 5
    .param p1, "flag"    # Z

    .prologue
    .line 541
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->setJavaScriptCanOpenWindowsAutomaticallybooleanMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :goto_0
    return-void

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 544
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 546
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setJavaScriptEnabled(Z)V
    .locals 5
    .param p1, "flag"    # Z

    .prologue
    .line 286
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->setJavaScriptEnabledbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 289
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setLayoutAlgorithm(Lorg/xwalk/core/XWalkSettings$LayoutAlgorithm;)V
    .locals 5
    .param p1, "la"    # Lorg/xwalk/core/XWalkSettings$LayoutAlgorithm;

    .prologue
    .line 1263
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->setLayoutAlgorithmLayoutAlgorithmInternalMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lorg/xwalk/core/XWalkSettings;->ConvertLayoutAlgorithm(Lorg/xwalk/core/XWalkSettings$LayoutAlgorithm;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1272
    :goto_0
    return-void

    .line 1264
    :catch_0
    move-exception v0

    .line 1265
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1266
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 1268
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setLoadWithOverviewMode(Z)V
    .locals 5
    .param p1, "overview"    # Z

    .prologue
    .line 1306
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->setLoadWithOverviewModebooleanMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1315
    :goto_0
    return-void

    .line 1307
    :catch_0
    move-exception v0

    .line 1308
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1309
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 1311
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setLoadsImagesAutomatically(Z)V
    .locals 5
    .param p1, "flag"    # Z

    .prologue
    .line 372
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->setLoadsImagesAutomaticallybooleanMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :goto_0
    return-void

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 375
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setMediaPlaybackRequiresUserGesture(Z)V
    .locals 5
    .param p1, "require"    # Z

    .prologue
    .line 770
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->setMediaPlaybackRequiresUserGesturebooleanMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    :goto_0
    return-void

    .line 771
    :catch_0
    move-exception v0

    .line 772
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 773
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 775
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setSaveFormData(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 891
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->setSaveFormDatabooleanMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    :goto_0
    return-void

    .line 892
    :catch_0
    move-exception v0

    .line 893
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 894
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 896
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setSupportMultipleWindows(Z)V
    .locals 5
    .param p1, "support"    # Z

    .prologue
    .line 587
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->setSupportMultipleWindowsbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    :goto_0
    return-void

    .line 588
    :catch_0
    move-exception v0

    .line 589
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 590
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 592
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setSupportQuirksMode(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 1222
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->setSupportQuirksModebooleanMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1231
    :goto_0
    return-void

    .line 1223
    :catch_0
    move-exception v0

    .line 1224
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1225
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 1227
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setSupportSpatialNavigation(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 1182
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->setSupportSpatialNavigationbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1191
    :goto_0
    return-void

    .line 1183
    :catch_0
    move-exception v0

    .line 1184
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1185
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 1187
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setSupportZoom(Z)V
    .locals 5
    .param p1, "support"    # Z

    .prologue
    .line 1077
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->setSupportZoombooleanMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1086
    :goto_0
    return-void

    .line 1078
    :catch_0
    move-exception v0

    .line 1079
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1080
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 1082
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setTextZoom(I)V
    .locals 5
    .param p1, "textZoom"    # I

    .prologue
    .line 952
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->setTextZoomintMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 961
    :goto_0
    return-void

    .line 953
    :catch_0
    move-exception v0

    .line 954
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 955
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 957
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setUseWideViewPort(Z)V
    .locals 5
    .param p1, "use"    # Z

    .prologue
    .line 635
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->setUseWideViewPortbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    :goto_0
    return-void

    .line 636
    :catch_0
    move-exception v0

    .line 637
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 638
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 640
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 4
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 812
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->setUserAgentStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    :goto_0
    return-void

    .line 813
    :catch_0
    move-exception v0

    .line 814
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 815
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 817
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public supportMultipleWindows()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 609
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->supportMultipleWindowsMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 617
    :goto_0
    return v1

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 612
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 617
    goto :goto_0

    .line 614
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public supportZoom()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1097
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->supportZoomMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1105
    :goto_0
    return v1

    .line 1098
    :catch_0
    move-exception v0

    .line 1099
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1100
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 1105
    goto :goto_0

    .line 1102
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public supportsMultiTouchZoomForTest()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1161
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->supportsMultiTouchZoomForTestMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1169
    :goto_0
    return v1

    .line 1162
    :catch_0
    move-exception v0

    .line 1163
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkSettings;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 1164
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 1169
    goto :goto_0

    .line 1166
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method
