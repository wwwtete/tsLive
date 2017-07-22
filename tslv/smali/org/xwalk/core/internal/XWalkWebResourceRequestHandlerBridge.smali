.class public Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;
.super Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;
.source "XWalkWebResourceRequestHandlerBridge.java"


# instance fields
.field private coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

.field private getMethodMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getRequestHeadersMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private hasGestureMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private internal:Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;

.field private isForMainFrameMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private wrapper:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;)V
    .locals 5
    .param p1, "internal"    # Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 21
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;-><init>()V

    .line 46
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getUrl"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->getUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 68
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "isForMainFrame"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->isForMainFrameMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 90
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "hasGesture"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->hasGestureMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 112
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getMethod"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->getMethodMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 134
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getRequestHeaders"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->getRequestHeadersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 22
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;

    .line 23
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->reflectionInit()V

    .line 24
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->getMethodMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->getMethodSuper()Ljava/lang/String;

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->getMethodMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getMethodSuper()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;

    if-nez v1, :cond_1

    .line 104
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 109
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 106
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;->getMethod()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->getRequestHeadersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->getRequestHeadersSuper()Ljava/util/Map;

    move-result-object v0

    .line 119
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->getRequestHeadersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0
.end method

.method public getRequestHeadersSuper()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;

    if-nez v1, :cond_1

    .line 126
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    .line 130
    .local v0, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 131
    .end local v0    # "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object v0

    .line 128
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    .restart local v0    # "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public getUrl()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->getUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->getUrlSuper()Landroid/net/Uri;

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->getUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    goto :goto_0
.end method

.method public getUrlSuper()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 37
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;

    if-nez v1, :cond_1

    .line 38
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;->getUrl()Landroid/net/Uri;

    move-result-object v0

    .line 42
    .local v0, "ret":Landroid/net/Uri;
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 43
    .end local v0    # "ret":Landroid/net/Uri;
    :cond_0
    return-object v0

    .line 40
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;->getUrl()Landroid/net/Uri;

    move-result-object v0

    .restart local v0    # "ret":Landroid/net/Uri;
    goto :goto_0
.end method

.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method public hasGesture()Z
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->hasGestureMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->hasGestureSuper()Z

    move-result v0

    .line 75
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->hasGestureMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public hasGestureSuper()Z
    .locals 2

    .prologue
    .line 81
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;

    if-nez v1, :cond_0

    .line 82
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;->hasGesture()Z

    move-result v0

    .line 87
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 84
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;->hasGesture()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public isForMainFrame()Z
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->isForMainFrameMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->isForMainFrameSuper()Z

    move-result v0

    .line 53
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->isForMainFrameMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isForMainFrameSuper()Z
    .locals 2

    .prologue
    .line 59
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;

    if-nez v1, :cond_0

    .line 60
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;->isForMainFrame()Z

    move-result v0

    .line 65
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 62
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;->isForMainFrame()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method reflectionInit()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 138
    invoke-static {}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;

    move-result-object v2

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 139
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    if-nez v2, :cond_0

    .line 159
    :goto_0
    return-void

    .line 141
    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/ReflectConstructor;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v3, "XWalkWebResourceRequestHandler"

    invoke-virtual {v2, v3}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v3, v6

    invoke-direct {v0, v2, v3}, Lorg/xwalk/core/internal/ReflectConstructor;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 144
    .local v0, "constructor":Lorg/xwalk/core/internal/ReflectConstructor;
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v2}, Lorg/xwalk/core/internal/ReflectConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->wrapper:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->getUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getUrl"

    new-array v5, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v7, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 151
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->isForMainFrameMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "isForMainFrame"

    new-array v5, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v7, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 153
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->hasGestureMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "hasGesture"

    new-array v5, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v7, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 155
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->getMethodMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getMethod"

    new-array v5, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v7, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 157
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->getRequestHeadersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getRequestHeaders"

    new-array v5, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v7, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto :goto_0

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    goto :goto_0
.end method
