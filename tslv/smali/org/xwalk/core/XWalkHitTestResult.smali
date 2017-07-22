.class public Lorg/xwalk/core/XWalkHitTestResult;
.super Ljava/lang/Object;
.source "XWalkHitTestResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/XWalkHitTestResult$type;
    }
.end annotation


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

.field private enumtypeClassValueOfMethod:Lorg/xwalk/core/ReflectMethod;

.field private getExtraMethod:Lorg/xwalk/core/ReflectMethod;

.field private getTypeMethod:Lorg/xwalk/core/ReflectMethod;

.field private postWrapperMethod:Lorg/xwalk/core/ReflectMethod;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 5
    .param p1, "bridge"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    invoke-direct {v0}, Lorg/xwalk/core/ReflectMethod;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/XWalkHitTestResult;->enumtypeClassValueOfMethod:Lorg/xwalk/core/ReflectMethod;

    .line 72
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getType"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkHitTestResult;->getTypeMethod:Lorg/xwalk/core/ReflectMethod;

    .line 95
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getExtra"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkHitTestResult;->getExtraMethod:Lorg/xwalk/core/ReflectMethod;

    .line 48
    iput-object p1, p0, Lorg/xwalk/core/XWalkHitTestResult;->bridge:Ljava/lang/Object;

    .line 49
    invoke-virtual {p0}, Lorg/xwalk/core/XWalkHitTestResult;->reflectionInit()V

    .line 50
    return-void
.end method

.method private Converttype(Lorg/xwalk/core/XWalkHitTestResult$type;)Ljava/lang/Object;
    .locals 4
    .param p1, "type"    # Lorg/xwalk/core/XWalkHitTestResult$type;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/xwalk/core/XWalkHitTestResult;->enumtypeClassValueOfMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkHitTestResult$type;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getBridge()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/xwalk/core/XWalkHitTestResult;->bridge:Ljava/lang/Object;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 3

    .prologue
    .line 84
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkHitTestResult;->getExtraMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-object v1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkHitTestResult;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 87
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 92
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 89
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getType()Lorg/xwalk/core/XWalkHitTestResult$type;
    .locals 3

    .prologue
    .line 61
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkHitTestResult;->getTypeMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/xwalk/core/XWalkHitTestResult$type;->valueOf(Ljava/lang/String;)Lorg/xwalk/core/XWalkHitTestResult$type;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 69
    :goto_0
    return-object v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkHitTestResult;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 64
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 69
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 66
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method reflectionInit()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 99
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->initEmbeddedMode()V

    .line 101
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->getInstance()Lorg/xwalk/core/XWalkCoreWrapper;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/XWalkHitTestResult;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    .line 102
    iget-object v0, p0, Lorg/xwalk/core/XWalkHitTestResult;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v0, :cond_0

    .line 103
    invoke-static {p0}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectObject(Ljava/lang/Object;)V

    .line 114
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/XWalkHitTestResult;->enumtypeClassValueOfMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkHitTestResult;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v2, "XWalkHitTestResultInternal$type"

    invoke-virtual {v1, v2}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "valueOf"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v0, v6, v1, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 110
    iget-object v0, p0, Lorg/xwalk/core/XWalkHitTestResult;->getTypeMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkHitTestResult;->bridge:Ljava/lang/Object;

    const-string v2, "getTypeSuper"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v6, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 112
    iget-object v0, p0, Lorg/xwalk/core/XWalkHitTestResult;->getExtraMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkHitTestResult;->bridge:Ljava/lang/Object;

    const-string v2, "getExtraSuper"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v6, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto :goto_0
.end method
