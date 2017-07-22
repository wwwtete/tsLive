.class public Lorg/xwalk/core/internal/XWalkViewInternal;
.super Landroid/widget/FrameLayout;
.source "XWalkViewInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/internal/XWalkViewInternal$XWalkActivityStateListener;
    }
.end annotation

.annotation build Lorg/xwalk/core/internal/XWalkAPI;
    createExternally = true
    extendClass = Landroid/widget/FrameLayout;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ALL_AUDIO_TYPES:Ljava/lang/String; = "audio/*"

.field private static final ALL_IMAGE_TYPES:Ljava/lang/String; = "image/*"

.field private static final ALL_VIDEO_TYPES:Ljava/lang/String; = "video/*"

.field private static final ANY_TYPES:Ljava/lang/String; = "*/*"

.field private static final AUDIO_TYPE:Ljava/lang/String; = "audio/"

.field private static final IMAGE_TYPE:Ljava/lang/String; = "image/"

.field public static final INPUT_FILE_REQUEST_CODE:I = 0x1

.field private static final PATH_PREFIX:Ljava/lang/String; = "file:"

.field static final PLAYSTORE_DETAIL_URI:Ljava/lang/String; = "market://details?id="

.field public static final RELOAD_IGNORE_CACHE:I = 0x1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end field

.field public static final RELOAD_NORMAL:I = 0x0
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end field

.field private static final SPLIT_EXPRESSION:Ljava/lang/String; = ","

.field public static final SURFACE_VIEW:Ljava/lang/String; = "SurfaceView"
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field public static final TEXTURE_VIEW:Ljava/lang/String; = "TextureView"
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end field

.field private static final VIDEO_TYPE:Ljava/lang/String; = "video/"

.field private static sInitialized:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mActivityStateListener:Lorg/xwalk/core/internal/XWalkViewInternal$XWalkActivityStateListener;

.field private mCameraPhotoPath:Ljava/lang/String;

.field private mContent:Lorg/xwalk/core/internal/XWalkContent;

.field private mContext:Landroid/content/Context;

.field private mExternalExtensionManager:Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;

.field private mFilePathCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mIsHidden:Z

