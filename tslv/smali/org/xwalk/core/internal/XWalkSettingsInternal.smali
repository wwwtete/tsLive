.class public Lorg/xwalk/core/internal/XWalkSettingsInternal;
.super Ljava/lang/Object;
.source "XWalkSettingsInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/internal/XWalkSettingsInternal$ZoomSupportChangeListener;,
        Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;,
        Lorg/xwalk/core/internal/XWalkSettingsInternal$LazyDefaultUserAgent;,
        Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "xwalk"
.end annotation

.annotation build Lorg/xwalk/core/internal/XWalkAPI;
    createInternally = true
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final LOAD_CACHE_ELSE_NETWORK:I = 0x1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end field

.field public static final LOAD_CACHE_ONLY:I = 0x3
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end field

.field public static final LOAD_DEFAULT:I = -0x1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end field

.field public static final LOAD_NO_CACHE:I = 0x2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end field

.field private static final MAXIMUM_FONT_SIZE:I = 0x48

.field private static final MINIMUM_FONT_SIZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "XWalkSettings"

.field private static sAppCachePathIsSet:Z

.field private static final sGlobalContentSettingsLock:Ljava/lang/Object;


# instance fields
.field private mAcceptLanguages:Ljava/lang/String;

.field private mAllowContentUrlAccess:Z

.field private mAllowFileAccessFromFileURLs:Z

.field private mAllowFileUrlAccess:Z

.field private mAllowScriptsToCloseWindows:Z

.field private mAllowUniversalAccessFromFileURLs:Z

.field private mAppCacheEnabled:Z

.field private mAutoCompleteEnabled:Z

.field private mBlockNetworkLoads:Z

.field private mBuiltInZoomControls:Z

.field private mCacheMode:I

.field private final mContext:Landroid/content/Context;

.field private mDIPScale:D

.field private mDatabaseEnabled:Z

.field private mDefaultFixedFontSize:I

.field private mDefaultFontSize:I

.field private mDefaultVideoPosterURL:Ljava/lang/String;

.field private mDisplayZoomControls:Z

.field private mDomStorageEnabled:Z

.field private final mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

.field private mGeolocationEnabled:Z

.field private mImagesEnabled:Z

.field private mInitialPageScalePercent:F

.field private mIsUpdateWebkitPrefsMessagePending:Z

.field private mJavaScriptCanOpenWindowsAutomatically:Z

.field private mJavaScriptEnabled:Z

.field private mLayoutAlgorithm:Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

.field private mLoadWithOverviewMode:Z

.field private mLoadsImagesAutomatically:Z

.field private mMediaPlaybackRequiresUserGesture:Z

.field private mNativeXWalkSettings:J

.field private final mPasswordEchoEnabled:Z

.field private mQuirksModeEnabled:Z

.field private mShouldFocusFirstNode:Z

.field private mSpatialNavigationEnabled:Z

.field private mSupportMultipleWindows:Z

.field private mSupportZoom:Z

.field private mTextSizePercent:I

.field private mUseWideViewport:Z

.field private mUserAgent:Ljava/lang/String;

.field private final mXWalkSettingsLock:Ljava/lang/Object;

