.class Lorg/xwalk/core/internal/XWalkContent;
.super Ljava/lang/Object;
.source "XWalkContent.java"

# interfaces
.implements Lorg/xwalk/core/internal/XWalkPreferencesInternal$KeyValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/internal/XWalkContent$XWalkGeolocationCallback;,
        Lorg/xwalk/core/internal/XWalkContent$XWalkIoThreadClientImpl;,
        Lorg/xwalk/core/internal/XWalkContent$DestroyRunnable;,
        Lorg/xwalk/core/internal/XWalkContent$HitTestData;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "xwalk"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final SAVE_RESTORE_STATE_KEY:Ljava/lang/String; = "XWALKVIEW_STATE"

.field private static TAG:Ljava/lang/String;

.field private static javascriptInterfaceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private static timerPaused:Z


# instance fields
.field private mAnimated:Z

.field private mCleanupReference:Lorg/chromium/content/common/CleanupReference;

.field private mContentView:Lorg/xwalk/core/internal/XWalkContentView;

.field private mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

.field private mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

.field private mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

.field private mDIPScale:D

.field private mDevToolsServer:Lorg/xwalk/core/internal/XWalkDevToolsServer;

.field private mGeolocationPermissions:Lorg/xwalk/core/internal/XWalkGeolocationPermissions;

.field private mGetBitmapCallback:Lorg/chromium/content_public/browser/ContentBitmapCallback;

.field private mIoThreadClient:Lorg/xwalk/core/internal/XWalkContentsIoThreadClient;

.field private mIsLoaded:Z

.field private mLaunchScreenManager:Lorg/xwalk/core/internal/XWalkLaunchScreenManager;

.field mNativeContent:J

.field private mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

.field private final mPossiblyStaleHitTestData:Lorg/xwalk/core/internal/XWalkContent$HitTestData;

.field private mSettings:Lorg/xwalk/core/internal/XWalkSettingsInternal;

.field private mViewContext:Landroid/content/Context;

.field private mWebContents:Lorg/chromium/content_public/browser/WebContents;

.field private mWindow:Lorg/chromium/ui/base/ActivityWindowAndroid;

.field private mXWalkAutofillClient:Lorg/xwalk/core/internal/XWalkAutofillClientAndroid;

.field private mXWalkContentsDelegateAdapter:Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;

.field private mXWalkGetBitmapCallbackInternal:Lorg/xwalk/core/internal/XWalkGetBitmapCallbackInternal;

.field private mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    const-class v0, Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/xwalk/core/internal/XWalkContent;->$assertionsDisabled:Z

    .line 69
    const-string v0, "XWalkContent"

    sput-object v0, Lorg/xwalk/core/internal/XWalkContent;->TAG:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    sput-object v0, Lorg/xwalk/core/internal/XWalkContent;->javascriptInterfaceClass:Ljava/lang/Class;

    .line 504
    sput-boolean v1, Lorg/xwalk/core/internal/XWalkContent;->timerPaused:Z

    return-void

    :cond_0
    move v0, v1

    .line 63
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkViewInternal;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "animatable"    # Ljava/lang/String;
    .param p3, "xwView"    # Lorg/xwalk/core/internal/XWalkViewInternal;

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mIsLoaded:Z

    .line 88
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mAnimated:Z

    .line 92
    new-instance v1, Lorg/xwalk/core/internal/XWalkContent$HitTestData;

    invoke-direct {v1}, Lorg/xwalk/core/internal/XWalkContent$HitTestData;-><init>()V

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mPossiblyStaleHitTestData:Lorg/xwalk/core/internal/XWalkContent$HitTestData;

    .line 133
    iput-object p3, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    .line 134
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mViewContext:Landroid/content/Context;

    .line 135
    new-instance v1, Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-direct {v1, v2}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    .line 136
    new-instance v1, Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-direct {v1, v2}, Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;-><init>(Lorg/xwalk/core/internal/XWalkContentsClient;)V

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkContentsDelegateAdapter:Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;

    .line 138
    new-instance v1, Lorg/xwalk/core/internal/XWalkContent$XWalkIoThreadClientImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/xwalk/core/internal/XWalkContent$XWalkIoThreadClientImpl;-><init>(Lorg/xwalk/core/internal/XWalkContent;Lorg/xwalk/core/internal/XWalkContent$1;)V

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mIoThreadClient:Lorg/xwalk/core/internal/XWalkContentsIoThreadClient;

    .line 141
    new-instance v1, Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-virtual {p3}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/chromium/ui/base/ActivityWindowAndroid;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mWindow:Lorg/chromium/ui/base/ActivityWindowAndroid;

    .line 143
    new-instance v0, Lorg/xwalk/core/internal/InMemorySharedPreferences;

    invoke-direct {v0}, Lorg/xwalk/core/internal/InMemorySharedPreferences;-><init>()V

    .line 144
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    new-instance v1, Lorg/xwalk/core/internal/XWalkGeolocationPermissions;

    invoke-direct {v1, v0}, Lorg/xwalk/core/internal/XWalkGeolocationPermissions;-><init>(Landroid/content/SharedPreferences;)V

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mGeolocationPermissions:Lorg/xwalk/core/internal/XWalkGeolocationPermissions;

    .line 146
    new-instance v1, Lorg/xwalk/core/internal/XWalkMediaPlayerResourceLoadingFilter;

    invoke-direct {v1}, Lorg/xwalk/core/internal/XWalkMediaPlayerResourceLoadingFilter;-><init>()V

    invoke-static {v1}, Lorg/chromium/media/MediaPlayerBridge;->setResourceLoadingFilter(Lorg/chromium/media/MediaPlayerBridge$ResourceLoadingFilter;)V

    .line 149
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContent;->nativeInit()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, p2}, Lorg/xwalk/core/internal/XWalkContent;->setNativeContent(JLjava/lang/String;)V

    .line 151
    invoke-static {p0}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->load(Lorg/xwalk/core/internal/XWalkPreferencesInternal$KeyValueChangeListener;)V

    .line 152
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkContent;->initCaptureBitmapAsync()V

    .line 153
    return-void
.end method

.method static synthetic access$000(J)V
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 68
    invoke-static {p0, p1}, Lorg/xwalk/core/internal/XWalkContent;->nativeDestroy(J)V

    return-void
.end method

.method static synthetic access$200(Lorg/xwalk/core/internal/XWalkContent;)Lorg/xwalk/core/internal/XWalkGetBitmapCallbackInternal;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkContent;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkGetBitmapCallbackInternal:Lorg/xwalk/core/internal/XWalkGetBitmapCallbackInternal;

    return-object v0
.end method

.method static synthetic access$400(Lorg/xwalk/core/internal/XWalkContent;)Lorg/chromium/content/browser/ContentViewCore;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkContent;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    return-object v0
.end method

.method static synthetic access$500(Lorg/xwalk/core/internal/XWalkContent;)Lorg/xwalk/core/internal/XWalkSettingsInternal;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkContent;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    return-object v0
.end method

