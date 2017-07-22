.class public Lorg/xwalk/core/internal/XWalkCookieManagerInternal;
.super Ljava/lang/Object;
.source "XWalkCookieManagerInternal.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "xwalk"
.end annotation

.annotation build Lorg/xwalk/core/internal/XWalkAPI;
    createExternally = true
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XWalkCookieManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeAcceptCookie()Z
.end method

.method private native nativeAllowFileSchemeCookies()Z
.end method

.method private native nativeFlushCookieStore()V
.end method

.method private native nativeGetCookie(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeHasCookies()Z
.end method

.method private native nativeRemoveAllCookie()V
.end method

.method private native nativeRemoveExpiredCookie()V
.end method

.method private native nativeRemoveSessionCookie()V
.end method

.method private native nativeSetAcceptCookie(Z)V
.end method

.method private native nativeSetAcceptFileSchemeCookies(Z)V
.end method

.method private native nativeSetCookie(Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public acceptCookie()Z
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkCookieManagerInternal;->nativeAcceptCookie()Z

    move-result v0

    return v0
.end method

.method public allowFileSchemeCookies()Z
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkCookieManagerInternal;->nativeAllowFileSchemeCookies()Z

    move-result v0

    return v0
.end method

.method public flushCookieStore()V
    .locals 0
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 122
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkCookieManagerInternal;->nativeFlushCookieStore()V

    .line 123
    return-void
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 71
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/xwalk/core/internal/XWalkCookieManagerInternal;->nativeGetCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "cookie":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v0, v2

    .line 76
    .end local v0    # "cookie":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/net/MalformedURLException;
    const-string v3, "XWalkCookieManager"

    const-string v4, "Unable to get cookies due to invalid URL"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    .line 76
    goto :goto_0
.end method

.method public hasCookies()Z
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkCookieManagerInternal;->nativeHasCookies()Z

    move-result v0

    return v0
.end method

.method public removeAllCookie()V
    .locals 0
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkCookieManagerInternal;->nativeRemoveAllCookie()V

    .line 96
    return-void
.end method

.method public removeExpiredCookie()V
    .locals 0
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkCookieManagerInternal;->nativeRemoveExpiredCookie()V

    .line 114
    return-void
.end method

.method public removeSessionCookie()V
    .locals 0
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkCookieManagerInternal;->nativeRemoveSessionCookie()V

    .line 87
    return-void
.end method

.method public setAcceptCookie(Z)V
    .locals 0
    .param p1, "accept"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/XWalkCookieManagerInternal;->nativeSetAcceptCookie(Z)V

    .line 32
    return-void
.end method

.method public setAcceptFileSchemeCookies(Z)V
    .locals 0
    .param p1, "accept"    # Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/XWalkCookieManagerInternal;->nativeSetAcceptFileSchemeCookies(Z)V

    .line 149
    return-void
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 55
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/xwalk/core/internal/XWalkCookieManagerInternal;->nativeSetCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/net/MalformedURLException;
    const-string v1, "XWalkCookieManager"

    const-string v2, "Not setting cookie due to invalid URL"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
