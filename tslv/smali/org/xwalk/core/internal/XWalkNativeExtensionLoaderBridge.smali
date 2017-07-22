.class public Lorg/xwalk/core/internal/XWalkNativeExtensionLoaderBridge;
.super Lorg/xwalk/core/internal/XWalkNativeExtensionLoaderInternal;
.source "XWalkNativeExtensionLoaderBridge.java"


# instance fields
.field private coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

.field private registerNativeExtensionsInPathStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private wrapper:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4
    .param p1, "wrapper"    # Ljava/lang/Object;

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkNativeExtensionLoaderInternal;-><init>()V

    .line 36
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    const-string v2, "registerNativeExtensionsInPath"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNativeExtensionLoaderBridge;->registerNativeExtensionsInPathStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 19
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkNativeExtensionLoaderBridge;->wrapper:Ljava/lang/Object;

    .line 20
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkNativeExtensionLoaderBridge;->reflectionInit()V

    .line 21
    return-void
.end method


# virtual methods
.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNativeExtensionLoaderBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method reflectionInit()V
    .locals 7

    .prologue
    .line 40
    invoke-static {}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNativeExtensionLoaderBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 41
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNativeExtensionLoaderBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    if-nez v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNativeExtensionLoaderBridge;->registerNativeExtensionsInPathStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNativeExtensionLoaderBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "registerNativeExtensionsInPath"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto :goto_0
.end method

.method public registerNativeExtensionsInPath(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 25
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNativeExtensionLoaderBridge;->registerNativeExtensionsInPathStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkNativeExtensionLoaderBridge;->registerNativeExtensionsInPathSuper(Ljava/lang/String;)V

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNativeExtensionLoaderBridge;->registerNativeExtensionsInPathStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public registerNativeExtensionsInPathSuper(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkNativeExtensionLoaderInternal;->registerNativeExtensionsInPath(Ljava/lang/String;)V

    .line 34
    return-void
.end method
