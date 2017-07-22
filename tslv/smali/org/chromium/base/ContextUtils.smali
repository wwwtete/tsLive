.class public Lorg/chromium/base/ContextUtils;
.super Ljava/lang/Object;
.source "ContextUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/ContextUtils$Holder;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "base::android"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContextUtils"

.field private static sApplicationContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method static synthetic access$000()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lorg/chromium/base/ContextUtils;->fetchAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static fetchAppSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lorg/chromium/base/ContextUtils;->sApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getAppSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lorg/chromium/base/ContextUtils$Holder;->access$100()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lorg/chromium/base/ContextUtils;->sApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static initApplicationContext(Landroid/content/Context;)V
    .locals 2
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 56
    sget-object v0, Lorg/chromium/base/ContextUtils;->sApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/base/ContextUtils;->sApplicationContext:Landroid/content/Context;

    if-eq v0, p0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to set multiple global application contexts."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    invoke-static {p0}, Lorg/chromium/base/ContextUtils;->initJavaSideApplicationContext(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method public static initApplicationContextForNative()V
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lorg/chromium/base/ContextUtils;->sApplicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot have native global application context be null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    sget-object v0, Lorg/chromium/base/ContextUtils;->sApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/base/ContextUtils;->nativeInitNativeSideApplicationContext(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method public static initApplicationContextForTests(Landroid/content/Context;)V
    .locals 1
    .param p0, "appContext"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 101
    invoke-static {p0}, Lorg/chromium/base/ContextUtils;->initJavaSideApplicationContext(Landroid/content/Context;)V

    .line 102
    invoke-static {}, Lorg/chromium/base/ContextUtils;->fetchAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/base/ContextUtils$Holder;->access$102(Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 103
    return-void
.end method

.method private static initJavaSideApplicationContext(Landroid/content/Context;)V
    .locals 2
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 106
    if-nez p0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Global application context cannot be set to null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    sput-object p0, Lorg/chromium/base/ContextUtils;->sApplicationContext:Landroid/content/Context;

    .line 110
    return-void
.end method

.method private static native nativeInitNativeSideApplicationContext(Landroid/content/Context;)V
.end method