.field private final mXWalkHitTestResult:Lorg/xwalk/core/internal/XWalkHitTestResultInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 237
    const-class v0, Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/xwalk/core/internal/XWalkViewInternal;->$assertionsDisabled:Z

    .line 257
    const-class v0, Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/xwalk/core/internal/XWalkViewInternal;->TAG:Ljava/lang/String;

    .line 260
    sput-boolean v1, Lorg/xwalk/core/internal/XWalkViewInternal;->sInitialized:Z

    return-void

    :cond_0
    move v0, v1

    .line 237
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        postWrapperLines = {
            "        addView((FrameLayout)bridge, new FrameLayout.LayoutParams(",
            "                FrameLayout.LayoutParams.MATCH_PARENT,",
            "                FrameLayout.LayoutParams.MATCH_PARENT));",
            "        removeViewAt(0);",
            "        new org.xwalk.core.extension.XWalkExternalExtensionManagerImpl(this);"
        }
        preWrapperLines = {
            "        super(${param1}, null);",
            "        SurfaceView surfaceView = new SurfaceView(${param1});",
            "        surfaceView.setLayoutParams(new ViewGroup.LayoutParams(0, 0));",
            "        addView(surfaceView);"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 323
    invoke-direct {p0, p1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 325
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 326
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mActivity:Landroid/app/Activity;

    .line 327
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContext:Landroid/content/Context;

    .line 329
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->init(Landroid/content/Context;Landroid/app/Activity;)V

    .line 330
    new-instance v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal;

    invoke-direct {v0}, Lorg/xwalk/core/internal/XWalkHitTestResultInternal;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mXWalkHitTestResult:Lorg/xwalk/core/internal/XWalkHitTestResultInternal;

    .line 331
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->initXWalkContent(Landroid/content/Context;Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        postWrapperLines = {
            "        addView((FrameLayout)bridge, new FrameLayout.LayoutParams(",
            "                FrameLayout.LayoutParams.MATCH_PARENT,",
            "                FrameLayout.LayoutParams.MATCH_PARENT));",
            "        removeViewAt(0);",
            "        new org.xwalk.core.extension.XWalkExternalExtensionManagerImpl(this);"
        }
        preWrapperLines = {
            "        super(${param1}, null);",
            "        SurfaceView surfaceView = new SurfaceView(${param1});",
            "        surfaceView.setLayoutParams(new ViewGroup.LayoutParams(0, 0));",
            "        addView(surfaceView);"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 394
    invoke-direct {p0, p1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 396
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 398
    iput-object p2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mActivity:Landroid/app/Activity;

    .line 399
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContext:Landroid/content/Context;

    .line 401
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->init(Landroid/content/Context;Landroid/app/Activity;)V

    .line 402
    new-instance v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal;

    invoke-direct {v0}, Lorg/xwalk/core/internal/XWalkHitTestResultInternal;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mXWalkHitTestResult:Lorg/xwalk/core/internal/XWalkHitTestResultInternal;

    .line 403
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->initXWalkContent(Landroid/content/Context;Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        postBridgeLines = {
            "        String animatable = null;",
            "        try {",
            "            animatable = (String) new ReflectField(wrapper, \"mAnimatable\").get();",
            "        } catch (RuntimeException e) {",
            "        }",
            "        initXWalkContent(getContext(), animatable);"
        }
        postWrapperLines = {
            "        addView((FrameLayout)bridge, new FrameLayout.LayoutParams(",
            "                FrameLayout.LayoutParams.MATCH_PARENT,",
            "                FrameLayout.LayoutParams.MATCH_PARENT));",
            "        removeViewAt(0);",
            "        new org.xwalk.core.extension.XWalkExternalExtensionManagerImpl(this);"
        }
        preWrapperLines = {
            "        super(${param1}, ${param2});",
            "        if (isInEditMode()) return;",
            "        if (${param2} != null)",
            "            mAnimatable = ${param2}.getAttributeValue(",
            "                    XWALK_ATTRS_NAMESPACE, ANIMATABLE);",
            "        SurfaceView surfaceView = new SurfaceView(${param1});",
            "        surfaceView.setLayoutParams(new ViewGroup.LayoutParams(0, 0));",
            "        addView(surfaceView);"
        }
    .end annotation

    .prologue
    .line 365
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 367
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 368
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mActivity:Landroid/app/Activity;

    .line 369
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContext:Landroid/content/Context;

    .line 371
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->init(Landroid/content/Context;Landroid/app/Activity;)V

    .line 372
    new-instance v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal;

    invoke-direct {v0}, Lorg/xwalk/core/internal/XWalkHitTestResultInternal;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mXWalkHitTestResult:Lorg/xwalk/core/internal/XWalkHitTestResultInternal;

    .line 373
    return-void
.end method

.method static synthetic access$000(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/app/Activity;I)V
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # I

    .prologue
    .line 238
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkViewInternal;->onActivityStateChange(Landroid/app/Activity;I)V

    return-void
.end method

.method private static checkThreadSafety()V
    .locals 3

    .prologue
    .line 1251
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 1252
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: A XWalkViewInternal method was called on thread \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "All XWalkViewInternal methods must be called on the UI thread. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 1256
    .local v0, "throwable":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1258
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method private createImageFile()Ljava/io/File;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1546
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 1547
    .local v2, "state":Ljava/lang/String;
    const-string v6, "mounted"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1548
    sget-object v6, Lorg/xwalk/core/internal/XWalkViewInternal;->TAG:Ljava/lang/String;

    const-string v7, "External storage is not mounted."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    :goto_0
    return-object v5

    .line 1553
    :cond_0
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd_HHmmss"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 1554
    .local v4, "timeStamp":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JPEG_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1555
    .local v1, "imageFileName":Ljava/lang/String;
    sget-object v6, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v6}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 1557
    .local v3, "storageDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 1559
    :cond_1
    :try_start_0
    const-string v6, ".jpg"

    invoke-static {v1, v6, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 1560
    :catch_0
    move-exception v0

    .line 1562
    .local v0, "ex":Ljava/io/IOException;
    sget-object v6, Lorg/xwalk/core/internal/XWalkViewInternal;->TAG:Ljava/lang/String;

    const-string v7, "Unable to create Image File, please make sure permission \'WRITE_EXTERNAL_STORAGE\' was added."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private deleteImageFile()Z
    .locals 4

    .prologue
    .line 1569
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mCameraPhotoPath:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mCameraPhotoPath:Ljava/lang/String;

    const-string v3, "file:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1570
    :cond_0
    const/4 v2, 0x0

    .line 1574
    :goto_0
    return v2

    .line 1572
    :cond_1
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mCameraPhotoPath:Ljava/lang/String;

    const-string v3, "file:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v1, v2, v3

    .line 1573
    .local v1, "filePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1574
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_0
.end method

.method private static init(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 407
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkViewInternal;->sInitialized:Z

    if-eqz v0, :cond_0

    .line 420
    :goto_0
    return-void

    .line 409
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lorg/xwalk/core/internal/XWalkViewDelegate;->init(Landroid/content/Context;Landroid/content/Context;)V

    .line 413
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/base/ApplicationStatusManager;->init(Landroid/app/Application;)V

    .line 417
    invoke-static {p1}, Lorg/chromium/base/ApplicationStatusManager;->informActivityStarted(Landroid/app/Activity;)V

    .line 419
    const/4 v0, 0x1

    sput-boolean v0, Lorg/xwalk/core/internal/XWalkViewInternal;->sInitialized:Z

    goto :goto_0
.end method

.method private onActivityStateChange(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "newState"    # I

    .prologue
    .line 1424
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkViewInternal;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1426
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mExternalExtensionManager:Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;

    if-eqz v0, :cond_1

    .line 1427
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mExternalExtensionManager:Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;->onActivityStateChange(Landroid/app/Activity;I)V

    .line 1430
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 1449
    :goto_0
    return-void

    .line 1432
    :pswitch_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->onShow()V

    goto :goto_0

    .line 1435
    :pswitch_1
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->pauseTimers()V

    goto :goto_0

    .line 1438
    :pswitch_2
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->resumeTimers()V

    goto :goto_0

    .line 1441
    :pswitch_3
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->onDestroy()V

    goto :goto_0

    .line 1444
    :pswitch_4
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->onHide()V

    goto :goto_0

    .line 1430
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        reservable = true
    .end annotation

    .prologue
    .line 669
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 672
    :goto_0
    return-void

    .line 670
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 671
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkContent;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method canGoBack()Z
    .locals 1

    .prologue
    .line 1207
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1209
    :goto_0
    return v0

    .line 1208
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1209
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->canGoBack()Z

    move-result v0

    goto :goto_0
.end method

.method canGoForward()Z
    .locals 1

    .prologue
    .line 1219
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1221
    :goto_0
    return v0

    .line 1220
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1221
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->canGoForward()Z

    move-result v0

    goto :goto_0
.end method

.method public canZoomIn()Z
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1155
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1157
    :goto_0
    return v0

    .line 1156
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1157
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->canZoomIn()Z

    move-result v0

    goto :goto_0
.end method

.method public canZoomOut()Z
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1167
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1169
    :goto_0
    return v0

    .line 1168
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1169
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->canZoomOut()Z

    move-result v0

    goto :goto_0
.end method

.method public captureBitmapAsync(Lorg/xwalk/core/internal/XWalkGetBitmapCallbackInternal;)V
    .locals 1
    .param p1, "callback"    # Lorg/xwalk/core/internal/XWalkGetBitmapCallbackInternal;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1056
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1059
    :goto_0
    return-void

    .line 1057
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1058
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->captureBitmapAsync(Lorg/xwalk/core/internal/XWalkGetBitmapCallbackInternal;)V

    goto :goto_0
.end method

.method public clearCache(Z)V
    .locals 1
    .param p1, "includeDiskFiles"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 709
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 712
    :goto_0
    return-void

    .line 710
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 711
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->clearCache(Z)V

    goto :goto_0
.end method

.method public clearCacheForSingleFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 722
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 725
    :goto_0
    return-void

    .line 723
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 724
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->clearCacheForSingleFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearClientCertPreferences(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1805
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1808
    :goto_0
    return-void

    .line 1806
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1807
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->clearClientCertPreferences(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public clearFormData()V
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1308
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1311
    :goto_0
    return-void

    .line 1309
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1310
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->hideAutofillPopup()V

    goto :goto_0
.end method

.method clearHistory()V
    .locals 1

    .prologue
    .line 1231
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1234
    :goto_0
    return-void

    .line 1232
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1233
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->clearHistory()V

    goto :goto_0
.end method

.method public clearMatches()V
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1875
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1878
    :goto_0
    return-void

    .line 1876
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1877
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->clearMatches()V

    goto :goto_0
.end method

.method public clearSslPreferences()V
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1793
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1796
    :goto_0
    return-void

    .line 1794
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1795
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->clearSslPreferences()V

    goto :goto_0
.end method

.method public completeWindowCreation(Lorg/xwalk/core/internal/XWalkViewInternal;)V
    .locals 2
    .param p1, "newXWalkView"    # Lorg/xwalk/core/internal/XWalkViewInternal;

    .prologue
    .line 449
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lorg/xwalk/core/internal/XWalkContent;->supplyContentsForPopup(Lorg/xwalk/core/internal/XWalkContent;)V

    .line 450
    return-void

    .line 449
    :cond_0
    iget-object v0, p1, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    goto :goto_0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1729
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1718
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollExtent()I
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1761
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1750
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1739
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method destroy()V
    .locals 1

    .prologue
    .line 1237
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1242
    :goto_0
    return-void

    .line 1238
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mActivityStateListener:Lorg/xwalk/core/internal/XWalkViewInternal$XWalkActivityStateListener;

    invoke-static {v0}, Lorg/chromium/base/ApplicationStatus;->unregisterActivityStateListener(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;)V

    .line 1239
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mActivityStateListener:Lorg/xwalk/core/internal/XWalkViewInternal$XWalkActivityStateListener;

    .line 1240
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->destroy()V

    .line 1241
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->disableRemoteDebugging()V

    goto :goto_0
.end method

.method disableRemoteDebugging()V
    .locals 1

    .prologue
    .line 1245
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1248
    :goto_0
    return-void

    .line 1246
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1247
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->disableRemoteDebugging()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1407
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1412
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->hasEnteredFullscreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1413
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->leaveFullscreen()V

    .line 1420
    :goto_0
    return v0

    .line 1415
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1416
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->goBack()V

    goto :goto_0

    .line 1420
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public enableRemoteDebugging()V
    .locals 1

    .prologue
    .line 1089
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1092
    :goto_0
    return-void

    .line 1090
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1091
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->enableRemoteDebugging()V

    goto :goto_0
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
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

    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 696
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 699
    :goto_0
    return-void

    .line 697
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 698
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkContent;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0
.end method

.method public findAllAsync(Ljava/lang/String;)V
    .locals 1
    .param p1, "searchString"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1846
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1849
    :goto_0
    return-void

    .line 1847
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1848
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->findAllAsync(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public findNext(Z)V
    .locals 1
    .param p1, "forward"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1863
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1866
    :goto_0
    return-void

    .line 1864
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1865
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->findNext(Z)V

    goto :goto_0
.end method

.method public getAPIVersion()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mActivity:Landroid/app/Activity;

    .line 437
    :goto_0
    return-object v0

    .line 431
    :cond_0
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 432
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    .line 436
    :cond_1
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkViewInternal;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 437
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1818
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1820
    :goto_0
    return-object v0

    .line 1819
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1820
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    goto :goto_0
.end method

.method public getCompositingSurfaceType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1887
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1888
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1889
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getCompositingSurfaceType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getContentHeight()I
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 618
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getContentID()I
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 1203
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getRoutingID()I

    move-result v0

    goto :goto_0
.end method

.method public getExtensionManager()Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1771
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1773
    :goto_0
    return-object v0

    .line 1772
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1773
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mExternalExtensionManager:Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;

    goto :goto_0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1282
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1284
    :goto_0
    return-object v0

    .line 1283
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1284
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getHitTestResult()Lorg/xwalk/core/internal/XWalkHitTestResultInternal;
    .locals 3
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 601
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 606
    :goto_0
    return-object v1

    .line 602
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 603
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkContent;->getLastHitTestResult()Lorg/xwalk/core/internal/XWalkContent$HitTestData;

    move-result-object v0

    .line 604
    .local v0, "data":Lorg/xwalk/core/internal/XWalkContent$HitTestData;
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mXWalkHitTestResult:Lorg/xwalk/core/internal/XWalkHitTestResultInternal;

    iget v2, v0, Lorg/xwalk/core/internal/XWalkContent$HitTestData;->hitTestResultType:I

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/XWalkHitTestResultInternal;->setType(I)V

    .line 605
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mXWalkHitTestResult:Lorg/xwalk/core/internal/XWalkHitTestResultInternal;

    iget-object v2, v0, Lorg/xwalk/core/internal/XWalkContent$HitTestData;->hitTestResultExtraData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/XWalkHitTestResultInternal;->setExtra(Ljava/lang/String;)V

    .line 606
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mXWalkHitTestResult:Lorg/xwalk/core/internal/XWalkHitTestResultInternal;

    goto :goto_0
.end method

.method public getNavigationHistory()Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 654
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 656
    :goto_0
    return-object v0

    .line 655
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 656
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getNavigationHistory()Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    move-result-object v0

    goto :goto_0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 641
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 643
    :goto_0
    return-object v0

    .line 642
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 643
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRemoteDebuggingUrl()Landroid/net/Uri;
    .locals 3
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1102
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v2, :cond_1

    .line 1107
    :cond_0
    :goto_0
    return-object v1

    .line 1103
    :cond_1
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1104
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v2}, Lorg/xwalk/core/internal/XWalkContent;->getRemoteDebuggingUrl()Ljava/lang/String;

    move-result-object v0

    .line 1105
    .local v0, "wsUrl":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1107
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public getSettings()Lorg/xwalk/core/internal/XWalkSettingsInternal;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1068
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1070
    :goto_0
    return-object v0

    .line 1069
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1070
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getSettings()Lorg/xwalk/core/internal/XWalkSettingsInternal;

    move-result-object v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 629
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 631
    :goto_0
    return-object v0

    .line 630
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 631
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 589
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 591
    :goto_0
    return-object v0

    .line 590
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 591
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1030
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getSettings()Lorg/xwalk/core/internal/XWalkSettingsInternal;

    move-result-object v0

    .line 1031
    .local v0, "settings":Lorg/xwalk/core/internal/XWalkSettingsInternal;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1033
    :goto_0
    return-object v1

    .line 1032
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1033
    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getViewContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getXWalkContentForTest()Lorg/chromium/content/browser/ContentViewCore;
    .locals 1

    .prologue
    .line 1579
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getContentViewCoreForTest()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    return-object v0
.end method

.method public getXWalkVersion()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 946
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 947
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->getXWalkVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method goBack()V
    .locals 1

    .prologue
    .line 1213
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1216
    :goto_0
    return-void

    .line 1214
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1215
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->goBack()V

    goto :goto_0
.end method

.method goForward()V
    .locals 1

    .prologue
    .line 1225
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1228
    :goto_0
    return-void

    .line 1226
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1227
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->goForward()V

    goto :goto_0
.end method

.method public hasEnteredFullscreen()Z
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 734
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 736
    :goto_0
    return v0

    .line 735
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 736
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->hasEnteredFullscreen()Z

    move-result v0

    goto :goto_0
.end method

.method protected initXWalkContent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "animatable"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 453
    new-instance v2, Lorg/xwalk/core/internal/XWalkViewInternal$XWalkActivityStateListener;

    invoke-direct {v2, p0, p0}, Lorg/xwalk/core/internal/XWalkViewInternal$XWalkActivityStateListener;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkViewInternal;)V

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mActivityStateListener:Lorg/xwalk/core/internal/XWalkViewInternal$XWalkActivityStateListener;

    .line 454
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mActivityStateListener:Lorg/xwalk/core/internal/XWalkViewInternal$XWalkActivityStateListener;

    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/chromium/base/ApplicationStatus;->registerStateListenerForActivity(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;Landroid/app/Activity;)V

    .line 457
    iput-boolean v4, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mIsHidden:Z

    .line 458
    new-instance v2, Lorg/xwalk/core/internal/XWalkContent;

    invoke-direct {v2, p1, p2, p0}, Lorg/xwalk/core/internal/XWalkContent;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/xwalk/core/internal/XWalkViewInternal;)V

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    .line 464
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v2}, Lorg/xwalk/core/internal/XWalkContent;->resumeTimers()V

    .line 466
    new-instance v2, Lorg/xwalk/core/internal/XWalkClient;

    invoke-direct {v2, p0}, Lorg/xwalk/core/internal/XWalkClient;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    invoke-virtual {p0, v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->setXWalkClient(Lorg/xwalk/core/internal/XWalkClient;)V

    .line 469
    new-instance v2, Lorg/xwalk/core/internal/XWalkWebChromeClient;

    invoke-direct {v2, p0}, Lorg/xwalk/core/internal/XWalkWebChromeClient;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    invoke-virtual {p0, v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->setXWalkWebChromeClient(Lorg/xwalk/core/internal/XWalkWebChromeClient;)V

    .line 473
    new-instance v2, Lorg/xwalk/core/internal/XWalkUIClientInternal;

    invoke-direct {v2, p0}, Lorg/xwalk/core/internal/XWalkUIClientInternal;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    invoke-virtual {p0, v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->setUIClient(Lorg/xwalk/core/internal/XWalkUIClientInternal;)V

    .line 474
    new-instance v2, Lorg/xwalk/core/internal/XWalkResourceClientInternal;

    invoke-direct {v2, p0}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    invoke-virtual {p0, v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->setResourceClient(Lorg/xwalk/core/internal/XWalkResourceClientInternal;)V

    .line 476
    new-instance v2, Lorg/xwalk/core/internal/XWalkDownloadListenerImpl;

    invoke-direct {v2, p1}, Lorg/xwalk/core/internal/XWalkDownloadListenerImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->setDownloadListener(Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;)V

    .line 477
    new-instance v2, Lorg/xwalk/core/internal/XWalkNavigationHandlerImpl;

    invoke-direct {v2, p1}, Lorg/xwalk/core/internal/XWalkNavigationHandlerImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->setNavigationHandler(Lorg/xwalk/core/internal/XWalkNavigationHandler;)V

    .line 478
    new-instance v2, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;

    invoke-direct {v2, p1, p0}, Lorg/xwalk/core/internal/XWalkNotificationServiceImpl;-><init>(Landroid/content/Context;Lorg/xwalk/core/internal/XWalkViewInternal;)V

    invoke-virtual {p0, v2}, Lorg/xwalk/core/internal/XWalkViewInternal;->setNotificationService(Lorg/xwalk/core/internal/XWalkNotificationService;)V

    .line 480
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v2

    const-string v3, "disable-xwalk-extensions"

    invoke-virtual {v2, v3}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 481
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/xwalk/core/internal/extension/BuiltinXWalkExtensions;->load(Landroid/content/Context;Landroid/app/Activity;)V

    .line 486
    :goto_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkPathHelper;->initialize()V

    .line 487
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/xwalk/core/internal/XWalkPathHelper;->setCacheDirectory(Ljava/lang/String;)V

    .line 490
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 491
    .local v1, "state":Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 493
    :cond_0
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 494
    .local v0, "extCacheDir":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 495
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/xwalk/core/internal/XWalkPathHelper;->setExternalCacheDirectory(Ljava/lang/String;)V

    .line 500
    .end local v0    # "extCacheDir":Ljava/io/File;
    :cond_1
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mActivity:Landroid/app/Activity;

    invoke-static {v2, p1}, Lorg/xwalk/core/internal/XWalkPresentationHost;->createInstanceOnce(Landroid/app/Activity;Landroid/content/Context;)Lorg/xwalk/core/internal/XWalkPresentationHost;

    .line 501
    return-void

    .line 483
    .end local v1    # "state":Ljava/lang/String;
    :cond_2
    const-string v2, "enable-extensions"

    invoke-static {v2, v4}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->setValue(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method isOwnerActivityRunning()Z
    .locals 2

    .prologue
    .line 1261
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/base/ApplicationStatus;->getStateForActivity(Landroid/app/Activity;)I

    move-result v0

    .line 1262
    .local v0, "status":I
    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    .line 1263
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public leaveFullscreen()V
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 746
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 749
    :goto_0
    return-void

    .line 747
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 748
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->exitFullscreen()V

    goto :goto_0
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 520
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 523
    :goto_0
    return-void

    .line 521
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 522
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/xwalk/core/internal/XWalkContent;->loadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
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

    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 534
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 537
    :goto_0
    return-void

    .line 535
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 536
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkContent;->loadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public loadAppFromManifest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 553
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 556
    :goto_0
    return-void

    .line 554
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 555
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkContent;->loadAppFromManifest(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method navigateTo(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 1267
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1269
    :goto_0
    return-void

    .line 1268
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->navigateTo(I)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 848
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v2, :cond_0

    .line 882
    :goto_0
    return-void

    .line 850
    :cond_0
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mExternalExtensionManager:Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;

    if-eqz v2, :cond_1

    .line 851
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mExternalExtensionManager:Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;

    invoke-virtual {v2, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;->onActivityResult(IILandroid/content/Intent;)V

    .line 854
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_7

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mFilePathCallback:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_7

    .line 855
    const/4 v1, 0x0

    .line 858
    .local v1, "results":Landroid/net/Uri;
    const/4 v2, -0x1

    if-ne v2, p2, :cond_6

    .line 860
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_4

    .line 863
    :cond_2
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mCameraPhotoPath:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 864
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mCameraPhotoPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 877
    :cond_3
    :goto_1
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mFilePathCallback:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 878
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mFilePathCallback:Landroid/webkit/ValueCallback;

    goto :goto_0

    .line 867
    :cond_4
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 868
    .local v0, "dataString":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 869
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 871
    :cond_5
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->deleteImageFile()Z

    goto :goto_1

    .line 873
    .end local v0    # "dataString":Ljava/lang/String;
    :cond_6
    if-nez p2, :cond_3

    .line 874
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->deleteImageFile()Z

    goto :goto_1

    .line 881
    .end local v1    # "results":Landroid/net/Uri;
    :cond_7
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v2, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkContent;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1181
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 823
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->destroy()V

    .line 824
    return-void
.end method

.method public onFocusChangedDelegate(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        delegate = true
        preWrapperLines = {
            "onFocusChanged(gainFocus, direction, previouslyFocusedRect);"
        }
    .end annotation

    .prologue
    .line 1614
    return-void
.end method

.method public onHide()V
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 795
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mIsHidden:Z

    if-eqz v0, :cond_1

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 796
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->onPause()V

    .line 797
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mIsHidden:Z

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 894
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 900
    :goto_0
    return v0

    .line 896
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mExternalExtensionManager:Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;

    if-eqz v0, :cond_1

    .line 897
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mExternalExtensionManager:Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;->onNewIntent(Landroid/content/Intent;)V

    .line 900
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->onNewIntent(Landroid/content/Intent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOverScrolledDelegate(IIZZ)V
    .locals 0
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        delegate = true
        preWrapperLines = {
            "onOverScrolled(scrollX, scrollY, clampedX, clampedY);"
        }
    .end annotation

    .prologue
    .line 1619
    return-void
.end method

.method public onScrollChangedDelegate(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        delegate = true
        preWrapperLines = {
            "onScrollChanged(l, t, oldl, oldt);"
        }
    .end annotation

    .prologue
    .line 1609
    return-void
.end method

.method public onShow()V
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 810
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mIsHidden:Z

    if-nez v0, :cond_1

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 811
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->onResume()V

    .line 812
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mIsHidden:Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1602
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEventDelegate(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        delegate = true
        preWrapperLines = {
            "return onTouchEvent(event);"
        }
    .end annotation

    .prologue
    .line 1594
    const/4 v0, 0x0

    return v0
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 16
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1662
    invoke-super/range {p0 .. p0}, Landroid/widget/FrameLayout;->getOverScrollMode()I

    move-result v10

    .line 1663
    .local v10, "overScrollMode":I
    invoke-virtual/range {p0 .. p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->computeHorizontalScrollRange()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->computeHorizontalScrollExtent()I

    move-result v15

    if-le v14, v15, :cond_7

    const/4 v2, 0x1

    .line 1665
    .local v2, "canScrollHorizontal":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->computeVerticalScrollRange()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->computeVerticalScrollExtent()I

    move-result v15

    if-le v14, v15, :cond_8

    const/4 v3, 0x1

    .line 1667
    .local v3, "canScrollVertical":Z
    :goto_1
    if-eqz v10, :cond_0

    const/4 v14, 0x1

    if-ne v10, v14, :cond_9

    if-eqz v2, :cond_9

    :cond_0
    const/4 v9, 0x1

    .line 1669
    .local v9, "overScrollHorizontal":Z
    :goto_2
    if-eqz v10, :cond_1

    const/4 v14, 0x1

    if-ne v10, v14, :cond_a

    if-eqz v3, :cond_a

    :cond_1
    const/4 v11, 0x1

    .line 1672
    .local v11, "overScrollVertical":Z
    :goto_3
    add-int v7, p3, p1

    .line 1673
    .local v7, "newScrollX":I
    if-nez v9, :cond_2

    .line 1674
    const/16 p7, 0x0

    .line 1677
    :cond_2
    add-int v8, p4, p2

    .line 1678
    .local v8, "newScrollY":I
    if-nez v11, :cond_3

    .line 1679
    const/16 p8, 0x0

    .line 1683
    :cond_3
    move/from16 v0, p7

    neg-int v6, v0

    .line 1684
    .local v6, "left":I
    add-int v12, p7, p5

    .line 1685
    .local v12, "right":I
    move/from16 v0, p8

    neg-int v13, v0

    .line 1686
    .local v13, "top":I
    add-int v1, p8, p6

    .line 1688
    .local v1, "bottom":I
    const/4 v4, 0x0

    .line 1689
    .local v4, "clampedX":Z
    if-le v7, v12, :cond_b

    .line 1690
    move v7, v12

    .line 1691
    const/4 v4, 0x1

    .line 1697
    :cond_4
    :goto_4
    const/4 v5, 0x0

    .line 1698
    .local v5, "clampedY":Z
    if-le v8, v1, :cond_c

    .line 1699
    move v8, v1

    .line 1700
    const/4 v5, 0x1

    .line 1706
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lorg/xwalk/core/internal/XWalkViewInternal;->scrollTo(II)V

    .line 1708
    if-nez v4, :cond_6

    if-eqz v5, :cond_d

    :cond_6
    const/4 v14, 0x1

    :goto_6
    return v14

    .line 1663
    .end local v1    # "bottom":I
    .end local v2    # "canScrollHorizontal":Z
    .end local v3    # "canScrollVertical":Z
    .end local v4    # "clampedX":Z
    .end local v5    # "clampedY":Z
    .end local v6    # "left":I
    .end local v7    # "newScrollX":I
    .end local v8    # "newScrollY":I
    .end local v9    # "overScrollHorizontal":Z
    .end local v11    # "overScrollVertical":Z
    .end local v12    # "right":I
    .end local v13    # "top":I
    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    .line 1665
    .restart local v2    # "canScrollHorizontal":Z
    :cond_8
    const/4 v3, 0x0

    goto :goto_1

    .line 1667
    .restart local v3    # "canScrollVertical":Z
    :cond_9
    const/4 v9, 0x0

    goto :goto_2

    .line 1669
    .restart local v9    # "overScrollHorizontal":Z
    :cond_a
    const/4 v11, 0x0

    goto :goto_3

    .line 1692
    .restart local v1    # "bottom":I
    .restart local v4    # "clampedX":Z
    .restart local v6    # "left":I
    .restart local v7    # "newScrollX":I
    .restart local v8    # "newScrollY":I
    .restart local v11    # "overScrollVertical":Z
    .restart local v12    # "right":I
    .restart local v13    # "top":I
    :cond_b
    if-ge v7, v6, :cond_4

    .line 1693
    move v7, v6

    .line 1694
    const/4 v4, 0x1

    goto :goto_4

    .line 1701
    .restart local v5    # "clampedY":Z
    :cond_c
    if-ge v8, v13, :cond_5

    .line 1702
    move v8, v13

    .line 1703
    const/4 v5, 0x1

    goto :goto_5

    .line 1708
    :cond_d
    const/4 v14, 0x0

    goto :goto_6
.end method

.method public pauseTimers()V
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 763
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 766
    :goto_0
    return-void

    .line 764
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 765
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->pauseTimers()V

    goto :goto_0
.end method

.method public performLongClickDelegate()Z
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        delegate = true
        preWrapperLines = {
            "return performLongClick();"
        }
    .end annotation

    .prologue
    .line 1588
    const/4 v0, 0x0

    return v0
.end method

.method public reload(I)V
    .locals 1
    .param p1, "mode"    # I
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 565
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 568
    :goto_0
    return-void

    .line 566
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 567
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->reload(I)V

    goto :goto_0
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        reservable = true
    .end annotation

    .prologue
    .line 683
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 686
    :goto_0
    return-void

    .line 684
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 685
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->removeJavascriptInterface(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "inState"    # Landroid/os/Bundle;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 924
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v1, :cond_1

    .line 926
    :cond_0
    :goto_0
    return v0

    .line 925
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v1, p1}, Lorg/xwalk/core/internal/XWalkContent;->restoreState(Landroid/os/Bundle;)Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public resumeTimers()V
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 780
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 783
    :goto_0
    return-void

    .line 781
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 782
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->resumeTimers()V

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 911
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 913
    :goto_0
    return v0

    .line 912
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->saveState(Landroid/os/Bundle;)Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    .line 913
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public scrollBy(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1638
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkContent;->scrollBy(II)V

    .line 1639
    return-void
.end method

.method public scrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1632
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkContent;->scrollTo(II)V

    .line 1633
    return-void
.end method

.method public setAcceptLanguages(Ljava/lang/String;)V
    .locals 1
    .param p1, "acceptLanguages"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1043
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getSettings()Lorg/xwalk/core/internal/XWalkSettingsInternal;

    move-result-object v0

    .line 1044
    .local v0, "settings":Lorg/xwalk/core/internal/XWalkSettingsInternal;
    if-nez v0, :cond_0

    .line 1047
    :goto_0
    return-void

    .line 1045
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1046
    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setAcceptLanguages(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 982
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 985
    :goto_0
    return-void

    .line 983
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 984
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setDownloadListener(Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;)V
    .locals 1
    .param p1, "listener"    # Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        reservable = true
    .end annotation

    .prologue
    .line 1379
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1382
    :goto_0
    return-void

    .line 1380
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1381
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setDownloadListener(Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;)V

    goto :goto_0
.end method

.method public setExternalExtensionManager(Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;)V
    .locals 1
    .param p1, "manager"    # Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;

    .prologue
    .line 1781
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1784
    :goto_0
    return-void

    .line 1782
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1783
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mExternalExtensionManager:Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;

    goto :goto_0
.end method

.method public setFindListener(Lorg/xwalk/core/internal/XWalkFindListenerInternal;)V
    .locals 1
    .param p1, "listener"    # Lorg/xwalk/core/internal/XWalkFindListenerInternal;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        reservable = true
    .end annotation

    .prologue
    .line 1831
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1834
    :goto_0
    return-void

    .line 1832
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1833
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setFindListener(Lorg/xwalk/core/internal/XWalkFindListenerInternal;)V

    goto :goto_0
.end method

.method public setInitialScale(I)V
    .locals 2
    .param p1, "scaleInPercent"    # I
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1191
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1192
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getSettings()Lorg/xwalk/core/internal/XWalkSettingsInternal;

    move-result-object v0

    .line 1193
    .local v0, "settings":Lorg/xwalk/core/internal/XWalkSettingsInternal;
    if-nez v0, :cond_0

    .line 1195
    :goto_0
    return-void

    .line 1194
    :cond_0
    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setInitialPageScale(F)V

    goto :goto_0
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 0
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        disableReflectMethod = true
        preWrapperLines = {
            "        return;"
        }
    .end annotation

    .prologue
    .line 1008
    return-void
.end method

.method public setNavigationHandler(Lorg/xwalk/core/internal/XWalkNavigationHandler;)V
    .locals 1
    .param p1, "handler"    # Lorg/xwalk/core/internal/XWalkNavigationHandler;

    .prologue
    .line 1388
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1391
    :goto_0
    return-void

    .line 1389
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1390
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setNavigationHandler(Lorg/xwalk/core/internal/XWalkNavigationHandler;)V

    goto :goto_0
.end method

.method public setNetworkAvailable(Z)V
    .locals 1
    .param p1, "networkUp"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1079
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1082
    :goto_0
    return-void

    .line 1080
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1081
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setNetworkAvailable(Z)V

    goto :goto_0
.end method

.method public setNotificationService(Lorg/xwalk/core/internal/XWalkNotificationService;)V
    .locals 1
    .param p1, "service"    # Lorg/xwalk/core/internal/XWalkNotificationService;

    .prologue
    .line 1397
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1400
    :goto_0
    return-void

    .line 1398
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1399
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setNotificationService(Lorg/xwalk/core/internal/XWalkNotificationService;)V

    goto :goto_0
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnTouchListener;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1626
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1627
    return-void
.end method

.method public setOriginAccessWhitelist(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "patterns"    # [Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 995
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 998
    :goto_0
    return-void

    .line 996
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 997
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkContent;->setOriginAccessWhitelist(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method setOverlayVideoMode(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1272
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setOverlayVideoMode(Z)V

    .line 1273
    return-void
.end method

.method public setResourceClient(Lorg/xwalk/core/internal/XWalkResourceClientInternal;)V
    .locals 1
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkResourceClientInternal;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        reservable = true
    .end annotation

    .prologue
    .line 971
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 974
    :goto_0
    return-void

    .line 972
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 973
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setResourceClient(Lorg/xwalk/core/internal/XWalkResourceClientInternal;)V

    goto :goto_0
.end method

.method public setSurfaceViewVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        reservable = true
    .end annotation

    .prologue
    .line 1334
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1337
    :goto_0
    return-void

    .line 1335
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1336
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setVisibility(I)V

    goto :goto_0
.end method

.method public setUIClient(Lorg/xwalk/core/internal/XWalkUIClientInternal;)V
    .locals 1
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkUIClientInternal;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        reservable = true
    .end annotation

    .prologue
    .line 958
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 961
    :goto_0
    return-void

    .line 959
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 960
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setUIClient(Lorg/xwalk/core/internal/XWalkUIClientInternal;)V

    goto :goto_0
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1017
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getSettings()Lorg/xwalk/core/internal/XWalkSettingsInternal;

    move-result-object v0

    .line 1018
    .local v0, "settings":Lorg/xwalk/core/internal/XWalkSettingsInternal;
    if-nez v0, :cond_0

    .line 1021
    :goto_0
    return-void

    .line 1019
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1020
    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        disableReflectMethod = true
        preWrapperLines = {
            "        if (visibility == View.INVISIBLE) visibility = View.GONE;",
            "        super.setVisibility(visibility);",
            "        setXWalkViewInternalVisibility(visibility);",
            "        setSurfaceViewVisibility(visibility);"
        }
    .end annotation

    .prologue
    .line 1325
    return-void
.end method

.method public setXWalkClient(Lorg/xwalk/core/internal/XWalkClient;)V
    .locals 1
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkClient;

    .prologue
    .line 1356
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1359
    :goto_0
    return-void

    .line 1357
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1358
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setXWalkClient(Lorg/xwalk/core/internal/XWalkClient;)V

    goto :goto_0
.end method

.method public setXWalkViewInternalVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
        reservable = true
    .end annotation

    .prologue
    .line 1346
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1349
    :goto_0
    return-void

    .line 1347
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1348
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setXWalkWebChromeClient(Lorg/xwalk/core/internal/XWalkWebChromeClient;)V
    .locals 1
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkWebChromeClient;

    .prologue
    .line 1365
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1368
    :goto_0
    return-void

    .line 1366
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1367
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setXWalkWebChromeClient(Lorg/xwalk/core/internal/XWalkWebChromeClient;)V

    goto :goto_0
.end method

.method public setZOrderOnTop(Z)V
    .locals 1
    .param p1, "onTop"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1295
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1297
    :goto_0
    return-void

    .line 1296
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->setZOrderOnTop(Z)V

    goto :goto_0
.end method

.method public showFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p2, "acceptType"    # Ljava/lang/String;
    .param p3, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "uploadFile":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    const/4 v9, 0x1

    .line 1472
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mFilePathCallback:Landroid/webkit/ValueCallback;

    .line 1474
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1475
    .local v6, "takePictureIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1477
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->createImageFile()Ljava/io/File;

    move-result-object v4

    .line 1479
    .local v4, "photoFile":Ljava/io/File;
    if-eqz v4, :cond_1

    .line 1480
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mCameraPhotoPath:Ljava/lang/String;

    .line 1481
    const-string v7, "PhotoPath"

    iget-object v8, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mCameraPhotoPath:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1482
    const-string v7, "output"

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1488
    .end local v4    # "photoFile":Ljava/io/File;
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1489
    .local v0, "camcorder":Landroid/content/Intent;
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1491
    .local v5, "soundRecorder":Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1492
    .local v2, "contentSelectionIntent":Landroid/content/Intent;
    const-string v7, "android.intent.category.OPENABLE"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1493
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1496
    .local v3, "extraIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    const-string v7, ","

    invoke-virtual {p2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "*/*"

    invoke-virtual {p2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1497
    const-string v7, "true"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1498
    const-string v7, "image/"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1499
    if-eqz v6, :cond_6

    .line 1500
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v6, v9}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1540
    :goto_1
    return v9

    .line 1485
    .end local v0    # "camcorder":Landroid/content/Intent;
    .end local v2    # "contentSelectionIntent":Landroid/content/Intent;
    .end local v3    # "extraIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v5    # "soundRecorder":Landroid/content/Intent;
    .restart local v4    # "photoFile":Ljava/io/File;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 1503
    .end local v4    # "photoFile":Ljava/io/File;
    .restart local v0    # "camcorder":Landroid/content/Intent;
    .restart local v2    # "contentSelectionIntent":Landroid/content/Intent;
    .restart local v3    # "extraIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .restart local v5    # "soundRecorder":Landroid/content/Intent;
    :cond_2
    const-string v7, "video/"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1504
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v0, v9}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1506
    :cond_3
    const-string v7, "audio/"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1507
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v5, v9}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1511
    :cond_4
    const-string v7, "image/"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1512
    if-eqz v6, :cond_5

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1513
    :cond_5
    const-string v7, "image/*"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1525
    :cond_6
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    const-string v8, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v7, v8}, Lorg/xwalk/core/internal/XWalkContent;->hasPermission(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1527
    if-eqz v6, :cond_7

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1528
    :cond_7
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1529
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1530
    const-string v7, "*/*"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1533
    :cond_8
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.CHOOSER"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1534
    .local v1, "chooserIntent":Landroid/content/Intent;
    const-string v7, "android.intent.extra.INTENT"

    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1535
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    .line 1536
    const-string v8, "android.intent.extra.INITIAL_INTENTS"

    const/4 v7, 0x0

    new-array v7, v7, [Landroid/content/Intent;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/os/Parcelable;

    invoke-virtual {v1, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1539
    :cond_9
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v1, v9}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1514
    .end local v1    # "chooserIntent":Landroid/content/Intent;
    :cond_a
    const-string v7, "video/"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1515
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1516
    const-string v7, "video/*"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 1517
    :cond_b
    const-string v7, "audio/"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1518
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1519
    const-string v7, "audio/*"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 833
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 834
    return-void
.end method

.method public stopLoading()V
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 576
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 579
    :goto_0
    return-void

    .line 577
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 578
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->stopLoading()V

    goto :goto_0
.end method

.method public zoomBy(F)V
    .locals 1
    .param p1, "factor"    # F
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1143
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    .line 1146
    :goto_0
    return-void

    .line 1144
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1145
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContent;->zoomBy(F)V

    goto :goto_0
.end method

.method public zoomIn()Z
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1117
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1119
    :goto_0
    return v0

    .line 1118
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1119
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->zoomIn()Z

    move-result v0

    goto :goto_0
.end method

.method public zoomOut()Z
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 1129
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1131
    :goto_0
    return v0

    .line 1130
    :cond_0
    invoke-static {}, Lorg/xwalk/core/internal/XWalkViewInternal;->checkThreadSafety()V

    .line 1131
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewInternal;->mContent:Lorg/xwalk/core/internal/XWalkContent;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContent;->zoomOut()Z

    move-result v0

    goto :goto_0
.end method