.method static synthetic access$600(Lorg/xwalk/core/internal/XWalkContent;)Lorg/xwalk/core/internal/XWalkContentsClientBridge;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkContent;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    return-object v0
.end method

.method static synthetic access$700(Lorg/xwalk/core/internal/XWalkContent;)Lorg/xwalk/core/internal/XWalkGeolocationPermissions;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkContent;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mGeolocationPermissions:Lorg/xwalk/core/internal/XWalkGeolocationPermissions;

    return-object v0
.end method

.method static synthetic access$800(Lorg/xwalk/core/internal/XWalkContent;JZLjava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkContent;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z
    .param p4, "x3"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkContent;->nativeInvokeGeolocationCallback(JZLjava/lang/String;)V

    return-void
.end method

.method private initCaptureBitmapAsync()V
    .locals 1

    .prologue
    .line 156
    new-instance v0, Lorg/xwalk/core/internal/XWalkContent$1;

    invoke-direct {v0, p0}, Lorg/xwalk/core/internal/XWalkContent$1;-><init>(Lorg/xwalk/core/internal/XWalkContent;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mGetBitmapCallback:Lorg/chromium/content_public/browser/ContentBitmapCallback;

    .line 163
    return-void
.end method

.method private isOpaque(I)Z
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 543
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeClearCache(JZ)V
.end method

.method private native nativeClearCacheForSingleFile(JLjava/lang/String;)V
.end method

.method private native nativeClearMatches(J)V
.end method

.method private static native nativeDestroy(J)V
.end method

.method private native nativeDevToolsAgentId(J)Ljava/lang/String;
.end method

.method private native nativeFindAllAsync(JLjava/lang/String;)V
.end method

.method private native nativeFindNext(JZ)V
.end method

.method private native nativeGetCertificate(J)[B
.end method

.method private native nativeGetRoutingID(J)I
.end method

.method private native nativeGetState(J)[B
.end method

.method private native nativeGetVersion(J)Ljava/lang/String;
.end method

.method private native nativeGetWebContents(J)Lorg/chromium/content_public/browser/WebContents;
.end method

.method private native nativeInit()J
.end method

.method private native nativeInvokeGeolocationCallback(JZLjava/lang/String;)V
.end method

.method private native nativeReleasePopupXWalkContent(J)J
.end method

.method private native nativeRequestNewHitTestDataAt(JFFF)V
.end method

.method private native nativeSetBackgroundColor(JI)V
.end method

.method private native nativeSetJavaPeers(JLorg/xwalk/core/internal/XWalkContent;Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;Lorg/xwalk/core/internal/XWalkContentsClientBridge;Lorg/xwalk/core/internal/XWalkContentsIoThreadClient;Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;)V
.end method

.method private native nativeSetJsOnlineProperty(JZ)V
.end method

.method private native nativeSetManifest(JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeSetOriginAccessWhitelist(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeSetState(J[B)Z
.end method

.method private native nativeUpdateLastHitTestData(J)V
.end method

.method private onGeolocationPermissionsShowPrompt(Ljava/lang/String;)V
    .locals 4
    .param p1, "origin"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 882
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 897
    :goto_0
    return-void

    .line 884
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getGeolocationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 885
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/xwalk/core/internal/XWalkContent;->nativeInvokeGeolocationCallback(JZLjava/lang/String;)V

    goto :goto_0

    .line 889
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mGeolocationPermissions:Lorg/xwalk/core/internal/XWalkGeolocationPermissions;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkGeolocationPermissions;->hasOrigin(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 890
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mGeolocationPermissions:Lorg/xwalk/core/internal/XWalkGeolocationPermissions;

    invoke-virtual {v2, p1}, Lorg/xwalk/core/internal/XWalkGeolocationPermissions;->isOriginAllowed(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/xwalk/core/internal/XWalkContent;->nativeInvokeGeolocationCallback(JZLjava/lang/String;)V

    goto :goto_0

    .line 895
    :cond_2
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    new-instance v1, Lorg/xwalk/core/internal/XWalkContent$XWalkGeolocationCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/xwalk/core/internal/XWalkContent$XWalkGeolocationCallback;-><init>(Lorg/xwalk/core/internal/XWalkContent;Lorg/xwalk/core/internal/XWalkContent$1;)V

    invoke-virtual {v0, p1, v1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lorg/xwalk/core/internal/XWalkGeolocationPermissions$Callback;)V

    goto :goto_0
.end method

.method private receivePopupContents(J)V
    .locals 1
    .param p1, "popupNativeXWalkContents"    # J

    .prologue
    .line 277
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/xwalk/core/internal/XWalkContent;->setNativeContent(JLjava/lang/String;)V

    .line 279
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->onShow()V

    .line 280
    return-void
.end method

.method static setJavascriptInterfaceClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkContent;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/xwalk/core/internal/XWalkContent;->javascriptInterfaceClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 112
    :cond_0
    sput-object p0, Lorg/xwalk/core/internal/XWalkContent;->javascriptInterfaceClass:Ljava/lang/Class;

    .line 113
    return-void
.end method

.method private setNativeContent(JLjava/lang/String;)V
    .locals 11
    .param p1, "newNativeContent"    # J
    .param p3, "animatable"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 173
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkContent;->destroy()V

    .line 175
    iput-object v7, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    .line 178
    :cond_0
    sget-boolean v1, Lorg/xwalk/core/internal/XWalkContent;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mCleanupReference:Lorg/chromium/content/common/CleanupReference;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 181
    :cond_2
    if-nez p3, :cond_4

    .line 182
    const-string v1, "animatable-xwalk-view"

    invoke-static {v1}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->getValue(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mAnimated:Z

    .line 186
    :goto_0
    iget-boolean v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mAnimated:Z

    if-eqz v1, :cond_5

    sget-object v9, Lorg/chromium/content/browser/ContentViewRenderView$CompositingSurfaceType;->TEXTURE_VIEW:Lorg/chromium/content/browser/ContentViewRenderView$CompositingSurfaceType;

    .line 188
    .local v9, "surfaceType":Lorg/chromium/content/browser/ContentViewRenderView$CompositingSurfaceType;
    :goto_1
    sget-object v2, Lorg/xwalk/core/internal/XWalkContent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CompositingSurfaceType is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mAnimated:Z

    if-eqz v1, :cond_6

    const-string v1, "TextureView"

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v1, Lorg/xwalk/core/internal/XWalkContent$2;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mViewContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v9}, Lorg/xwalk/core/internal/XWalkContent$2;-><init>(Lorg/xwalk/core/internal/XWalkContent;Landroid/content/Context;Lorg/chromium/content/browser/ContentViewRenderView$CompositingSurfaceType;)V

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    .line 195
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mWindow:Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/ContentViewRenderView;->onNativeLibraryLoaded(Lorg/chromium/ui/base/WindowAndroid;)V

    .line 196
    new-instance v1, Lorg/xwalk/core/internal/XWalkLaunchScreenManager;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mViewContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-direct {v1, v2, v3}, Lorg/xwalk/core/internal/XWalkLaunchScreenManager;-><init>(Landroid/content/Context;Lorg/xwalk/core/internal/XWalkViewInternal;)V

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mLaunchScreenManager:Lorg/xwalk/core/internal/XWalkLaunchScreenManager;

    .line 197
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mLaunchScreenManager:Lorg/xwalk/core/internal/XWalkLaunchScreenManager;

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/ContentViewRenderView;->registerFirstRenderedFrameListener(Lorg/chromium/content/browser/ContentViewRenderView$FirstRenderedFrameListener;)V

    .line 198
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Lorg/xwalk/core/internal/XWalkViewInternal;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    iput-wide p1, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    .line 206
    new-instance v1, Lorg/chromium/content/common/CleanupReference;

    new-instance v2, Lorg/xwalk/core/internal/XWalkContent$DestroyRunnable;

    iget-wide v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {v2, v4, v5, v7}, Lorg/xwalk/core/internal/XWalkContent$DestroyRunnable;-><init>(JLorg/xwalk/core/internal/XWalkContent$1;)V

    invoke-direct {v1, p0, v2}, Lorg/chromium/content/common/CleanupReference;-><init>(Ljava/lang/Object;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mCleanupReference:Lorg/chromium/content/common/CleanupReference;

    .line 208
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v2, v3}, Lorg/xwalk/core/internal/XWalkContent;->nativeGetWebContents(J)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    .line 211
    new-instance v1, Lorg/chromium/content/browser/ContentViewCore;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mViewContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/chromium/content/browser/ContentViewCore;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    .line 212
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mViewContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-static {v1, v2, v3}, Lorg/xwalk/core/internal/XWalkContentView;->createContentView(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;Lorg/xwalk/core/internal/XWalkViewInternal;)Lorg/xwalk/core/internal/XWalkContentView;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentView:Lorg/xwalk/core/internal/XWalkContentView;

    .line 214
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentView:Lorg/xwalk/core/internal/XWalkContentView;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentView:Lorg/xwalk/core/internal/XWalkContentView;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    iget-object v5, p0, Lorg/xwalk/core/internal/XWalkContent;->mWindow:Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/chromium/content/browser/ContentViewCore;->initialize(Landroid/view/ViewGroup;Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/ui/base/WindowAndroid;)V

    .line 215
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    .line 216
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentView:Lorg/xwalk/core/internal/XWalkContentView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Lorg/xwalk/core/internal/XWalkViewInternal;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/ContentViewCore;->setContentViewClient(Lorg/chromium/content/browser/ContentViewClient;)V

    .line 220
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/ContentViewRenderView;->setCurrentContentViewCore(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 222
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->installWebContentsObserver(Lorg/chromium/content_public/browser/WebContents;)V

    .line 228
    new-instance v1, Lorg/xwalk/core/internal/XWalkSettingsInternal;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mViewContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkContent;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/xwalk/core/internal/XWalkSettingsInternal;-><init>(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;Z)V

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    .line 231
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setAllowFileAccessFromFileURLs(Z)V

    .line 234
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mViewContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->create(Landroid/content/Context;)Lorg/chromium/ui/gfx/DeviceDisplayInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getDIPScale()D

    move-result-wide v2

    iput-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mDIPScale:D

    .line 235
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mDIPScale:D

    invoke-virtual {v1, v2, v3}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->setDIPScale(D)V

    .line 236
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mDIPScale:D

    invoke-virtual {v1, v2, v3}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setDIPScale(D)V

    .line 238
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/ContentViewCore;->setDownloadDelegate(Lorg/chromium/content/browser/ContentViewDownloadDelegate;)V

    .line 240
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    const-string v3, "-"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "language":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "en"

    .line 242
    :cond_3
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1, v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setAcceptLanguages(Ljava/lang/String;)V

    .line 244
    new-instance v10, Lorg/xwalk/core/internal/XWalkContent$3;

    invoke-direct {v10, p0}, Lorg/xwalk/core/internal/XWalkContent$3;-><init>(Lorg/xwalk/core/internal/XWalkContent;)V

    .line 253
    .local v10, "zoomListener":Lorg/xwalk/core/internal/XWalkSettingsInternal$ZoomSupportChangeListener;
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v1, v10}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setZoomListener(Lorg/xwalk/core/internal/XWalkSettingsInternal$ZoomSupportChangeListener;)V

    .line 255
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    iget-object v5, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkContentsDelegateAdapter:Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;

    iget-object v6, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    iget-object v7, p0, Lorg/xwalk/core/internal/XWalkContent;->mIoThreadClient:Lorg/xwalk/core/internal/XWalkContentsIoThreadClient;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->getInterceptNavigationDelegate()Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;

    move-result-object v8

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v1 .. v8}, Lorg/xwalk/core/internal/XWalkContent;->nativeSetJavaPeers(JLorg/xwalk/core/internal/XWalkContent;Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;Lorg/xwalk/core/internal/XWalkContentsClientBridge;Lorg/xwalk/core/internal/XWalkContentsIoThreadClient;Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;)V

    .line 257
    return-void

    .line 185
    .end local v0    # "language":Ljava/lang/String;
    .end local v9    # "surfaceType":Lorg/chromium/content/browser/ContentViewRenderView$CompositingSurfaceType;
    .end local v10    # "zoomListener":Lorg/xwalk/core/internal/XWalkSettingsInternal$ZoomSupportChangeListener;
    :cond_4
    const-string v1, "true"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mAnimated:Z

    goto/16 :goto_0

    .line 186
    :cond_5
    sget-object v9, Lorg/chromium/content/browser/ContentViewRenderView$CompositingSurfaceType;->SURFACE_VIEW:Lorg/chromium/content/browser/ContentViewRenderView$CompositingSurfaceType;

    goto/16 :goto_1

    .line 188
    .restart local v9    # "surfaceType":Lorg/chromium/content/browser/ContentViewRenderView$CompositingSurfaceType;
    :cond_6
    const-string v1, "SurfaceView"

    goto/16 :goto_2
.end method

.method private setXWalkAutofillClient(Lorg/xwalk/core/internal/XWalkAutofillClientAndroid;)V
    .locals 1
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkAutofillClientAndroid;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1038
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkAutofillClient:Lorg/xwalk/core/internal/XWalkAutofillClientAndroid;

    .line 1039
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {p1, v0}, Lorg/xwalk/core/internal/XWalkAutofillClientAndroid;->init(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 1040
    return-void
.end method

.method private updateHitTestData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "href"    # Ljava/lang/String;
    .param p4, "anchorText"    # Ljava/lang/String;
    .param p5, "imgSrc"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 907
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mPossiblyStaleHitTestData:Lorg/xwalk/core/internal/XWalkContent$HitTestData;

    iput p1, v0, Lorg/xwalk/core/internal/XWalkContent$HitTestData;->hitTestResultType:I

    .line 908
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mPossiblyStaleHitTestData:Lorg/xwalk/core/internal/XWalkContent$HitTestData;

    iput-object p2, v0, Lorg/xwalk/core/internal/XWalkContent$HitTestData;->hitTestResultExtraData:Ljava/lang/String;

    .line 909
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mPossiblyStaleHitTestData:Lorg/xwalk/core/internal/XWalkContent$HitTestData;

    iput-object p3, v0, Lorg/xwalk/core/internal/XWalkContent$HitTestData;->href:Ljava/lang/String;

    .line 910
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mPossiblyStaleHitTestData:Lorg/xwalk/core/internal/XWalkContent$HitTestData;

    iput-object p4, v0, Lorg/xwalk/core/internal/XWalkContent$HitTestData;->anchorText:Ljava/lang/String;

    .line 911
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mPossiblyStaleHitTestData:Lorg/xwalk/core/internal/XWalkContent$HitTestData;

    iput-object p5, v0, Lorg/xwalk/core/internal/XWalkContent$HitTestData;->imgSrc:Ljava/lang/String;

    .line 912
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 354
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 357
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    sget-object v1, Lorg/xwalk/core/internal/XWalkContent;->javascriptInterfaceClass:Ljava/lang/Class;

    invoke-virtual {v0, p1, p2, v1}, Lorg/chromium/content/browser/ContentViewCore;->addPossiblyUnsafeJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public canGoBack()Z
    .locals 4

    .prologue
    .line 468
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->canGoBack()Z

    move-result v0

    goto :goto_0
.end method

.method public canGoForward()Z
    .locals 4

    .prologue
    .line 477
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->canGoForward()Z

    move-result v0

    goto :goto_0
.end method

.method public canZoomIn()Z
    .locals 4

    .prologue
    .line 1000
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1001
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->canZoomIn()Z

    move-result v0

    goto :goto_0
.end method

.method public canZoomOut()Z
    .locals 4

    .prologue
    .line 1005
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1006
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->canZoomOut()Z

    move-result v0

    goto :goto_0
.end method

.method public captureBitmapAsync(Lorg/xwalk/core/internal/XWalkGetBitmapCallbackInternal;)V
    .locals 5
    .param p1, "callback"    # Lorg/xwalk/core/internal/XWalkGetBitmapCallbackInternal;

    .prologue
    .line 166
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 167
    :cond_0
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkGetBitmapCallbackInternal:Lorg/xwalk/core/internal/XWalkGetBitmapCallbackInternal;

    .line 168
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/high16 v2, 0x3f800000    # 1.0f

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mGetBitmapCallback:Lorg/chromium/content_public/browser/ContentBitmapCallback;

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/chromium/content_public/browser/WebContents;->getContentBitmapAsync(Landroid/graphics/Bitmap$Config;FLandroid/graphics/Rect;Lorg/chromium/content_public/browser/ContentBitmapCallback;)V

    goto :goto_0
.end method

.method public clearCache(Z)V
    .locals 4
    .param p1, "includeDiskFiles"    # Z

    .prologue
    .line 444
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 446
    :goto_0
    return-void

    .line 445
    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v0, v1, p1}, Lorg/xwalk/core/internal/XWalkContent;->nativeClearCache(JZ)V

    goto :goto_0
.end method

.method public clearCacheForSingleFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 449
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 460
    :goto_0
    return-void

    .line 450
    :cond_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mIsLoaded:Z

    if-nez v0, :cond_1

    .line 451
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    new-instance v1, Lorg/xwalk/core/internal/XWalkContent$5;

    invoke-direct {v1, p0, p1}, Lorg/xwalk/core/internal/XWalkContent$5;-><init>(Lorg/xwalk/core/internal/XWalkContent;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 459
    :cond_1
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v0, v1, p1}, Lorg/xwalk/core/internal/XWalkContent;->nativeClearCacheForSingleFile(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public clearClientCertPreferences(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 1048
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1050
    :goto_0
    return-void

    .line 1049
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->clearClientCertPreferences(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public clearHistory()V
    .locals 4

    .prologue
    .line 463
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 465
    :goto_0
    return-void

    .line 464
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->clearHistory()V

    goto :goto_0
.end method

.method public clearMatches()V
    .locals 4

    .prologue
    .line 1078
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1080
    :goto_0
    return-void

    .line 1079
    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v0, v1}, Lorg/xwalk/core/internal/XWalkContent;->nativeClearMatches(J)V

    goto :goto_0
.end method

.method public clearSslPreferences()V
    .locals 4

    .prologue
    .line 1043
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1045
    :goto_0
    return-void

    .line 1044
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->clearSslPreferences()V

    goto :goto_0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentView:Lorg/xwalk/core/internal/XWalkContentView;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContentView;->computeHorizontalScrollOffsetDelegate()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentView:Lorg/xwalk/core/internal/XWalkContentView;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContentView;->computeHorizontalScrollRangeDelegate()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentView:Lorg/xwalk/core/internal/XWalkContentView;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContentView;->computeVerticalScrollExtentDelegate()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentView:Lorg/xwalk/core/internal/XWalkContentView;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContentView;->computeVerticalScrollOffsetDelegate()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentView:Lorg/xwalk/core/internal/XWalkContentView;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContentView;->computeVerticalScrollRangeDelegate()I

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 722
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 739
    :goto_0
    return-void

    .line 724
    :cond_0
    invoke-static {p0}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->unload(Lorg/xwalk/core/internal/XWalkPreferencesInternal$KeyValueChangeListener;)V

    .line 726
    invoke-virtual {p0, v2}, Lorg/xwalk/core/internal/XWalkContent;->setNotificationService(Lorg/xwalk/core/internal/XWalkNotificationService;)V

    .line 728
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentView:Lorg/xwalk/core/internal/XWalkContentView;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->removeView(Landroid/view/View;)V

    .line 729
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->removeView(Landroid/view/View;)V

    .line 730
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0, v2}, Lorg/chromium/content/browser/ContentViewRenderView;->setCurrentContentViewCore(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 733
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mCleanupReference:Lorg/chromium/content/common/CleanupReference;

    invoke-virtual {v0}, Lorg/chromium/content/common/CleanupReference;->cleanupNow()V

    .line 734
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->destroy()V

    .line 735
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->destroy()V

    .line 737
    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mCleanupReference:Lorg/chromium/content/common/CleanupReference;

    .line 738
    iput-wide v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    goto :goto_0
.end method

.method public devToolsAgentId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 587
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, ""

    .line 588
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v0, v1}, Lorg/xwalk/core/internal/XWalkContent;->nativeDevToolsAgentId(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method disableRemoteDebugging()V
    .locals 2

    .prologue
    .line 926
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mDevToolsServer:Lorg/xwalk/core/internal/XWalkDevToolsServer;

    if-nez v0, :cond_0

    .line 933
    :goto_0
    return-void

    .line 928
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mDevToolsServer:Lorg/xwalk/core/internal/XWalkDevToolsServer;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkDevToolsServer;->isRemoteDebuggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 929
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mDevToolsServer:Lorg/xwalk/core/internal/XWalkDevToolsServer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkDevToolsServer;->setRemoteDebuggingEnabled(Z)V

    .line 931
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mDevToolsServer:Lorg/xwalk/core/internal/XWalkDevToolsServer;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkDevToolsServer;->destroy()V

    .line 932
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mDevToolsServer:Lorg/xwalk/core/internal/XWalkDevToolsServer;

    goto :goto_0
.end method

.method doLoadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
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
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 284
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0, v1}, Lorg/chromium/content_public/browser/NavigationController;->reload(Z)V

    .line 310
    :goto_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentView:Lorg/xwalk/core/internal/XWalkContentView;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContentView;->requestFocus()Z

    .line 311
    :goto_1
    return-void

    .line 288
    :cond_0
    const/4 v7, 0x0

    .line 289
    .local v7, "params":Lorg/chromium/content_public/browser/LoadUrlParams;
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 290
    :cond_1
    new-instance v7, Lorg/chromium/content_public/browser/LoadUrlParams;

    .end local v7    # "params":Lorg/chromium/content_public/browser/LoadUrlParams;
    invoke-direct {v7, p1}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    .line 305
    .restart local v7    # "params":Lorg/chromium/content_public/browser/LoadUrlParams;
    :goto_2
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Lorg/chromium/content_public/browser/LoadUrlParams;->setOverrideUserAgent(I)V

    .line 306
    if-eqz p3, :cond_2

    invoke-virtual {v7, p3}, Lorg/chromium/content_public/browser/LoadUrlParams;->setExtraHeaders(Ljava/util/Map;)V

    .line 307
    :cond_2
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0, v7}, Lorg/chromium/content_public/browser/NavigationController;->loadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)V

    goto :goto_0

    .line 297
    :cond_3
    :try_start_0
    const-string v0, "utf-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/html"

    const/4 v2, 0x1

    const/4 v4, 0x0

    const-string v5, "utf-8"

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/chromium/content_public/browser/LoadUrlParams;->createLoadDataParamsWithBaseUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/content_public/browser/LoadUrlParams;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_2

    .line 300
    :catch_0
    move-exception v6

    .line 301
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v0, Lorg/xwalk/core/internal/XWalkContent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load data string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public enableRemoteDebugging()V
    .locals 4

    .prologue
    .line 917
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mViewContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_devtools_remote"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 918
    .local v0, "socketName":Ljava/lang/String;
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mDevToolsServer:Lorg/xwalk/core/internal/XWalkDevToolsServer;

    if-nez v1, :cond_0

    .line 919
    new-instance v1, Lorg/xwalk/core/internal/XWalkDevToolsServer;

    invoke-direct {v1, v0}, Lorg/xwalk/core/internal/XWalkDevToolsServer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mDevToolsServer:Lorg/xwalk/core/internal/XWalkDevToolsServer;

    .line 920
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mDevToolsServer:Lorg/xwalk/core/internal/XWalkDevToolsServer;

    const/4 v2, 0x1

    sget-object v3, Lorg/xwalk/core/internal/XWalkDevToolsServer$Security;->ALLOW_SOCKET_ACCESS:Lorg/xwalk/core/internal/XWalkDevToolsServer$Security;

    invoke-virtual {v1, v2, v3}, Lorg/xwalk/core/internal/XWalkDevToolsServer;->setRemoteDebuggingEnabled(ZLorg/xwalk/core/internal/XWalkDevToolsServer$Security;)V

    .line 923
    :cond_0
    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 6
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
    .line 365
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 377
    :goto_0
    return-void

    .line 366
    :cond_0
    move-object v1, p2

    .line 367
    .local v1, "fCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 368
    .local v0, "coreCallback":Lorg/chromium/content_public/browser/JavaScriptCallback;
    if-eqz v1, :cond_1

    .line 369
    new-instance v0, Lorg/xwalk/core/internal/XWalkContent$4;

    .end local v0    # "coreCallback":Lorg/chromium/content_public/browser/JavaScriptCallback;
    invoke-direct {v0, p0, v1}, Lorg/xwalk/core/internal/XWalkContent$4;-><init>(Lorg/xwalk/core/internal/XWalkContent;Landroid/webkit/ValueCallback;)V

    .line 376
    .restart local v0    # "coreCallback":Lorg/chromium/content_public/browser/JavaScriptCallback;
    :cond_1
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v2

    invoke-interface {v2, p1, v0}, Lorg/chromium/content_public/browser/WebContents;->evaluateJavaScript(Ljava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V

    goto :goto_0
.end method

.method exitFullscreen()V
    .locals 1

    .prologue
    .line 683
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkContent;->hasEnteredFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->exitFullscreen()V

    .line 686
    :cond_0
    return-void
.end method

.method public findAllAsync(Ljava/lang/String;)V
    .locals 4
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 1068
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1070
    :goto_0
    return-void

    .line 1069
    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v0, v1, p1}, Lorg/xwalk/core/internal/XWalkContent;->nativeFindAllAsync(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public findNext(Z)V
    .locals 4
    .param p1, "forward"    # Z

    .prologue
    .line 1073
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1075
    :goto_0
    return-void

    .line 1074
    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v0, v1, p1}, Lorg/xwalk/core/internal/XWalkContent;->nativeFindNext(JZ)V

    goto :goto_0
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 4

    .prologue
    .line 1053
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1054
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v0, v1}, Lorg/xwalk/core/internal/XWalkContent;->nativeGetCertificate(J)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xwalk/core/internal/SslUtil;->getCertificateFromDerBytes([B)Landroid/net/http/SslCertificate;

    move-result-object v0

    goto :goto_0
.end method

.method public getCompositingSurfaceType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1083
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1084
    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mAnimated:Z

    if-eqz v0, :cond_1

    const-string v0, "TextureView"

    goto :goto_0

    :cond_1
    const-string v0, "SurfaceView"

    goto :goto_0
.end method

.method public getContentHeight()I
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentHeightCss()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getContentViewCoreForTest()Lorg/chromium/content/browser/ContentViewCore;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    return-object v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 496
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 497
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getLastHitTestResult()Lorg/xwalk/core/internal/XWalkContent$HitTestData;
    .locals 4

    .prologue
    .line 532
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 534
    :goto_0
    return-object v0

    .line 533
    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v0, v1}, Lorg/xwalk/core/internal/XWalkContent;->nativeUpdateLastHitTestData(J)V

    .line 534
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mPossiblyStaleHitTestData:Lorg/xwalk/core/internal/XWalkContent$HitTestData;

    goto :goto_0
.end method

.method public getNavigationHistory()Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;
    .locals 4

    .prologue
    .line 643
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 645
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v2}, Lorg/chromium/content_public/browser/NavigationController;->getNavigationHistory()Lorg/chromium/content_public/browser/NavigationHistory;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/chromium/content_public/browser/NavigationHistory;)V

    goto :goto_0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 522
    iget-wide v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 528
    :cond_0
    :goto_0
    return-object v2

    .line 523
    :cond_1
    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v3}, Lorg/chromium/content_public/browser/NavigationController;->getNavigationHistory()Lorg/chromium/content_public/browser/NavigationHistory;

    move-result-object v1

    .line 524
    .local v1, "history":Lorg/chromium/content_public/browser/NavigationHistory;
    invoke-virtual {v1}, Lorg/chromium/content_public/browser/NavigationHistory;->getCurrentEntryIndex()I

    move-result v0

    .line 525
    .local v0, "currentIndex":I
    if-ltz v0, :cond_0

    invoke-virtual {v1}, Lorg/chromium/content_public/browser/NavigationHistory;->getEntryCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 526
    invoke-virtual {v1, v0}, Lorg/chromium/content_public/browser/NavigationHistory;->getEntryAtIndex(I)Lorg/chromium/content_public/browser/NavigationEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content_public/browser/NavigationEntry;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getRemoteDebuggingUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 936
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mDevToolsServer:Lorg/xwalk/core/internal/XWalkDevToolsServer;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 938
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ws://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mDevToolsServer:Lorg/xwalk/core/internal/XWalkDevToolsServer;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkDevToolsServer;->getSocketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/devtools/page/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkContent;->devToolsAgentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRoutingID()I
    .locals 2

    .prologue
    .line 742
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v0, v1}, Lorg/xwalk/core/internal/XWalkContent;->nativeGetRoutingID(J)I

    move-result v0

    return v0
.end method

.method public getSettings()Lorg/xwalk/core/internal/XWalkSettingsInternal;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 6

    .prologue
    .line 347
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 350
    :cond_0
    :goto_0
    return-object v0

    .line 348
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "title":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 340
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    move-object v0, v1

    .line 343
    :cond_0
    :goto_0
    return-object v0

    .line 341
    :cond_1
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v2}, Lorg/chromium/content_public/browser/WebContents;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "url":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getXWalkVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 538
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, ""

    .line 539
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v0, v1}, Lorg/xwalk/core/internal/XWalkContent;->nativeGetVersion(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getXWalkWebChromeClient()Lorg/xwalk/core/internal/XWalkWebChromeClient;
    .locals 4

    .prologue
    .line 395
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 396
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->getXWalkWebChromeClient()Lorg/xwalk/core/internal/XWalkWebChromeClient;

    move-result-object v0

    goto :goto_0
.end method

.method public goBack()V
    .locals 4

    .prologue
    .line 472
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 474
    :goto_0
    return-void

    .line 473
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->goBack()V

    goto :goto_0
.end method

.method public goForward()V
    .locals 4

    .prologue
    .line 481
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 483
    :goto_0
    return-void

    .line 482
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->goForward()V

    goto :goto_0
.end method

.method hasEnteredFullscreen()Z
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->hasEnteredFullscreen()Z

    move-result v0

    return v0
.end method

.method public hasPermission(Ljava/lang/String;)Z
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 1058
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1059
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mWindow:Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-virtual {v0, p1}, Lorg/chromium/ui/base/ActivityWindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public hideAutofillPopup()V
    .locals 4

    .prologue
    .line 1013
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1027
    :cond_0
    :goto_0
    return-void

    .line 1014
    :cond_1
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mIsLoaded:Z

    if-nez v0, :cond_2

    .line 1015
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    new-instance v1, Lorg/xwalk/core/internal/XWalkContent$7;

    invoke-direct {v1, p0}, Lorg/xwalk/core/internal/XWalkContent$7;-><init>(Lorg/xwalk/core/internal/XWalkContent;)V

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1024
    :cond_2
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkAutofillClient:Lorg/xwalk/core/internal/XWalkAutofillClientAndroid;

    if-eqz v0, :cond_0

    .line 1025
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkAutofillClient:Lorg/xwalk/core/internal/XWalkAutofillClientAndroid;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkAutofillClientAndroid;->hideAutofillPopup()V

    goto :goto_0
.end method

.method public installWebContentsObserverForTest(Lorg/xwalk/core/internal/XWalkContentsClient;)V
    .locals 4
    .param p1, "contentClient"    # Lorg/xwalk/core/internal/XWalkContentsClient;

    .prologue
    .line 582
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 584
    :goto_0
    return-void

    .line 583
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/xwalk/core/internal/XWalkContentsClient;->installWebContentsObserver(Lorg/chromium/content_public/browser/WebContents;)V

    goto :goto_0
.end method

.method public loadAppFromManifest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 596
    iget-wide v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 627
    :cond_1
    :goto_0
    return-void

    .line 602
    :cond_2
    move-object v1, p2

    .line 604
    .local v1, "content":Ljava/lang/String;
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 606
    :cond_3
    :try_start_0
    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v4}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, p1}, Lorg/xwalk/core/internal/AndroidProtocolHandler;->getUrlContent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 615
    :cond_4
    move-object v0, p1

    .line 616
    .local v0, "baseUrl":Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 617
    .local v3, "position":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 618
    const/4 v4, 0x0

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 623
    :goto_1
    iget-wide v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v4, v5, v0, v1}, Lorg/xwalk/core/internal/XWalkContent;->nativeSetManifest(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 624
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse the manifest file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 607
    .end local v0    # "baseUrl":Ljava/lang/String;
    .end local v3    # "position":I
    :catch_0
    move-exception v2

    .line 608
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read the manifest: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 620
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "baseUrl":Ljava/lang/String;
    .restart local v3    # "position":I
    :cond_5
    sget-object v4, Lorg/xwalk/core/internal/XWalkContent;->TAG:Ljava/lang/String;

    const-string v5, "The url of manifest.json is probably not set correctly."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 626
    :cond_6
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mIsLoaded:Z

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
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
    .line 314
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkContent;->doLoadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mIsLoaded:Z

    goto :goto_0
.end method

.method navigateTo(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 486
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0, p1}, Lorg/chromium/content_public/browser/NavigationController;->goToOffset(I)V

    .line 487
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 434
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 436
    :goto_0
    return-void

    .line 435
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mWindow:Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/ui/base/ActivityWindowAndroid;->onActivityResult(IILandroid/content/Intent;)Z

    goto :goto_0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 746
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentView:Lorg/xwalk/core/internal/XWalkContentView;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentView;->onCreateInputConnectionSuper(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method public onFindResultReceived(IIZ)V
    .locals 1
    .param p1, "activeMatchOrdinal"    # I
    .param p2, "numberOfMatches"    # I
    .param p3, "isDoneCounting"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1090
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->onFindResultReceived(IIZ)V

    .line 1092
    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 901
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->onGeolocationPermissionsHidePrompt()V

    .line 902
    return-void
.end method

.method public onGetFullscreenFlagFromManifest(Z)V
    .locals 3
    .param p1, "enterFullscreen"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 705
    if-eqz p1, :cond_0

    .line 706
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 707
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 708
    .local v0, "decorView":Landroid/view/View;
    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 719
    .end local v0    # "decorView":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 716
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method public onGetUrlAndLaunchScreenFromManifest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "readyWhen"    # Ljava/lang/String;
    .param p3, "imageBorder"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 697
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mLaunchScreenManager:Lorg/xwalk/core/internal/XWalkLaunchScreenManager;

    invoke-virtual {v0, p2, p3}, Lorg/xwalk/core/internal/XWalkLaunchScreenManager;->displayLaunchScreen(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mLaunchScreenManager:Lorg/xwalk/core/internal/XWalkLaunchScreenManager;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->registerPageLoadListener(Lorg/xwalk/core/internal/PageLoadListener;)V

    .line 700
    invoke-virtual {p0, p1, v2, v2}, Lorg/xwalk/core/internal/XWalkContent;->loadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public onGetUrlFromManifest(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 690
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 691
    invoke-virtual {p0, p1, v1, v1}, Lorg/xwalk/core/internal/XWalkContent;->loadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 693
    :cond_0
    return-void
.end method

.method public onKeyValueChanged(Ljava/lang/String;Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;

    .prologue
    .line 943
    if-nez p1, :cond_1

    .line 968
    :cond_0
    :goto_0
    return-void

    .line 944
    :cond_1
    const-string v0, "remote-debugging"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 945
    invoke-virtual {p2}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;->getBooleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkContent;->enableRemoteDebugging()V

    goto :goto_0

    .line 946
    :cond_2
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkContent;->disableRemoteDebugging()V

    goto :goto_0

    .line 947
    :cond_3
    const-string v0, "enable-javascript"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 948
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {p2}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;->getBooleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setJavaScriptEnabled(Z)V

    goto :goto_0

    .line 951
    :cond_4
    const-string v0, "javascript-can-open-window"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 952
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-eqz v0, :cond_0

    .line 953
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {p2}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;->getBooleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    goto :goto_0

    .line 955
    :cond_5
    const-string v0, "allow-universal-access-from-file"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 956
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {p2}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;->getBooleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setAllowUniversalAccessFromFileURLs(Z)V

    goto :goto_0

    .line 959
    :cond_6
    const-string v0, "support-multiple-windows"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 960
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {p2}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;->getBooleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setSupportMultipleWindows(Z)V

    goto :goto_0

    .line 963
    :cond_7
    const-string v0, "enable-spatial-navigation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mSettings:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {p2}, Lorg/xwalk/core/internal/XWalkPreferencesInternal$PreferenceValue;->getBooleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setSupportSpatialNavigation(Z)V

    goto/16 :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 439
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 440
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->onNewIntent(Landroid/content/Intent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 424
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 426
    :goto_0
    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->onHide()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 429
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 431
    :goto_0
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->onShow()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 750
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 753
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-wide v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mDIPScale:D

    double-to-float v1, v4

    div-float v4, v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-wide v6, p0, Lorg/xwalk/core/internal/XWalkContent;->mDIPScale:D

    double-to-float v1, v6

    div-float v5, v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getTouchMajor()F

    move-result v0

    iget-wide v6, p0, Lorg/xwalk/core/internal/XWalkContent;->mDIPScale:D

    double-to-float v1, v6

    div-float v6, v0, v1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/xwalk/core/internal/XWalkContent;->nativeRequestNewHitTestDataAt(JFFF)V

    .line 758
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public pauseTimers()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 510
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkContent;->timerPaused:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    invoke-static {v4}, Lorg/chromium/content/browser/ContentViewStatics;->setWebKitSharedTimersSuspended(Z)V

    .line 512
    sput-boolean v4, Lorg/xwalk/core/internal/XWalkContent;->timerPaused:Z

    goto :goto_0
.end method

.method public reload(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/4 v4, 0x1

    .line 326
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 337
    :goto_0
    return-void

    .line 328
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 334
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0, v4}, Lorg/chromium/content_public/browser/NavigationController;->reload(Z)V

    .line 336
    :goto_1
    iput-boolean v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mIsLoaded:Z

    goto :goto_0

    .line 330
    :pswitch_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0, v4}, Lorg/chromium/content_public/browser/NavigationController;->reloadBypassingCache(Z)V

    goto :goto_1

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 360
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 362
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->removeJavascriptInterface(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Bundle;)Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;
    .locals 8
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 661
    iget-wide v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 675
    :cond_0
    :goto_0
    return-object v2

    .line 663
    :cond_1
    const-string v3, "XWALKVIEW_STATE"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 664
    .local v1, "state":[B
    if-eqz v1, :cond_0

    .line 666
    iget-wide v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v4, v5, v1}, Lorg/xwalk/core/internal/XWalkContent;->nativeSetState(J[B)Z

    move-result v0

    .line 672
    .local v0, "result":Z
    if-eqz v0, :cond_2

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkContent;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v4}, Lorg/chromium/content_public/browser/WebContents;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->onUpdateTitle(Ljava/lang/String;)V

    .line 675
    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkContent;->getNavigationHistory()Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    move-result-object v2

    goto :goto_0
.end method

.method public resumeTimers()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 516
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkContent;->timerPaused:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    invoke-static {v4}, Lorg/chromium/content/browser/ContentViewStatics;->setWebKitSharedTimersSuspended(Z)V

    .line 518
    sput-boolean v4, Lorg/xwalk/core/internal/XWalkContent;->timerPaused:Z

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;
    .locals 6
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 651
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 657
    :cond_0
    :goto_0
    return-object v1

    .line 653
    :cond_1
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v2, v3}, Lorg/xwalk/core/internal/XWalkContent;->nativeGetState(J)[B

    move-result-object v0

    .line 654
    .local v0, "state":[B
    if-eqz v0, :cond_0

    .line 656
    const-string v1, "XWALKVIEW_STATE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 657
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkContent;->getNavigationHistory()Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    move-result-object v1

    goto :goto_0
.end method

.method public scrollBy(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 770
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentView:Lorg/xwalk/core/internal/XWalkContentView;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkContentView;->scrollBy(II)V

    .line 771
    return-void
.end method

.method public scrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 766
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentView:Lorg/xwalk/core/internal/XWalkContentView;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkContentView;->scrollTo(II)V

    .line 767
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 6
    .param p1, "color"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 548
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 568
    :goto_0
    return-void

    .line 549
    :cond_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mIsLoaded:Z

    if-nez v0, :cond_1

    .line 550
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    new-instance v1, Lorg/xwalk/core/internal/XWalkContent$6;

    invoke-direct {v1, p0, p1}, Lorg/xwalk/core/internal/XWalkContent$6;-><init>(Lorg/xwalk/core/internal/XWalkContent;I)V

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 558
    :cond_1
    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/XWalkContent;->isOpaque(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 559
    invoke-virtual {p0, v4}, Lorg/xwalk/core/internal/XWalkContent;->setOverlayVideoMode(Z)V

    .line 560
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, v5}, Lorg/chromium/content/browser/ContentViewCore;->setBackgroundOpaque(Z)V

    .line 565
    :goto_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->setBackgroundColor(I)V

    .line 566
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewRenderView;->setSurfaceViewBackgroundColor(I)V

    .line 567
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v0, v1, p1}, Lorg/xwalk/core/internal/XWalkContent;->nativeSetBackgroundColor(JI)V

    goto :goto_0

    .line 562
    :cond_2
    invoke-virtual {p0, v5}, Lorg/xwalk/core/internal/XWalkContent;->setOverlayVideoMode(Z)V

    .line 563
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, v4}, Lorg/chromium/content/browser/ContentViewCore;->setBackgroundOpaque(Z)V

    goto :goto_1
.end method

.method public setDownloadListener(Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;)V
    .locals 4
    .param p1, "listener"    # Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;

    .prologue
    .line 409
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 411
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->setDownloadListener(Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;)V

    goto :goto_0
.end method

.method public setFindListener(Lorg/xwalk/core/internal/XWalkFindListenerInternal;)V
    .locals 4
    .param p1, "listener"    # Lorg/xwalk/core/internal/XWalkFindListenerInternal;

    .prologue
    .line 1063
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1065
    :goto_0
    return-void

    .line 1064
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->setFindListener(Lorg/xwalk/core/internal/XWalkFindListenerInternal;)V

    goto :goto_0
.end method

.method public setNavigationHandler(Lorg/xwalk/core/internal/XWalkNavigationHandler;)V
    .locals 4
    .param p1, "handler"    # Lorg/xwalk/core/internal/XWalkNavigationHandler;

    .prologue
    .line 414
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 416
    :goto_0
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->setNavigationHandler(Lorg/xwalk/core/internal/XWalkNavigationHandler;)V

    goto :goto_0
.end method

.method public setNetworkAvailable(Z)V
    .locals 4
    .param p1, "networkUp"    # Z

    .prologue
    .line 571
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 573
    :goto_0
    return-void

    .line 572
    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v0, v1, p1}, Lorg/xwalk/core/internal/XWalkContent;->nativeSetJsOnlineProperty(JZ)V

    goto :goto_0
.end method

.method public setNotificationService(Lorg/xwalk/core/internal/XWalkNotificationService;)V
    .locals 4
    .param p1, "service"    # Lorg/xwalk/core/internal/XWalkNotificationService;

    .prologue
    .line 419
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 421
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->setNotificationService(Lorg/xwalk/core/internal/XWalkNotificationService;)V

    goto :goto_0
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 762
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentView:Lorg/xwalk/core/internal/XWalkContentView;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 763
    return-void
.end method

.method public setOriginAccessWhitelist(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "patterns"    # [Ljava/lang/String;

    .prologue
    .line 630
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    const-string v1, ""

    .line 634
    .local v1, "matchPatterns":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 635
    new-instance v0, Lorg/json/JSONArray;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 636
    .local v0, "arrays":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 639
    .end local v0    # "arrays":Lorg/json/JSONArray;
    :cond_2
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v2, v3, p1, v1}, Lorg/xwalk/core/internal/XWalkContent;->nativeSetOriginAccessWhitelist(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOverlayVideoMode(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 971
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewRenderView;->setOverlayVideoMode(Z)V

    .line 974
    :cond_0
    return-void
.end method

.method public setResourceClient(Lorg/xwalk/core/internal/XWalkResourceClientInternal;)V
    .locals 4
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    .prologue
    .line 385
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 387
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->setResourceClient(Lorg/xwalk/core/internal/XWalkResourceClientInternal;)V

    goto :goto_0
.end method

.method public setUIClient(Lorg/xwalk/core/internal/XWalkUIClientInternal;)V
    .locals 4
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkUIClientInternal;

    .prologue
    .line 380
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 382
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->setUIClient(Lorg/xwalk/core/internal/XWalkUIClientInternal;)V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 1031
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewRenderView;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    .line 1032
    .local v0, "surfaceView":Landroid/view/SurfaceView;
    if-nez v0, :cond_0

    .line 1034
    :goto_0
    return-void

    .line 1033
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setXWalkClient(Lorg/xwalk/core/internal/XWalkClient;)V
    .locals 4
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkClient;

    .prologue
    .line 404
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 406
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->setXWalkClient(Lorg/xwalk/core/internal/XWalkClient;)V

    goto :goto_0
.end method

.method public setXWalkWebChromeClient(Lorg/xwalk/core/internal/XWalkWebChromeClient;)V
    .locals 4
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkWebChromeClient;

    .prologue
    .line 390
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 392
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->setXWalkWebChromeClient(Lorg/xwalk/core/internal/XWalkWebChromeClient;)V

    goto :goto_0
.end method

.method public setZOrderOnTop(Z)V
    .locals 1
    .param p1, "onTop"    # Z

    .prologue
    .line 977
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    if-nez v0, :cond_0

    .line 979
    :goto_0
    return-void

    .line 978
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewRenderView:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewRenderView;->setZOrderOnTop(Z)V

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 4

    .prologue
    .line 490
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 493
    :goto_0
    return-void

    .line 491
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->stop()V

    .line 492
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentsClientBridge:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->onStopLoading()V

    goto :goto_0
.end method

.method public supplyContentsForPopup(Lorg/xwalk/core/internal/XWalkContent;)V
    .locals 6
    .param p1, "newContents"    # Lorg/xwalk/core/internal/XWalkContent;

    .prologue
    const-wide/16 v4, 0x0

    .line 260
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    invoke-direct {p0, v2, v3}, Lorg/xwalk/core/internal/XWalkContent;->nativeReleasePopupXWalkContent(J)J

    move-result-wide v0

    .line 263
    .local v0, "popupNativeXWalkContent":J
    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    .line 264
    sget-object v2, Lorg/xwalk/core/internal/XWalkContent;->TAG:Ljava/lang/String;

    const-string v3, "Popup XWalkView bind failed: no pending content."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkContent;->destroy()V

    goto :goto_0

    .line 268
    :cond_2
    if-nez p1, :cond_3

    .line 269
    invoke-static {v0, v1}, Lorg/xwalk/core/internal/XWalkContent;->nativeDestroy(J)V

    goto :goto_0

    .line 273
    :cond_3
    invoke-direct {p1, v0, v1}, Lorg/xwalk/core/internal/XWalkContent;->receivePopupContents(J)V

    goto :goto_0
.end method

.method public zoomBy(F)V
    .locals 4
    .param p1, "delta"    # F

    .prologue
    .line 992
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 997
    :goto_0
    return-void

    .line 993
    :cond_0
    const v0, 0x3c23d70a    # 0.01f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 994
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "zoom delta value outside [0.01, 100] range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 996
    :cond_2
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->pinchByDelta(F)Z

    goto :goto_0
.end method

.method public zoomIn()Z
    .locals 4

    .prologue
    .line 982
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 983
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->zoomIn()Z

    move-result v0

    goto :goto_0
.end method

.method public zoomOut()Z
    .locals 4

    .prologue
    .line 987
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mNativeContent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 988
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->zoomOut()Z

    move-result v0

    goto :goto_0
.end method
