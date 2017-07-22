.class public Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;
.super Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;
.source "XWalkJavascriptResultHandlerBridge.java"


# instance fields
.field private cancelMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private confirmMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private confirmWithResultStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

.field private internal:Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;

.field private wrapper:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;)V
    .locals 5
    .param p1, "internal"    # Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 19
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;-><init>()V

    .line 41
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "confirm"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;->confirmMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 60
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "confirmWithResult"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;->confirmWithResultStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 79
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "cancel"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;->cancelMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 20
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;

    .line 21
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;->reflectionInit()V

    .line 22
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;->cancelMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;->cancelSuper()V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;->cancelMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public cancelSuper()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;

    if-nez v0, :cond_0

    .line 73
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;->cancel()V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;->cancel()V

    goto :goto_0
.end method

.method public confirm()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;->confirmMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;->confirmSuper()V

    .line 31
    :goto_0
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;->confirmMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public confirmSuper()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;

    if-nez v0, :cond_0

    .line 35
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;->confirm()V

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;->confirm()V

    goto :goto_0
.end method

.method public confirmWithResult(Ljava/lang/String;)V
    .locals 3
    .param p1, "promptResult"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;->confirmWithResultStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;->confirmWithResultSuper(Ljava/lang/String;)V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;->confirmWithResultStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public confirmWithResultSuper(Ljava/lang/String;)V
    .locals 1
    .param p1, "promptResult"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;

    if-nez v0, :cond_0

    .line 54
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;->confirmWithResult(Ljava/lang/String;)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerInternal;->confirmWithResult(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method reflectionInit()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 83
    invoke-static {}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;

    move-result-object v2

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 84
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    if-nez v2, :cond_0

    .line 100
    :goto_0
    return-void

    .line 86
    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/ReflectConstructor;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v3, "XWalkJavascriptResultHandler"

    invoke-virtual {v2, v3}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v3, v7

    invoke-direct {v0, v2, v3}, Lorg/xwalk/core/internal/ReflectConstructor;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 89
    .local v0, "constructor":Lorg/xwalk/core/internal/ReflectConstructor;
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v2}, Lorg/xwalk/core/internal/ReflectConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;->wrapper:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;->confirmMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "confirm"

    new-array v5, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v8, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 96
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;->confirmWithResultStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "confirmWithResult"

    new-array v5, v6, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v8, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 98
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;->cancelMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkJavascriptResultHandlerBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "cancel"

    new-array v5, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v8, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto :goto_0

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    goto :goto_0
.end method
