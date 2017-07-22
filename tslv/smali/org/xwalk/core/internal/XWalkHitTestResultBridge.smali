.class public Lorg/xwalk/core/internal/XWalkHitTestResultBridge;
.super Lorg/xwalk/core/internal/XWalkHitTestResultInternal;
.source "XWalkHitTestResultBridge.java"


# instance fields
.field private coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

.field private enumtypeClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getExtraMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getTypeMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private internal:Lorg/xwalk/core/internal/XWalkHitTestResultInternal;

.field private wrapper:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/XWalkHitTestResultInternal;)V
    .locals 5
    .param p1, "internal"    # Lorg/xwalk/core/internal/XWalkHitTestResultInternal;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 28
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkHitTestResultInternal;-><init>()V

    .line 19
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    invoke-direct {v0}, Lorg/xwalk/core/internal/ReflectMethod;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkHitTestResultBridge;->enumtypeClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 53
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getType"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkHitTestResultBridge;->getTypeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 75
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getExtra"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkHitTestResultBridge;->getExtraMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 29
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkHitTestResultBridge;->internal:Lorg/xwalk/core/internal/XWalkHitTestResultInternal;

    .line 30
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkHitTestResultBridge;->reflectionInit()V

    .line 31
    return-void
.end method

.method private Converttype(Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;)Ljava/lang/Object;
    .locals 4
    .param p1, "type"    # Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    .prologue
    .line 22
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkHitTestResultBridge;->enumtypeClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getExtra()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkHitTestResultBridge;->getExtraMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkHitTestResultBridge;->getExtraSuper()Ljava/lang/String;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkHitTestResultBridge;->getExtraMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getExtraSuper()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkHitTestResultBridge;->internal:Lorg/xwalk/core/internal/XWalkHitTestResultInternal;

    if-nez v1, :cond_1

    .line 67
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkHitTestResultInternal;->getExtra()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 72
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 69
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkHitTestResultBridge;->internal:Lorg/xwalk/core/internal/XWalkHitTestResultInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkHitTestResultInternal;->getExtra()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method public getType()Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkHitTestResultBridge;->getTypeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkHitTestResultBridge;->getTypeSuper()Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkHitTestResultBridge;->getTypeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    goto :goto_0
.end method

.method public getTypeSuper()Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;
    .locals 2

    .prologue
    .line 44
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkHitTestResultBridge;->internal:Lorg/xwalk/core/internal/XWalkHitTestResultInternal;

    if-nez v1, :cond_1

    .line 45
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkHitTestResultInternal;->getType()Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    move-result-object v0

    .line 49
    .local v0, "ret":Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 50
    .end local v0    # "ret":Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;
    :cond_0
    return-object v0

    .line 47
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkHitTestResultBridge;->internal:Lorg/xwalk/core/internal/XWalkHitTestResultInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkHitTestResultInternal;->getType()Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    move-result-object v0

    .restart local v0    # "ret":Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;
    goto :goto_0
.end method

.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkHitTestResultBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method reflectionInit()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 79
    invoke-static {}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;

    move-result-object v2

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkHitTestResultBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 80
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkHitTestResultBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    if-nez v2, :cond_0

    .line 97
    :goto_0
    return-void

    .line 82
    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/ReflectConstructor;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkHitTestResultBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v3, "XWalkHitTestResult"

    invoke-virtual {v2, v3}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v3, v7

    invoke-direct {v0, v2, v3}, Lorg/xwalk/core/internal/ReflectConstructor;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 85
    .local v0, "constructor":Lorg/xwalk/core/internal/ReflectConstructor;
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v2}, Lorg/xwalk/core/internal/ReflectConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkHitTestResultBridge;->wrapper:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkHitTestResultBridge;->enumtypeClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkHitTestResultBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v4, "XWalkHitTestResult$type"

    invoke-virtual {v3, v4}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "valueOf"

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v2, v8, v3, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 93
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkHitTestResultBridge;->getTypeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkHitTestResultBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getType"

    new-array v5, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v8, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 95
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkHitTestResultBridge;->getExtraMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkHitTestResultBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getExtra"

    new-array v5, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v8, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto :goto_0

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    goto :goto_0
.end method
