.class public Lorg/chromium/ui/base/WindowAndroid;
.super Ljava/lang/Object;
.source "WindowAndroid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;,
        Lorg/chromium/ui/base/WindowAndroid$IntentCallback;,
        Lorg/chromium/ui/base/WindowAndroid$KeyboardVisibilityListener;,
        Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "ui"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final START_INTENT_FAILURE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "WindowAndroid"

.field static final WINDOW_CALLBACK_ERRORS:Ljava/lang/String; = "window_callback_errors"


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAnimationPlaceholderView:Landroid/view/View;

.field private mAnimationsOverContent:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field protected mApplicationContext:Landroid/content/Context;

.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected mIntentErrors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsKeyboardShowing:Z

.field private mIsTouchExplorationEnabled:Z

.field private mKeyboardAccessoryView:Landroid/view/ViewGroup;

.field private mKeyboardVisibilityListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/chromium/ui/base/WindowAndroid$KeyboardVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeWindowAndroid:J

.field protected mOutstandingIntents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/chromium/ui/base/WindowAndroid$IntentCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionDelegate:Lorg/chromium/ui/base/AndroidPermissionDelegate;

.field private mTouchExplorationMonitor:Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor;

.field private final mVSyncListener:Lorg/chromium/ui/VSyncMonitor$Listener;

.field private final mVSyncMonitor:Lorg/chromium/ui/VSyncMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/ui/base/WindowAndroid;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mAnimationsOverContent:Ljava/util/HashSet;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mIsKeyboardShowing:Z

    .line 115
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mKeyboardVisibilityListeners:Ljava/util/LinkedList;

    .line 118
    new-instance v0, Lorg/chromium/ui/base/WindowAndroid$1;

    invoke-direct {v0, p0}, Lorg/chromium/ui/base/WindowAndroid$1;-><init>(Lorg/chromium/ui/base/WindowAndroid;)V

    iput-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mVSyncListener:Lorg/chromium/ui/VSyncMonitor$Listener;

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mApplicationContext:Landroid/content/Context;

    .line 164
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 165
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mOutstandingIntents:Landroid/util/SparseArray;

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mIntentErrors:Ljava/util/HashMap;

    .line 167
    new-instance v0, Lorg/chromium/ui/VSyncMonitor;

    iget-object v1, p0, Lorg/chromium/ui/base/WindowAndroid;->mVSyncListener:Lorg/chromium/ui/VSyncMonitor$Listener;

    invoke-direct {v0, p1, v1}, Lorg/chromium/ui/VSyncMonitor;-><init>(Landroid/content/Context;Lorg/chromium/ui/VSyncMonitor$Listener;)V

    iput-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mVSyncMonitor:Lorg/chromium/ui/VSyncMonitor;

    .line 168
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mApplicationContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 170
    return-void
.end method

