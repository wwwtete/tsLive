.class public abstract Lorg/xwalk/core/XWalkFindListener;
.super Ljava/lang/Object;
.source "XWalkFindListener.java"


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
    .line 11
    const-class v0, Lorg/xwalk/core/XWalkFindListener;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/xwalk/core/XWalkFindListener;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/XWalkFindListener;->constructorTypes:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/XWalkFindListener;->constructorParams:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {p0}, Lorg/xwalk/core/XWalkFindListener;->reflectionInit()V

    .line 31
    return-void
.end method


# virtual methods
.method protected getBridge()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lorg/xwalk/core/XWalkFindListener;->bridge:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract onFindResultReceived(IIZ)V
.end method

.method reflectionInit()V
    .locals 9

    .prologue
    .line 48
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->initEmbeddedMode()V

    .line 50
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->getInstance()Lorg/xwalk/core/XWalkCoreWrapper;

    move-result-object v6

    iput-object v6, p0, Lorg/xwalk/core/XWalkFindListener;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    .line 51
    iget-object v6, p0, Lorg/xwalk/core/XWalkFindListener;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v6, :cond_1

    .line 52
    invoke-static {p0}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectObject(Ljava/lang/Object;)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-object v6, p0, Lorg/xwalk/core/XWalkFindListener;->constructorTypes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 57
    .local v3, "length":I
    add-int/lit8 v6, v3, 0x1

    new-array v4, v6, [Ljava/lang/Class;

    .line 58
    .local v4, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 59
    iget-object v6, p0, Lorg/xwalk/core/XWalkFindListener;->constructorTypes:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 60
    .local v5, "type":Ljava/lang/Object;
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 61
    iget-object v6, p0, Lorg/xwalk/core/XWalkFindListener;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    check-cast v5, Ljava/lang/String;

    .end local v5    # "type":Ljava/lang/Object;
    invoke-virtual {v6, v5}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v2

    .line 62
    iget-object v6, p0, Lorg/xwalk/core/XWalkFindListener;->constructorParams:Ljava/util/ArrayList;

    iget-object v7, p0, Lorg/xwalk/core/XWalkFindListener;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    iget-object v8, p0, Lorg/xwalk/core/XWalkFindListener;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 63
    .restart local v5    # "type":Ljava/lang/Object;
    :cond_3
    instance-of v6, v5, Ljava/lang/Class;

    if-eqz v6, :cond_4

    .line 64
    check-cast v5, Ljava/lang/Class;

    .end local v5    # "type":Ljava/lang/Object;
    aput-object v5, v4, v2

    goto :goto_2

    .line 66
    .restart local v5    # "type":Ljava/lang/Object;
    :cond_4
    sget-boolean v6, Lorg/xwalk/core/XWalkFindListener;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 70
    .end local v5    # "type":Ljava/lang/Object;
    :cond_5
    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v3

    .line 71
    iget-object v6, p0, Lorg/xwalk/core/XWalkFindListener;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v0, Lorg/xwalk/core/ReflectConstructor;

    iget-object v6, p0, Lorg/xwalk/core/XWalkFindListener;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v7, "XWalkFindListenerBridge"

    invoke-virtual {v6, v7}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v0, v6, v4}, Lorg/xwalk/core/ReflectConstructor;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 76
    .local v0, "constructor":Lorg/xwalk/core/ReflectConstructor;
    :try_start_0
    iget-object v6, p0, Lorg/xwalk/core/XWalkFindListener;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/xwalk/core/ReflectConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lorg/xwalk/core/XWalkFindListener;->bridge:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    iget-object v6, p0, Lorg/xwalk/core/XWalkFindListener;->postWrapperMethod:Lorg/xwalk/core/ReflectMethod;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/xwalk/core/XWalkFindListener;->postWrapperMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v7}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    goto :goto_0
.end method