.field private mZoomChangeListener:Lorg/xwalk/core/internal/XWalkSettingsInternal$ZoomSupportChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    const-class v0, Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->$assertionsDisabled:Z

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->sGlobalContentSettingsLock:Ljava/lang/Object;

    .line 117
    sput-boolean v1, Lorg/xwalk/core/internal/XWalkSettingsInternal;->sAppCachePathIsSet:Z

    return-void

    :cond_0
    move v0, v1

    .line 24
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    .line 85
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowScriptsToCloseWindows:Z

    .line 86
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mLoadsImagesAutomatically:Z

    .line 87
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mImagesEnabled:Z

    .line 88
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mJavaScriptEnabled:Z

    .line 89
    iput-boolean v3, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowUniversalAccessFromFileURLs:Z

    .line 90
    iput-boolean v3, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowFileAccessFromFileURLs:Z

    .line 91
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mJavaScriptCanOpenWindowsAutomatically:Z

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mCacheMode:I

    .line 93
    iput-boolean v3, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSupportMultipleWindows:Z

    .line 94
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAppCacheEnabled:Z

    .line 95
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDomStorageEnabled:Z

    .line 96
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDatabaseEnabled:Z

    .line 97
    iput-boolean v3, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUseWideViewport:Z

    .line 98
    iput-boolean v3, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mLoadWithOverviewMode:Z

    .line 99
    iput-boolean v3, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mMediaPlaybackRequiresUserGesture:Z

    .line 105
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowContentUrlAccess:Z

    .line 106
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowFileUrlAccess:Z

    .line 107
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mShouldFocusFirstNode:Z

    .line 108
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mGeolocationEnabled:Z

    .line 120
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    .line 123
    iput-boolean v3, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mIsUpdateWebkitPrefsMessagePending:Z

    .line 129
    const/16 v0, 0x10

    iput v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultFontSize:I

    .line 130
    const/16 v0, 0xd

    iput v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultFixedFontSize:I

    .line 132
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAutoCompleteEnabled:Z

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mInitialPageScalePercent:F

    .line 135
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDIPScale:D

    .line 136
    const/16 v0, 0x64

    iput v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mTextSizePercent:I

    .line 138
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSupportZoom:Z

    .line 139
    iput-boolean v3, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mBuiltInZoomControls:Z

    .line 140
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDisplayZoomControls:Z

    .line 142
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSpatialNavigationEnabled:Z

    .line 143
    iput-boolean v3, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mQuirksModeEnabled:Z

    .line 145
    sget-object v0, Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;->NARROW_COLUMNS:Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mLayoutAlgorithm:Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    .line 223
    iput-object v4, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mContext:Landroid/content/Context;

    .line 224
    iput-object v4, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    .line 225
    iput-boolean v3, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mPasswordEchoEnabled:Z

    .line 226
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "webContents"    # Lorg/chromium/content_public/browser/WebContents;
    .param p3, "isAccessFromFileURLsGrantedByDefault"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    .line 85
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowScriptsToCloseWindows:Z

    .line 86
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mLoadsImagesAutomatically:Z

    .line 87
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mImagesEnabled:Z

    .line 88
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mJavaScriptEnabled:Z

    .line 89
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowUniversalAccessFromFileURLs:Z

    .line 90
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowFileAccessFromFileURLs:Z

    .line 91
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mJavaScriptCanOpenWindowsAutomatically:Z

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mCacheMode:I

    .line 93
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSupportMultipleWindows:Z

    .line 94
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAppCacheEnabled:Z

    .line 95
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDomStorageEnabled:Z

    .line 96
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDatabaseEnabled:Z

    .line 97
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUseWideViewport:Z

    .line 98
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mLoadWithOverviewMode:Z

    .line 99
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mMediaPlaybackRequiresUserGesture:Z

    .line 105
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowContentUrlAccess:Z

    .line 106
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowFileUrlAccess:Z

    .line 107
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mShouldFocusFirstNode:Z

    .line 108
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mGeolocationEnabled:Z

    .line 120
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    .line 123
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mIsUpdateWebkitPrefsMessagePending:Z

    .line 129
    const/16 v0, 0x10

    iput v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultFontSize:I

    .line 130
    const/16 v0, 0xd

    iput v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultFixedFontSize:I

    .line 132
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAutoCompleteEnabled:Z

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mInitialPageScalePercent:F

    .line 135
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDIPScale:D

    .line 136
    const/16 v0, 0x64

    iput v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mTextSizePercent:I

    .line 138
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSupportZoom:Z

    .line 139
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mBuiltInZoomControls:Z

    .line 140
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDisplayZoomControls:Z

    .line 142
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSpatialNavigationEnabled:Z

    .line 143
    iput-boolean v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mQuirksModeEnabled:Z

    .line 145
    sget-object v0, Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;->NARROW_COLUMNS:Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mLayoutAlgorithm:Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    .line 230
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 231
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mContext:Landroid/content/Context;

    .line 232
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INTERNET"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mBlockNetworkLoads:Z

    .line 237
    if-eqz p3, :cond_0

    .line 238
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowUniversalAccessFromFileURLs:Z

    .line 239
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowFileAccessFromFileURLs:Z

    .line 242
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkSettingsInternal$LazyDefaultUserAgent;->access$500()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUserAgent:Ljava/lang/String;

    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "show_password"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_1
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mPasswordEchoEnabled:Z

    .line 248
    new-instance v0, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-direct {v0, p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;-><init>(Lorg/xwalk/core/internal/XWalkSettingsInternal;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    .line 250
    invoke-virtual {p0, p2}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setWebContents(Lorg/chromium/content_public/browser/WebContents;)V

    .line 251
    return-void

    :cond_1
    move v0, v2

    .line 232
    goto :goto_0

    :cond_2
    move v1, v2

    .line 245
    goto :goto_1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->nativeGetDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/xwalk/core/internal/XWalkSettingsInternal;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettingsInternal;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/xwalk/core/internal/XWalkSettingsInternal;J)V
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettingsInternal;
    .param p1, "x1"    # J

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->nativeUpdateInitialPageScale(J)V

    return-void
.end method

.method static synthetic access$1100(Lorg/xwalk/core/internal/XWalkSettingsInternal;)Lorg/xwalk/core/internal/XWalkSettingsInternal$ZoomSupportChangeListener;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettingsInternal;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mZoomChangeListener:Lorg/xwalk/core/internal/XWalkSettingsInternal$ZoomSupportChangeListener;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/xwalk/core/internal/XWalkSettingsInternal;)Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettingsInternal;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/xwalk/core/internal/XWalkSettingsInternal;J)V
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettingsInternal;
    .param p1, "x1"    # J

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->nativeResetScrollAndScaleState(J)V

    return-void
