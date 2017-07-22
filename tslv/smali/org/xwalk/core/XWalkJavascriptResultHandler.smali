.class public Lorg/xwalk/core/XWalkJavascriptResultHandler;
.super Ljava/lang/Object;
.source "XWalkJavascriptResultHandler.java"

# interfaces
.implements Lorg/xwalk/core/XWalkJavascriptResult;


# instance fields
.field private bridge:Ljava/lang/Object;

.field private cancelMethod:Lorg/xwalk/core/ReflectMethod;

.field private confirmMethod:Lorg/xwalk/core/ReflectMethod;

.field private confirmWithResultStringMethod:Lorg/xwalk/core/ReflectMethod;

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

.field private postWrapperMethod:Lorg/xwalk/core/ReflectMethod;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 5
    .param p1, "bridge"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "confirm"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkJavascriptResultHandler;->confirmMethod:Lorg/xwalk/core/ReflectMethod;

    .line 60
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "confirmWithResult"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkJavascriptResultHandler;->confirmWithResultStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 76
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "cancel"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkJavascriptResultHandler;->cancelMethod:Lorg/xwalk/core/ReflectMethod;

    .line 26
    iput-object p1, p0, Lorg/xwalk/core/XWalkJavascriptResultHandler;->bridge:Ljava/lang/Object;

    .line 27
    invoke-virtual {p0}, Lorg/xwalk/core/XWalkJavascriptResultHandler;->reflectionInit()V

    .line 28
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 65
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkJavascriptResultHandler;->cancelMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkJavascriptResultHandler;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 68
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public confirm()V
    .locals 3

    .prologue
    .line 33
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkJavascriptResultHandler;->confirmMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkJavascriptResultHandler;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 36
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public confirmWithResult(Ljava/lang/String;)V
    .locals 4
    .param p1, "promptResult"    # Ljava/lang/String;

    .prologue
    .line 49
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkJavascriptResultHandler;->confirmWithResultStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkJavascriptResultHandler;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 52
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method protected getBridge()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lorg/xwalk/core/XWalkJavascriptResultHandler;->bridge:Ljava/lang/Object;

    return-object v0
.end method

.method reflectionInit()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 80
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->initEmbeddedMode()V

    .line 82
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->getInstance()Lorg/xwalk/core/XWalkCoreWrapper;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/XWalkJavascriptResultHandler;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    .line 83
    iget-object v0, p0, Lorg/xwalk/core/XWalkJavascriptResultHandler;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v0, :cond_0

    .line 84
    invoke-static {p0}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectObject(Ljava/lang/Object;)V

    .line 94
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/XWalkJavascriptResultHandler;->confirmMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkJavascriptResultHandler;->bridge:Ljava/lang/Object;

    const-string v2, "confirmSuper"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v6, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 90
    iget-object v0, p0, Lorg/xwalk/core/XWalkJavascriptResultHandler;->confirmWithResultStringMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkJavascriptResultHandler;->bridge:Ljava/lang/Object;

    const-string v2, "confirmWithResultSuper"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v6, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 92
    iget-object v0, p0, Lorg/xwalk/core/XWalkJavascriptResultHandler;->cancelMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkJavascriptResultHandler;->bridge:Ljava/lang/Object;

    const-string v2, "cancelSuper"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v6, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto :goto_0
.end method
