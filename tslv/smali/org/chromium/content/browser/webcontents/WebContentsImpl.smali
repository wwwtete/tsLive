.class Lorg/chromium/content/browser/webcontents/WebContentsImpl;
.super Ljava/lang/Object;
.source "WebContentsImpl.java"

# interfaces
.implements Lorg/chromium/content_public/browser/WebContents;


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "content"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/chromium/content_public/browser/WebContents;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARCELABLE_VERSION_ID:J = 0x0L

.field private static final PARCEL_PROCESS_GUARD_KEY:Ljava/lang/String; = "processguard"

.field private static final PARCEL_VERSION_KEY:Ljava/lang/String; = "version"

.field private static final PARCEL_WEBCONTENTS_KEY:Ljava/lang/String; = "webcontents"

.field private static sParcelableUUID:Ljava/util/UUID;


# instance fields
.field private mContextMenuOpened:Z

.field private mNativeWebContentsAndroid:J

.field private mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

.field private mObserverProxy:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->$assertionsDisabled:Z

    .line 43
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->sParcelableUUID:Ljava/util/UUID;

    .line 58
    new-instance v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl$1;

    invoke-direct {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$1;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(JLorg/chromium/content_public/browser/NavigationController;)V
    .locals 1
    .param p1, "nativeWebContentsAndroid"    # J
    .param p3, "navigationController"    # Lorg/chromium/content_public/browser/NavigationController;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-wide p1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    .line 92
    iput-object p3, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    .line 93
    return-void
.end method

.method static synthetic access$000()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->sParcelableUUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$100(J)Lorg/chromium/content_public/browser/WebContents;
    .locals 2
    .param p0, "x0"    # J

    .prologue
    .line 36
    invoke-static {p0, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeFromNativePtr(J)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    return-object v0
.end method

.method private static addAccessibilityNodeAsChild(Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;)V
    .locals 0
    .param p0, "parent"    # Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;
    .param p1, "child"    # Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 390
    invoke-virtual {p0, p1}, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->addChild(Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;)V

    .line 391
    return-void
.end method

.method private clearNativePtr()V
    .locals 3
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    .line 104
    iput-object v2, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    .line 105
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mObserverProxy:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mObserverProxy:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->destroy()V

    .line 107
    iput-object v2, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mObserverProxy:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    .line 109
    :cond_0
    return-void
.end method

.method private static create(JLorg/chromium/content_public/browser/NavigationController;)Lorg/chromium/content/browser/webcontents/WebContentsImpl;
    .locals 2
    .param p0, "nativeWebContentsAndroid"    # J
    .param p2, "navigationController"    # Lorg/chromium/content_public/browser/NavigationController;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;-><init>(JLorg/chromium/content_public/browser/NavigationController;)V

    return-object v0
.end method

.method private static createAccessibilitySnapshotNode(IIIIZLjava/lang/String;IIFILjava/lang/String;)Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;
    .locals 16
    .param p0, "parentRelativeLeft"    # I
    .param p1, "parentRelativeTop"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "isRootNode"    # Z
    .param p5, "text"    # Ljava/lang/String;
    .param p6, "color"    # I
    .param p7, "bgcolor"    # I
    .param p8, "size"    # F
    .param p9, "textStyle"    # I
    .param p10, "className"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 397
    new-instance v2, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;

    move-object/from16 v0, p5

    move-object/from16 v1, p10

    invoke-direct {v2, v0, v1}, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    .local v2, "node":Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;
    move/from16 v0, p8

    float-to-double v4, v0

    const-wide/16 v10, 0x0

    cmpl-double v3, v4, v10

    if-ltz v3, :cond_0

    .line 401
    and-int/lit8 v3, p9, 0x1

    if-lez v3, :cond_1

    const/4 v6, 0x1

    .line 402
    .local v6, "bold":Z
    :goto_0
    and-int/lit8 v3, p9, 0x2

    if-lez v3, :cond_2

    const/4 v7, 0x1

    .line 403
    .local v7, "italic":Z
    :goto_1
    and-int/lit8 v3, p9, 0x4

    if-lez v3, :cond_3

    const/4 v8, 0x1

    .line 404
    .local v8, "underline":Z
    :goto_2
    and-int/lit8 v3, p9, 0x8

    if-lez v3, :cond_4

    const/4 v9, 0x1

    .local v9, "lineThrough":Z
    :goto_3
    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    .line 405
    invoke-virtual/range {v2 .. v9}, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->setStyle(IIFZZZZ)V

    .end local v6    # "bold":Z
    .end local v7    # "italic":Z
    .end local v8    # "underline":Z
    .end local v9    # "lineThrough":Z
    :cond_0
    move-object v10, v2

    move/from16 v11, p0

    move/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    .line 407
    invoke-virtual/range {v10 .. v15}, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->setLocationInfo(IIIIZ)V

    .line 408
    return-object v2

    .line 401
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 402
    .restart local v6    # "bold":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 403
    .restart local v7    # "italic":Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 404
    .restart local v8    # "underline":Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_3
.end method

.method private getNativePointer()J
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 130
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    return-wide v0
.end method

.method public static invalidateSerializedWebContentsForTesting()V
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 51
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->sParcelableUUID:Ljava/util/UUID;

    .line 52
    return-void
.end method

.method private native nativeAddMessageToDevToolsConsole(JILjava/lang/String;)V
.end method

.method private native nativeAdjustSelectionByCharacterOffset(JII)V
.end method

.method private native nativeCopy(J)V
.end method

.method private native nativeCut(J)V
.end method

.method private static native nativeDestroyWebContents(J)V
.end method

.method private native nativeEvaluateJavaScript(JLjava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V
.end method

.method private native nativeEvaluateJavaScriptForTests(JLjava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V
.end method

.method private native nativeExitFullscreen(J)V
.end method

.method private native nativeFocusLocationBarByDefault(J)Z
.end method

.method private static native nativeFromNativePtr(J)Lorg/chromium/content_public/browser/WebContents;
.end method

.method private native nativeGetBackgroundColor(J)I
.end method

.method private native nativeGetContentBitmap(JLorg/chromium/content_public/browser/ContentBitmapCallback;Landroid/graphics/Bitmap$Config;FFFFF)V
.end method

.method private native nativeGetEncoding(J)Ljava/lang/String;
.end method

.method private native nativeGetLastCommittedURL(J)Ljava/lang/String;
.end method

.method private native nativeGetThemeColor(J)I
.end method

.method private native nativeGetTitle(J)Ljava/lang/String;
.end method

.method private native nativeGetURL(J)Ljava/lang/String;
.end method

.method private native nativeGetVisibleURL(J)Ljava/lang/String;
.end method

.method private native nativeHasAccessedInitialDocument(J)Z
.end method

.method private native nativeInsertCSS(JLjava/lang/String;)V
.end method

.method private native nativeIsIncognito(J)Z
.end method

.method private native nativeIsLoading(J)Z
.end method

.method private native nativeIsLoadingToDifferentDocument(J)Z
.end method

.method private native nativeIsRenderWidgetHostViewReady(J)Z
.end method

.method private native nativeIsShowingInterstitialPage(J)Z
.end method

.method private native nativeOnContextMenuClosed(J)V
.end method

.method private native nativeOnHide(J)V
.end method

.method private native nativeOnShow(J)V
.end method

.method private native nativePaste(J)V
.end method

.method private native nativeReloadLoFiImages(J)V
.end method

.method private native nativeReplace(JLjava/lang/String;)V
.end method

.method private native nativeRequestAccessibilitySnapshot(JLorg/chromium/content_public/browser/AccessibilitySnapshotCallback;)V
.end method

.method private native nativeResumeLoadingCreatedWebContents(J)V
.end method

.method private native nativeResumeMediaSession(J)V
.end method

.method private native nativeScrollFocusedEditableNodeIntoView(J)V
.end method

.method private native nativeSelectAll(J)V
.end method

.method private native nativeSelectWordAroundCaret(J)V
.end method

.method private native nativeSendMessageToFrame(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeSetAudioMuted(JZ)V
.end method

.method private native nativeShowImeIfNeeded(J)V
.end method

.method private native nativeShowInterstitialPage(JLjava/lang/String;J)V
.end method

.method private native nativeStop(J)V
.end method

.method private native nativeStopMediaSession(J)V
.end method

.method private native nativeSuspendAllMediaPlayers(J)V
.end method

.method private native nativeSuspendMediaSession(J)V
.end method

.method private native nativeUnselect(J)V
.end method

.method private native nativeUpdateTopControlsState(JZZZ)V
.end method

.method private static onAccessibilitySnapshot(Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;Lorg/chromium/content_public/browser/AccessibilitySnapshotCallback;)V
    .locals 0
    .param p0, "root"    # Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;
    .param p1, "callback"    # Lorg/chromium/content_public/browser/AccessibilitySnapshotCallback;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 384
    invoke-virtual {p1, p0}, Lorg/chromium/content_public/browser/AccessibilitySnapshotCallback;->onAccessibilitySnapshot(Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;)V

    .line 385
    return-void
.end method

.method private static onEvaluateJavaScriptResult(Ljava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V
    .locals 0
    .param p0, "jsonResult"    # Ljava/lang/String;
    .param p1, "callback"    # Lorg/chromium/content_public/browser/JavaScriptCallback;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 347
    invoke-interface {p1, p0}, Lorg/chromium/content_public/browser/JavaScriptCallback;->handleJavaScriptResult(Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method private onGetContentBitmapFinished(Lorg/chromium/content_public/browser/ContentBitmapCallback;Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "callback"    # Lorg/chromium/content_public/browser/ContentBitmapCallback;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "response"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 464
    invoke-interface {p1, p2, p3}, Lorg/chromium/content_public/browser/ContentBitmapCallback;->onFinishGetBitmap(Landroid/graphics/Bitmap;I)V

    .line 465
    return-void
.end method

.method private static setAccessibilitySnapshotSelection(Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;II)V
    .locals 0
    .param p0, "node"    # Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 414
    invoke-virtual {p0, p1, p2}, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->setSelection(II)V

    .line 415
    return-void
.end method


# virtual methods
.method public addMessageToDevToolsConsole(ILjava/lang/String;)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 331
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeAddMessageToDevToolsConsole(JILjava/lang/String;)V

    .line 332
    return-void
.end method

.method public addObserver(Lorg/chromium/content_public/browser/WebContentsObserver;)V
    .locals 4
    .param p1, "observer"    # Lorg/chromium/content_public/browser/WebContentsObserver;

    .prologue
    .line 419
    sget-boolean v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 420
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mObserverProxy:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    if-nez v0, :cond_1

    new-instance v0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;-><init>(Lorg/chromium/content/browser/webcontents/WebContentsImpl;)V

    iput-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mObserverProxy:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    .line 421
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mObserverProxy:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->addObserver(Lorg/chromium/content_public/browser/WebContentsObserver;)V

    .line 422
    return-void
.end method

.method public adjustSelectionByCharacterOffset(II)V
    .locals 2
    .param p1, "startAdjust"    # I
    .param p2, "endAdjust"    # I

    .prologue
    .line 291
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeAdjustSelectionByCharacterOffset(JII)V

    .line 293
    return-void
.end method

.method public copy()V
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeCopy(J)V

    .line 181
    return-void
.end method

.method public cut()V
    .locals 2

    .prologue
    .line 175
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeCut(J)V

    .line 176
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public destroy()V
    .locals 4

    .prologue
    .line 135
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-static {v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeDestroyWebContents(J)V

    .line 136
    :cond_0
    return-void
.end method

.method public evaluateJavaScript(Ljava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V
    .locals 2
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "callback"    # Lorg/chromium/content_public/browser/JavaScriptCallback;

    .prologue
    .line 318
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeEvaluateJavaScript(JLjava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V

    goto :goto_0
.end method

.method public evaluateJavaScriptForTests(Ljava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V
    .locals 2
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "callback"    # Lorg/chromium/content_public/browser/JavaScriptCallback;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 325
    if-nez p1, :cond_0

    .line 327
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeEvaluateJavaScriptForTests(JLjava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V

    goto :goto_0
.end method

.method public exitFullscreen()V
    .locals 2

    .prologue
    .line 261
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeExitFullscreen(J)V

    .line 262
    return-void
.end method

.method public focusLocationBarByDefault()Z
    .locals 2

    .prologue
    .line 251
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeFocusLocationBarByDefault(J)Z

    move-result v0

    return v0
.end method

.method public getBackgroundColor()I
    .locals 2

    .prologue
    .line 235
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeGetBackgroundColor(J)I

    move-result v0

    return v0
.end method

.method public getContentBitmapAsync(Landroid/graphics/Bitmap$Config;FLandroid/graphics/Rect;Lorg/chromium/content_public/browser/ContentBitmapCallback;)V
    .locals 11
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;
    .param p2, "scale"    # F
    .param p3, "srcRect"    # Landroid/graphics/Rect;
    .param p4, "callback"    # Lorg/chromium/content_public/browser/ContentBitmapCallback;

    .prologue
    .line 439
    iget-wide v2, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v7, v0

    iget v0, p3, Landroid/graphics/Rect;->top:I

    int-to-float v8, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v9, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v10, v0

    move-object v1, p0

    move-object v4, p4

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v10}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeGetContentBitmap(JLorg/chromium/content_public/browser/ContentBitmapCallback;Landroid/graphics/Bitmap$Config;FFFFF)V

    .line 441
    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 2

    .prologue
    .line 377
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeGetEncoding(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastCommittedUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 303
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeGetLastCommittedURL(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationController()Lorg/chromium/content_public/browser/NavigationController;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    return-object v0
.end method

.method public getObserversForTesting()Lorg/chromium/base/ObserverList$RewindableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/chromium/base/ObserverList$RewindableIterator",
            "<",
            "Lorg/chromium/content_public/browser/WebContentsObserver;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 433
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mObserverProxy:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->getObserversForTesting()Lorg/chromium/base/ObserverList$RewindableIterator;

    move-result-object v0

    return-object v0
.end method

.method public getThemeColor()I
    .locals 2

    .prologue
    .line 352
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeGetThemeColor(J)I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeGetTitle(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 297
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 298
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeGetURL(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVisibleUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeGetVisibleURL(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAccessedInitialDocument()Z
    .locals 2

    .prologue
    .line 341
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeHasAccessedInitialDocument(J)Z

    move-result v0

    return v0
.end method

.method public insertCSS(Ljava/lang/String;)V
    .locals 2
    .param p1, "css"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeInsertCSS(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public isDestroyed()Z
    .locals 4

    .prologue
    .line 140
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIncognito()Z
    .locals 2

    .prologue
    .line 308
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeIsIncognito(J)Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeIsLoading(J)Z

    move-result v0

    return v0
.end method

.method public isLoadingToDifferentDocument()Z
    .locals 2

    .prologue
    .line 165
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeIsLoadingToDifferentDocument(J)Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 2

    .prologue
    .line 256
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeIsRenderWidgetHostViewReady(J)Z

    move-result v0

    return v0
.end method

.method public isShowingInterstitialPage()Z
    .locals 2

    .prologue
    .line 246
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeIsShowingInterstitialPage(J)Z

    move-result v0

    return v0
.end method

.method public onContextMenuClosed()V
    .locals 4

    .prologue
    .line 450
    iget-boolean v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mContextMenuOpened:Z

    if-nez v0, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mContextMenuOpened:Z

    .line 456
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 457
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeOnContextMenuClosed(J)V

    goto :goto_0
.end method

.method public onContextMenuOpened()V
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mContextMenuOpened:Z

    .line 446
    return-void
.end method

.method public onHide()V
    .locals 2

    .prologue
    .line 215
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeOnHide(J)V

    .line 216
    return-void
.end method

.method public onShow()V
    .locals 2

    .prologue
    .line 220
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeOnShow(J)V

    .line 221
    return-void
.end method

.method public paste()V
    .locals 2

    .prologue
    .line 185
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativePaste(J)V

    .line 186
    return-void
.end method

.method public reloadLoFiImages()V
    .locals 2

    .prologue
    .line 469
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeReloadLoFiImages(J)V

    .line 470
    return-void
.end method

.method public removeObserver(Lorg/chromium/content_public/browser/WebContentsObserver;)V
    .locals 1
    .param p1, "observer"    # Lorg/chromium/content_public/browser/WebContentsObserver;

    .prologue
    .line 426
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mObserverProxy:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    if-nez v0, :cond_0

    .line 428
    :goto_0
    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mObserverProxy:Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->removeObserver(Lorg/chromium/content_public/browser/WebContentsObserver;)V

    goto :goto_0
.end method

.method public replace(Ljava/lang/String;)V
    .locals 2
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 190
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeReplace(JLjava/lang/String;)V

    .line 191
    return-void
.end method

.method public requestAccessibilitySnapshot(Lorg/chromium/content_public/browser/AccessibilitySnapshotCallback;)V
    .locals 2
    .param p1, "callback"    # Lorg/chromium/content_public/browser/AccessibilitySnapshotCallback;

    .prologue
    .line 357
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeRequestAccessibilitySnapshot(JLorg/chromium/content_public/browser/AccessibilitySnapshotCallback;)V

    .line 358
    return-void
.end method

.method public resumeLoadingCreatedWebContents()V
    .locals 2

    .prologue
    .line 313
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeResumeLoadingCreatedWebContents(J)V

    .line 314
    return-void
.end method

.method public resumeMediaSession()V
    .locals 2

    .prologue
    .line 362
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeResumeMediaSession(J)V

    .line 363
    return-void
.end method

.method public scrollFocusedEditableNodeIntoView()V
    .locals 2

    .prologue
    .line 281
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeScrollFocusedEditableNodeIntoView(J)V

    .line 282
    return-void
.end method

.method public selectAll()V
    .locals 2

    .prologue
    .line 195
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeSelectAll(J)V

    .line 196
    return-void
.end method

.method public selectWordAroundCaret()V
    .locals 2

    .prologue
    .line 286
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeSelectWordAroundCaret(J)V

    .line 287
    return-void
.end method

.method public sendMessageToFrame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "frameName"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "targetOrigin"    # Ljava/lang/String;

    .prologue
    .line 336
    iget-wide v2, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeSendMessageToFrame(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public setAudioMuted(Z)V
    .locals 2
    .param p1, "mute"    # Z

    .prologue
    .line 230
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeSetAudioMuted(JZ)V

    .line 231
    return-void
.end method

.method public showImeIfNeeded()V
    .locals 2

    .prologue
    .line 273
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeShowImeIfNeeded(J)V

    .line 274
    return-void
.end method

.method public showInterstitialPage(Ljava/lang/String;J)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "interstitialPageDelegateAndroid"    # J

    .prologue
    .line 241
    iget-wide v1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeShowInterstitialPage(JLjava/lang/String;J)V

    .line 242
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 170
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeStop(J)V

    .line 171
    return-void
.end method

.method public stopMediaSession()V
    .locals 2

    .prologue
    .line 372
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeStopMediaSession(J)V

    .line 373
    return-void
.end method

.method public suspendAllMediaPlayers()V
    .locals 2

    .prologue
    .line 225
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeSuspendAllMediaPlayers(J)V

    .line 226
    return-void
.end method

.method public suspendMediaSession()V
    .locals 2

    .prologue
    .line 367
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeSuspendMediaSession(J)V

    .line 368
    return-void
.end method

.method public unselect()V
    .locals 2

    .prologue
    .line 203
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeUnselect(J)V

    goto :goto_0
.end method

.method public updateTopControlsState(ZZZ)V
    .locals 7
    .param p1, "enableHiding"    # Z
    .param p2, "enableShowing"    # Z
    .param p3, "animate"    # Z

    .prologue
    .line 267
    iget-wide v2, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->nativeUpdateTopControlsState(JZZZ)V

    .line 269
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 121
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 122
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "version"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 123
    const-string v1, "processguard"

    new-instance v2, Landroid/os/ParcelUuid;

    sget-object v3, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->sParcelableUUID:Ljava/util/UUID;

    invoke-direct {v2, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 124
    const-string v1, "webcontents"

    iget-wide v2, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->mNativeWebContentsAndroid:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 125
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 126
    return-void
.end method
