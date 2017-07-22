.class public Lorg/chromium/content/browser/ContentViewCore;
.super Ljava/lang/Object;
.source "ContentViewCore.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
.implements Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationObserver;
.implements Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;,
        Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;,
        Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;,
        Lorg/chromium/content/browser/ContentViewCore$ShowKeyboardResultReceiver;,
        Lorg/chromium/content/browser/ContentViewCore$SystemAnimationIntervalProvider;,
        Lorg/chromium/content/browser/ContentViewCore$ContentViewWebContentsObserver;,
        Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "content"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final INVALID_RENDER_PROCESS_PID:I = 0x0

.field private static final NO_OP_ZOOM_CONTROLS_DELEGATE:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

.field private static final TAG:Ljava/lang/String; = "cr.ContentViewCore"

.field private static final ZOOM_CONTROLS_EPSILON:F = 0.007f


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActionHandler:Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

.field private mActionMode:Lorg/chromium/content/browser/WebActionMode;

.field private mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

.field private mContainerView:Landroid/view/ViewGroup;

.field private mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

.field private final mContainerViewObservers:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList",
            "<",
            "Lorg/chromium/content/browser/ContainerViewObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

.field private final mContext:Landroid/content/Context;

.field private mContextualSearchClient:Lorg/chromium/content/browser/ContextualSearchClient;

.field private mCurrentTouchOffsetX:F

.field private mCurrentTouchOffsetY:F

.field private mDownloadDelegate:Lorg/chromium/content/browser/ContentViewDownloadDelegate;

.field private mDraggingSelection:Z

.field private mEnableTouchHover:Ljava/lang/Boolean;

.field private mFakeMouseMoveRunnable:Ljava/lang/Runnable;

.field private mFloatingActionModeCreationFailed:Z

.field private final mFocusPreOSKViewportRect:Landroid/graphics/Rect;

.field private mFocusedNodeEditable:Z

.field private mFocusedNodeIsPassword:Z

.field private mFullscreenRequiredForOrientationLock:Z

.field private final mGestureStateListeners:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList",
            "<",
            "Lorg/chromium/content_public/browser/GestureStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList$RewindableIterator",
            "<",
            "Lorg/chromium/content_public/browser/GestureStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHasInsertion:Z

.field private mHasSelection:Z

.field private mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

.field private mIsMobileOptimizedHint:Z

.field private mIsObscuredByAnotherView:Z

.field private final mJavaScriptInterfaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Class;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mJoystickScrollProvider:Lorg/chromium/content/browser/input/JoystickScrollProvider;

.field private mJoystickZoomProvider:Lorg/chromium/content/browser/input/JoystickZoomProvider;

.field private mLastFocalEventX:F

.field private mLastFocalEventY:F

.field private mLastSelectedText:Ljava/lang/String;

.field private mNativeAccessibilityAllowed:Z

.field private mNativeAccessibilityEnabled:Z

.field private mNativeContentViewCore:J

.field private mNativeSelectPopupSourceFrame:J

.field private mOverscrollRefreshHandler:Lorg/chromium/content/browser/OverscrollRefreshHandler;

.field private mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

.field private mPhysicalBackingHeightPix:I

.field private mPhysicalBackingWidthPix:I

.field private mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

.field private mPotentiallyActiveFlingCount:I

.field private mPreserveSelectionOnNextLossOfFocus:Z

.field private final mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

.field private final mRetainedJavaScriptObjects:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectPopup:Lorg/chromium/content/browser/input/SelectPopup;

.field private final mSelectionRect:Landroid/graphics/Rect;

.field private mShouldSetAccessibilityFocusOnPageLoad:Z

.field private mShowKeyboardResultReceiver:Lorg/chromium/content/browser/ContentViewCore$ShowKeyboardResultReceiver;

.field private mSmartClipDataListener:Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;

.field private mSmartClipOffsetX:I

.field private mSmartClipOffsetY:I

.field private final mSystemCaptioningBridge:Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge;

.field private mTopControlsHeightPix:I

.field private mTopControlsShrinkBlinkSize:Z

.field private mTouchExplorationEnabled:Z

.field private mTouchScrollInProgress:Z

.field private mUnselectAllOnActionModeDismiss:Z

.field private mViewAndroidDelegate:Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;

.field private mViewportHeightPix:I

.field private mViewportWidthPix:I

.field private mWasPastePopupShowingOnInsertionDragStart:Z

.field private mWebContents:Lorg/chromium/content_public/browser/WebContents;

.field private mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;

.field private mWheelScrollFactorInPixels:F

.field private mZoomControlsDelegate:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const-class v0, Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    .line 115
    new-instance v0, Lorg/chromium/content/browser/ContentViewCore$1;

    invoke-direct {v0}, Lorg/chromium/content/browser/ContentViewCore$1;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/ContentViewCore;->NO_OP_ZOOM_CONTROLS_DELEGATE:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mJavaScriptInterfaces:Ljava/util/Map;

    .line 146
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mRetainedJavaScriptObjects:Ljava/util/HashSet;

    .line 481
    iput-wide v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    .line 489
    iput-wide v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeSelectPopupSourceFrame:J

    .line 493
    iput-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mFakeMouseMoveRunnable:Ljava/lang/Runnable;

    .line 535
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionRect:Landroid/graphics/Rect;

    .line 571
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusPreOSKViewportRect:Landroid/graphics/Rect;

    .line 590
    iput-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mSmartClipDataListener:Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;

    .line 610
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mFullscreenRequiredForOrientationLock:Z

    .line 641
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    .line 642
    new-instance v2, Lorg/chromium/content/browser/RenderCoordinates;

    invoke-direct {v2}, Lorg/chromium/content/browser/RenderCoordinates;-><init>()V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    .line 643
    new-instance v2, Lorg/chromium/content/browser/input/JoystickScrollProvider;

    invoke-direct {v2, p0}, Lorg/chromium/content/browser/input/JoystickScrollProvider;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mJoystickScrollProvider:Lorg/chromium/content/browser/input/JoystickScrollProvider;

    .line 644
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 645
    .local v0, "deviceScaleFactor":F
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v2

    const-string v3, "force-device-scale-factor"

    invoke-virtual {v2, v3}, Lorg/chromium/base/CommandLine;->getSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 647
    .local v1, "forceScaleFactor":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 648
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 650
    :cond_0
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2, v0}, Lorg/chromium/content/browser/RenderCoordinates;->setDeviceScaleFactor(F)V

    .line 651
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 653
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningBridgeFactory;->getSystemCaptioningBridge(Landroid/content/Context;)Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mSystemCaptioningBridge:Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge;

    .line 654
    new-instance v2, Lorg/chromium/base/ObserverList;

    invoke-direct {v2}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListeners:Lorg/chromium/base/ObserverList;

    .line 655
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v2}, Lorg/chromium/base/ObserverList;->rewindableIterator()Lorg/chromium/base/ObserverList$RewindableIterator;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    .line 657
    new-instance v2, Lorg/chromium/base/ObserverList;

    invoke-direct {v2}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewObservers:Lorg/chromium/base/ObserverList;

    .line 658
    return-void
.end method