.method static synthetic access$002(Lorg/chromium/ui/base/WindowAndroid;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/chromium/ui/base/WindowAndroid;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lorg/chromium/ui/base/WindowAndroid;->mIsTouchExplorationEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lorg/chromium/ui/base/WindowAndroid;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/ui/base/WindowAndroid;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/ui/base/WindowAndroid;

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/chromium/ui/base/WindowAndroid;->refreshWillNotDraw()V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/ui/base/WindowAndroid;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/ui/base/WindowAndroid;

    .prologue
    .line 43
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    return-wide v0
.end method

.method static synthetic access$400(Lorg/chromium/ui/base/WindowAndroid;)Lorg/chromium/ui/VSyncMonitor;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/ui/base/WindowAndroid;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mVSyncMonitor:Lorg/chromium/ui/VSyncMonitor;

    return-object v0
.end method

.method static synthetic access$500(Lorg/chromium/ui/base/WindowAndroid;JJJ)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/ui/base/WindowAndroid;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # J

    .prologue
    .line 43
    invoke-direct/range {p0 .. p6}, Lorg/chromium/ui/base/WindowAndroid;->nativeOnVSync(JJJ)V

    return-void
.end method

.method static synthetic access$600(Lorg/chromium/ui/base/WindowAndroid;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/ui/base/WindowAndroid;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mAnimationsOverContent:Ljava/util/HashSet;

    return-object v0
.end method

.method public static activityFromContext(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 138
    check-cast p0, Landroid/app/Activity;

    .line 143
    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    return-object p0

    .line 139
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 140
    check-cast p0, Landroid/content/ContextWrapper;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 141
    .restart local p0    # "context":Landroid/content/Context;
    invoke-static {p0}, Lorg/chromium/ui/base/WindowAndroid;->activityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    goto :goto_0

    .line 143
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private static createForTesting(Landroid/content/Context;)Lorg/chromium/ui/base/WindowAndroid;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 174
    new-instance v0, Lorg/chromium/ui/base/WindowAndroid;

    invoke-direct {v0, p0}, Lorg/chromium/ui/base/WindowAndroid;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeInit()J
.end method

.method private native nativeOnActivityStarted(J)V
.end method

.method private native nativeOnActivityStopped(J)V
.end method

.method private native nativeOnVSync(JJJ)V
.end method

.method private native nativeOnVisibilityChanged(JZ)V
.end method

.method private refreshWillNotDraw()V
    .locals 2

    .prologue
    .line 648
    iget-boolean v1, p0, Lorg/chromium/ui/base/WindowAndroid;->mIsTouchExplorationEnabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/chromium/ui/base/WindowAndroid;->mAnimationsOverContent:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 649
    .local v0, "willNotDraw":Z
    :goto_0
    iget-object v1, p0, Lorg/chromium/ui/base/WindowAndroid;->mAnimationPlaceholderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->willNotDraw()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 650
    iget-object v1, p0, Lorg/chromium/ui/base/WindowAndroid;->mAnimationPlaceholderView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 652
    :cond_0
    return-void

    .line 648
    .end local v0    # "willNotDraw":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestVSyncUpdate()V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 451
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mVSyncMonitor:Lorg/chromium/ui/VSyncMonitor;

    invoke-virtual {v0}, Lorg/chromium/ui/VSyncMonitor;->requestUpdate()V

    .line 452
    return-void
.end method


# virtual methods
.method public addKeyboardVisibilityListener(Lorg/chromium/ui/base/WindowAndroid$KeyboardVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/chromium/ui/base/WindowAndroid$KeyboardVisibilityListener;

    .prologue
    .line 562
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mKeyboardVisibilityListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->registerKeyboardVisibilityCallbacks()V

    .line 565
    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mKeyboardVisibilityListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 566
    return-void
.end method

.method public final canRequestPermission(Ljava/lang/String;)Z
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mPermissionDelegate:Lorg/chromium/ui/base/AndroidPermissionDelegate;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mPermissionDelegate:Lorg/chromium/ui/base/AndroidPermissionDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/ui/base/AndroidPermissionDelegate;->canRequestPermission(Ljava/lang/String;)Z

    move-result v0

    .line 311
    :goto_0
    return v0

    .line 307
    :cond_0
    const-string v0, "WindowAndroid"

    const-string v1, "Cannot determine the request permission state as the context is not an Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    sget-boolean v0, Lorg/chromium/ui/base/WindowAndroid;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Failed to determine the request permission state using a WindowAndroid without an Activity"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 311
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canResolveActivity(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 488
    iget-object v1, p0, Lorg/chromium/ui/base/WindowAndroid;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public cancelIntent(I)V
    .locals 3
    .param p1, "requestCode"    # I

    .prologue
    .line 259
    const-string v0, "WindowAndroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t cancel intent as context is not an Activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void
.end method

.method public destroy()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 495
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 496
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/ui/base/WindowAndroid;->nativeDestroy(J)V

    .line 497
    iput-wide v2, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    .line 500
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 501
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mTouchExplorationMonitor:Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mTouchExplorationMonitor:Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor;

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor;->destroy()V

    .line 503
    :cond_1
    return-void
.end method

.method public getActivity()Ljava/lang/ref/WeakReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getContext()Ljava/lang/ref/WeakReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .prologue
    .line 638
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lorg/chromium/ui/base/WindowAndroid;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getKeyboardAccessoryView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mKeyboardAccessoryView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getNativePointer()J
    .locals 4

    .prologue
    .line 511
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 512
    invoke-direct {p0}, Lorg/chromium/ui/base/WindowAndroid;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    .line 514
    :cond_0
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    return-wide v0
.end method

.method public final hasPermission(Ljava/lang/String;)Z
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mPermissionDelegate:Lorg/chromium/ui/base/AndroidPermissionDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mPermissionDelegate:Lorg/chromium/ui/base/AndroidPermissionDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/ui/base/AndroidPermissionDelegate;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    .line 285
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mApplicationContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInsideVSync()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mVSyncMonitor:Lorg/chromium/ui/VSyncMonitor;

    invoke-virtual {v0}, Lorg/chromium/ui/VSyncMonitor;->isInsideVSync()Z

    move-result v0

    return v0
.end method

.method public final isPermissionRevokedByPolicy(Ljava/lang/String;)Z
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 321
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mPermissionDelegate:Lorg/chromium/ui/base/AndroidPermissionDelegate;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mPermissionDelegate:Lorg/chromium/ui/base/AndroidPermissionDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/ui/base/AndroidPermissionDelegate;->isPermissionRevokedByPolicy(Ljava/lang/String;)Z

    move-result v0

    .line 329
    :goto_0
    return v0

    .line 325
    :cond_0
    const-string v0, "WindowAndroid"

    const-string v1, "Cannot determine the policy permission state as the context is not an Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    sget-boolean v0, Lorg/chromium/ui/base/WindowAndroid;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Failed to determine the policy permission state using a WindowAndroid without an Activity"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 329
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected keyboardVisibilityPossiblyChanged(Z)V
    .locals 4
    .param p1, "isShowing"    # Z

    .prologue
    .line 584
    iget-boolean v3, p0, Lorg/chromium/ui/base/WindowAndroid;->mIsKeyboardShowing:Z

    if-ne v3, p1, :cond_1

    .line 593
    :cond_0
    return-void

    .line 585
    :cond_1
    iput-boolean p1, p0, Lorg/chromium/ui/base/WindowAndroid;->mIsKeyboardShowing:Z

    .line 588
    new-instance v2, Ljava/util/LinkedList;

    iget-object v3, p0, Lorg/chromium/ui/base/WindowAndroid;->mKeyboardVisibilityListeners:Ljava/util/LinkedList;

    invoke-direct {v2, v3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 590
    .local v2, "listeners":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/chromium/ui/base/WindowAndroid$KeyboardVisibilityListener;>;"
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/ui/base/WindowAndroid$KeyboardVisibilityListener;

    .line 591
    .local v1, "listener":Lorg/chromium/ui/base/WindowAndroid$KeyboardVisibilityListener;
    invoke-interface {v1, p1}, Lorg/chromium/ui/base/WindowAndroid$KeyboardVisibilityListener;->keyboardVisibilityChanged(Z)V

    goto :goto_0
.end method

.method protected onActivityStarted()V
    .locals 4

    .prologue
    .line 445
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 447
    :goto_0
    return-void

    .line 446
    :cond_0
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/ui/base/WindowAndroid;->nativeOnActivityStarted(J)V

    goto :goto_0
.end method

.method protected onActivityStopped()V
    .locals 4

    .prologue
    .line 436
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 438
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/ui/base/WindowAndroid;->nativeOnActivityStopped(J)V

    goto :goto_0
.end method

.method public onVisibilityChanged(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    .line 427
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 429
    :goto_0
    return-void

    .line 428
    :cond_0
    iget-wide v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/ui/base/WindowAndroid;->nativeOnVisibilityChanged(JZ)V

    goto :goto_0
.end method

.method protected registerKeyboardVisibilityCallbacks()V
    .locals 0

    .prologue
    .line 551
    return-void
.end method

.method public removeIntentCallback(Lorg/chromium/ui/base/WindowAndroid$IntentCallback;)Z
    .locals 3
    .param p1, "callback"    # Lorg/chromium/ui/base/WindowAndroid$IntentCallback;

    .prologue
    .line 269
    iget-object v1, p0, Lorg/chromium/ui/base/WindowAndroid;->mOutstandingIntents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 270
    .local v0, "requestCode":I
    if-gez v0, :cond_0

    const/4 v1, 0x0

    .line 273
    :goto_0
    return v1

    .line 271
    :cond_0
    iget-object v1, p0, Lorg/chromium/ui/base/WindowAndroid;->mOutstandingIntents:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 272
    iget-object v1, p0, Lorg/chromium/ui/base/WindowAndroid;->mIntentErrors:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeKeyboardVisibilityListener(Lorg/chromium/ui/base/WindowAndroid$KeyboardVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/chromium/ui/base/WindowAndroid$KeyboardVisibilityListener;

    .prologue
    .line 572
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mKeyboardVisibilityListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 573
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mKeyboardVisibilityListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->unregisterKeyboardVisibilityCallbacks()V

    .line 576
    :cond_0
    return-void
.end method

.method public final requestPermissions([Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)V
    .locals 2
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "callback"    # Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;

    .prologue
    .line 338
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mPermissionDelegate:Lorg/chromium/ui/base/AndroidPermissionDelegate;

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mPermissionDelegate:Lorg/chromium/ui/base/AndroidPermissionDelegate;

    invoke-interface {v0, p1, p2}, Lorg/chromium/ui/base/AndroidPermissionDelegate;->requestPermissions([Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)V

    .line 345
    :cond_0
    return-void

    .line 343
    :cond_1
    const-string v0, "WindowAndroid"

    const-string v1, "Cannot request permissions as the context is not an Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    sget-boolean v0, Lorg/chromium/ui/base/WindowAndroid;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Failed to request permissions using a WindowAndroid without an Activity"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 411
    if-nez p1, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    const-string v2, "window_callback_errors"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 414
    .local v0, "errors":Ljava/io/Serializable;
    instance-of v2, v0, Ljava/util/HashMap;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 416
    check-cast v1, Ljava/util/HashMap;

    .line 417
    .local v1, "intentErrors":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    iput-object v1, p0, Lorg/chromium/ui/base/WindowAndroid;->mIntentErrors:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 402
    const-string v0, "window_callback_errors"

    iget-object v1, p0, Lorg/chromium/ui/base/WindowAndroid;->mIntentErrors:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 403
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 377
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 378
    return-void
.end method

.method public setAndroidPermissionDelegate(Lorg/chromium/ui/base/AndroidPermissionDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/chromium/ui/base/AndroidPermissionDelegate;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 182
    iput-object p1, p0, Lorg/chromium/ui/base/WindowAndroid;->mPermissionDelegate:Lorg/chromium/ui/base/AndroidPermissionDelegate;

    .line 183
    return-void
.end method

.method public setAnimationPlaceholderView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 523
    iput-object p1, p0, Lorg/chromium/ui/base/WindowAndroid;->mAnimationPlaceholderView:Landroid/view/View;

    .line 527
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mIsTouchExplorationEnabled:Z

    .line 528
    invoke-direct {p0}, Lorg/chromium/ui/base/WindowAndroid;->refreshWillNotDraw()V

    .line 529
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 530
    new-instance v0, Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor;

    invoke-direct {v0, p0}, Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor;-><init>(Lorg/chromium/ui/base/WindowAndroid;)V

    iput-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mTouchExplorationMonitor:Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor;

    .line 532
    :cond_0
    return-void
.end method

.method public setKeyboardAccessoryView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "view"    # Landroid/view/ViewGroup;

    .prologue
    .line 540
    iput-object p1, p0, Lorg/chromium/ui/base/WindowAndroid;->mKeyboardAccessoryView:Landroid/view/ViewGroup;

    .line 541
    return-void
.end method

.method protected showCallbackNonExistentError(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 370
    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/WindowAndroid;->showError(Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method public showCancelableIntent(Landroid/app/PendingIntent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)I
    .locals 3
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "callback"    # Lorg/chromium/ui/base/WindowAndroid$IntentCallback;
    .param p3, "errorId"    # Ljava/lang/Integer;

    .prologue
    .line 220
    const-string v0, "WindowAndroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t show intent as context is not an Activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v0, -0x1

    return v0
.end method

.method public showCancelableIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callback"    # Lorg/chromium/ui/base/WindowAndroid$IntentCallback;
    .param p3, "errorId"    # Ljava/lang/Integer;

    .prologue
    .line 234
    const-string v0, "WindowAndroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t show intent as context is not an Activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v0, -0x1

    return v0
.end method

.method public showCancelableIntent(Lorg/chromium/base/Callback;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)I
    .locals 2
    .param p2, "callback"    # Lorg/chromium/ui/base/WindowAndroid$IntentCallback;
    .param p3, "errorId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/chromium/ui/base/WindowAndroid$IntentCallback;",
            "Ljava/lang/Integer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "intentTrigger":Lorg/chromium/base/Callback;, "Lorg/chromium/base/Callback<Ljava/lang/Integer;>;"
    const-string v0, "WindowAndroid"

    const-string v1, "Can\'t show intent as context is not an Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v0, -0x1

    return v0
.end method

.method public showError(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 362
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/ui/base/WindowAndroid;->showError(Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 352
    if-eqz p1, :cond_0

    .line 353
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid;->mApplicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/chromium/ui/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lorg/chromium/ui/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/widget/Toast;->show()V

    .line 355
    :cond_0
    return-void
.end method

.method public showIntent(Landroid/app/PendingIntent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)Z
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "callback"    # Lorg/chromium/ui/base/WindowAndroid$IntentCallback;
    .param p3, "errorId"    # Ljava/lang/Integer;

    .prologue
    .line 194
    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/ui/base/WindowAndroid;->showCancelableIntent(Landroid/app/PendingIntent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callback"    # Lorg/chromium/ui/base/WindowAndroid$IntentCallback;
    .param p3, "errorId"    # Ljava/lang/Integer;

    .prologue
    .line 206
    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/ui/base/WindowAndroid;->showCancelableIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startAnimationOverContent(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 606
    iget-object v1, p0, Lorg/chromium/ui/base/WindowAndroid;->mAnimationPlaceholderView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 629
    :goto_0
    return-void

    .line 607
    :cond_0
    invoke-virtual {p1}, Landroid/animation/Animator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Already started."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 608
    :cond_1
    iget-object v1, p0, Lorg/chromium/ui/base/WindowAndroid;->mAnimationsOverContent:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 609
    .local v0, "added":Z
    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Already Added."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 614
    :cond_2
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 617
    invoke-direct {p0}, Lorg/chromium/ui/base/WindowAndroid;->refreshWillNotDraw()V

    .line 621
    new-instance v1, Lorg/chromium/ui/base/WindowAndroid$2;

    invoke-direct {v1, p0}, Lorg/chromium/ui/base/WindowAndroid$2;-><init>(Lorg/chromium/ui/base/WindowAndroid;)V

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method protected unregisterKeyboardVisibilityCallbacks()V
    .locals 0

    .prologue
    .line 554
    return-void
.end method
