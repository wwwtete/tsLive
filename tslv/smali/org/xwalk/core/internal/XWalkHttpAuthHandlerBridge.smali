.class public Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;
.super Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;
.source "XWalkHttpAuthHandlerBridge.java"


# instance fields
.field private cancelMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

.field private internal:Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;

.field private isFirstAttemptMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private proceedStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private wrapper:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;)V
    .locals 5
    .param p1, "internal"    # Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 19
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;-><init>()V

    .line 41
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "proceed"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->proceedStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 60
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "cancel"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->cancelMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 82
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "isFirstAttempt"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->isFirstAttemptMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 20
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;

    .line 21
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->reflectionInit()V

    .line 22
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->cancelMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->cancelSuper()V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->cancelMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public cancelSuper()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;

    if-nez v0, :cond_0

    .line 54
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;->cancel()V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;->cancel()V

    goto :goto_0
.end method

.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method public isFirstAttempt()Z
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->isFirstAttemptMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->isFirstAttemptSuper()Z

    move-result v0

    .line 67
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->isFirstAttemptMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isFirstAttemptSuper()Z
    .locals 2

    .prologue
    .line 73
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;

    if-nez v1, :cond_0

    .line 74
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;->isFirstAttempt()Z

    move-result v0

    .line 79
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 76
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;->isFirstAttempt()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public proceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->proceedStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->proceedSuper(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :goto_0
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->proceedStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public proceedSuper(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;

    if-nez v0, :cond_0

    .line 35
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method reflectionInit()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 86
    invoke-static {}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;

    move-result-object v2

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 87
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    if-nez v2, :cond_0

    .line 103
    :goto_0
    return-void

    .line 89
    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/ReflectConstructor;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v3, "XWalkHttpAuthHandler"

    invoke-virtual {v2, v3}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v3, v7

    invoke-direct {v0, v2, v3}, Lorg/xwalk/core/internal/ReflectConstructor;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 92
    .local v0, "constructor":Lorg/xwalk/core/internal/ReflectConstructor;
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v2}, Lorg/xwalk/core/internal/ReflectConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->wrapper:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->proceedStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "proceed"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 99
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->cancelMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "cancel"

    new-array v5, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 101
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->isFirstAttemptMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "isFirstAttempt"

    new-array v5, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    goto :goto_0
.end method
