.class public Lorg/chromium/base/ApplicationStatusManager;
.super Ljava/lang/Object;
.source "ApplicationStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/ApplicationStatusManager$WindowCallbackProxy;,
        Lorg/chromium/base/ApplicationStatusManager$WindowFocusChangedListener;
    }
.end annotation


# static fields
.field private static final TOOLBAR_CALLBACK_INTERNAL_WRAPPER_CLASS:Ljava/lang/String; = "android.support.v7.internal.app.ToolbarActionBar$ToolbarCallbackWrapper"

.field private static final TOOLBAR_CALLBACK_WRAPPER_CLASS:Ljava/lang/String; = "android.support.v7.app.ToolbarActionBar$ToolbarCallbackWrapper"

.field private static sWindowFocusListeners:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList",
            "<",
            "Lorg/chromium/base/ApplicationStatusManager$WindowFocusChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    sput-object v0, Lorg/chromium/base/ApplicationStatusManager;->sWindowFocusListeners:Lorg/chromium/base/ObserverList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method static synthetic access$000()Lorg/chromium/base/ObserverList;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lorg/chromium/base/ApplicationStatusManager;->sWindowFocusListeners:Lorg/chromium/base/ObserverList;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;

    .prologue
    .line 20
    invoke-static {p0}, Lorg/chromium/base/ApplicationStatusManager;->setWindowFocusChangedCallback(Landroid/app/Activity;)V

    return-void
.end method

.method public static informActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 179
    invoke-static {p0}, Lorg/chromium/base/ApplicationStatusManager;->setWindowFocusChangedCallback(Landroid/app/Activity;)V

    .line 180
    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->informActivityStarted(Landroid/app/Activity;)V

    .line 181
    return-void
.end method

.method public static init(Landroid/app/Application;)V
    .locals 1
    .param p0, "app"    # Landroid/app/Application;

    .prologue
    .line 93
    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->initialize(Landroid/app/Application;)V

    .line 95
    new-instance v0, Lorg/chromium/base/ApplicationStatusManager$1;

    invoke-direct {v0}, Lorg/chromium/base/ApplicationStatusManager$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 155
    return-void
.end method

.method public static registerWindowFocusChangedListener(Lorg/chromium/base/ApplicationStatusManager$WindowFocusChangedListener;)V
    .locals 1
    .param p0, "listener"    # Lorg/chromium/base/ApplicationStatusManager$WindowFocusChangedListener;

    .prologue
    .line 162
    sget-object v0, Lorg/chromium/base/ApplicationStatusManager;->sWindowFocusListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p0}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method

.method private static setWindowFocusChangedCallback(Landroid/app/Activity;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 184
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 185
    .local v0, "callback":Landroid/view/Window$Callback;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const-class v1, Landroid/view/Window$Callback;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/Window$Callback;

    aput-object v5, v3, v4

    new-instance v4, Lorg/chromium/base/ApplicationStatusManager$WindowCallbackProxy;

    invoke-direct {v4, p0, v0}, Lorg/chromium/base/ApplicationStatusManager$WindowCallbackProxy;-><init>(Landroid/app/Activity;Landroid/view/Window$Callback;)V

    invoke-static {v1, v3, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Window$Callback;

    invoke-virtual {v2, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 188
    return-void
.end method

.method public static unregisterWindowFocusChangedListener(Lorg/chromium/base/ApplicationStatusManager$WindowFocusChangedListener;)V
    .locals 1
    .param p0, "listener"    # Lorg/chromium/base/ApplicationStatusManager$WindowFocusChangedListener;

    .prologue
    .line 170
    sget-object v0, Lorg/chromium/base/ApplicationStatusManager;->sWindowFocusListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p0}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 171
    return-void
.end method
