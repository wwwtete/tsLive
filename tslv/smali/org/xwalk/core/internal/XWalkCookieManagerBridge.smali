.class public Lorg/xwalk/core/internal/XWalkCookieManagerBridge;
.super Lorg/xwalk/core/internal/XWalkCookieManagerInternal;
.source "XWalkCookieManagerBridge.java"


# instance fields
.field private acceptCookieMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private allowFileSchemeCookiesMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

.field private flushCookieStoreMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getCookieStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private hasCookiesMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private removeAllCookieMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private removeExpiredCookieMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private removeSessionCookieMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setAcceptCookiebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setAcceptFileSchemeCookiesbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setCookieStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private wrapper:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 5
    .param p1, "wrapper"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 21
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkCookieManagerInternal;-><init>()V

    .line 39
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setAcceptCookie"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->setAcceptCookiebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 57
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "acceptCookie"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->acceptCookieMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 72
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setCookie"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->setCookieStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 90
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getCookie"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->getCookieStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 105
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "removeSessionCookie"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->removeSessionCookieMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 120
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "removeAllCookie"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->removeAllCookieMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 138
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "hasCookies"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->hasCookiesMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 153
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "removeExpiredCookie"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->removeExpiredCookieMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 168
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "flushCookieStore"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->flushCookieStoreMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 186
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "allowFileSchemeCookies"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->allowFileSchemeCookiesMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 201
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setAcceptFileSchemeCookies"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->setAcceptFileSchemeCookiesbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 22
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->wrapper:Ljava/lang/Object;

    .line 23
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->reflectionInit()V

    .line 24
    return-void
.end method


# virtual methods
.method public acceptCookie()Z
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->acceptCookieMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->acceptCookieSuper()Z

    move-result v0

    .line 46
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->acceptCookieMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public acceptCookieSuper()Z
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkCookieManagerInternal;->acceptCookie()Z

    move-result v0

    .line 54
    .local v0, "ret":Z
    return v0
.end method

.method public allowFileSchemeCookies()Z
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->allowFileSchemeCookiesMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->allowFileSchemeCookiesSuper()Z

    move-result v0

    .line 175
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->allowFileSchemeCookiesMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public allowFileSchemeCookiesSuper()Z
    .locals 1

    .prologue
    .line 181
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkCookieManagerInternal;->allowFileSchemeCookies()Z

    move-result v0

    .line 183
    .local v0, "ret":Z
    return v0
.end method

.method public flushCookieStore()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->flushCookieStoreMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->flushCookieStoreSuper()V

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->flushCookieStoreMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public flushCookieStoreSuper()V
    .locals 0

    .prologue
    .line 165
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkCookieManagerInternal;->flushCookieStore()V

    .line 166
    return-void
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->getCookieStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->getCookieSuper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->getCookieStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getCookieSuper(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkCookieManagerInternal;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 87
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method public hasCookies()Z
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->hasCookiesMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->hasCookiesSuper()Z

    move-result v0

    .line 127
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->hasCookiesMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public hasCookiesSuper()Z
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkCookieManagerInternal;->hasCookies()Z

    move-result v0

    .line 135
    .local v0, "ret":Z
    return v0
.end method

.method reflectionInit()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 205
    invoke-static {}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 206
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    if-nez v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->setAcceptCookiebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "setAcceptCookie"

    new-array v3, v7, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v6, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 210
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->acceptCookieMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "acceptCookie"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v6, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 212
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->setCookieStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "setCookie"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v6, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 214
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->getCookieStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "getCookie"

    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v6, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 216
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->removeSessionCookieMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "removeSessionCookie"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v6, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 218
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->removeAllCookieMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "removeAllCookie"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v6, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 220
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->hasCookiesMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "hasCookies"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v6, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 222
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->removeExpiredCookieMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "removeExpiredCookie"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v6, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 224
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->flushCookieStoreMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "flushCookieStore"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v6, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 226
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->allowFileSchemeCookiesMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "allowFileSchemeCookies"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v6, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 228
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->setAcceptFileSchemeCookiesbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "setAcceptFileSchemeCookies"

    new-array v3, v7, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v6, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto/16 :goto_0
.end method

.method public removeAllCookie()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->removeAllCookieMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->removeAllCookieSuper()V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->removeAllCookieMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeAllCookieSuper()V
    .locals 0

    .prologue
    .line 117
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkCookieManagerInternal;->removeAllCookie()V

    .line 118
    return-void
.end method

.method public removeExpiredCookie()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->removeExpiredCookieMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->removeExpiredCookieSuper()V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->removeExpiredCookieMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeExpiredCookieSuper()V
    .locals 0

    .prologue
    .line 150
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkCookieManagerInternal;->removeExpiredCookie()V

    .line 151
    return-void
.end method

.method public removeSessionCookie()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->removeSessionCookieMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->removeSessionCookieSuper()V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->removeSessionCookieMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeSessionCookieSuper()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkCookieManagerInternal;->removeSessionCookie()V

    .line 103
    return-void
.end method

.method public setAcceptCookie(Z)V
    .locals 4
    .param p1, "accept"    # Z

    .prologue
    .line 28
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->setAcceptCookiebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->setAcceptCookieSuper(Z)V

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->setAcceptCookiebooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setAcceptCookieSuper(Z)V
    .locals 0
    .param p1, "accept"    # Z

    .prologue
    .line 36
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkCookieManagerInternal;->setAcceptCookie(Z)V

    .line 37
    return-void
.end method

.method public setAcceptFileSchemeCookies(Z)V
    .locals 4
    .param p1, "accept"    # Z

    .prologue
    .line 190
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->setAcceptFileSchemeCookiesbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->setAcceptFileSchemeCookiesSuper(Z)V

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->setAcceptFileSchemeCookiesbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setAcceptFileSchemeCookiesSuper(Z)V
    .locals 0
    .param p1, "accept"    # Z

    .prologue
    .line 198
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkCookieManagerInternal;->setAcceptFileSchemeCookies(Z)V

    .line 199
    return-void
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->setCookieStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->setCookieSuper(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkCookieManagerBridge;->setCookieStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setCookieSuper(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkCookieManagerInternal;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method