.end method

.method static synthetic access$200(Lorg/xwalk/core/internal/XWalkSettingsInternal;)V
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettingsInternal;

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->updateWebkitPreferencesOnUiThread()V

    return-void
.end method

.method static synthetic access$300(Lorg/xwalk/core/internal/XWalkSettingsInternal;)Z
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettingsInternal;

    .prologue
    .line 26
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mIsUpdateWebkitPrefsMessagePending:Z

    return v0
.end method

.method static synthetic access$302(Lorg/xwalk/core/internal/XWalkSettingsInternal;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettingsInternal;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mIsUpdateWebkitPrefsMessagePending:Z

    return p1
.end method

.method static synthetic access$400(Lorg/xwalk/core/internal/XWalkSettingsInternal;)J
    .locals 2
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettingsInternal;

    .prologue
    .line 26
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    return-wide v0
.end method

.method static synthetic access$700(Lorg/xwalk/core/internal/XWalkSettingsInternal;J)V
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettingsInternal;
    .param p1, "x1"    # J

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->nativeUpdateUserAgent(J)V

    return-void
.end method

.method static synthetic access$800(Lorg/xwalk/core/internal/XWalkSettingsInternal;J)V
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettingsInternal;
    .param p1, "x1"    # J

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->nativeUpdateAcceptLanguages(J)V

    return-void
.end method

.method static synthetic access$900(Lorg/xwalk/core/internal/XWalkSettingsInternal;J)V
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettingsInternal;
    .param p1, "x1"    # J

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->nativeUpdateFormDataPreferences(J)V

    return-void
.end method

.method private clipFontSize(I)I
    .locals 2
    .param p1, "size"    # I

    .prologue
    const/16 v1, 0x48

    const/4 v0, 0x1

    .line 1118
    if-ge p1, v0, :cond_1

    move p1, v0

    .line 1123
    .end local p1    # "size":I
    :cond_0
    :goto_0
    return p1

    .line 1120
    .restart local p1    # "size":I
    :cond_1
    if-le p1, v1, :cond_0

    move p1, v1

    .line 1121
    goto :goto_0
.end method

.method private getAcceptLanguagesLocked()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1036
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAcceptLanguages:Ljava/lang/String;

    return-object v0
.end method

.method private getAppCacheEnabled()Z
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 780
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAppCacheEnabled:Z

    return v0
.end method

.method private getDIPScaleLocked()D
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1081
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1082
    :cond_0
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDIPScale:D

    return-wide v0
.end method

.method public static getDefaultUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 898
    invoke-static {}, Lorg/xwalk/core/internal/XWalkSettingsInternal$LazyDefaultUserAgent;->access$500()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getInitialPageScalePercentLocked()F
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1075
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1076
    :cond_0
    iget v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mInitialPageScalePercent:F

    return v0
.end method

.method private getPasswordEchoEnabledLocked()Z
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1087
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1088
    :cond_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mPasswordEchoEnabled:Z

    return v0
.end method

.method private getSaveFormDataLocked()Z
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1041
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAutoCompleteEnabled:Z

    return v0
.end method

.method private getTextAutosizingEnabledLocked()Z
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1369
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1370
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mLayoutAlgorithm:Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    sget-object v1, Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;->TEXT_AUTOSIZING:Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getUserAgentLocked()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 942
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method private native nativeDestroy(J)V
.end method

.method private static native nativeGetDefaultUserAgent()Ljava/lang/String;
.end method

.method private native nativeInit(Lorg/chromium/content_public/browser/WebContents;)J
.end method

.method private native nativeResetScrollAndScaleState(J)V
.end method

.method private native nativeUpdateAcceptLanguages(J)V
.end method

.method private native nativeUpdateEverythingLocked(J)V
.end method

.method private native nativeUpdateFormDataPreferences(J)V
.end method

.method private native nativeUpdateInitialPageScale(J)V
.end method

.method private native nativeUpdateUserAgent(J)V
.end method

.method private native nativeUpdateWebkitPreferences(J)V
.end method

.method private nativeXWalkSettingsGone(J)V
    .locals 5
    .param p1, "nativeXWalkSettings"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 269
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 270
    :cond_1
    iput-wide v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    .line 271
    return-void
.end method

.method private onGestureZoomSupportChanged(ZZ)V
    .locals 2
    .param p1, "supportsDoubleTapZoom"    # Z
    .param p2, "supportsMultiTouchZoom"    # Z

    .prologue
    .line 1191
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    new-instance v1, Lorg/xwalk/core/internal/XWalkSettingsInternal$5;

    invoke-direct {v1, p0, p1, p2}, Lorg/xwalk/core/internal/XWalkSettingsInternal$5;-><init>(Lorg/xwalk/core/internal/XWalkSettingsInternal;ZZ)V

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->maybePostOnUiThread(Ljava/lang/Runnable;)V

    .line 1201
    return-void
.end method

.method private supportsDoubleTapZoomLocked()Z
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1205
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1206
    :cond_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSupportZoom:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mBuiltInZoomControls:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUseWideViewport:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private supportsMultiTouchZoomLocked()Z
    .locals 1

    .prologue
    .line 1210
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1211
    :cond_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSupportZoom:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mBuiltInZoomControls:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateEverything()V
    .locals 4
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 956
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 957
    :try_start_0
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    invoke-direct {p0, v2, v3}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->nativeUpdateEverythingLocked(J)V

    .line 958
    monitor-exit v1

    .line 959
    return-void

    .line 958
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateWebkitPreferencesOnUiThread()V
    .locals 4

    .prologue
    .line 962
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 963
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 964
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    invoke-direct {p0, v0, v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->nativeUpdateWebkitPreferences(J)V

    .line 966
    :cond_0
    return-void
.end method


# virtual methods
.method public getAcceptLanguages()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 996
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 997
    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAcceptLanguages:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 998
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllowContentAccess()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 422
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 423
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowContentUrlAccess:Z

    monitor-exit v1

    return v0

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllowFileAccess()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 394
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 395
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowFileUrlAccess:Z

    monitor-exit v1

    return v0

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllowFileAccessFromFileURLs()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 633
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 634
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowFileAccessFromFileURLs:Z

    monitor-exit v1

    return v0

    .line 635
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllowScriptsToCloseWindows()Z
    .locals 2

    .prologue
    .line 282
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 283
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowScriptsToCloseWindows:Z

    monitor-exit v1

    return v0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllowUniversalAccessFromFileURLs()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 617
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 618
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowUniversalAccessFromFileURLs:Z

    monitor-exit v1

    return v0

    .line 619
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBlockNetworkImage()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 586
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 587
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mImagesEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 588
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBlockNetworkLoads()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 365
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 366
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mBlockNetworkLoads:Z

    monitor-exit v1

    return v0

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBuiltInZoomControls()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1270
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1271
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mBuiltInZoomControls:Z

    monitor-exit v1

    return v0

    .line 1272
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCacheMode()I
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 318
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 319
    :try_start_0
    iget v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mCacheMode:I

    monitor-exit v1

    return v0

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDatabaseEnabled()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 844
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 845
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDatabaseEnabled:Z

    monitor-exit v1

    return v0

    .line 846
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDefaultFixedFontSize()I
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1177
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1178
    :try_start_0
    iget v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultFixedFontSize:I

    monitor-exit v1

    return v0

    .line 1179
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDefaultFontSize()I
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1149
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1150
    :try_start_0
    iget v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultFontSize:I

    monitor-exit v1

    return v0

    .line 1151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDefaultVideoPosterURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 949
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 950
    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultVideoPosterURL:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 951
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDomStorageEnabled()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 809
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 810
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDomStorageEnabled:Z

    monitor-exit v1

    return v0

    .line 811
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getGeolocationEnabled()Z
    .locals 2

    .prologue
    .line 442
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 443
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mGeolocationEnabled:Z

    monitor-exit v1

    return v0

    .line 444
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getJavaScriptCanOpenWindowsAutomatically()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 666
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 667
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mJavaScriptCanOpenWindowsAutomatically:Z

    monitor-exit v1

    return v0

    .line 668
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getJavaScriptEnabled()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 600
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 601
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mJavaScriptEnabled:Z

    monitor-exit v1

    return v0

    .line 602
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLayoutAlgorithm()Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1362
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1363
    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mLayoutAlgorithm:Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    monitor-exit v1

    return-object v0

    .line 1364
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLoadWithOverviewMode()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1405
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1406
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mLoadWithOverviewMode:Z

    monitor-exit v1

    return v0

    .line 1407
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLoadsImagesAutomatically()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 546
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 547
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mLoadsImagesAutomatically:Z

    monitor-exit v1

    return v0

    .line 548
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMediaPlaybackRequiresUserGesture()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 875
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 876
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mMediaPlaybackRequiresUserGesture:Z

    monitor-exit v1

    return v0

    .line 877
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSaveFormData()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1029
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1030
    :try_start_0
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getSaveFormDataLocked()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1031
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSupportQuirksMode()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1335
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1336
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mQuirksModeEnabled:Z

    monitor-exit v1

    return v0

    .line 1337
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSupportSpatialNavigation()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1309
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1310
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSpatialNavigationEnabled:Z

    monitor-exit v1

    return v0

    .line 1311
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTextZoom()I
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1112
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1113
    :try_start_0
    iget v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mTextSizePercent:I

    monitor-exit v1

    return v0

    .line 1114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUseWideViewPort()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 732
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 733
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUseWideViewport:Z

    monitor-exit v1

    return v0

    .line 734
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 935
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 936
    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUserAgent:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 937
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAcceptLanguages(Ljava/lang/String;)V
    .locals 3
    .param p1, "acceptLanguages"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 975
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 976
    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAcceptLanguages:Ljava/lang/String;

    if-ne v0, p1, :cond_0

    monitor-exit v1

    .line 987
    :goto_0
    return-void

    .line 977
    :cond_0
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAcceptLanguages:Ljava/lang/String;

    .line 978
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    new-instance v2, Lorg/xwalk/core/internal/XWalkSettingsInternal$2;

    invoke-direct {v2, p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$2;-><init>(Lorg/xwalk/core/internal/XWalkSettingsInternal;)V

    invoke-virtual {v0, v2}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->maybeRunOnUiThreadBlocking(Ljava/lang/Runnable;)V

    .line 986
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllowContentAccess(Z)V
    .locals 2
    .param p1, "allow"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 407
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 408
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowContentUrlAccess:Z

    if-eq v0, p1, :cond_0

    .line 409
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowContentUrlAccess:Z

    .line 411
    :cond_0
    monitor-exit v1

    .line 412
    return-void

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllowFileAccess(Z)V
    .locals 2
    .param p1, "allow"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 379
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 380
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowFileUrlAccess:Z

    if-eq v0, p1, :cond_0

    .line 381
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowFileUrlAccess:Z

    .line 383
    :cond_0
    monitor-exit v1

    .line 384
    return-void

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllowFileAccessFromFileURLs(Z)V
    .locals 2
    .param p1, "flag"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 506
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 507
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowFileAccessFromFileURLs:Z

    if-eq v0, p1, :cond_0

    .line 508
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowFileAccessFromFileURLs:Z

    .line 509
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 511
    :cond_0
    monitor-exit v1

    .line 512
    return-void

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllowScriptsToCloseWindows(Z)V
    .locals 2
    .param p1, "allow"    # Z

    .prologue
    .line 274
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 275
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowScriptsToCloseWindows:Z

    if-eq v0, p1, :cond_0

    .line 276
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowScriptsToCloseWindows:Z

    .line 278
    :cond_0
    monitor-exit v1

    .line 279
    return-void

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllowUniversalAccessFromFileURLs(Z)V
    .locals 2
    .param p1, "flag"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 481
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 482
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowUniversalAccessFromFileURLs:Z

    if-eq v0, p1, :cond_0

    .line 483
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAllowUniversalAccessFromFileURLs:Z

    .line 484
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 486
    :cond_0
    monitor-exit v1

    .line 487
    return-void

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAppCacheEnabled(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 741
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 742
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAppCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 743
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAppCacheEnabled:Z

    .line 744
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 746
    :cond_0
    monitor-exit v1

    .line 747
    return-void

    .line 746
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAppCachePath(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 753
    const/4 v0, 0x0

    .line 754
    .local v0, "needToSync":Z
    sget-object v2, Lorg/xwalk/core/internal/XWalkSettingsInternal;->sGlobalContentSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 756
    :try_start_0
    sget-boolean v1, Lorg/xwalk/core/internal/XWalkSettingsInternal;->sAppCachePathIsSet:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 757
    const/4 v1, 0x1

    sput-boolean v1, Lorg/xwalk/core/internal/XWalkSettingsInternal;->sAppCachePathIsSet:Z

    .line 758
    const/4 v0, 0x1

    .line 760
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 764
    if-eqz v0, :cond_1

    .line 765
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 766
    :try_start_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 767
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 769
    :cond_1
    return-void

    .line 760
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 767
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public setBlockNetworkImage(Z)V
    .locals 2
    .param p1, "flag"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 569
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 570
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mImagesEnabled:Z

    if-ne v0, p1, :cond_0

    .line 571
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mImagesEnabled:Z

    .line 572
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 574
    :cond_0
    monitor-exit v1

    .line 575
    return-void

    .line 571
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 574
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBlockNetworkLoads(Z)V
    .locals 5
    .param p1, "flag"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 344
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 345
    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERNET"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Permission denied - application missing INTERNET permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 352
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mBlockNetworkLoads:Z

    .line 353
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    return-void
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 3
    .param p1, "enabled"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1255
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1256
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mBuiltInZoomControls:Z

    if-ne v0, p1, :cond_0

    monitor-exit v1

    .line 1261
    :goto_0
    return-void

    .line 1257
    :cond_0
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mBuiltInZoomControls:Z

    .line 1258
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->supportsDoubleTapZoomLocked()Z

    move-result v0

    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->supportsMultiTouchZoomLocked()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->onGestureZoomSupportChanged(ZZ)V

    .line 1260
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCacheMode(I)V
    .locals 2
    .param p1, "mode"    # I
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 302
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    :try_start_0
    iget v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mCacheMode:I

    if-eq v0, p1, :cond_0

    .line 304
    iput p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mCacheMode:I

    .line 306
    :cond_0
    monitor-exit v1

    .line 307
    return-void

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setDIPScale(D)V
    .locals 3
    .param p1, "dipScale"    # D

    .prologue
    .line 1045
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1046
    :try_start_0
    iput-wide p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDIPScale:D

    .line 1049
    monitor-exit v1

    .line 1050
    return-void

    .line 1049
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDatabaseEnabled(Z)V
    .locals 2
    .param p1, "flag"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 828
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 829
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDatabaseEnabled:Z

    if-eq v0, p1, :cond_0

    .line 830
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDatabaseEnabled:Z

    .line 831
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 833
    :cond_0
    monitor-exit v1

    .line 834
    return-void

    .line 833
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDefaultFixedFontSize(I)V
    .locals 2
    .param p1, "size"    # I
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1162
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1163
    :try_start_0
    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->clipFontSize(I)I

    move-result p1

    .line 1164
    iget v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultFixedFontSize:I

    if-ne v0, p1, :cond_0

    monitor-exit v1

    .line 1168
    :goto_0
    return-void

    .line 1165
    :cond_0
    iput p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultFixedFontSize:I

    .line 1166
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 1167
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDefaultFontSize(I)V
    .locals 2
    .param p1, "size"    # I
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1134
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1135
    :try_start_0
    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->clipFontSize(I)I

    move-result p1

    .line 1136
    iget v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultFontSize:I

    if-ne v0, p1, :cond_0

    monitor-exit v1

    .line 1140
    :goto_0
    return-void

    .line 1137
    :cond_0
    iput p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultFontSize:I

    .line 1138
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 1139
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDefaultVideoPosterURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 884
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 885
    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultVideoPosterURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultVideoPosterURL:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultVideoPosterURL:Ljava/lang/String;

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 887
    :cond_1
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDefaultVideoPosterURL:Ljava/lang/String;

    .line 888
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 890
    :cond_2
    monitor-exit v1

    .line 891
    return-void

    .line 890
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDomStorageEnabled(Z)V
    .locals 2
    .param p1, "flag"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 792
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 793
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDomStorageEnabled:Z

    if-eq v0, p1, :cond_0

    .line 794
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mDomStorageEnabled:Z

    .line 795
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 797
    :cond_0
    monitor-exit v1

    .line 798
    return-void

    .line 797
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setGeolocationEnabled(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 431
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 432
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mGeolocationEnabled:Z

    if-eq v0, p1, :cond_0

    .line 433
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mGeolocationEnabled:Z

    .line 435
    :cond_0
    monitor-exit v1

    .line 436
    return-void

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setInitialPageScale(F)V
    .locals 3
    .param p1, "scaleInPercent"    # F
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1059
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1060
    :try_start_0
    iget v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mInitialPageScalePercent:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    monitor-exit v1

    .line 1071
    :goto_0
    return-void

    .line 1061
    :cond_0
    iput p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mInitialPageScalePercent:F

    .line 1062
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    new-instance v2, Lorg/xwalk/core/internal/XWalkSettingsInternal$4;

    invoke-direct {v2, p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$4;-><init>(Lorg/xwalk/core/internal/XWalkSettingsInternal;)V

    invoke-virtual {v0, v2}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->maybeRunOnUiThreadBlocking(Ljava/lang/Runnable;)V

    .line 1070
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 2
    .param p1, "flag"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 647
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 648
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mJavaScriptCanOpenWindowsAutomatically:Z

    if-eq v0, p1, :cond_0

    .line 649
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mJavaScriptCanOpenWindowsAutomatically:Z

    .line 650
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 652
    :cond_0
    monitor-exit v1

    .line 653
    return-void

    .line 652
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setJavaScriptEnabled(Z)V
    .locals 2
    .param p1, "flag"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 457
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 458
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mJavaScriptEnabled:Z

    if-eq v0, p1, :cond_0

    .line 459
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mJavaScriptEnabled:Z

    .line 460
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 462
    :cond_0
    monitor-exit v1

    .line 463
    return-void

    .line 462
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLayoutAlgorithm(Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;)V
    .locals 2
    .param p1, "la"    # Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1348
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1349
    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mLayoutAlgorithm:Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    if-ne v0, p1, :cond_0

    monitor-exit v1

    .line 1353
    :goto_0
    return-void

    .line 1350
    :cond_0
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mLayoutAlgorithm:Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    .line 1351
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 1352
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLoadWithOverviewMode(Z)V
    .locals 3
    .param p1, "overview"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1383
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1384
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mLoadWithOverviewMode:Z

    if-ne v0, p1, :cond_0

    monitor-exit v1

    .line 1396
    :goto_0
    return-void

    .line 1385
    :cond_0
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mLoadWithOverviewMode:Z

    .line 1386
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    new-instance v2, Lorg/xwalk/core/internal/XWalkSettingsInternal$6;

    invoke-direct {v2, p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$6;-><init>(Lorg/xwalk/core/internal/XWalkSettingsInternal;)V

    invoke-virtual {v0, v2}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->maybeRunOnUiThreadBlocking(Ljava/lang/Runnable;)V

    .line 1395
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLoadsImagesAutomatically(Z)V
    .locals 2
    .param p1, "flag"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 528
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 529
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mLoadsImagesAutomatically:Z

    if-eq v0, p1, :cond_0

    .line 530
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mLoadsImagesAutomatically:Z

    .line 531
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 533
    :cond_0
    monitor-exit v1

    .line 534
    return-void

    .line 533
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMediaPlaybackRequiresUserGesture(Z)V
    .locals 2
    .param p1, "require"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 858
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 859
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mMediaPlaybackRequiresUserGesture:Z

    if-eq v0, p1, :cond_0

    .line 860
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mMediaPlaybackRequiresUserGesture:Z

    .line 861
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 863
    :cond_0
    monitor-exit v1

    .line 864
    return-void

    .line 863
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSaveFormData(Z)V
    .locals 3
    .param p1, "enable"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1007
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1008
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAutoCompleteEnabled:Z

    if-ne v0, p1, :cond_0

    monitor-exit v1

    .line 1019
    :goto_0
    return-void

    .line 1009
    :cond_0
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mAutoCompleteEnabled:Z

    .line 1010
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    new-instance v2, Lorg/xwalk/core/internal/XWalkSettingsInternal$3;

    invoke-direct {v2, p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$3;-><init>(Lorg/xwalk/core/internal/XWalkSettingsInternal;)V

    invoke-virtual {v0, v2}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->maybeRunOnUiThreadBlocking(Ljava/lang/Runnable;)V

    .line 1018
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSupportMultipleWindows(Z)V
    .locals 2
    .param p1, "support"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 681
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 682
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSupportMultipleWindows:Z

    if-eq v0, p1, :cond_0

    .line 683
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSupportMultipleWindows:Z

    .line 684
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 686
    :cond_0
    monitor-exit v1

    .line 687
    return-void

    .line 686
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSupportQuirksMode(Z)V
    .locals 2
    .param p1, "enable"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1321
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1322
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mQuirksModeEnabled:Z

    if-ne v0, p1, :cond_0

    monitor-exit v1

    .line 1326
    :goto_0
    return-void

    .line 1323
    :cond_0
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mQuirksModeEnabled:Z

    .line 1324
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 1325
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSupportSpatialNavigation(Z)V
    .locals 2
    .param p1, "enable"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1295
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1296
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSpatialNavigationEnabled:Z

    if-ne v0, p1, :cond_0

    monitor-exit v1

    .line 1300
    :goto_0
    return-void

    .line 1297
    :cond_0
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSpatialNavigationEnabled:Z

    .line 1298
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 1299
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSupportZoom(Z)V
    .locals 3
    .param p1, "support"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1224
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1225
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSupportZoom:Z

    if-ne v0, p1, :cond_0

    monitor-exit v1

    .line 1230
    :goto_0
    return-void

    .line 1226
    :cond_0
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSupportZoom:Z

    .line 1227
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->supportsDoubleTapZoomLocked()Z

    move-result v0

    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->supportsMultiTouchZoomLocked()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->onGestureZoomSupportChanged(ZZ)V

    .line 1229
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTextZoom(I)V
    .locals 2
    .param p1, "textZoom"    # I
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1098
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1099
    :try_start_0
    iget v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mTextSizePercent:I

    if-ne v0, p1, :cond_0

    monitor-exit v1

    .line 1103
    :goto_0
    return-void

    .line 1100
    :cond_0
    iput p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mTextSizePercent:I

    .line 1101
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 1102
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUseWideViewPort(Z)V
    .locals 2
    .param p1, "use"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 716
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 717
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUseWideViewport:Z

    if-eq v0, p1, :cond_0

    .line 718
    iput-boolean p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUseWideViewport:Z

    .line 719
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V

    .line 721
    :cond_0
    monitor-exit v1

    .line 722
    return-void

    .line 721
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 4
    .param p1, "userAgent"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 908
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 909
    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUserAgent:Ljava/lang/String;

    .line 910
    .local v0, "oldUserAgent":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 911
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkSettingsInternal$LazyDefaultUserAgent;->access$500()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUserAgent:Ljava/lang/String;

    .line 915
    :goto_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 916
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    new-instance v3, Lorg/xwalk/core/internal/XWalkSettingsInternal$1;

    invoke-direct {v3, p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$1;-><init>(Lorg/xwalk/core/internal/XWalkSettingsInternal;)V

    invoke-virtual {v1, v3}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->maybeRunOnUiThreadBlocking(Ljava/lang/Runnable;)V

    .line 925
    :cond_1
    monitor-exit v2

    .line 926
    return-void

    .line 913
    :cond_2
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mUserAgent:Ljava/lang/String;

    goto :goto_0

    .line 925
    .end local v0    # "oldUserAgent":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setWebContents(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 6
    .param p1, "webContents"    # Lorg/chromium/content_public/browser/WebContents;

    .prologue
    const-wide/16 v4, 0x0

    .line 254
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 255
    :try_start_0
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 256
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    invoke-direct {p0, v2, v3}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->nativeDestroy(J)V

    .line 257
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 259
    :cond_0
    if-eqz p1, :cond_1

    .line 260
    :try_start_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mEventHandler:Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->bindUiThread()V

    .line 261
    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->nativeInit(Lorg/chromium/content_public/browser/WebContents;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    .line 262
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mNativeXWalkSettings:J

    invoke-direct {p0, v2, v3}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->nativeUpdateEverythingLocked(J)V

    .line 264
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    return-void
.end method

.method setZoomListener(Lorg/xwalk/core/internal/XWalkSettingsInternal$ZoomSupportChangeListener;)V
    .locals 2
    .param p1, "zoomChangeListener"    # Lorg/xwalk/core/internal/XWalkSettingsInternal$ZoomSupportChangeListener;

    .prologue
    .line 1183
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1184
    :try_start_0
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mZoomChangeListener:Lorg/xwalk/core/internal/XWalkSettingsInternal$ZoomSupportChangeListener;

    .line 1185
    monitor-exit v1

    .line 1186
    return-void

    .line 1185
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supportMultipleWindows()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 698
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 699
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSupportMultipleWindows:Z

    monitor-exit v1

    return v0

    .line 700
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supportZoom()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1239
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1240
    :try_start_0
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mSupportZoom:Z

    monitor-exit v1

    return v0

    .line 1241
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supportsMultiTouchZoomForTest()Z
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1282
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal;->mXWalkSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1283
    :try_start_0
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->supportsMultiTouchZoomLocked()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1284
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
