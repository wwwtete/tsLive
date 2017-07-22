.class public Lorg/xwalk/core/internal/XWalkNavigationItemBridge;
.super Lorg/xwalk/core/internal/XWalkNavigationItemInternal;
.source "XWalkNavigationItemBridge.java"


# instance fields
.field private coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

.field private getOriginalUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getTitleMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private internal:Lorg/xwalk/core/internal/XWalkNavigationItemInternal;

.field private wrapper:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/XWalkNavigationItemInternal;)V
    .locals 5
    .param p1, "internal"    # Lorg/xwalk/core/internal/XWalkNavigationItemInternal;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 19
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkNavigationItemInternal;-><init>()V

    .line 44
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getUrl"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->getUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 66
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getOriginalUrl"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->getOriginalUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 88
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getTitle"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->getTitleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 20
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationItemInternal;

    .line 21
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->reflectionInit()V

    .line 22
    return-void
.end method


# virtual methods
.method public getOriginalUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->getOriginalUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->getOriginalUrlSuper()Ljava/lang/String;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->getOriginalUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getOriginalUrlSuper()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationItemInternal;

    if-nez v1, :cond_1

    .line 58
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkNavigationItemInternal;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 63
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 60
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationItemInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkNavigationItemInternal;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->getTitleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->getTitleSuper()Ljava/lang/String;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->getTitleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getTitleSuper()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationItemInternal;

    if-nez v1, :cond_1

    .line 80
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkNavigationItemInternal;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 85
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 82
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationItemInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkNavigationItemInternal;->getTitle()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->getUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->getUrlSuper()Ljava/lang/String;

    move-result-object v0

    .line 29
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->getUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getUrlSuper()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationItemInternal;

    if-nez v1, :cond_1

    .line 36
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkNavigationItemInternal;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 41
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 38
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationItemInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkNavigationItemInternal;->getUrl()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method reflectionInit()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 92
    invoke-static {}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;

    move-result-object v2

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 93
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    if-nez v2, :cond_0

    .line 109
    :goto_0
    return-void

    .line 95
    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/ReflectConstructor;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v3, "XWalkNavigationItem"

    invoke-virtual {v2, v3}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v3, v6

    invoke-direct {v0, v2, v3}, Lorg/xwalk/core/internal/ReflectConstructor;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 98
    .local v0, "constructor":Lorg/xwalk/core/internal/ReflectConstructor;
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v2}, Lorg/xwalk/core/internal/ReflectConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->wrapper:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->getUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getUrl"

    new-array v5, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v7, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 105
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->getOriginalUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getOriginalUrl"

    new-array v5, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v7, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 107
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->getTitleMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getTitle"

    new-array v5, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v7, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    goto :goto_0
.end method
