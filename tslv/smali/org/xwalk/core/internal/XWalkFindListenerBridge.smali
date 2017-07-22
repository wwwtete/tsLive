.class public Lorg/xwalk/core/internal/XWalkFindListenerBridge;
.super Lorg/xwalk/core/internal/XWalkFindListenerInternal;
.source "XWalkFindListenerBridge.java"


# instance fields
.field private coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

.field private onFindResultReceivedintintbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private wrapper:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4
    .param p1, "wrapper"    # Ljava/lang/Object;

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkFindListenerInternal;-><init>()V

    .line 29
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    const-string v2, "onFindResultReceived"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkFindListenerBridge;->onFindResultReceivedintintbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 19
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkFindListenerBridge;->wrapper:Ljava/lang/Object;

    .line 20
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkFindListenerBridge;->reflectionInit()V

    .line 21
    return-void
.end method


# virtual methods
.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkFindListenerBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method public onFindResultReceived(IIZ)V
    .locals 4
    .param p1, "activeMatchOrdinal"    # I
    .param p2, "numberOfMatches"    # I
    .param p3, "isDoneCounting"    # Z

    .prologue
    .line 25
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkFindListenerBridge;->onFindResultReceivedintintbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-void
.end method

.method reflectionInit()V
    .locals 7

    .prologue
    .line 33
    invoke-static {}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkFindListenerBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 34
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkFindListenerBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    if-nez v0, :cond_0

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkFindListenerBridge;->onFindResultReceivedintintbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkFindListenerBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onFindResultReceived"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto :goto_0
.end method