.method static synthetic access$1000(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 107
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->dismissTextHandles()V

    return-void
.end method

.method static synthetic access$1100(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content_public/browser/WebContents;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/chromium/content/browser/ContentViewCore;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/chromium/content/browser/ContentViewCore;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 107
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    return-wide v0
.end method

.method static synthetic access$1500(Lorg/chromium/content/browser/ContentViewCore;JJFF)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # F
    .param p6, "x4"    # F

    .prologue
    .line 107
    invoke-direct/range {p0 .. p6}, Lorg/chromium/content/browser/ContentViewCore;->nativeSingleTap(JJFF)V

    return-void
.end method

.method static synthetic access$1600(Lorg/chromium/content/browser/ContentViewCore;JJFF)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # F
    .param p6, "x4"    # F

    .prologue
    .line 107
    invoke-direct/range {p0 .. p6}, Lorg/chromium/content/browser/ContentViewCore;->nativeLongPress(JJFF)V

    return-void
.end method

.method static synthetic access$1800(Lorg/chromium/content/browser/ContentViewCore;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 107
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeIsPassword:Z

    return v0
.end method

.method static synthetic access$1900(Lorg/chromium/content/browser/ContentViewCore;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 107
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasInsertion:Z

    return v0
.end method

.method static synthetic access$2002(Lorg/chromium/content/browser/ContentViewCore;Lorg/chromium/content/browser/WebActionMode;)Lorg/chromium/content/browser/WebActionMode;
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;
    .param p1, "x1"    # Lorg/chromium/content/browser/WebActionMode;

    .prologue
    .line 107
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/chromium/content/browser/ContentViewCore;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 107
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mUnselectAllOnActionModeDismiss:Z

    return v0
.end method

.method static synthetic access$2200(Lorg/chromium/content/browser/ContentViewCore;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 107
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->supportsFloatingActionMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lorg/chromium/content/browser/ContentViewCore;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/RenderCoordinates;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/ContentViewClient;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/chromium/content/browser/ContentViewCore;Landroid/view/ViewStructure;Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;
    .param p1, "x1"    # Landroid/view/ViewStructure;
    .param p2, "x2"    # Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;
    .param p3, "x3"    # Z

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/content/browser/ContentViewCore;->createVirtualStructure(Landroid/view/ViewStructure;Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;Z)V

    return-void
.end method

.method static synthetic access$400(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/input/ImeAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    return-object v0
.end method

.method static synthetic access$502(Lorg/chromium/content/browser/ContentViewCore;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mIsMobileOptimizedHint:Z

    return p1
.end method

.method static synthetic access$600(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 107
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopupsAndClearSelection()V

    return-void
.end method

.method static synthetic access$700(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 107
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->resetScrollInProgress()V

    return-void
.end method

.method static synthetic access$800(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/PopupZoomer;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    return-object v0
.end method

.method static synthetic access$900(Lorg/chromium/content/browser/ContentViewCore;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 107
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeEditable:Z

    return v0
.end method

.method private canPaste()Z
    .locals 2

    .prologue
    .line 2730
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    return v0
.end method

.method private cancelRequestToScrollFocusedEditableNodeIntoView()V
    .locals 1

    .prologue
    .line 1651
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusPreOSKViewportRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1652
    return-void
.end method

.method private createImeAdapter()Lorg/chromium/content/browser/input/ImeAdapter;
    .locals 3

    .prologue
    .line 736
    new-instance v0, Lorg/chromium/content/browser/input/ImeAdapter;

    new-instance v1, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;-><init>(Landroid/content/Context;)V

    new-instance v2, Lorg/chromium/content/browser/ContentViewCore$2;

    invoke-direct {v2, p0}, Lorg/chromium/content/browser/ContentViewCore$2;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    invoke-direct {v0, v1, v2}, Lorg/chromium/content/browser/input/ImeAdapter;-><init>(Lorg/chromium/content/browser/input/InputMethodManagerWrapper;Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;)V

    return-object v0
.end method

.method private createMotionEventSynthesizer()Lorg/chromium/content/browser/MotionEventSynthesizer;
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 2615
    new-instance v0, Lorg/chromium/content/browser/MotionEventSynthesizer;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/MotionEventSynthesizer;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    return-object v0
.end method

.method private createOffsetMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 3
    .param p1, "src"    # Landroid/view/MotionEvent;

    .prologue
    .line 1822
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1823
    .local v0, "dst":Landroid/view/MotionEvent;
    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mCurrentTouchOffsetX:F

    iget v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mCurrentTouchOffsetY:F

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1824
    return-object v0
.end method

.method private static createRect(IIII)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 3256
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private createVirtualStructure(Landroid/view/ViewStructure;Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;Z)V
    .locals 12
    .param p1, "viewNode"    # Landroid/view/ViewStructure;
    .param p2, "node"    # Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;
    .param p3, "ignoreScrollOffset"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 3130
    iget-object v0, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->className:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    .line 3131
    iget-boolean v0, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->hasSelection:Z

    if-eqz v0, :cond_2

    .line 3132
    iget-object v0, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->text:Ljava/lang/String;

    iget v1, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->startSelection:I

    iget v2, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->endSelection:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;II)V

    .line 3136
    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    iget v1, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->x:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v0

    float-to-int v9, v0

    .line 3137
    .local v9, "left":I
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    iget v1, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v0

    float-to-int v11, v0

    .line 3138
    .local v11, "top":I
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    iget v1, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->width:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v0

    float-to-int v5, v0

    .line 3139
    .local v5, "width":I
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    iget v1, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->height:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v0

    float-to-int v6, v0

    .line 3141
    .local v6, "height":I
    new-instance v7, Landroid/graphics/Rect;

    add-int v0, v9, v5

    add-int v1, v11, v6

    invoke-direct {v7, v9, v11, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3142
    .local v7, "boundsInParent":Landroid/graphics/Rect;
    iget-boolean v0, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->isRootNode:Z

    if-eqz v0, :cond_0

    .line 3144
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 3145
    if-nez p3, :cond_0

    .line 3146
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollXPix()F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollYPix()F

    move-result v1

    float-to-int v1, v1

    neg-int v1, v1

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 3151
    :cond_0
    iget v1, v7, Landroid/graphics/Rect;->left:I

    iget v2, v7, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/view/ViewStructure;->setDimens(IIIIII)V

    .line 3152
    iget-object v0, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setChildCount(I)V

    .line 3153
    iget-boolean v0, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->hasStyle:Z

    if-eqz v0, :cond_1

    .line 3154
    iget-boolean v0, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->bold:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iget-boolean v1, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->italic:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    :goto_2
    or-int/2addr v1, v0

    iget-boolean v0, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->underline:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    :goto_3
    or-int/2addr v1, v0

    iget-boolean v0, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->lineThrough:Z

    if-eqz v0, :cond_6

    const/16 v0, 0x8

    :goto_4
    or-int v10, v1, v0

    .line 3158
    .local v10, "style":I
    iget v0, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->textSize:F

    iget v1, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->color:I

    iget v2, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->bgcolor:I

    invoke-virtual {p1, v0, v1, v2, v10}, Landroid/view/ViewStructure;->setTextStyle(FIII)V

    .line 3160
    .end local v10    # "style":I
    :cond_1
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5
    iget-object v0, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_7

    .line 3161
    invoke-virtual {p1, v8}, Landroid/view/ViewStructure;->asyncNewChild(I)Landroid/view/ViewStructure;

    move-result-object v1

    iget-object v0, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lorg/chromium/content/browser/ContentViewCore;->createVirtualStructure(Landroid/view/ViewStructure;Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;Z)V

    .line 3160
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 3134
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v7    # "boundsInParent":Landroid/graphics/Rect;
    .end local v8    # "i":I
    .end local v9    # "left":I
    .end local v11    # "top":I
    :cond_2
    iget-object v0, p2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3154
    .restart local v5    # "width":I
    .restart local v6    # "height":I
    .restart local v7    # "boundsInParent":Landroid/graphics/Rect;
    .restart local v9    # "left":I
    .restart local v11    # "top":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    .line 3163
    .restart local v8    # "i":I
    :cond_7
    invoke-virtual {p1}, Landroid/view/ViewStructure;->asyncCommit()V

    .line 3164
    return-void
.end method

.method private dismissTextHandles()V
    .locals 4

    .prologue
    .line 2398
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeDismissTextHandles(J)V

    .line 2399
    :cond_0
    return-void
.end method

.method private filterTapOrPressEvent(III)Z
    .locals 2
    .param p1, "type"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1359
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->offerLongPressToEmbedder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1360
    const/4 v0, 0x1

    .line 1363
    :goto_0
    return v0

    .line 1362
    :cond_0
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-direct {p0, p1, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->updateForTapOrPress(IFF)V

    .line 1363
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private forceUpdateImeAdapter(J)V
    .locals 1
    .param p1, "nativeImeAdapterAndroid"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 2529
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapter;->attach(J)V

    .line 2530
    return-void
.end method

.method public static fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/ContentViewCore;
    .locals 1
    .param p0, "webContents"    # Lorg/chromium/content_public/browser/WebContents;

    .prologue
    .line 631
    invoke-static {p0}, Lorg/chromium/content/browser/ContentViewCore;->nativeFromWebContentsAndroid(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    return-object v0
.end method

.method private getPastePopup()Lorg/chromium/content/browser/input/PastePopupMenu;
    .locals 4

    .prologue
    .line 2703
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    if-nez v2, :cond_1

    .line 2704
    new-instance v0, Lorg/chromium/content/browser/ContentViewCore$7;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/ContentViewCore$7;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 2716
    .local v0, "delegate":Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 2717
    .local v1, "windowContext":Landroid/content/Context;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 2726
    .end local v0    # "delegate":Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;
    .end local v1    # "windowContext":Landroid/content/Context;
    :goto_0
    return-object v2

    .line 2718
    .restart local v0    # "delegate":Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;
    .restart local v1    # "windowContext":Landroid/content/Context;
    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->supportsFloatingActionMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2719
    new-instance v2, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-direct {v2, v1, v3, v0}, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;)V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    .line 2726
    .end local v0    # "delegate":Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;
    .end local v1    # "windowContext":Landroid/content/Context;
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    goto :goto_0

    .line 2722
    .restart local v0    # "delegate":Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;
    .restart local v1    # "windowContext":Landroid/content/Context;
    :cond_2
    new-instance v2, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-direct {v2, v1, v3, v0}, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;)V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    goto :goto_1
.end method

.method private getPhysicalBackingHeightPix()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1091
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPhysicalBackingHeightPix:I

    return v0
.end method

.method private getPhysicalBackingWidthPix()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1083
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPhysicalBackingWidthPix:I

    return v0
.end method

.method private getWheelScrollFactorInPixels()F
    .locals 4

    .prologue
    .line 3343
    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mWheelScrollFactorInPixels:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 3344
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 3347
    .local v0, "outValue":Landroid/util/TypedValue;
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3349
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mWheelScrollFactorInPixels:F

    .line 3356
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_0
    :goto_0
    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mWheelScrollFactorInPixels:F

    return v1

    .line 3353
    .restart local v0    # "outValue":Landroid/util/TypedValue;
    :cond_1
    const/high16 v1, 0x42800000    # 64.0f

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getDeviceScaleFactor()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mWheelScrollFactorInPixels:F

    goto :goto_0
.end method

.method private hasFocus()Z
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 2758
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2759
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    goto :goto_0
.end method

.method private hidePastePopup()V
    .locals 1

    .prologue
    .line 2699
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/PastePopupMenu;->hide()V

    .line 2700
    :cond_0
    return-void
.end method

.method private hidePopups()V
    .locals 2

    .prologue
    .line 1480
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->hideSelectActionMode()V

    .line 1481
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePastePopup()V

    .line 1482
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hideSelectPopupWithCancelMesage()V

    .line 1483
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/PopupZoomer;->hide(Z)V

    .line 1484
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mUnselectAllOnActionModeDismiss:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->dismissTextHandles()V

    .line 1485
    :cond_0
    return-void
.end method

.method private hidePopupsAndClearSelection()V
    .locals 1

    .prologue
    .line 1470
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mUnselectAllOnActionModeDismiss:Z

    .line 1471
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopups()V

    .line 1472
    return-void
.end method

.method private hidePopupsAndPreserveSelection()V
    .locals 1

    .prologue
    .line 1475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mUnselectAllOnActionModeDismiss:Z

    .line 1476
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopups()V

    .line 1477
    return-void
.end method

.method private hideSelectPopup()V
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 2583
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectPopup:Lorg/chromium/content/browser/input/SelectPopup;

    if-nez v0, :cond_0

    .line 2587
    :goto_0
    return-void

    .line 2584
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectPopup:Lorg/chromium/content/browser/input/SelectPopup;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/chromium/content/browser/input/SelectPopup;->hide(Z)V

    .line 2585
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectPopup:Lorg/chromium/content/browser/input/SelectPopup;

    .line 2586
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeSelectPopupSourceFrame:J

    goto :goto_0
.end method

.method private hideSelectPopupWithCancelMesage()V
    .locals 2

    .prologue
    .line 2594
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectPopup:Lorg/chromium/content/browser/input/SelectPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectPopup:Lorg/chromium/content/browser/input/SelectPopup;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/chromium/content/browser/input/SelectPopup;->hide(Z)V

    .line 2595
    :cond_0
    return-void
.end method

.method private invalidateActionModeContentRect()V
    .locals 1

    .prologue
    .line 2257
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    invoke-virtual {v0}, Lorg/chromium/content/browser/WebActionMode;->invalidateContentRect()V

    .line 2258
    :cond_0
    return-void
.end method

.method private isFullscreenRequiredForOrientationLock()Z
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 3401
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFullscreenRequiredForOrientationLock:Z

    return v0
.end method

.method private static isValidTouchEventActionForNative(I)Z
    .locals 2
    .param p0, "eventAction"    # I

    .prologue
    const/4 v0, 0x1

    .line 1258
    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 v1, 0x6

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeAddJavascriptInterface(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V
.end method

.method private native nativeDismissTextHandles(J)V
.end method

.method private native nativeDoubleTap(JJFF)V
.end method

.method private native nativeExtractSmartClipData(JIIII)V
.end method

.method private native nativeFlingCancel(JJ)V
.end method

.method private native nativeFlingStart(JJFFFFZ)V
.end method

.method private static native nativeFromWebContentsAndroid(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/ContentViewCore;
.end method

.method private native nativeGetCurrentRenderProcessId(J)I
.end method

.method private native nativeGetJavaWindowAndroid(J)Lorg/chromium/ui/base/WindowAndroid;
.end method

.method private native nativeGetNativeImeAdapter(J)J
.end method

.method private native nativeGetWebContentsAndroid(J)Lorg/chromium/content_public/browser/WebContents;
.end method

.method private native nativeInit(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/ui/base/ViewAndroidDelegate;JLjava/util/HashSet;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/content_public/browser/WebContents;",
            "Lorg/chromium/ui/base/ViewAndroidDelegate;",
            "J",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Object;",
            ">;)J"
        }
    .end annotation
.end method

.method private native nativeLongPress(JJFF)V
.end method

.method private native nativeOnJavaContentViewCoreDestroyed(J)V
.end method

.method private native nativeOnTouchEvent(JLandroid/view/MotionEvent;JIIIIFFFFIIFFFFFFFFFFIIIIZ)Z
.end method

.method private native nativePinchBegin(JJFF)V
.end method

.method private native nativePinchBy(JJFFF)V
.end method

.method private native nativePinchEnd(JJ)V
.end method

.method private native nativeRemoveJavascriptInterface(JLjava/lang/String;)V
.end method

.method private native nativeResetGestureDetection(J)V
.end method

.method private native nativeScrollBegin(JJFFFFZ)V
.end method

.method private native nativeScrollBy(JJFFFF)V
.end method

.method private native nativeScrollEnd(JJ)V
.end method

.method private native nativeSelectBetweenCoordinates(JFFFF)V
.end method

.method private native nativeSelectPopupMenuItems(JJ[I)V
.end method

.method private native nativeSendMouseMoveEvent(JJFFI)I
.end method

.method private native nativeSendMouseWheelEvent(JJFFFFF)I
.end method

.method private native nativeSendOrientationChangeEvent(JI)V
.end method

.method private native nativeSetAccessibilityEnabled(JZ)V
.end method

.method private native nativeSetAllowJavascriptInterfacesInspection(JZ)V
.end method

.method private native nativeSetBackgroundColor(JI)V
.end method

.method private native nativeSetBackgroundOpaque(JZ)V
.end method

.method private native nativeSetDoubleTapSupportEnabled(JZ)V
.end method

.method private native nativeSetFocus(JZ)V
.end method

.method private native nativeSetMultiTouchZoomSupportEnabled(JZ)V
.end method

.method private native nativeSetTextHandlesTemporarilyHidden(JZ)V
.end method

.method private native nativeSetTextTrackSettings(JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeSingleTap(JJFF)V
.end method

.method private native nativeUpdateWindowAndroid(JJ)V
.end method

.method private native nativeWasResized(J)V
.end method

.method private offerLongPressToEmbedder()Z
    .locals 1

    .prologue
    .line 3323
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->performLongClick()Z

    move-result v0

    return v0
.end method

.method private onBackgroundColorChanged(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1051
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewClient;->onBackgroundColorChanged(I)V

    .line 1052
    return-void
.end method

.method private onFlingCancelEventAck()V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1294
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->updateGestureStateListener(I)V

    .line 1295
    return-void
.end method

.method private onFlingStartEventConsumed(II)V
    .locals 3
    .param p1, "vx"    # I
    .param p2, "vy"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1282
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPotentiallyActiveFlingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPotentiallyActiveFlingCount:I

    .line 1283
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->setTouchScrollInProgress(Z)V

    .line 1284
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    .line 1285
    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1286
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollOffset()I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollExtent()I

    move-result v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/chromium/content_public/browser/GestureStateListener;->onFlingStartGesture(IIII)V

    goto :goto_0

    .line 1289
    :cond_0
    return-void
.end method

.method private onNativeContentViewCoreDestroyed(J)V
    .locals 3
    .param p1, "nativeContentViewCore"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 891
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 892
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    .line 893
    return-void
.end method

.method private onNativeFlingStopped()V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 3372
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->setTouchScrollInProgress(Z)V

    .line 3373
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPotentiallyActiveFlingCount:I

    if-gtz v0, :cond_0

    .line 3376
    :goto_0
    return-void

    .line 3374
    :cond_0
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPotentiallyActiveFlingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPotentiallyActiveFlingCount:I

    .line 3375
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->updateGestureStateListener(I)V

    goto :goto_0
.end method

.method private onOverscrollRefreshRelease(Z)V
    .locals 1
    .param p1, "allowRefresh"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 2643
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mOverscrollRefreshHandler:Lorg/chromium/content/browser/OverscrollRefreshHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mOverscrollRefreshHandler:Lorg/chromium/content/browser/OverscrollRefreshHandler;

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/OverscrollRefreshHandler;->release(Z)V

    .line 2644
    :cond_0
    return-void
.end method

.method private onOverscrollRefreshReset()V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 2649
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mOverscrollRefreshHandler:Lorg/chromium/content/browser/OverscrollRefreshHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mOverscrollRefreshHandler:Lorg/chromium/content/browser/OverscrollRefreshHandler;

    invoke-interface {v0}, Lorg/chromium/content/browser/OverscrollRefreshHandler;->reset()V

    .line 2650
    :cond_0
    return-void
.end method

.method private onOverscrollRefreshStart()Z
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 2630
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mOverscrollRefreshHandler:Lorg/chromium/content/browser/OverscrollRefreshHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2631
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mOverscrollRefreshHandler:Lorg/chromium/content/browser/OverscrollRefreshHandler;

    invoke-interface {v0}, Lorg/chromium/content/browser/OverscrollRefreshHandler;->start()Z

    move-result v0

    goto :goto_0
.end method

.method private onOverscrollRefreshUpdate(F)V
    .locals 1
    .param p1, "delta"    # F
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 2637
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mOverscrollRefreshHandler:Lorg/chromium/content/browser/OverscrollRefreshHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mOverscrollRefreshHandler:Lorg/chromium/content/browser/OverscrollRefreshHandler;

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/OverscrollRefreshHandler;->pull(F)V

    .line 2638
    :cond_0
    return-void
.end method

.method private onPinchBeginEventAck()V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1326
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->updateGestureStateListener(I)V

    .line 1327
    return-void
.end method

.method private onPinchEndEventAck()V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1332
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->updateGestureStateListener(I)V

    .line 1333
    return-void
.end method

.method private onRenderProcessChange()V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 2737
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->attachImeAdapter()V

    .line 2739
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSystemCaptioningBridge:Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge;

    invoke-interface {v0, p0}, Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge;->syncToListener(Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;)V

    .line 2740
    return-void
.end method

.method private onScrollBeginEventAck()V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1300
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->setTouchScrollInProgress(Z)V

    .line 1301
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePastePopup()V

    .line 1302
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomControlsDelegate:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;->invokeZoomPicker()V

    .line 1303
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->updateGestureStateListener(I)V

    .line 1304
    return-void
.end method

.method private onScrollEndEventAck()V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1319
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->setTouchScrollInProgress(Z)V

    .line 1320
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->updateGestureStateListener(I)V

    .line 1321
    return-void
.end method

.method private onScrollUpdateGestureConsumed()V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1309
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomControlsDelegate:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;->invokeZoomPicker()V

    .line 1310
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    .line 1311
    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1312
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/GestureStateListener;->onScrollUpdateGestureConsumed()V

    goto :goto_0

    .line 1314
    :cond_0
    return-void
.end method

.method private onSelectionChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 2655
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mLastSelectedText:Ljava/lang/String;

    .line 2656
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContextualSearchClient:Lorg/chromium/content/browser/ContextualSearchClient;

    if-eqz v0, :cond_0

    .line 2657
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContextualSearchClient:Lorg/chromium/content/browser/ContextualSearchClient;

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/ContextualSearchClient;->onSelectionChanged(Ljava/lang/String;)V

    .line 2659
    :cond_0
    return-void
.end method

.method private onSelectionEvent(IIIIIII)V
    .locals 3
    .param p1, "eventType"    # I
    .param p2, "xAnchor"    # I
    .param p3, "yAnchor"    # I
    .param p4, "left"    # I
    .param p5, "top"    # I
    .param p6, "right"    # I
    .param p7, "bottom"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2309
    if-ne p4, p6, :cond_0

    add-int/lit8 p6, p6, 0x1

    .line 2310
    :cond_0
    if-ne p5, p7, :cond_1

    add-int/lit8 p7, p7, 0x1

    .line 2311
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 2390
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Invalid selection event type."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2313
    :pswitch_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p4, p5, p6, p7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2314
    iput-boolean v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    .line 2315
    iput-boolean v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mUnselectAllOnActionModeDismiss:Z

    .line 2318
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    .line 2319
    invoke-direct {p0, v2}, Lorg/chromium/content/browser/ContentViewCore;->showSelectActionMode(Z)V

    .line 2392
    :cond_2
    :goto_0
    :pswitch_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContextualSearchClient:Lorg/chromium/content/browser/ContextualSearchClient;

    if-eqz v0, :cond_3

    .line 2393
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContextualSearchClient:Lorg/chromium/content/browser/ContextualSearchClient;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-interface {v0, p1, v1, v2}, Lorg/chromium/content/browser/ContextualSearchClient;->onSelectionEvent(IFF)V

    .line 2395
    :cond_3
    return-void

    .line 2323
    :pswitch_2
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p4, p5, p6, p7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2324
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->invalidateActionModeContentRect()V

    goto :goto_0

    .line 2328
    :pswitch_3
    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    .line 2329
    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mDraggingSelection:Z

    .line 2330
    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mUnselectAllOnActionModeDismiss:Z

    .line 2331
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->hideSelectActionMode()V

    .line 2332
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 2336
    :pswitch_4
    iput-boolean v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mDraggingSelection:Z

    .line 2337
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->updateActionModeVisibility()V

    goto :goto_0

    .line 2341
    :pswitch_5
    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mDraggingSelection:Z

    .line 2342
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->updateActionModeVisibility()V

    goto :goto_0

    .line 2346
    :pswitch_6
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p4, p5, p6, p7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2347
    iput-boolean v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasInsertion:Z

    goto :goto_0

    .line 2351
    :pswitch_7
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p4, p5, p6, p7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2352
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->isScrollInProgress()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->isPastePopupShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2353
    invoke-direct {p0, p2, p3}, Lorg/chromium/content/browser/ContentViewCore;->showPastePopup(II)Z

    goto :goto_0

    .line 2355
    :cond_4
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePastePopup()V

    goto :goto_0

    .line 2360
    :pswitch_8
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWasPastePopupShowingOnInsertionDragStart:Z

    if-eqz v0, :cond_5

    .line 2361
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePastePopup()V

    .line 2365
    :goto_1
    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mWasPastePopupShowingOnInsertionDragStart:Z

    goto :goto_0

    .line 2363
    :cond_5
    invoke-direct {p0, p2, p3}, Lorg/chromium/content/browser/ContentViewCore;->showPastePopup(II)Z

    goto :goto_1

    .line 2369
    :pswitch_9
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePastePopup()V

    .line 2370
    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasInsertion:Z

    .line 2371
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectionRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 2375
    :pswitch_a
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->isPastePopupShowing()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWasPastePopupShowingOnInsertionDragStart:Z

    .line 2376
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePastePopup()V

    goto :goto_0

    .line 2380
    :pswitch_b
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWasPastePopupShowingOnInsertionDragStart:Z

    if-eqz v0, :cond_6

    .line 2381
    invoke-direct {p0, p2, p3}, Lorg/chromium/content/browser/ContentViewCore;->showPastePopup(II)Z

    .line 2383
    :cond_6
    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mWasPastePopupShowingOnInsertionDragStart:Z

    goto :goto_0

    .line 2311
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private onShowUnhandledTapUIIfNeeded(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1348
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContextualSearchClient:Lorg/chromium/content/browser/ContextualSearchClient;

    if-eqz v0, :cond_0

    .line 1349
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContextualSearchClient:Lorg/chromium/content/browser/ContextualSearchClient;

    invoke-interface {v0, p1, p2}, Lorg/chromium/content/browser/ContextualSearchClient;->showUnhandledTapUIIfNeeded(II)V

    .line 1351
    :cond_0
    return-void
.end method

.method private onSingleTapEventAck(ZII)V
    .locals 1
    .param p1, "consumed"    # Z
    .param p2, "x"    # I
    .param p3, "y"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1338
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    .line 1339
    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1340
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/content_public/browser/GestureStateListener;->onSingleTap(ZII)V

    goto :goto_0

    .line 1342
    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePastePopup()V

    .line 1343
    return-void
.end method

.method private onSmartClipDataExtracted(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "html"    # Ljava/lang/String;
    .param p3, "clipRect"    # Landroid/graphics/Rect;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 3291
    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v3}, Lorg/chromium/content/browser/RenderCoordinates;->getDeviceScaleFactor()F

    move-result v0

    .line 3292
    .local v0, "deviceScale":F
    iget v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mSmartClipOffsetX:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v1, v3

    .line 3293
    .local v1, "offsetXInDp":I
    iget v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mSmartClipOffsetY:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v2, v3

    .line 3294
    .local v2, "offsetYInDp":I
    neg-int v3, v1

    neg-int v4, v2

    invoke-virtual {p3, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 3296
    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mSmartClipDataListener:Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;

    if-eqz v3, :cond_0

    .line 3297
    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mSmartClipDataListener:Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;

    invoke-interface {v3, p1, p2, p3}, Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;->onSmartClipDataExtracted(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 3299
    :cond_0
    return-void
.end method

.method private onTouchEventImpl(Landroid/view/MotionEvent;Z)Z
    .locals 39
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "isTouchHandleEvent"    # Z

    .prologue
    .line 1186
    const-string v2, "onTouchEvent"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 1188
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 1190
    .local v8, "eventAction":I
    if-nez v8, :cond_0

    .line 1191
    invoke-direct/range {p0 .. p0}, Lorg/chromium/content/browser/ContentViewCore;->cancelRequestToScrollFocusedEditableNodeIntoView()V

    .line 1194
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/chromium/content/browser/SPenSupport;->isSPenSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1195
    invoke-static {v8}, Lorg/chromium/content/browser/SPenSupport;->convertSPenEventAction(I)I

    move-result v8

    .line 1197
    :cond_1
    invoke-static {v8}, Lorg/chromium/content/browser/ContentViewCore;->isValidTouchEventActionForNative(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    const/16 v33, 0x0

    .line 1245
    const-string v2, "onTouchEvent"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    :goto_0
    return v33

    .line 1199
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    const/16 v33, 0x0

    .line 1245
    const-string v2, "onTouchEvent"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    goto :goto_0

    .line 1202
    :cond_3
    const/16 v35, 0x0

    .line 1203
    .local v35, "offset":Landroid/view/MotionEvent;
    :try_start_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mCurrentTouchOffsetX:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mCurrentTouchOffsetY:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5

    .line 1204
    :cond_4
    invoke-direct/range {p0 .. p1}, Lorg/chromium/content/browser/ContentViewCore;->createOffsetMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v35

    .line 1205
    move-object/from16 p1, v35

    .line 1208
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    .line 1210
    .local v9, "pointerCount":I
    const/4 v2, 0x2

    new-array v0, v2, [F

    move-object/from16 v37, v0

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getTouchMajor()F

    move-result v3

    aput v3, v37, v2

    const/4 v3, 0x1

    const/4 v2, 0x1

    if-le v9, v2, :cond_7

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v2

    :goto_1
    aput v2, v37, v3

    .line 1212
    .local v37, "touchMajor":[F
    const/4 v2, 0x2

    new-array v0, v2, [F

    move-object/from16 v38, v0

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getTouchMinor()F

    move-result v3

    aput v3, v38, v2

    const/4 v3, 0x1

    const/4 v2, 0x1

    if-le v9, v2, :cond_8

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getTouchMinor(I)F

    move-result v2

    :goto_2
    aput v2, v38, v3

    .line 1215
    .local v38, "touchMinor":[F
    const/16 v34, 0x0

    .local v34, "i":I
    :goto_3
    const/4 v2, 0x2

    move/from16 v0, v34

    if-ge v0, v2, :cond_9

    .line 1216
    aget v2, v37, v34

    aget v3, v38, v34

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    .line 1217
    aget v36, v37, v34

    .line 1218
    .local v36, "tmp":F
    aget v2, v38, v34

    aput v2, v37, v34

    .line 1219
    aput v36, v38, v34

    .line 1215
    .end local v36    # "tmp":F
    :cond_6
    add-int/lit8 v34, v34, 0x1

    goto :goto_3

    .line 1210
    .end local v34    # "i":I
    .end local v37    # "touchMajor":[F
    .end local v38    # "touchMinor":[F
    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    .line 1212
    .restart local v37    # "touchMajor":[F
    :cond_8
    const/4 v2, 0x0

    goto :goto_2

    .line 1223
    .restart local v34    # "i":I
    .restart local v38    # "touchMinor":[F
    :cond_9
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    const/4 v2, 0x1

    if-le v9, v2, :cond_b

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    :goto_4
    const/4 v2, 0x1

    if-le v9, v2, :cond_c

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    :goto_5
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v16

    const/4 v2, 0x1

    if-le v9, v2, :cond_d

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    :goto_6
    const/4 v2, 0x0

    aget v18, v37, v2

    const/4 v2, 0x1

    aget v19, v37, v2

    const/4 v2, 0x0

    aget v20, v38, v2

    const/4 v2, 0x1

    aget v21, v38, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getOrientation()F

    move-result v22

    const/4 v2, 0x1

    if-le v9, v2, :cond_e

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getOrientation(I)F

    move-result v23

    :goto_7
    const/16 v2, 0x19

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v24

    const/4 v2, 0x1

    if-le v9, v2, :cond_f

    const/16 v2, 0x19

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v25

    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v26

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v27

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v28

    const/4 v2, 0x1

    if-le v9, v2, :cond_10

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v29

    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v30

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v31

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v32, p2

    invoke-direct/range {v2 .. v32}, Lorg/chromium/content/browser/ContentViewCore;->nativeOnTouchEvent(JLandroid/view/MotionEvent;JIIIIFFFFIIFFFFFFFFFFIIIIZ)Z

    move-result v33

    .line 1242
    .local v33, "consumed":Z
    if-eqz v35, :cond_a

    invoke-virtual/range {v35 .. v35}, Landroid/view/MotionEvent;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1245
    :cond_a
    const-string v2, "onTouchEvent"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1223
    .end local v33    # "consumed":Z
    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_4

    :cond_c
    const/4 v15, 0x0

    goto :goto_5

    :cond_d
    const/16 v17, -0x1

    goto :goto_6

    :cond_e
    const/16 v23, 0x0

    goto :goto_7

    :cond_f
    const/16 v25, 0x0

    goto :goto_8

    :cond_10
    const/16 v29, 0x0

    goto :goto_9

    .line 1245
    .end local v8    # "eventAction":I
    .end local v9    # "pointerCount":I
    .end local v34    # "i":I
    .end local v35    # "offset":Landroid/view/MotionEvent;
    .end local v37    # "touchMajor":[F
    .end local v38    # "touchMinor":[F
    :catchall_0
    move-exception v2

    const-string v3, "onTouchEvent"

    invoke-static {v3}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v2
.end method

.method private requestDisallowInterceptTouchEvent()V
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1251
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1252
    return-void
.end method

.method private resetGestureDetection()V
    .locals 4

    .prologue
    .line 1503
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1505
    :goto_0
    return-void

    .line 1504
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeResetGestureDetection(J)V

    goto :goto_0
.end method

.method private resetScrollInProgress()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3331
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->isScrollInProgress()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3340
    :cond_0
    :goto_0
    return-void

    .line 3333
    :cond_1
    iget-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchScrollInProgress:Z

    .line 3334
    .local v1, "touchScrollInProgress":Z
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPotentiallyActiveFlingCount:I

    .line 3336
    .local v0, "potentiallyActiveFlingCount":I
    invoke-direct {p0, v3}, Lorg/chromium/content/browser/ContentViewCore;->setTouchScrollInProgress(Z)V

    .line 3337
    iput v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mPotentiallyActiveFlingCount:I

    .line 3338
    if-eqz v1, :cond_2

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lorg/chromium/content/browser/ContentViewCore;->updateGestureStateListener(I)V

    .line 3339
    :cond_2
    if-lez v0, :cond_0

    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Lorg/chromium/content/browser/ContentViewCore;->updateGestureStateListener(I)V

    goto :goto_0
.end method

.method private restoreSelectionPopupsIfNecessary()V
    .locals 1

    .prologue
    .line 1488
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->showSelectActionMode(Z)V

    .line 1489
    :cond_0
    return-void
.end method

.method private setTextHandlesTemporarilyHidden(Z)V
    .locals 4
    .param p1, "hide"    # Z

    .prologue
    .line 2402
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2404
    :goto_0
    return-void

    .line 2403
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeSetTextHandlesTemporarilyHidden(JZ)V

    goto :goto_0
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 2535
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewClient;->onUpdateTitle(Ljava/lang/String;)V

    .line 2536
    return-void
.end method

.method private setTouchScrollInProgress(Z)V
    .locals 1
    .param p1, "inProgress"    # Z

    .prologue
    .line 1274
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchScrollInProgress:Z

    if-ne v0, p1, :cond_0

    .line 1277
    :goto_0
    return-void

    .line 1275
    :cond_0
    iput-boolean p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchScrollInProgress:Z

    .line 1276
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->updateActionModeVisibility()V

    goto :goto_0
.end method

.method private shouldBlockMediaRequest(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 3365
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewClient;->shouldBlockMediaRequest(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private showDisambiguationPopup(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "targetRect"    # Landroid/graphics/Rect;
    .param p2, "zoomedBitmap"    # Landroid/graphics/Bitmap;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 2608
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v0, p2}, Lorg/chromium/content/browser/PopupZoomer;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2609
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/PopupZoomer;->show(Landroid/graphics/Rect;)V

    .line 2610
    return-void
.end method

.method private showPastePopup(II)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x0

    .line 2682
    iget-object v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    .line 2695
    :cond_0
    :goto_0
    return v3

    .line 2686
    :cond_1
    iget-boolean v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasInsertion:Z

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->canPaste()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2687
    iget-object v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v4}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v0

    .line 2688
    .local v0, "contentOffsetYPix":F
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->getPastePopup()Lorg/chromium/content/browser/input/PastePopupMenu;

    move-result-object v2

    .line 2689
    .local v2, "pastePopupMenu":Lorg/chromium/content/browser/input/PastePopupMenu;
    if-eqz v2, :cond_0

    .line 2691
    int-to-float v4, p2

    add-float/2addr v4, v0

    float-to-int v4, v4

    :try_start_0
    invoke-interface {v2, p1, v4}, Lorg/chromium/content/browser/input/PastePopupMenu;->show(II)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2695
    const/4 v3, 0x1

    goto :goto_0

    .line 2692
    :catch_0
    move-exception v1

    .line 2693
    .local v1, "e":Landroid/view/WindowManager$BadTokenException;
    goto :goto_0
.end method

.method private showPastePopupWithFeedback(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2666
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/ContentViewCore;->showPastePopup(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2667
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    .line 2668
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->onContextMenuOpened()V

    .line 2669
    :cond_0
    const/4 v0, 0x1

    .line 2671
    :cond_1
    return v0
.end method

.method private showSelectActionMode(Z)V
    .locals 3
    .param p1, "allowFallbackIfFloatingActionModeCreationFails"    # Z

    .prologue
    .line 2016
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    if-eqz v1, :cond_1

    .line 2017
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    invoke-virtual {v1}, Lorg/chromium/content/browser/WebActionMode;->invalidate()V

    .line 2227
    :cond_0
    :goto_0
    return-void

    .line 2022
    :cond_1
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionHandler:Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

    if-nez v1, :cond_2

    .line 2023
    new-instance v1, Lorg/chromium/content/browser/ContentViewCore$6;

    invoke-direct {v1, p0}, Lorg/chromium/content/browser/ContentViewCore$6;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    iput-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionHandler:Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

    .line 2209
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    .line 2211
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2212
    sget-boolean v1, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2213
    :cond_3
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/ContentViewCore;->startActionMode(Z)Landroid/view/ActionMode;

    move-result-object v0

    .line 2214
    .local v0, "actionMode":Landroid/view/ActionMode;
    if-eqz v0, :cond_4

    new-instance v1, Lorg/chromium/content/browser/WebActionMode;

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-direct {v1, v0, v2}, Lorg/chromium/content/browser/WebActionMode;-><init>(Landroid/view/ActionMode;Landroid/view/View;)V

    iput-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    .line 2216
    .end local v0    # "actionMode":Landroid/view/ActionMode;
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mUnselectAllOnActionModeDismiss:Z

    .line 2217
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    if-nez v1, :cond_5

    .line 2219
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->clearSelection()V

    goto :goto_0

    .line 2223
    :cond_5
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->supportsFloatingActionMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2224
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewClient;->onContextualActionBarShown()V

    goto :goto_0
.end method

.method private showSelectPopup(JLandroid/graphics/Rect;[Ljava/lang/String;[IZ[IZ)V
    .locals 13
    .param p1, "nativeSelectPopupSourceFrame"    # J
    .param p3, "bounds"    # Landroid/graphics/Rect;
    .param p4, "items"    # [Ljava/lang/String;
    .param p5, "enabled"    # [I
    .param p6, "multiple"    # Z
    .param p7, "selectedIndices"    # [I
    .param p8, "rightAligned"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 2550
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 2551
    :cond_0
    iput-wide p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeSelectPopupSourceFrame:J

    .line 2552
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/chromium/content/browser/ContentViewCore;->selectPopupMenuItems([I)V

    .line 2576
    :cond_1
    :goto_0
    return-void

    .line 2556
    :cond_2
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopupsAndClearSelection()V

    .line 2557
    sget-boolean v2, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeSelectPopupSourceFrame:J

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Zombie popup did not clear the frame source"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 2559
    :cond_3
    sget-boolean v2, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    move-object/from16 v0, p4

    array-length v2, v0

    move-object/from16 v0, p5

    array-length v3, v0

    if-eq v2, v3, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 2560
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2561
    .local v4, "popupItems":Ljava/util/List;, "Ljava/util/List<Lorg/chromium/content/browser/input/SelectPopupItem;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    move-object/from16 v0, p4

    array-length v2, v0

    if-ge v11, v2, :cond_5

    .line 2562
    new-instance v2, Lorg/chromium/content/browser/input/SelectPopupItem;

    aget-object v3, p4, v11

    aget v5, p5, v11

    invoke-direct {v2, v3, v5}, Lorg/chromium/content/browser/input/SelectPopupItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2561
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2564
    :cond_5
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez p6, :cond_6

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2565
    new-instance v2, Lorg/chromium/content/browser/input/SelectPopupDropdown;

    move-object v3, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v2 .. v7}, Lorg/chromium/content/browser/input/SelectPopupDropdown;-><init>(Lorg/chromium/content/browser/ContentViewCore;Ljava/util/List;Landroid/graphics/Rect;[IZ)V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectPopup:Lorg/chromium/content/browser/input/SelectPopup;

    .line 2574
    :goto_2
    iput-wide p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeSelectPopupSourceFrame:J

    .line 2575
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectPopup:Lorg/chromium/content/browser/input/SelectPopup;

    invoke-interface {v2}, Lorg/chromium/content/browser/input/SelectPopup;->show()V

    goto :goto_0

    .line 2568
    :cond_6
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2569
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    .line 2570
    .local v7, "windowContext":Landroid/content/Context;
    if-eqz v7, :cond_1

    .line 2571
    new-instance v5, Lorg/chromium/content/browser/input/SelectPopupDialog;

    move-object v6, p0

    move-object v8, v4

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v5 .. v10}, Lorg/chromium/content/browser/input/SelectPopupDialog;-><init>(Lorg/chromium/content/browser/ContentViewCore;Landroid/content/Context;Ljava/util/List;Z[I)V

    iput-object v5, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectPopup:Lorg/chromium/content/browser/input/SelectPopup;

    goto :goto_2
.end method

.method private startActionMode(Z)Landroid/view/ActionMode;
    .locals 4
    .param p1, "allowFallbackIfFloatingActionModeCreationFails"    # Z

    .prologue
    .line 2235
    new-instance v1, Lorg/chromium/content/browser/WebActionModeCallback;

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionHandler:Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

    invoke-direct {v1, v2, v3}, Lorg/chromium/content/browser/WebActionModeCallback;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;)V

    .line 2237
    .local v1, "callback":Lorg/chromium/content/browser/WebActionModeCallback;
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->supportsFloatingActionMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2238
    invoke-direct {p0, v1}, Lorg/chromium/content/browser/ContentViewCore;->startFloatingActionMode(Lorg/chromium/content/browser/WebActionModeCallback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 2239
    .local v0, "actionMode":Landroid/view/ActionMode;
    if-eqz v0, :cond_0

    .line 2243
    .end local v0    # "actionMode":Landroid/view/ActionMode;
    :goto_0
    return-object v0

    .line 2240
    .restart local v0    # "actionMode":Landroid/view/ActionMode;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mFloatingActionModeCreationFailed:Z

    .line 2241
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 2243
    .end local v0    # "actionMode":Landroid/view/ActionMode;
    :cond_1
    invoke-direct {p0, v1}, Lorg/chromium/content/browser/ContentViewCore;->startDefaultActionMode(Lorg/chromium/content/browser/WebActionModeCallback;)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_0
.end method

.method private startContentIntent(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "contentUrl"    # Ljava/lang/String;
    .param p2, "isMainFrame"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 3007
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/chromium/content/browser/ContentViewClient;->onStartContentIntent(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 3008
    return-void
.end method

.method private startDefaultActionMode(Lorg/chromium/content/browser/WebActionModeCallback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Lorg/chromium/content/browser/WebActionModeCallback;

    .prologue
    .line 2247
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method private startFloatingActionMode(Lorg/chromium/content/browser/WebActionModeCallback;)Landroid/view/ActionMode;
    .locals 3
    .param p1, "callback"    # Lorg/chromium/content/browser/WebActionModeCallback;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 2252
    new-instance v0, Lorg/chromium/content/browser/FloatingWebActionModeCallback;

    invoke-direct {v0, p1}, Lorg/chromium/content/browser/FloatingWebActionModeCallback;-><init>(Lorg/chromium/content/browser/WebActionModeCallback;)V

    .line 2253
    .local v0, "callback2":Landroid/view/ActionMode$Callback2;
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v1

    return-object v1
.end method

.method private supportsFloatingActionMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2230
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1

    .line 2231
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFloatingActionModeCreationFailed:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateActionModeVisibility()V
    .locals 2

    .prologue
    .line 2261
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    if-nez v0, :cond_0

    .line 2266
    :goto_0
    return-void

    .line 2265
    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mDraggingSelection:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchScrollInProgress:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/WebActionMode;->hide(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateAfterSizeChanged()V
    .locals 3

    .prologue
    .line 1630
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/PopupZoomer;->hide(Z)V

    .line 1634
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusPreOSKViewportRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1635
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1636
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1637
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusPreOSKViewportRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1639
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusPreOSKViewportRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1640
    sget-boolean v1, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1641
    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->scrollFocusedEditableNodeIntoView()V

    .line 1643
    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->cancelRequestToScrollFocusedEditableNodeIntoView()V

    .line 1646
    .end local v0    # "rect":Landroid/graphics/Rect;
    :cond_2
    return-void
.end method

.method private updateForTapOrPress(IFF)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "xPix"    # F
    .param p3, "yPix"    # F

    .prologue
    .line 1941
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    .line 1956
    :goto_0
    return-void

    .line 1948
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1950
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 1953
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v0}, Lorg/chromium/content/browser/PopupZoomer;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v0, p2, p3}, Lorg/chromium/content/browser/PopupZoomer;->setLastTouch(FF)V

    .line 1954
    :cond_2
    iput p2, p0, Lorg/chromium/content/browser/ContentViewCore;->mLastFocalEventX:F

    .line 1955
    iput p3, p0, Lorg/chromium/content/browser/ContentViewCore;->mLastFocalEventY:F

    goto :goto_0
.end method

.method private updateFrameInfo(FFFFFFFFFFFZZZFFF)V
    .locals 22
    .param p1, "scrollOffsetX"    # F
    .param p2, "scrollOffsetY"    # F
    .param p3, "pageScaleFactor"    # F
    .param p4, "minPageScaleFactor"    # F
    .param p5, "maxPageScaleFactor"    # F
    .param p6, "contentWidth"    # F
    .param p7, "contentHeight"    # F
    .param p8, "viewportWidth"    # F
    .param p9, "viewportHeight"    # F
    .param p10, "controlsOffsetYCss"    # F
    .param p11, "contentOffsetYCss"    # F
    .param p12, "isMobileOptimizedHint"    # Z
    .param p13, "hasInsertionMarker"    # Z
    .param p14, "isInsertionMarkerVisible"    # Z
    .param p15, "insertionMarkerHorizontal"    # F
    .param p16, "insertionMarkerTop"    # F
    .param p17, "insertionMarkerBottom"    # F
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 2418
    const-string v2, "ContentViewCore:updateFrameInfo"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 2419
    move/from16 v0, p12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/chromium/content/browser/ContentViewCore;->mIsMobileOptimizedHint:Z

    .line 2422
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getDeviceScaleFactor()F

    move-result v16

    .line 2423
    .local v16, "deviceScale":F
    move-object/from16 v0, p0

    iget v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mViewportWidthPix:I

    int-to-float v2, v2

    mul-float v3, v16, p3

    div-float/2addr v2, v3

    move/from16 v0, p6

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result p6

    .line 2425
    move-object/from16 v0, p0

    iget v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mViewportHeightPix:I

    int-to-float v2, v2

    mul-float v3, v16, p3

    div-float/2addr v2, v3

    move/from16 v0, p7

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result p7

    .line 2427
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    move/from16 v0, p11

    invoke-virtual {v2, v0}, Lorg/chromium/content/browser/RenderCoordinates;->fromDipToPix(F)F

    move-result v12

    .line 2429
    .local v12, "contentOffsetYPix":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getContentWidthCss()F

    move-result v2

    cmpl-float v2, p6, v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getContentHeightCss()F

    move-result v2

    cmpl-float v2, p7, v2

    if-eqz v2, :cond_8

    :cond_0
    const/4 v14, 0x1

    .line 2432
    .local v14, "contentSizeChanged":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getMinPageScaleFactor()F

    move-result v2

    cmpl-float v2, p4, v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getMaxPageScaleFactor()F

    move-result v2

    cmpl-float v2, p5, v2

    if-eqz v2, :cond_9

    :cond_1
    const/16 v20, 0x1

    .line 2435
    .local v20, "scaleLimitsChanged":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getPageScaleFactor()F

    move-result v2

    cmpl-float v2, p3, v2

    if-eqz v2, :cond_a

    const/16 v19, 0x1

    .line 2437
    .local v19, "pageScaleChanged":Z
    :goto_2
    if-nez v19, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollX()F

    move-result v2

    cmpl-float v2, p1, v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollY()F

    move-result v2

    cmpl-float v2, p2, v2

    if-eqz v2, :cond_b

    :cond_2
    const/16 v21, 0x1

    .line 2441
    .local v21, "scrollChanged":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v2

    cmpl-float v2, v12, v2

    if-eqz v2, :cond_c

    const/4 v13, 0x1

    .line 2444
    .local v13, "contentOffsetChanged":Z
    :goto_4
    if-nez v14, :cond_3

    if-eqz v21, :cond_d

    :cond_3
    const/16 v17, 0x1

    .line 2445
    .local v17, "needHidePopupZoomer":Z
    :goto_5
    if-nez v20, :cond_4

    if-eqz v21, :cond_e

    :cond_4
    const/16 v18, 0x1

    .line 2447
    .local v18, "needUpdateZoomControls":Z
    :goto_6
    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/chromium/content/browser/PopupZoomer;->hide(Z)V

    .line 2449
    :cond_5
    if-eqz v21, :cond_6

    .line 2450
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v5}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollXPix()F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v6}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollYPix()F

    move-result v6

    float-to-int v6, v6

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->onScrollChanged(IIII)V

    .line 2457
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v2 .. v12}, Lorg/chromium/content/browser/RenderCoordinates;->updateFrameInfo(FFFFFFFFFF)V

    .line 2464
    if-nez v21, :cond_7

    if-eqz v13, :cond_f

    .line 2465
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v2}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    .line 2466
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v2}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2467
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v2}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollOffset()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollExtent()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/chromium/content_public/browser/GestureStateListener;->onScrollOffsetOrExtentChanged(II)V

    goto :goto_7

    .line 2429
    .end local v13    # "contentOffsetChanged":Z
    .end local v14    # "contentSizeChanged":Z
    .end local v17    # "needHidePopupZoomer":Z
    .end local v18    # "needUpdateZoomControls":Z
    .end local v19    # "pageScaleChanged":Z
    .end local v20    # "scaleLimitsChanged":Z
    .end local v21    # "scrollChanged":Z
    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 2432
    .restart local v14    # "contentSizeChanged":Z
    :cond_9
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 2435
    .restart local v20    # "scaleLimitsChanged":Z
    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 2437
    .restart local v19    # "pageScaleChanged":Z
    :cond_b
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 2441
    .restart local v21    # "scrollChanged":Z
    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 2444
    .restart local v13    # "contentOffsetChanged":Z
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 2445
    .restart local v17    # "needHidePopupZoomer":Z
    :cond_e
    const/16 v18, 0x0

    goto/16 :goto_6

    .line 2473
    .restart local v18    # "needUpdateZoomControls":Z
    :cond_f
    if-eqz v18, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mZoomControlsDelegate:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    invoke-interface {v2}, Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;->updateZoomControls()V

    .line 2476
    :cond_10
    mul-float v15, p10, v16

    .line 2478
    .local v15, "controlsOffsetPix":F
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v2

    invoke-virtual {v2, v15, v12}, Lorg/chromium/content/browser/ContentViewClient;->onOffsetsForFullscreenChanged(FF)V

    .line 2481
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    if-eqz v2, :cond_11

    .line 2482
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    invoke-virtual {v2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->notifyFrameInfoInitialized()V

    .line 2485
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    move/from16 v4, p13

    move/from16 v5, p14

    move/from16 v6, p15

    move/from16 v7, p16

    move/from16 v8, p17

    invoke-virtual/range {v2 .. v8}, Lorg/chromium/content/browser/input/ImeAdapter;->onUpdateFrameInfo(Lorg/chromium/content/browser/RenderCoordinates;ZZFFF)V

    .line 2489
    const-string v2, "ContentViewCore:updateFrameInfo"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 2490
    return-void
.end method

.method private updateImeAdapter(JIILjava/lang/String;IIIIZZ)V
    .locals 11
    .param p1, "nativeImeAdapterAndroid"    # J
    .param p3, "textInputType"    # I
    .param p4, "textInputFlags"    # I
    .param p5, "text"    # Ljava/lang/String;
    .param p6, "selectionStart"    # I
    .param p7, "selectionEnd"    # I
    .param p8, "compositionStart"    # I
    .param p9, "compositionEnd"    # I
    .param p10, "showImeIfNeeded"    # Z
    .param p11, "isNonImeChange"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 2498
    :try_start_0
    const-string v1, "ContentViewCore.updateImeAdapter"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 2499
    if-eqz p3, :cond_4

    const/4 v9, 0x1

    .line 2500
    .local v9, "focusedNodeEditable":Z
    :goto_0
    const/4 v1, 0x2

    if-ne p3, v1, :cond_5

    const/4 v10, 0x1

    .line 2501
    .local v10, "focusedNodeIsPassword":Z
    :goto_1
    if-nez v9, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePastePopup()V

    .line 2503
    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v1, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapter;->attach(J)V

    .line 2504
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    move/from16 v0, p10

    invoke-virtual {v1, p3, p4, v0}, Lorg/chromium/content/browser/input/ImeAdapter;->updateKeyboardVisibility(IIZ)V

    .line 2506
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    move-object/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p11

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/content/browser/input/ImeAdapter;->updateState(Ljava/lang/String;IIIIZ)V

    .line 2509
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    if-eqz v1, :cond_2

    .line 2510
    iget-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeEditable:Z

    if-ne v9, v1, :cond_1

    iget-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeIsPassword:Z

    if-eq v10, v1, :cond_6

    :cond_1
    const/4 v8, 0x1

    .line 2513
    .local v8, "actionModeConfigurationChanged":Z
    :goto_2
    if-eqz v8, :cond_2

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    invoke-virtual {v1}, Lorg/chromium/content/browser/WebActionMode;->invalidate()V

    .line 2516
    .end local v8    # "actionModeConfigurationChanged":Z
    :cond_2
    iput-boolean v10, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeIsPassword:Z

    .line 2517
    iget-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeEditable:Z

    if-eq v9, v1, :cond_3

    .line 2518
    iput-boolean v9, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeEditable:Z

    .line 2519
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mJoystickScrollProvider:Lorg/chromium/content/browser/input/JoystickScrollProvider;

    iget-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeEditable:Z

    if-nez v1, :cond_7

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v2, v1}, Lorg/chromium/content/browser/input/JoystickScrollProvider;->setEnabled(Z)V

    .line 2520
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v1

    iget-boolean v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeEditable:Z

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/ContentViewClient;->onFocusedNodeEditabilityChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2523
    :cond_3
    const-string v1, "ContentViewCore.updateImeAdapter"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 2525
    return-void

    .line 2499
    .end local v9    # "focusedNodeEditable":Z
    .end local v10    # "focusedNodeIsPassword":Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    .line 2500
    .restart local v9    # "focusedNodeEditable":Z
    :cond_5
    const/4 v10, 0x0

    goto :goto_1

    .line 2510
    .restart local v10    # "focusedNodeIsPassword":Z
    :cond_6
    const/4 v8, 0x0

    goto :goto_2

    .line 2519
    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    .line 2523
    .end local v9    # "focusedNodeEditable":Z
    .end local v10    # "focusedNodeIsPassword":Z
    :catchall_0
    move-exception v1

    const-string v2, "ContentViewCore.updateImeAdapter"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addContainerViewObserver(Lorg/chromium/content/browser/ContainerViewObserver;)V
    .locals 1
    .param p1, "observer"    # Lorg/chromium/content/browser/ContainerViewObserver;

    .prologue
    .line 882
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 883
    return-void
.end method

.method public addGestureStateListener(Lorg/chromium/content_public/browser/GestureStateListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/chromium/content_public/browser/GestureStateListener;

    .prologue
    .line 1399
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 1400
    return-void
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 2931
    const-class v0, Lorg/chromium/content/browser/JavascriptInterface;

    invoke-virtual {p0, p1, p2, v0}, Lorg/chromium/content/browser/ContentViewCore;->addPossiblyUnsafeJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    .line 2932
    return-void
.end method

.method public addPossiblyUnsafeJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2978
    .local p3, "requiredAnnotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2979
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mJavaScriptInterfaces:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2980
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/chromium/content/browser/ContentViewCore;->nativeAddJavascriptInterface(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    .line 2982
    :cond_0
    return-void
.end method

.method public attachImeAdapter()V
    .locals 4

    .prologue
    .line 2746
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2747
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v2, v3}, Lorg/chromium/content/browser/ContentViewCore;->nativeGetNativeImeAdapter(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/chromium/content/browser/input/ImeAdapter;->attach(J)V

    .line 2749
    :cond_0
    return-void
.end method

.method public awakenScrollBars(IZ)Z
    .locals 1
    .param p1, "startDelay"    # I
    .param p2, "invalidate"    # Z

    .prologue
    .line 1933
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollBarStyle()I

    move-result v0

    if-nez v0, :cond_0

    .line 1934
    const/4 v0, 0x0

    .line 1936
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    invoke-interface {v0, p1, p2}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->super_awakenScrollBars(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public canZoomIn()Z
    .locals 3

    .prologue
    .line 2770
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getMaxPageScaleFactor()F

    move-result v1

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getPageScaleFactor()F

    move-result v2

    sub-float v0, v1, v2

    .line 2772
    .local v0, "zoomInExtent":F
    const v1, 0x3be56042    # 0.007f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canZoomOut()Z
    .locals 3

    .prologue
    .line 2783
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getPageScaleFactor()F

    move-result v1

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getMinPageScaleFactor()F

    move-result v2

    sub-float v0, v1, v2

    .line 2785
    .local v0, "zoomOutExtent":F
    const v1, 0x3be56042    # 0.007f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cancelFling(J)V
    .locals 5
    .param p1, "timeMs"    # J

    .prologue
    .line 1390
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1392
    :goto_0
    return-void

    .line 1391
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/content/browser/ContentViewCore;->nativeFlingCancel(JJ)V

    goto :goto_0
.end method

.method public clearSelection()V
    .locals 1

    .prologue
    .line 2273
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeEditable:Z

    if-eqz v0, :cond_1

    .line 2274
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->moveCursorToSelectionEnd()V

    .line 2279
    :cond_0
    :goto_0
    return-void

    .line 2277
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->unselect()V

    goto :goto_0
.end method

.method public computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 1880
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getLastFrameViewportWidthPixInt()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 1888
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollXPixInt()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 1896
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getContentWidthPixInt()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 1904
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getLastFrameViewportHeightPixInt()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 1912
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollYPixInt()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 1920
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getContentHeightPixInt()I

    move-result v0

    return v0
.end method

.method public createContentViewAndroidDelegate()V
    .locals 3
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 840
    new-instance v0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-direct {v0, v1, v2}, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;-><init>(Landroid/view/ViewGroup;Lorg/chromium/content/browser/RenderCoordinates;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewAndroidDelegate:Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;

    .line 841
    return-void
.end method

.method public destroy()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 980
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 981
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeOnJavaContentViewCoreDestroyed(J)V

    .line 983
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/WebContentsObserver;->destroy()V

    .line 984
    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;

    .line 985
    invoke-virtual {p0, v2}, Lorg/chromium/content/browser/ContentViewCore;->setSmartClipDataListener(Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;)V

    .line 986
    invoke-virtual {p0, v2}, Lorg/chromium/content/browser/ContentViewCore;->setZoomControlsDelegate(Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;)V

    .line 987
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->resetAndHideKeyboard()V

    .line 993
    new-instance v0, Lorg/chromium/content/browser/ContentViewClient;

    invoke-direct {v0}, Lorg/chromium/content/browser/ContentViewClient;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    .line 994
    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    .line 995
    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mOverscrollRefreshHandler:Lorg/chromium/content/browser/OverscrollRefreshHandler;

    .line 996
    iput-wide v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    .line 997
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mJavaScriptInterfaces:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 998
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRetainedJavaScriptObjects:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 999
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1000
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/GestureStateListener;->onDestroyed()V

    goto :goto_0

    .line 1002
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->clear()V

    .line 1003
    invoke-static {}, Lorg/chromium/content/browser/ScreenOrientationListener;->getInstance()Lorg/chromium/content/browser/ScreenOrientationListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/content/browser/ScreenOrientationListener;->removeObserver(Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationObserver;)V

    .line 1004
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->clear()V

    .line 1005
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopupsAndPreserveSelection()V

    .line 1006
    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    .line 1009
    return-void
.end method

.method public didOverscroll(ZZ)V
    .locals 3
    .param p1, "clampedX"    # Z
    .param p2, "clampedY"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 3414
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollXPixInt()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollYPixInt()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/chromium/content/browser/ContentViewClient;->onOverScrolled(IIZZ)V

    .line 3418
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1714
    invoke-static {p1}, Lorg/chromium/content/browser/input/GamepadList;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1721
    :cond_0
    :goto_0
    return v0

    .line 1715
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/chromium/content/browser/ContentViewClient;->shouldOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1716
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->super_dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1719
    :cond_2
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v1, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1721
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->super_dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1703
    :try_start_0
    const-string v0, "ContentViewCore.dispatchKeyEventPreIme"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 1704
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->super_dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1706
    const-string v1, "ContentViewCore.dispatchKeyEventPreIme"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v0

    const-string v1, "ContentViewCore.dispatchKeyEventPreIme"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0
.end method

.method public doTopControlsShrinkBlinkSize()Z
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1099
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTopControlsShrinkBlinkSize:Z

    return v0
.end method

.method public extractSmartClipData(IIII)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 3260
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 3261
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSmartClipOffsetX:I

    add-int/2addr p1, v0

    .line 3262
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSmartClipOffsetY:I

    add-int/2addr p2, v0

    .line 3263
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/chromium/content/browser/ContentViewCore;->nativeExtractSmartClipData(JIIII)V

    .line 3265
    :cond_0
    return-void
.end method

.method public flingViewport(JII)V
    .locals 11
    .param p1, "timeMs"    # J
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 1379
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1383
    :goto_0
    return-void

    .line 1380
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/content/browser/ContentViewCore;->nativeFlingCancel(JJ)V

    .line 1381
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    int-to-float v8, p3

    int-to-float v9, p4

    move-object v1, p0

    move-wide v4, p1

    move v7, v6

    invoke-direct/range {v1 .. v10}, Lorg/chromium/content/browser/ContentViewCore;->nativeScrollBegin(JJFFFFZ)V

    .line 1382
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    int-to-float v8, p3

    int-to-float v9, p4

    move-object v1, p0

    move-wide v4, p1

    move v7, v6

    invoke-direct/range {v1 .. v10}, Lorg/chromium/content/browser/ContentViewCore;->nativeFlingStart(JJFFFFZ)V

    goto :goto_0
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 3074
    iget-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mIsObscuredByAnotherView:Z

    if-eqz v1, :cond_1

    .line 3086
    :cond_0
    :goto_0
    return-object v0

    .line 3076
    :cond_1
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    if-eqz v1, :cond_2

    .line 3077
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    invoke-virtual {v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    goto :goto_0

    .line 3080
    :cond_2
    iget-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeAccessibilityAllowed:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeAccessibilityEnabled:Z

    if-nez v1, :cond_0

    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 3082
    iput-boolean v6, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeAccessibilityEnabled:Z

    .line 3083
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v2, v3, v6}, Lorg/chromium/content/browser/ContentViewCore;->nativeSetAccessibilityEnabled(JZ)V

    goto :goto_0
.end method

.method public getBrowserAccessibilityManager()Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;
    .locals 1

    .prologue
    .line 3063
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    return-object v0
.end method

.method public getContainerView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getContentHeightCss()F
    .locals 1

    .prologue
    .line 1127
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getContentHeightCss()F

    move-result v0

    return v0
.end method

.method getContentVideoViewEmbedder()Lorg/chromium/content/browser/ContentVideoViewEmbedder;
    .locals 1

    .prologue
    .line 3360
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewClient;->getContentVideoViewEmbedder()Lorg/chromium/content/browser/ContentVideoViewEmbedder;

    move-result-object v0

    return-object v0
.end method

.method public getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 1037
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    if-nez v0, :cond_0

    .line 1041
    new-instance v0, Lorg/chromium/content/browser/ContentViewClient;

    invoke-direct {v0}, Lorg/chromium/content/browser/ContentViewClient;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    .line 1046
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    return-object v0
.end method

.method public getContentWidthCss()F
    .locals 1

    .prologue
    .line 1134
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getContentWidthCss()F

    move-result v0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 665
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentRenderProcessId()I
    .locals 2

    .prologue
    .line 1457
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeGetCurrentRenderProcessId(J)I

    move-result v0

    return v0
.end method

.method public getDeviceScaleFactor()F
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 1112
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getDeviceScaleFactor()F

    move-result v0

    return v0
.end method

.method getDownloadDelegate()Lorg/chromium/content/browser/ContentViewDownloadDelegate;
    .locals 1

    .prologue
    .line 2007
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mDownloadDelegate:Lorg/chromium/content/browser/ContentViewDownloadDelegate;

    return-object v0
.end method

.method public getImeAdapterForTest()Lorg/chromium/content/browser/input/ImeAdapter;
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 732
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    return-object v0
.end method

.method public getIsMobileOptimizedHint()Z
    .locals 1

    .prologue
    .line 3251
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mIsMobileOptimizedHint:Z

    return v0
.end method

.method public getJavascriptInterfaces()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Class;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 2919
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mJavaScriptInterfaces:Ljava/util/Map;

    return-object v0
.end method

.method getNativeContentViewCore()J
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1025
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    return-wide v0
.end method

.method public getNativeScrollXForTest()I
    .locals 1

    .prologue
    .line 1866
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollXPixInt()I

    move-result v0

    return v0
.end method

.method public getNativeScrollYForTest()I
    .locals 1

    .prologue
    .line 1872
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollYPixInt()I

    move-result v0

    return v0
.end method

.method public getNewShowKeyboardReceiver()Landroid/os/ResultReceiver;
    .locals 2
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 3443
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mShowKeyboardResultReceiver:Lorg/chromium/content/browser/ContentViewCore$ShowKeyboardResultReceiver;

    if-nez v0, :cond_0

    .line 3445
    new-instance v0, Lorg/chromium/content/browser/ContentViewCore$ShowKeyboardResultReceiver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lorg/chromium/content/browser/ContentViewCore$ShowKeyboardResultReceiver;-><init>(Lorg/chromium/content/browser/ContentViewCore;Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mShowKeyboardResultReceiver:Lorg/chromium/content/browser/ContentViewCore$ShowKeyboardResultReceiver;

    .line 3447
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mShowKeyboardResultReceiver:Lorg/chromium/content/browser/ContentViewCore$ShowKeyboardResultReceiver;

    return-object v0
.end method

.method public getPageScaleFactor()F
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 1120
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getPageScaleFactor()F

    move-result v0

    return v0
.end method

.method public getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;
    .locals 1

    .prologue
    .line 3242
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    return-object v0
.end method

.method public getScale()F
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 3002
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getPageScaleFactor()F

    move-result v0

    return v0
.end method

.method public getSelectActionHandler()Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 2012
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionHandler:Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

    return-object v0
.end method

.method public getSelectPopupForTest()Lorg/chromium/content/browser/input/SelectPopup;
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 2602
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectPopup:Lorg/chromium/content/browser/input/SelectPopup;

    return-object v0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 1142
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mLastSelectedText:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getTopControlsHeightPix()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1104
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTopControlsHeightPix:I

    return v0
.end method

.method public getViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewAndroidDelegate:Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;

    return-object v0
.end method

.method public getViewportHeightPix()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1067
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewportHeightPix:I

    return v0
.end method

.method public getViewportHeightWithOSKHiddenPix()I
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1075
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewportHeightPix:I

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewClient;->getSystemWindowInsetBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getViewportWidthPix()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1059
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewportWidthPix:I

    return v0
.end method

.method public getWebContents()Lorg/chromium/content_public/browser/WebContents;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    return-object v0
.end method

.method public getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;
    .locals 4

    .prologue
    .line 686
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 687
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeGetJavaWindowAndroid(J)Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    goto :goto_0
.end method

.method public hasInsertion()Z
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 2301
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasInsertion:Z

    return v0
.end method

.method public hasSelection()Z
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 2293
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    return v0
.end method

.method public hideSelectActionMode()V
    .locals 1

    .prologue
    .line 1492
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    if-eqz v0, :cond_0

    .line 1493
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    invoke-virtual {v0}, Lorg/chromium/content/browser/WebActionMode;->finish()V

    .line 1494
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    .line 1496
    :cond_0
    return-void
.end method

.method initPopupZoomer(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 906
    new-instance v1, Lorg/chromium/content/browser/PopupZoomer;

    invoke-direct {v1, p1}, Lorg/chromium/content/browser/PopupZoomer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    .line 907
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    new-instance v2, Lorg/chromium/content/browser/ContentViewCore$3;

    invoke-direct {v2, p0}, Lorg/chromium/content/browser/ContentViewCore$3;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/PopupZoomer;->setOnVisibilityChangedListener(Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;)V

    .line 939
    new-instance v0, Lorg/chromium/content/browser/ContentViewCore$4;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/ContentViewCore$4;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 961
    .local v0, "listener":Lorg/chromium/content/browser/PopupZoomer$OnTapListener;
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/PopupZoomer;->setOnTapListener(Lorg/chromium/content/browser/PopupZoomer$OnTapListener;)V

    .line 962
    return-void
.end method

.method public initialize(Landroid/view/ViewGroup;Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 7
    .param p1, "containerView"    # Landroid/view/ViewGroup;
    .param p2, "internalDispatcher"    # Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;
    .param p3, "webContents"    # Lorg/chromium/content_public/browser/WebContents;
    .param p4, "windowAndroid"    # Lorg/chromium/ui/base/WindowAndroid;

    .prologue
    .line 803
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->createContentViewAndroidDelegate()V

    .line 804
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/ContentViewCore;->setContainerView(Landroid/view/ViewGroup;)V

    .line 805
    invoke-virtual {p4}, Lorg/chromium/ui/base/WindowAndroid;->getNativePointer()J

    move-result-wide v4

    .line 806
    .local v4, "windowNativePointer":J
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 808
    :cond_0
    sget-object v0, Lorg/chromium/content/browser/ContentViewCore;->NO_OP_ZOOM_CONTROLS_DELEGATE:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomControlsDelegate:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    .line 810
    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewAndroidDelegate:Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;

    iget-object v6, p0, Lorg/chromium/content/browser/ContentViewCore;->mRetainedJavaScriptObjects:Ljava/util/HashSet;

    move-object v1, p0

    move-object v2, p3

    invoke-direct/range {v1 .. v6}, Lorg/chromium/content/browser/ContentViewCore;->nativeInit(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/ui/base/ViewAndroidDelegate;JLjava/util/HashSet;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    .line 812
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeGetWebContentsAndroid(J)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    .line 814
    invoke-virtual {p0, p2}, Lorg/chromium/content/browser/ContentViewCore;->setContainerViewInternals(Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;)V

    .line 815
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->reset()V

    .line 816
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->initPopupZoomer(Landroid/content/Context;)V

    .line 817
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->createImeAdapter()Lorg/chromium/content/browser/input/ImeAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    .line 818
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->attachImeAdapter()V

    .line 820
    new-instance v0, Lorg/chromium/content/browser/ContentViewCore$ContentViewWebContentsObserver;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/ContentViewCore$ContentViewWebContentsObserver;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;

    .line 821
    return-void
.end method

.method public invokeZoomPicker()V
    .locals 1

    .prologue
    .line 2896
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomControlsDelegate:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;->invokeZoomPicker()V

    .line 2897
    return-void
.end method

.method public isAlive()Z
    .locals 4

    .prologue
    .line 1016
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocusedNodeEditable()Z
    .locals 1

    .prologue
    .line 1156
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeEditable:Z

    return v0
.end method

.method public isGamepadAPIActive()Z
    .locals 1

    .prologue
    .line 1163
    invoke-static {}, Lorg/chromium/content/browser/input/GamepadList;->isGamepadAPIActive()Z

    move-result v0

    return v0
.end method

.method public isPastePopupShowing()Z
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 2677
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/PastePopupMenu;->isShowing()Z

    move-result v0

    .line 2678
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollInProgress()Z
    .locals 1

    .prologue
    .line 1270
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchScrollInProgress:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPotentiallyActiveFlingCount:I

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectActionBarShowing()Z
    .locals 1

    .prologue
    .line 1499
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectionEditable()Z
    .locals 1

    .prologue
    .line 1149
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeEditable:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 1

    .prologue
    .line 3201
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchExplorationEnabled:Z

    return v0
.end method

.method public onAccessibilityStateChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 3012
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/ContentViewCore;->setAccessibilityState(Z)V

    .line 3013
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1512
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->setAccessibilityState(Z)V

    .line 1513
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->updateTextSelectionUI(Z)V

    .line 1514
    invoke-static {}, Lorg/chromium/content/browser/ScreenOrientationListener;->getInstance()Lorg/chromium/content/browser/ScreenOrientationListener;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, v1}, Lorg/chromium/content/browser/ScreenOrientationListener;->addObserver(Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationObserver;Landroid/content/Context;)V

    .line 1515
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/content/browser/input/GamepadList;->onAttachedToWindow(Landroid/content/Context;)V

    .line 1516
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 1517
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSystemCaptioningBridge:Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge;

    invoke-interface {v0, p0}, Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge;->addListener(Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;)V

    .line 1518
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 1578
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->hasTextInputType()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1587
    :try_start_0
    const-string v0, "ContentViewCore.onConfigurationChanged"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 1588
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->onKeyboardConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1589
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->super_onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1592
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1594
    const-string v0, "ContentViewCore.onConfigurationChanged"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 1596
    return-void

    .line 1594
    :catchall_0
    move-exception v0

    const-string v1, "ContentViewCore.onConfigurationChanged"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 1571
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    move-result-object v0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .prologue
    .line 1543
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomControlsDelegate:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;->dismissZoomPicker()V

    .line 1545
    invoke-static {}, Lorg/chromium/content/browser/ScreenOrientationListener;->getInstance()Lorg/chromium/content/browser/ScreenOrientationListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/content/browser/ScreenOrientationListener;->removeObserver(Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationObserver;)V

    .line 1546
    invoke-static {}, Lorg/chromium/content/browser/input/GamepadList;->onDetachedFromWindow()V

    .line 1547
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 1554
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->updateTextSelectionUI(Z)V

    .line 1555
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSystemCaptioningBridge:Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge;

    invoke-interface {v0, p0}, Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge;->removeListener(Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;)V

    .line 1556
    return-void
.end method

.method public onFocusChanged(Z)V
    .locals 4
    .param p1, "gainFocus"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1666
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->onViewFocusChanged(Z)V

    .line 1667
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mJoystickScrollProvider:Lorg/chromium/content/browser/input/JoystickScrollProvider;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeEditable:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lorg/chromium/content/browser/input/JoystickScrollProvider;->setEnabled(Z)V

    .line 1669
    if-eqz p1, :cond_2

    .line 1670
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->restoreSelectionPopupsIfNecessary()V

    .line 1684
    :goto_1
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeSetFocus(JZ)V

    .line 1685
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1667
    goto :goto_0

    .line 1672
    :cond_2
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->cancelRequestToScrollFocusedEditableNodeIntoView()V

    .line 1673
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPreserveSelectionOnNextLossOfFocus:Z

    if-eqz v0, :cond_3

    .line 1674
    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPreserveSelectionOnNextLossOfFocus:Z

    .line 1675
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopupsAndPreserveSelection()V

    goto :goto_1

    .line 1677
    :cond_3
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopupsAndClearSelection()V

    .line 1681
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->clearSelection()V

    goto :goto_1
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x1

    .line 1771
    invoke-static {p1}, Lorg/chromium/content/browser/input/GamepadList;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v11

    .line 1807
    :goto_0
    return v1

    .line 1772
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 1773
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mLastFocalEventX:F

    .line 1774
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mLastFocalEventY:F

    .line 1775
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1807
    :cond_1
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    invoke-interface {v1, p1}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->super_onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 1777
    :pswitch_0
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    .line 1779
    :cond_2
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v8

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v9

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->getWheelScrollFactorInPixels()F

    move-result v10

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lorg/chromium/content/browser/ContentViewCore;->nativeSendMouseWheelEvent(JJFFFFF)I

    .line 1785
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mFakeMouseMoveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1788
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1789
    .local v0, "eventFakeMouseMove":Landroid/view/MotionEvent;
    new-instance v1, Lorg/chromium/content/browser/ContentViewCore$5;

    invoke-direct {v1, p0, v0}, Lorg/chromium/content/browser/ContentViewCore$5;-><init>(Lorg/chromium/content/browser/ContentViewCore;Landroid/view/MotionEvent;)V

    iput-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFakeMouseMoveRunnable:Ljava/lang/Runnable;

    .line 1796
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mFakeMouseMoveRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    move v1, v11

    .line 1797
    goto :goto_0

    .line 1799
    .end local v0    # "eventFakeMouseMove":Landroid/view/MotionEvent;
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    .line 1800
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mJoystickScrollProvider:Lorg/chromium/content/browser/input/JoystickScrollProvider;

    invoke-virtual {v1, p1}, Lorg/chromium/content/browser/input/JoystickScrollProvider;->onMotion(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v11

    goto :goto_0

    .line 1801
    :cond_4
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mJoystickZoomProvider:Lorg/chromium/content/browser/input/JoystickZoomProvider;

    if-nez v1, :cond_5

    .line 1802
    new-instance v1, Lorg/chromium/content/browser/input/JoystickZoomProvider;

    new-instance v2, Lorg/chromium/content/browser/ContentViewCore$SystemAnimationIntervalProvider;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/chromium/content/browser/ContentViewCore$SystemAnimationIntervalProvider;-><init>(Lorg/chromium/content/browser/ContentViewCore$1;)V

    invoke-direct {v1, p0, v2}, Lorg/chromium/content/browser/input/JoystickZoomProvider;-><init>(Lorg/chromium/content/browser/ContentViewCore;Lorg/chromium/content/browser/input/AnimationIntervalProvider;)V

    iput-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mJoystickZoomProvider:Lorg/chromium/content/browser/input/JoystickZoomProvider;

    .line 1805
    :cond_5
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mJoystickZoomProvider:Lorg/chromium/content/browser/input/JoystickZoomProvider;

    invoke-virtual {v1, p1}, Lorg/chromium/content/browser/input/JoystickZoomProvider;->onMotion(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v11

    goto/16 :goto_0

    .line 1775
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onHide()V
    .locals 1

    .prologue
    .line 1464
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1465
    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopupsAndPreserveSelection()V

    .line 1466
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->onHide()V

    .line 1467
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 1731
    const-string v2, "onHoverEvent"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 1733
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/ContentViewCore;->createOffsetMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1735
    .local v0, "offset":Landroid/view/MotionEvent;
    :try_start_0
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mIsObscuredByAnotherView:Z

    if-nez v2, :cond_0

    .line 1736
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->onHoverEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1762
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1763
    const-string v2, "onHoverEvent"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    :goto_0
    return v1

    .line 1741
    :cond_0
    :try_start_1
    iget-boolean v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchExplorationEnabled:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 1762
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1763
    const-string v1, "onHoverEvent"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    move v1, v9

    goto :goto_0

    .line 1747
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    if-ne v2, v9, :cond_3

    .line 1748
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mEnableTouchHover:Ljava/lang/Boolean;

    if-nez v2, :cond_2

    .line 1749
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v2

    const-string v3, "enable-touch-hover"

    invoke-virtual {v2, v3}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mEnableTouchHover:Ljava/lang/Boolean;

    .line 1752
    :cond_2
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mEnableTouchHover:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 1762
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1763
    const-string v2, "onHoverEvent"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    goto :goto_0

    .line 1755
    :cond_3
    :try_start_3
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mFakeMouseMoveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1756
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 1757
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lorg/chromium/content/browser/ContentViewCore;->nativeSendMouseMoveEvent(JJFFI)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1762
    :cond_4
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1763
    const-string v1, "onHoverEvent"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    move v1, v9

    goto :goto_0

    .line 1762
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1763
    const-string v2, "onHoverEvent"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1691
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v1}, Lorg/chromium/content/browser/PopupZoomer;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 1692
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/PopupZoomer;->hide(Z)V

    .line 1695
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    invoke-interface {v0, p1, p2}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->super_onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPhysicalBackingSizeChanged(II)V
    .locals 4
    .param p1, "wPix"    # I
    .param p2, "hPix"    # I

    .prologue
    .line 1619
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPhysicalBackingWidthPix:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPhysicalBackingHeightPix:I

    if-ne v0, p2, :cond_1

    .line 1627
    :cond_0
    :goto_0
    return-void

    .line 1621
    :cond_1
    iput p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPhysicalBackingWidthPix:I

    .line 1622
    iput p2, p0, Lorg/chromium/content/browser/ContentViewCore;->mPhysicalBackingHeightPix:I

    .line 1624
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1625
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeWasResized(J)V

    goto :goto_0
.end method

.method public onProvideVirtualStructure(Landroid/view/ViewStructure;Z)V
    .locals 3
    .param p1, "structure"    # Landroid/view/ViewStructure;
    .param p2, "ignoreScrollOffset"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3106
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->isIncognito()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3107
    invoke-virtual {p1, v2}, Landroid/view/ViewStructure;->setChildCount(I)V

    .line 3124
    :goto_0
    return-void

    .line 3110
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/ViewStructure;->setChildCount(I)V

    .line 3111
    invoke-virtual {p1, v2}, Landroid/view/ViewStructure;->asyncNewChild(I)Landroid/view/ViewStructure;

    move-result-object v0

    .line 3112
    .local v0, "viewRoot":Landroid/view/ViewStructure;
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    new-instance v2, Lorg/chromium/content/browser/ContentViewCore$8;

    invoke-direct {v2, p0, v0, p2}, Lorg/chromium/content/browser/ContentViewCore$8;-><init>(Lorg/chromium/content/browser/ContentViewCore;Landroid/view/ViewStructure;Z)V

    invoke-interface {v1, v2}, Lorg/chromium/content_public/browser/WebContents;->requestAccessibilitySnapshot(Lorg/chromium/content_public/browser/AccessibilitySnapshotCallback;)V

    goto :goto_0
.end method

.method public onReceivedProcessTextResult(ILandroid/content/Intent;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 3184
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->isSelectionEditable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    if-nez p2, :cond_1

    .line 3195
    :cond_0
    :goto_0
    return-void

    .line 3189
    :cond_1
    const-string v1, "android.intent.extra.PROCESS_TEXT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3190
    .local v0, "result":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 3193
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/chromium/content_public/browser/WebContents;->replace(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onScreenOrientationChanged(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 3383
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    if-eqz v0, :cond_0

    .line 3384
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopupsAndPreserveSelection()V

    .line 3385
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->showSelectActionMode(Z)V

    .line 3388
    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/ContentViewCore;->sendOrientationChangeEvent(I)V

    .line 3389
    return-void
.end method

.method public onShow()V
    .locals 1

    .prologue
    .line 1446
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1447
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->onShow()V

    .line 1448
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->setAccessibilityState(Z)V

    .line 1449
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->restoreSelectionPopupsIfNecessary()V

    .line 1450
    return-void
.end method

.method public onShowKeyboardReceiveResult(I)V
    .locals 2
    .param p1, "resultCode"    # I

    .prologue
    .line 3425
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 3431
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusPreOSKViewportRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 3439
    :cond_0
    :goto_0
    return-void

    .line 3433
    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 3435
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_0

    .line 3436
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->scrollFocusedEditableNodeIntoView()V

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 4
    .param p1, "wPix"    # I
    .param p2, "hPix"    # I
    .param p3, "owPix"    # I
    .param p4, "ohPix"    # I

    .prologue
    .line 1603
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportWidthPix()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportHeightPix()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 1612
    :goto_0
    return-void

    .line 1605
    :cond_0
    iput p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewportWidthPix:I

    .line 1606
    iput p2, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewportHeightPix:I

    .line 1607
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1608
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeWasResized(J)V

    .line 1611
    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->updateAfterSizeChanged()V

    goto :goto_0
.end method

.method public onSystemCaptioningChanged(Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;)V
    .locals 12
    .param p1, "settings"    # Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 3169
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3175
    :goto_0
    return-void

    .line 3170
    :cond_0
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-virtual {p1}, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->getTextTracksEnabled()Z

    move-result v4

    invoke-virtual {p1}, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->getTextTrackBackgroundColor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->getTextTrackFontFamily()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->getTextTrackFontStyle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->getTextTrackFontVariant()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->getTextTrackTextColor()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->getTextTrackTextShadow()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->getTextTrackTextSize()Ljava/lang/String;

    move-result-object v11

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lorg/chromium/content/browser/ContentViewCore;->nativeSetTextTrackSettings(JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1172
    const/4 v0, 0x0

    .line 1173
    .local v0, "isTouchHandleEvent":Z
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lorg/chromium/content/browser/ContentViewCore;->onTouchEventImpl(Landroid/view/MotionEvent;Z)Z

    move-result v1

    return v1
.end method

.method public onTouchHandleEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1181
    const/4 v0, 0x1

    .line 1182
    .local v0, "isTouchHandleEvent":Z
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lorg/chromium/content/browser/ContentViewCore;->onTouchEventImpl(Landroid/view/MotionEvent;Z)Z

    move-result v1

    return v1
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 1562
    if-eqz p2, :cond_0

    .line 1563
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomControlsDelegate:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;->dismissZoomPicker()V

    .line 1565
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 1658
    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->resetGestureDetection()V

    .line 1659
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/WebActionMode;->onWindowFocusChanged(Z)V

    .line 1660
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1661
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {v0, p1}, Lorg/chromium/content_public/browser/GestureStateListener;->onWindowFocusChanged(Z)V

    goto :goto_0

    .line 1663
    :cond_2
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 3037
    const/4 v0, 0x0

    return v0
.end method

.method public pinchBegin(II)Z
    .locals 8
    .param p1, "xPix"    # I
    .param p2, "yPix"    # I

    .prologue
    .line 2862
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2864
    :goto_0
    return v0

    .line 2863
    :cond_0
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    int-to-float v6, p1

    int-to-float v7, p2

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/chromium/content/browser/ContentViewCore;->nativePinchBegin(JJFF)V

    .line 2864
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pinchBy(IIF)Z
    .locals 9
    .param p1, "xPix"    # I
    .param p2, "yPix"    # I
    .param p3, "delta"    # F

    .prologue
    .line 2876
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2878
    :goto_0
    return v0

    .line 2877
    :cond_0
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    int-to-float v6, p1

    int-to-float v7, p2

    move-object v1, p0

    move v8, p3

    invoke-direct/range {v1 .. v8}, Lorg/chromium/content/browser/ContentViewCore;->nativePinchBy(JJFFF)V

    .line 2878
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pinchByDelta(F)Z
    .locals 10
    .param p1, "delta"    # F

    .prologue
    .line 2841
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 2851
    :goto_0
    return v1

    .line 2843
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2844
    .local v4, "timeMs":J
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportWidthPix()I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    .line 2845
    .local v0, "xPix":I
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportHeightPix()I

    move-result v1

    div-int/lit8 v9, v1, 0x2

    .line 2847
    .local v9, "yPix":I
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    int-to-float v6, v0

    int-to-float v7, v9

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/chromium/content/browser/ContentViewCore;->nativePinchBegin(JJFF)V

    .line 2848
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    int-to-float v6, v0

    int-to-float v7, v9

    move-object v1, p0

    move v8, p1

    invoke-direct/range {v1 .. v8}, Lorg/chromium/content/browser/ContentViewCore;->nativePinchBy(JJFFF)V

    .line 2849
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/chromium/content/browser/ContentViewCore;->nativePinchEnd(JJ)V

    .line 2851
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public pinchEnd()Z
    .locals 4

    .prologue
    .line 2887
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2889
    :goto_0
    return v0

    .line 2888
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/chromium/content/browser/ContentViewCore;->nativePinchEnd(JJ)V

    .line 2889
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public preserveSelectionOnNextLossOfFocus()V
    .locals 1

    .prologue
    .line 2285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPreserveSelectionOnNextLossOfFocus:Z

    .line 2286
    return-void
.end method

.method public removeContainerViewObserver(Lorg/chromium/content/browser/ContainerViewObserver;)V
    .locals 1
    .param p1, "observer"    # Lorg/chromium/content/browser/ContainerViewObserver;

    .prologue
    .line 886
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 887
    return-void
.end method

.method public removeGestureStateListener(Lorg/chromium/content_public/browser/GestureStateListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/chromium/content_public/browser/GestureStateListener;

    .prologue
    .line 1407
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 1408
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2990
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mJavaScriptInterfaces:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2991
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2992
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeRemoveJavascriptInterface(JLjava/lang/String;)V

    .line 2994
    :cond_0
    return-void
.end method

.method public scrollBy(FFZ)V
    .locals 11
    .param p1, "dxPix"    # F
    .param p2, "dyPix"    # F
    .param p3, "useLastFocalEventLocation"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1835
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1849
    :cond_0
    :goto_0
    return-void

    .line 1836
    :cond_1
    cmpl-float v0, p1, v7

    if-nez v0, :cond_2

    cmpl-float v0, p2, v7

    if-eqz v0, :cond_0

    .line 1837
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1841
    .local v4, "time":J
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPotentiallyActiveFlingCount:I

    if-lez v0, :cond_3

    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, v4, v5}, Lorg/chromium/content/browser/ContentViewCore;->nativeFlingCancel(JJ)V

    .line 1843
    :cond_3
    if-eqz p3, :cond_5

    iget v6, p0, Lorg/chromium/content/browser/ContentViewCore;->mLastFocalEventX:F

    .line 1844
    .local v6, "x":F
    :goto_1
    if-eqz p3, :cond_4

    iget v7, p0, Lorg/chromium/content/browser/ContentViewCore;->mLastFocalEventY:F

    .line 1845
    .local v7, "y":F
    :cond_4
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    neg-float v8, p1

    neg-float v9, p2

    if-nez p3, :cond_6

    const/4 v10, 0x1

    :goto_2
    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lorg/chromium/content/browser/ContentViewCore;->nativeScrollBegin(JJFFFFZ)V

    .line 1847
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    move-object v1, p0

    move v8, p1

    move v9, p2

    invoke-direct/range {v1 .. v9}, Lorg/chromium/content/browser/ContentViewCore;->nativeScrollBy(JJFFFF)V

    .line 1848
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, v4, v5}, Lorg/chromium/content/browser/ContentViewCore;->nativeScrollEnd(JJ)V

    goto :goto_0

    .end local v6    # "x":F
    .end local v7    # "y":F
    :cond_5
    move v6, v7

    .line 1843
    goto :goto_1

    .line 1845
    .restart local v6    # "x":F
    .restart local v7    # "y":F
    :cond_6
    const/4 v10, 0x0

    goto :goto_2
.end method

.method public scrollTo(FF)V
    .locals 8
    .param p1, "xPix"    # F
    .param p2, "yPix"    # F

    .prologue
    .line 1855
    iget-wide v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 1861
    :goto_0
    return-void

    .line 1856
    :cond_0
    iget-object v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v4}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollXPix()F

    move-result v2

    .line 1857
    .local v2, "xCurrentPix":F
    iget-object v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v4}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollYPix()F

    move-result v3

    .line 1858
    .local v3, "yCurrentPix":F
    sub-float v0, p1, v2

    .line 1859
    .local v0, "dxPix":F
    sub-float v1, p2, v3

    .line 1860
    .local v1, "dyPix":F
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v1, v4}, Lorg/chromium/content/browser/ContentViewCore;->scrollBy(FFZ)V

    goto :goto_0
.end method

.method public selectPopupMenuItems([I)V
    .locals 10
    .param p1, "indices"    # [I

    .prologue
    const-wide/16 v8, 0x0

    .line 1977
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_0

    .line 1978
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    iget-wide v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeSelectPopupSourceFrame:J

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/chromium/content/browser/ContentViewCore;->nativeSelectPopupMenuItems(JJ[I)V

    .line 1981
    :cond_0
    iput-wide v8, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeSelectPopupSourceFrame:J

    .line 1982
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectPopup:Lorg/chromium/content/browser/input/SelectPopup;

    .line 1983
    return-void
.end method

.method public sendDoubleTapForTest(JII)V
    .locals 9
    .param p1, "timeMs"    # J
    .param p3, "x"    # I
    .param p4, "y"    # I
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 1368
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1370
    :goto_0
    return-void

    .line 1369
    :cond_0
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    int-to-float v6, p3

    int-to-float v7, p4

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Lorg/chromium/content/browser/ContentViewCore;->nativeDoubleTap(JJFF)V

    goto :goto_0
.end method

.method sendOrientationChangeEvent(I)V
    .locals 4
    .param p1, "orientation"    # I
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 1990
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1993
    :goto_0
    return-void

    .line 1992
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeSendOrientationChangeEvent(JI)V

    goto :goto_0
.end method

.method public setAccessibilityState(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    const/4 v0, 0x0

    .line 3211
    if-nez p1, :cond_0

    .line 3212
    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeAccessibilityAllowed:Z

    .line 3213
    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchExplorationEnabled:Z

    .line 3218
    :goto_0
    return-void

    .line 3215
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeAccessibilityAllowed:Z

    .line 3216
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchExplorationEnabled:Z

    goto :goto_0
.end method

.method public setAllowJavascriptInterfacesInspection(Z)V
    .locals 2
    .param p1, "allow"    # Z

    .prologue
    .line 2909
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeSetAllowJavascriptInterfacesInspection(JZ)V

    .line 2910
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 3306
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 3307
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeSetBackgroundColor(JI)V

    .line 3309
    :cond_0
    return-void
.end method

.method public setBackgroundOpaque(Z)V
    .locals 4
    .param p1, "opaque"    # Z

    .prologue
    .line 3312
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 3313
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeSetBackgroundOpaque(JZ)V

    .line 3315
    :cond_0
    return-void
.end method

.method public setBrowserAccessibilityManager(Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;)V
    .locals 1
    .param p1, "manager"    # Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    .prologue
    .line 3047
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    .line 3049
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->hasFrameInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3050
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    invoke-virtual {v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->notifyFrameInfoInitialized()V

    .line 3053
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeAccessibilityEnabled:Z

    .line 3054
    :cond_1
    return-void
.end method

.method public setContainerView(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "containerView"    # Landroid/view/ViewGroup;

    .prologue
    .line 863
    :try_start_0
    const-string v2, "ContentViewCore.setContainerView"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 864
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 865
    sget-boolean v2, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mOverscrollRefreshHandler:Lorg/chromium/content/browser/OverscrollRefreshHandler;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 877
    :catchall_0
    move-exception v2

    const-string v3, "ContentViewCore.setContainerView"

    invoke-static {v3}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v2

    .line 866
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    .line 867
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopupsAndClearSelection()V

    .line 870
    :cond_1
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    .line 871
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 872
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewAndroidDelegate:Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->updateCurrentContainerView(Landroid/view/ViewGroup;)V

    .line 873
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v2}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content/browser/ContainerViewObserver;

    .line 874
    .local v1, "observer":Lorg/chromium/content/browser/ContainerViewObserver;
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/ContainerViewObserver;->onContainerViewChanged(Landroid/view/ViewGroup;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 877
    .end local v1    # "observer":Lorg/chromium/content/browser/ContainerViewObserver;
    :cond_2
    const-string v2, "ContentViewCore.setContainerView"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 879
    return-void
.end method

.method public setContainerViewInternals(Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;)V
    .locals 0
    .param p1, "internalDispatcher"    # Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    .prologue
    .line 901
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    .line 902
    return-void
.end method

.method public setContentViewClient(Lorg/chromium/content/browser/ContentViewClient;)V
    .locals 2
    .param p1, "client"    # Lorg/chromium/content/browser/ContentViewClient;

    .prologue
    .line 1029
    if-nez p1, :cond_0

    .line 1030
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The client can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1032
    :cond_0
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    .line 1033
    return-void
.end method

.method public setContextualSearchClient(Lorg/chromium/content/browser/ContextualSearchClient;)V
    .locals 0
    .param p1, "contextualSearchClient"    # Lorg/chromium/content/browser/ContextualSearchClient;

    .prologue
    .line 3409
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContextualSearchClient:Lorg/chromium/content/browser/ContextualSearchClient;

    .line 3410
    return-void
.end method

.method public setCurrentMotionEventOffsets(FF)V
    .locals 0
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 1817
    iput p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mCurrentTouchOffsetX:F

    .line 1818
    iput p2, p0, Lorg/chromium/content/browser/ContentViewCore;->mCurrentTouchOffsetY:F

    .line 1819
    return-void
.end method

.method public setDownloadDelegate(Lorg/chromium/content/browser/ContentViewDownloadDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/chromium/content/browser/ContentViewDownloadDelegate;

    .prologue
    .line 2002
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mDownloadDelegate:Lorg/chromium/content/browser/ContentViewDownloadDelegate;

    .line 2003
    return-void
.end method

.method public setFullscreenRequiredForOrientationLock(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 3396
    iput-boolean p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFullscreenRequiredForOrientationLock:Z

    .line 3397
    return-void
.end method

.method public setImeAdapterForTest(Lorg/chromium/content/browser/input/ImeAdapter;)V
    .locals 0
    .param p1, "imeAdapter"    # Lorg/chromium/content/browser/input/ImeAdapter;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 727
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    .line 728
    return-void
.end method

.method public setObscuredByAnotherView(Z)V
    .locals 2
    .param p1, "isObscured"    # Z

    .prologue
    .line 3095
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mIsObscuredByAnotherView:Z

    if-eq p1, v0, :cond_0

    .line 3096
    iput-boolean p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mIsObscuredByAnotherView:Z

    .line 3097
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 3100
    :cond_0
    return-void
.end method

.method public setOverscrollRefreshHandler(Lorg/chromium/content/browser/OverscrollRefreshHandler;)V
    .locals 1
    .param p1, "handler"    # Lorg/chromium/content/browser/OverscrollRefreshHandler;

    .prologue
    .line 2623
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mOverscrollRefreshHandler:Lorg/chromium/content/browser/OverscrollRefreshHandler;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2624
    :cond_0
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mOverscrollRefreshHandler:Lorg/chromium/content/browser/OverscrollRefreshHandler;

    .line 2625
    return-void
.end method

.method public setPopupZoomerForTest(Lorg/chromium/content/browser/PopupZoomer;)V
    .locals 0
    .param p1, "popupZoomer"    # Lorg/chromium/content/browser/PopupZoomer;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 966
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    .line 967
    return-void
.end method

.method public setShouldSetAccessibilityFocusOnPageLoad(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 3234
    iput-boolean p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mShouldSetAccessibilityFocusOnPageLoad:Z

    .line 3235
    return-void
.end method

.method public setSmartClipDataListener(Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;

    .prologue
    .line 3302
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mSmartClipDataListener:Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;

    .line 3303
    return-void
.end method

.method public setSmartClipOffsets(II)V
    .locals 0
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .prologue
    .line 3277
    iput p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mSmartClipOffsetX:I

    .line 3278
    iput p2, p0, Lorg/chromium/content/browser/ContentViewCore;->mSmartClipOffsetY:I

    .line 3279
    return-void
.end method

.method public setTopControlsHeight(IZ)V
    .locals 4
    .param p1, "topControlsHeightPix"    # I
    .param p2, "topControlsShrinkBlinkSize"    # Z

    .prologue
    .line 698
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTopControlsHeightPix:I

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTopControlsShrinkBlinkSize:Z

    if-ne p2, v0, :cond_1

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 703
    :cond_1
    iput p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mTopControlsHeightPix:I

    .line 704
    iput-boolean p2, p0, Lorg/chromium/content/browser/ContentViewCore;->mTopControlsShrinkBlinkSize:Z

    .line 705
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeWasResized(J)V

    goto :goto_0
.end method

.method public setZoomControlsDelegate(Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;)V
    .locals 1
    .param p1, "zoomControlsDelegate"    # Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    .prologue
    .line 1959
    if-nez p1, :cond_0

    .line 1960
    sget-object v0, Lorg/chromium/content/browser/ContentViewCore;->NO_OP_ZOOM_CONTROLS_DELEGATE:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomControlsDelegate:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    .line 1964
    :goto_0
    return-void

    .line 1963
    :cond_0
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomControlsDelegate:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    goto :goto_0
.end method

.method public shouldSetAccessibilityFocusOnPageLoad()Z
    .locals 1

    .prologue
    .line 3224
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mShouldSetAccessibilityFocusOnPageLoad:Z

    return v0
.end method

.method public supportsAccessibilityAction(I)Z
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 3022
    const/4 v0, 0x0

    return v0
.end method

.method public updateDoubleTapSupport(Z)V
    .locals 4
    .param p1, "supportsDoubleTap"    # Z

    .prologue
    .line 1972
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1974
    :goto_0
    return-void

    .line 1973
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeSetDoubleTapSupportEnabled(JZ)V

    goto :goto_0
.end method

.method updateGestureStateListener(I)V
    .locals 3
    .param p1, "gestureType"    # I

    .prologue
    .line 1411
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v1}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    .line 1412
    :goto_0
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v1}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1413
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v1}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/GestureStateListener;

    .line 1414
    .local v0, "listener":Lorg/chromium/content_public/browser/GestureStateListener;
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1427
    :pswitch_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollOffset()I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollExtent()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content_public/browser/GestureStateListener;->onScrollStarted(II)V

    goto :goto_0

    .line 1416
    :pswitch_2
    invoke-virtual {v0}, Lorg/chromium/content_public/browser/GestureStateListener;->onPinchStarted()V

    goto :goto_0

    .line 1419
    :pswitch_3
    invoke-virtual {v0}, Lorg/chromium/content_public/browser/GestureStateListener;->onPinchEnded()V

    goto :goto_0

    .line 1422
    :pswitch_4
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollOffset()I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollExtent()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content_public/browser/GestureStateListener;->onFlingEndGesture(II)V

    goto :goto_0

    .line 1432
    :pswitch_5
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollOffset()I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollExtent()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content_public/browser/GestureStateListener;->onScrollEnded(II)V

    goto :goto_0

    .line 1440
    .end local v0    # "listener":Lorg/chromium/content_public/browser/GestureStateListener;
    :cond_0
    return-void

    .line 1414
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public updateMultiTouchZoomSupport(Z)V
    .locals 4
    .param p1, "supportsMultiTouchZoom"    # Z

    .prologue
    .line 1967
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1969
    :goto_0
    return-void

    .line 1968
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeSetMultiTouchZoomSupportEnabled(JZ)V

    goto :goto_0
.end method

.method public updateTextSelectionUI(Z)V
    .locals 1
    .param p1, "focused"    # Z

    .prologue
    .line 1529
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->setTextHandlesTemporarilyHidden(Z)V

    .line 1530
    if-eqz p1, :cond_1

    .line 1531
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->restoreSelectionPopupsIfNecessary()V

    .line 1535
    :goto_1
    return-void

    .line 1529
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1533
    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopupsAndPreserveSelection()V

    goto :goto_1
.end method

.method public updateWindowAndroid(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 5
    .param p1, "windowAndroid"    # Lorg/chromium/ui/base/WindowAndroid;

    .prologue
    const/4 v4, 0x0

    .line 829
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    .line 830
    .local v0, "windowNativePointer":J
    :goto_0
    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeUpdateWindowAndroid(JJ)V

    .line 834
    iput-object v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectPopup:Lorg/chromium/content/browser/input/SelectPopup;

    .line 835
    iput-object v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    .line 836
    return-void

    .line 829
    .end local v0    # "windowNativePointer":J
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getNativePointer()J

    move-result-wide v0

    goto :goto_0
.end method

.method public zoomIn()Z
    .locals 1

    .prologue
    .line 2797
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->canZoomIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2798
    const/4 v0, 0x0

    .line 2800
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3fa00000    # 1.25f

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->pinchByDelta(F)Z

    move-result v0

    goto :goto_0
.end method

.method public zoomOut()Z
    .locals 1

    .prologue
    .line 2812
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->canZoomOut()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2813
    const/4 v0, 0x0

    .line 2815
    :goto_0
    return v0

    :cond_0
    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->pinchByDelta(F)Z

    move-result v0

    goto :goto_0
.end method

.method public zoomReset()Z
    .locals 2

    .prologue
    .line 2828
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->canZoomOut()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2829
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getMinPageScaleFactor()F

    move-result v0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getPageScaleFactor()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->pinchByDelta(F)Z

    move-result v0

    goto :goto_0
.end method
