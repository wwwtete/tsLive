.class public abstract Lorg/xwalk/core/XWalkDownloadListener;
.super Ljava/lang/Object;
.source "XWalkDownloadListener.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


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

.field private postWrapperMethod:Lorg/xwalk/core/ReflectMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lorg/xwalk/core/XWalkDownloadListener;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/xwalk/core/XWalkDownloadListener;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/XWalkDownloadListener;->constructorTypes:Ljava/util/ArrayList;

    .line 34
    iget-object v0, p0, Lorg/xwalk/core/XWalkDownloadListener;->constructorTypes:Ljava/util/ArrayList;

    const-class v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/XWalkDownloadListener;->constructorParams:Ljava/util/ArrayList;

    .line 37
    iget-object v0, p0, Lorg/xwalk/core/XWalkDownloadListener;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {p0}, Lorg/xwalk/core/XWalkDownloadListener;->reflectionInit()V

    .line 40
    return-void
.end method


# virtual methods
.method protected getBridge()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lorg/xwalk/core/XWalkDownloadListener;->bridge:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method reflectionInit()V
    .locals 9

    .prologue
    .line 55
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->initEmbeddedMode()V

    .line 57
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->getInstance()Lorg/xwalk/core/XWalkCoreWrapper;

    move-result-object v6

    iput-object v6, p0, Lorg/xwalk/core/XWalkDownloadListener;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    .line 58
    iget-object v6, p0, Lorg/xwalk/core/XWalkDownloadListener;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v6, :cond_1

    .line 59
    invoke-static {p0}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectObject(Ljava/lang/Object;)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v6, p0, Lorg/xwalk/core/XWalkDownloadListener;->constructorTypes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 64
    .local v3, "length":I
    add-int/lit8 v6, v3, 0x1

    new-array v4, v6, [Ljava/lang/Class;

    .line 65
    .local v4, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 66
    iget-object v6, p0, Lorg/xwalk/core/XWalkDownloadListener;->constructorTypes:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 67
    .local v5, "type":Ljava/lang/Object;
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 68
    iget-object v6, p0, Lorg/xwalk/core/XWalkDownloadListener;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    check-cast v5, Ljava/lang/String;

    .end local v5    # "type":Ljava/lang/Object;
    invoke-virtual {v6, v5}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v2

    .line 69
    iget-object v6, p0, Lorg/xwalk/core/XWalkDownloadListener;->constructorParams:Ljava/util/ArrayList;

    iget-object v7, p0, Lorg/xwalk/core/XWalkDownloadListener;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    iget-object v8, p0, Lorg/xwalk/core/XWalkDownloadListener;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 70
    .restart local v5    # "type":Ljava/lang/Object;
    :cond_3
    instance-of v6, v5, Ljava/lang/Class;

    if-eqz v6, :cond_4

    .line 71
    check-cast v5, Ljava/lang/Class;

    .end local v5    # "type":Ljava/lang/Object;
    aput-object v5, v4, v2

    goto :goto_2

    .line 73
    .restart local v5    # "type":Ljava/lang/Object;
    :cond_4
    sget-boolean v6, Lorg/xwalk/core/XWalkDownloadListener;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 77
    .end local v5    # "type":Ljava/lang/Object;
    :cond_5
    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v3

    .line 78
    iget-object v6, p0, Lorg/xwalk/core/XWalkDownloadListener;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v0, Lorg/xwalk/core/ReflectConstructor;

    iget-object v6, p0, Lorg/xwalk/core/XWalkDownloadListener;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v7, "XWalkDownloadListenerBridge"

    invoke-virtual {v6, v7}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v0, v6, v4}, Lorg/xwalk/core/ReflectConstructor;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 83
    .local v0, "constructor":Lorg/xwalk/core/ReflectConstructor;
    :try_start_0
    iget-object v6, p0, Lorg/xwalk/core/XWalkDownloadListener;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/xwalk/core/ReflectConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lorg/xwalk/core/XWalkDownloadListener;->bridge:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    iget-object v6, p0, Lorg/xwalk/core/XWalkDownloadListener;->postWrapperMethod:Lorg/xwalk/core/ReflectMethod;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/xwalk/core/XWalkDownloadListener;->postWrapperMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v7}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    goto :goto_0
.end method
