.class public Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;
.super Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;
.source "XWalkExternalExtensionManagerBridge.java"


# instance fields
.field private coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

.field private getViewActivityMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getViewContextMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private loadExtensionStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onActivityResultintintIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onDestroyMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onNewIntentIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onPauseMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onResumeMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onStartMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onStopMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private wrapper:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/Object;)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "wrapper"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 22
    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    .line 45
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getViewActivity"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->getViewActivityMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 63
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getViewContext"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->getViewContextMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 78
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "loadExtension"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->loadExtensionStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 86
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onStart"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onStartMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 94
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onResume"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onResumeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 102
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onPause"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onPauseMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 110
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onStop"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onStopMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 118
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onDestroy"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onDestroyMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 126
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onNewIntent"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onNewIntentIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 134
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onActivityResult"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onActivityResultintintIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 24
    iput-object p2, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->wrapper:Ljava/lang/Object;

    .line 25
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->reflectionInit()V

    .line 27
    return-void
.end method


# virtual methods
.method public getViewActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->getViewActivityMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->getViewActivitySuper()Landroid/app/Activity;

    move-result-object v0

    .line 34
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->getViewActivityMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method

.method public getViewActivitySuper()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;->getViewActivity()Landroid/app/Activity;

    move-result-object v0

    .line 41
    .local v0, "ret":Landroid/app/Activity;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 42
    .end local v0    # "ret":Landroid/app/Activity;
    :cond_0
    return-object v0
.end method

.method public getViewContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->getViewContextMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->getViewContextSuper()Landroid/content/Context;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->getViewContextMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0
.end method

.method public getViewContextSuper()Landroid/content/Context;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;->getViewContext()Landroid/content/Context;

    move-result-object v0

    .line 59
    .local v0, "ret":Landroid/content/Context;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 60
    .end local v0    # "ret":Landroid/content/Context;
    :cond_0
    return-object v0
.end method

.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method public loadExtension(Ljava/lang/String;)V
    .locals 3
    .param p1, "extensionPath"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->loadExtensionStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->loadExtensionSuper(Ljava/lang/String;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->loadExtensionStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public loadExtensionSuper(Ljava/lang/String;)V
    .locals 0
    .param p1, "extensionPath"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerInternal;->loadExtension(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 130
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onActivityResultintintIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

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

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onDestroyMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 122
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onNewIntentIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onPauseMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onResumeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onStartMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onStopMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method

.method reflectionInit()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 138
    invoke-static {}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 139
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    if-nez v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->getViewActivityMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "getViewActivity"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v6, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 143
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->getViewContextMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "getViewContext"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v6, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 145
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->loadExtensionStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "loadExtension"

    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v6, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 147
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onStartMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onStart"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v6, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 149
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onResumeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onResume"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v6, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 151
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onPauseMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onPause"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v6, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 153
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onStopMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onStop"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v6, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 155
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onDestroyMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onDestroy"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v6, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 157
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onNewIntentIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onNewIntent"

    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Landroid/content/Intent;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v6, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 159
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->onActivityResultintintIntentMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExternalExtensionManagerBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onActivityResult"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v7

    const/4 v4, 0x2

    const-class v5, Landroid/content/Intent;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v6, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto/16 :goto_0
.end method
