.class public abstract Lorg/xwalk/core/XWalkExternalExtensionManager;
.super Ljava/lang/Object;
.source "XWalkExternalExtensionManager.java"


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

.field private getViewActivityMethod:Lorg/xwalk/core/ReflectMethod;

.field private getViewContextMethod:Lorg/xwalk/core/ReflectMethod;

.field private loadExtensionStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private postWrapperMethod:Lorg/xwalk/core/ReflectMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/xwalk/core/XWalkExternalExtensionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/xwalk/core/XWalkExternalExtensionManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/xwalk/core/XWalkView;)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getViewActivity"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkExternalExtensionManager;->getViewActivityMethod:Lorg/xwalk/core/ReflectMethod;

    .line 98
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getViewContext"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkExternalExtensionManager;->getViewContextMethod:Lorg/xwalk/core/ReflectMethod;

    .line 118
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "loadExtension"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkExternalExtensionManager;->loadExtensionStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/XWalkExternalExtensionManager;->constructorTypes:Ljava/util/ArrayList;

    .line 54
    iget-object v0, p0, Lorg/xwalk/core/XWalkExternalExtensionManager;->constructorTypes:Ljava/util/ArrayList;

    const-string v1, "XWalkViewBridge"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/XWalkExternalExtensionManager;->constructorParams:Ljava/util/ArrayList;

    .line 57
    iget-object v0, p0, Lorg/xwalk/core/XWalkExternalExtensionManager;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {p0}, Lorg/xwalk/core/XWalkExternalExtensionManager;->reflectionInit()V

    .line 60
    return-void
.end method


# virtual methods
.method protected getBridge()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/xwalk/core/XWalkExternalExtensionManager;->bridge:Ljava/lang/Object;

    return-object v0
.end method

.method public getViewActivity()Landroid/app/Activity;
    .locals 3

    .prologue
    .line 68
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkExternalExtensionManager;->getViewActivityMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-object v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkExternalExtensionManager;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 71
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 76
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getViewContext()Landroid/content/Context;
    .locals 3

    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkExternalExtensionManager;->getViewContextMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-object v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkExternalExtensionManager;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 90
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 95
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 92
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public loadExtension(Ljava/lang/String;)V
    .locals 4
    .param p1, "extensionPath"    # Ljava/lang/String;

    .prologue
    .line 107
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkExternalExtensionManager;->loadExtensionStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkExternalExtensionManager;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 110
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onNewIntent(Landroid/content/Intent;)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method reflectionInit()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 168
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->initEmbeddedMode()V

    .line 170
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->getInstance()Lorg/xwalk/core/XWalkCoreWrapper;

    move-result-object v6

    iput-object v6, p0, Lorg/xwalk/core/XWalkExternalExtensionManager;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    .line 171
    iget-object v6, p0, Lorg/xwalk/core/XWalkExternalExtensionManager;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v6, :cond_0

    .line 172
    invoke-static {p0}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectObject(Ljava/lang/Object;)V

    .line 209
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v6, p0, Lorg/xwalk/core/XWalkExternalExtensionManager;->constructorTypes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 177
    .local v3, "length":I
    add-int/lit8 v6, v3, 0x1

    new-array v4, v6, [Ljava/lang/Class;

    .line 178
    .local v4, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 179
    iget-object v6, p0, Lorg/xwalk/core/XWalkExternalExtensionManager;->constructorTypes:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 180
    .local v5, "type":Ljava/lang/Object;
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 181
    iget-object v6, p0, Lorg/xwalk/core/XWalkExternalExtensionManager;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    check-cast v5, Ljava/lang/String;

    .end local v5    # "type":Ljava/lang/Object;
    invoke-virtual {v6, v5}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v2

    .line 182
    iget-object v6, p0, Lorg/xwalk/core/XWalkExternalExtensionManager;->constructorParams:Ljava/util/ArrayList;

    iget-object v7, p0, Lorg/xwalk/core/XWalkExternalExtensionManager;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    iget-object v8, p0, Lorg/xwalk/core/XWalkExternalExtensionManager;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 183
    .restart local v5    # "type":Ljava/lang/Object;
    :cond_2
    instance-of v6, v5, Ljava/lang/Class;

    if-eqz v6, :cond_3

    .line 184
    check-cast v5, Ljava/lang/Class;

    .end local v5    # "type":Ljava/lang/Object;
    aput-object v5, v4, v2

    goto :goto_2

    .line 186
    .restart local v5    # "type":Ljava/lang/Object;
    :cond_3
    sget-boolean v6, Lorg/xwalk/core/XWalkExternalExtensionManager;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 190
    .end local v5    # "type":Ljava/lang/Object;
    :cond_4
    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v3

    .line 191
    iget-object v6, p0, Lorg/xwalk/core/XWalkExternalExtensionManager;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v0, Lorg/xwalk/core/ReflectConstructor;

    iget-object v6, p0, Lorg/xwalk/core/XWalkExternalExtensionManager;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v7, "XWalkExternalExtensionManagerBridge"

    invoke-virtual {v6, v7}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v0, v6, v4}, Lorg/xwalk/core/ReflectConstructor;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 196
    .local v0, "constructor":Lorg/xwalk/core/ReflectConstructor;
    :try_start_0
    iget-object v6, p0, Lorg/xwalk/core/XWalkExternalExtensionManager;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/xwalk/core/ReflectConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lorg/xwalk/core/XWalkExternalExtensionManager;->bridge:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    iget-object v6, p0, Lorg/xwalk/core/XWalkExternalExtensionManager;->postWrapperMethod:Lorg/xwalk/core/ReflectMethod;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lorg/xwalk/core/XWalkExternalExtensionManager;->postWrapperMethod:Lorg/xwalk/core/ReflectMethod;

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {v6, v7}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_5
    iget-object v6, p0, Lorg/xwalk/core/XWalkExternalExtensionManager;->getViewActivityMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkExternalExtensionManager;->bridge:Ljava/lang/Object;

    const-string v8, "getViewActivitySuper"

    new-array v9, v11, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v12, v8, v9}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 205
    iget-object v6, p0, Lorg/xwalk/core/XWalkExternalExtensionManager;->getViewContextMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkExternalExtensionManager;->bridge:Ljava/lang/Object;

    const-string v8, "getViewContextSuper"

    new-array v9, v11, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v12, v8, v9}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 207
    iget-object v6, p0, Lorg/xwalk/core/XWalkExternalExtensionManager;->loadExtensionStringMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkExternalExtensionManager;->bridge:Ljava/lang/Object;

    const-string v8, "loadExtensionSuper"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v11

    invoke-virtual {v6, v7, v12, v8, v9}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto/16 :goto_0

    .line 197
    :catch_0
    move-exception v1

    .line 198
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    goto/16 :goto_0
.end method
