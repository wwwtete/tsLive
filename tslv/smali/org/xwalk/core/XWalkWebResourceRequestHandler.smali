.class public Lorg/xwalk/core/XWalkWebResourceRequestHandler;
.super Ljava/lang/Object;
.source "XWalkWebResourceRequestHandler.java"

# interfaces
.implements Lorg/xwalk/core/XWalkWebResourceRequest;


# instance fields
.field private bridge:Ljava/lang/Object;

.field private constructorParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private constructorTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

.field private getMethodMethod:Lorg/xwalk/core/ReflectMethod;

.field private getRequestHeadersMethod:Lorg/xwalk/core/ReflectMethod;

.field private getUrlMethod:Lorg/xwalk/core/ReflectMethod;

.field private hasGestureMethod:Lorg/xwalk/core/ReflectMethod;

.field private isForMainFrameMethod:Lorg/xwalk/core/ReflectMethod;

.field private postWrapperMethod:Lorg/xwalk/core/ReflectMethod;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 5
    .param p1, "bridge"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getUrl"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkWebResourceRequestHandler;->getUrlMethod:Lorg/xwalk/core/ReflectMethod;

    .line 62
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "isForMainFrame"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkWebResourceRequestHandler;->isForMainFrameMethod:Lorg/xwalk/core/ReflectMethod;

    .line 78
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "hasGesture"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkWebResourceRequestHandler;->hasGestureMethod:Lorg/xwalk/core/ReflectMethod;

    .line 94
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getMethod"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkWebResourceRequestHandler;->getMethodMethod:Lorg/xwalk/core/ReflectMethod;

    .line 110
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getRequestHeaders"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkWebResourceRequestHandler;->getRequestHeadersMethod:Lorg/xwalk/core/ReflectMethod;

    .line 28
    iput-object p1, p0, Lorg/xwalk/core/XWalkWebResourceRequestHandler;->bridge:Ljava/lang/Object;

    .line 29
    invoke-virtual {p0}, Lorg/xwalk/core/XWalkWebResourceRequestHandler;->reflectionInit()V

    .line 30
    return-void
.end method


# virtual methods
.method protected getBridge()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lorg/xwalk/core/XWalkWebResourceRequestHandler;->bridge:Ljava/lang/Object;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkWebResourceRequestHandler;->getMethodMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-object v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkWebResourceRequestHandler;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 86
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 91
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 88
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .locals 3
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
    .line 99
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkWebResourceRequestHandler;->getRequestHeadersMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-object v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkWebResourceRequestHandler;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 102
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 107
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 104
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getUrl()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 35
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkWebResourceRequestHandler;->getUrlMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-object v1

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkWebResourceRequestHandler;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 38
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 43
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 40
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public hasGesture()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 67
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkWebResourceRequestHandler;->hasGestureMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 75
    :goto_0
    return v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkWebResourceRequestHandler;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 70
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 75
    goto :goto_0

    .line 72
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public isForMainFrame()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 51
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkWebResourceRequestHandler;->isForMainFrameMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 59
    :goto_0
    return v1

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkWebResourceRequestHandler;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 54
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 59
    goto :goto_0

    .line 56
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method reflectionInit()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 114
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->initEmbeddedMode()V

    .line 116
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->getInstance()Lorg/xwalk/core/XWalkCoreWrapper;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/XWalkWebResourceRequestHandler;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    .line 117
    iget-object v0, p0, Lorg/xwalk/core/XWalkWebResourceRequestHandler;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v0, :cond_0

    .line 118
    invoke-static {p0}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectObject(Ljava/lang/Object;)V

    .line 132
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/XWalkWebResourceRequestHandler;->getUrlMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkWebResourceRequestHandler;->bridge:Ljava/lang/Object;

    const-string v2, "getUrlSuper"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 124
    iget-object v0, p0, Lorg/xwalk/core/XWalkWebResourceRequestHandler;->isForMainFrameMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkWebResourceRequestHandler;->bridge:Ljava/lang/Object;

    const-string v2, "isForMainFrameSuper"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 126
    iget-object v0, p0, Lorg/xwalk/core/XWalkWebResourceRequestHandler;->hasGestureMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkWebResourceRequestHandler;->bridge:Ljava/lang/Object;

    const-string v2, "hasGestureSuper"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 128
    iget-object v0, p0, Lorg/xwalk/core/XWalkWebResourceRequestHandler;->getMethodMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkWebResourceRequestHandler;->bridge:Ljava/lang/Object;

    const-string v2, "getMethodSuper"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 130
    iget-object v0, p0, Lorg/xwalk/core/XWalkWebResourceRequestHandler;->getRequestHeadersMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkWebResourceRequestHandler;->bridge:Ljava/lang/Object;

    const-string v2, "getRequestHeadersSuper"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v5, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto :goto_0
.end method
