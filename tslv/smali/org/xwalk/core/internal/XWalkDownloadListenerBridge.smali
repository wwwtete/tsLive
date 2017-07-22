.class public Lorg/xwalk/core/internal/XWalkDownloadListenerBridge;
.super Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;
.source "XWalkDownloadListenerBridge.java"


# instance fields
.field private coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

.field private onDownloadStartStringStringStringStringlongMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private wrapper:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wrapper"    # Ljava/lang/Object;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    const-string v2, "onDownloadStart"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkDownloadListenerBridge;->onDownloadStartStringStringStringStringlongMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 22
    iput-object p2, p0, Lorg/xwalk/core/internal/XWalkDownloadListenerBridge;->wrapper:Ljava/lang/Object;

    .line 23
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkDownloadListenerBridge;->reflectionInit()V

    .line 25
    return-void
.end method


# virtual methods
.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkDownloadListenerBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    .line 29
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkDownloadListenerBridge;->onDownloadStartStringStringStringStringlongMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-void
.end method

.method reflectionInit()V
    .locals 7

    .prologue
    .line 37
    invoke-static {}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkDownloadListenerBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 38
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkDownloadListenerBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    if-nez v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkDownloadListenerBridge;->onDownloadStartStringStringStringStringlongMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkDownloadListenerBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onDownloadStart"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto :goto_0
.end method
