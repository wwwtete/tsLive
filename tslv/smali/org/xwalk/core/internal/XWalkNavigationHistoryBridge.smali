.class public Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;
.super Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;
.source "XWalkNavigationHistoryBridge.java"


# instance fields
.field private canGoBackMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private canGoForwardMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private clearMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

.field private enumDirectionClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getCurrentIndexMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getCurrentItemMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getItemAtintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private hasItemAtintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

.field private navigateDirectionInternalintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private sizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private wrapper:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;)V
    .locals 5
    .param p1, "internal"    # Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 26
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;-><init>()V

    .line 17
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    invoke-direct {v0}, Lorg/xwalk/core/internal/ReflectMethod;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->enumDirectionClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 51
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "size"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->sizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 73
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "hasItemAt"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->hasItemAtintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 95
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getItemAt"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getItemAtintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 117
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getCurrentItem"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getCurrentItemMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 139
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "canGoBack"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->canGoBackMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 161
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "canGoForward"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->canGoForwardMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 180
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "navigate"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->navigateDirectionInternalintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 202
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getCurrentIndex"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getCurrentIndexMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 221
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "clear"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->clearMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 27
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    .line 28
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->reflectionInit()V

    .line 29
    return-void
.end method

.method private ConvertDirectionInternal(Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal$DirectionInternal;)Ljava/lang/Object;
    .locals 4
    .param p1, "type"    # Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal$DirectionInternal;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->enumDirectionClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal$DirectionInternal;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public canGoBack()Z
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->canGoBackMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->canGoBackSuper()Z

    move-result v0

    .line 124
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->canGoBackMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public canGoBackSuper()Z
    .locals 2

    .prologue
    .line 130
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    if-nez v1, :cond_0

    .line 131
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->canGoBack()Z

    move-result v0

    .line 136
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 133
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->canGoBack()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public canGoForward()Z
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->canGoForwardMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->canGoForwardSuper()Z

    move-result v0

    .line 146
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->canGoForwardMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public canGoForwardSuper()Z
    .locals 2

    .prologue
    .line 152
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    if-nez v1, :cond_0

    .line 153
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->canGoForward()Z

    move-result v0

    .line 158
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 155
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->canGoForward()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->clearMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->clearSuper()V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->clearMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public clearSuper()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    if-nez v0, :cond_0

    .line 215
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->clear()V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->clear()V

    goto :goto_0
.end method

.method public getCurrentIndex()I
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getCurrentIndexMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getCurrentIndexSuper()I

    move-result v0

    .line 187
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getCurrentIndexMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentIndexSuper()I
    .locals 2

    .prologue
    .line 193
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    if-nez v1, :cond_0

    .line 194
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->getCurrentIndex()I

    move-result v0

    .line 199
    .local v0, "ret":I
    :goto_0
    return v0

    .line 196
    .end local v0    # "ret":I
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->getCurrentIndex()I

    move-result v0

    .restart local v0    # "ret":I
    goto :goto_0
.end method

.method public getCurrentItem()Lorg/xwalk/core/internal/XWalkNavigationItemInternal;
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getCurrentItemMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getCurrentItemSuper()Lorg/xwalk/core/internal/XWalkNavigationItemBridge;

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getCurrentItemMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getBridgeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;

    goto :goto_0
.end method

.method public getCurrentItemSuper()Lorg/xwalk/core/internal/XWalkNavigationItemBridge;
    .locals 2

    .prologue
    .line 108
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    if-nez v1, :cond_0

    .line 109
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->getCurrentItem()Lorg/xwalk/core/internal/XWalkNavigationItemInternal;

    move-result-object v0

    .line 113
    .local v0, "ret":Lorg/xwalk/core/internal/XWalkNavigationItemInternal;
    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 114
    .end local v0    # "ret":Lorg/xwalk/core/internal/XWalkNavigationItemInternal;
    :goto_1
    return-object v0

    .line 111
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->getCurrentItem()Lorg/xwalk/core/internal/XWalkNavigationItemInternal;

    move-result-object v0

    .restart local v0    # "ret":Lorg/xwalk/core/internal/XWalkNavigationItemInternal;
    goto :goto_0

    .line 114
    :cond_1
    instance-of v1, v0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;

    goto :goto_1

    :cond_2
    new-instance v1, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;

    invoke-direct {v1, v0}, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;-><init>(Lorg/xwalk/core/internal/XWalkNavigationItemInternal;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public getItemAt(I)Lorg/xwalk/core/internal/XWalkNavigationItemInternal;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getItemAtintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getItemAtSuper(I)Lorg/xwalk/core/internal/XWalkNavigationItemBridge;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getItemAtintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getBridgeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;

    goto :goto_0
.end method

.method public getItemAtSuper(I)Lorg/xwalk/core/internal/XWalkNavigationItemBridge;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 86
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    if-nez v1, :cond_0

    .line 87
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->getItemAt(I)Lorg/xwalk/core/internal/XWalkNavigationItemInternal;

    move-result-object v0

    .line 91
    .local v0, "ret":Lorg/xwalk/core/internal/XWalkNavigationItemInternal;
    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 92
    .end local v0    # "ret":Lorg/xwalk/core/internal/XWalkNavigationItemInternal;
    :goto_1
    return-object v0

    .line 89
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    invoke-virtual {v1, p1}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->getItemAt(I)Lorg/xwalk/core/internal/XWalkNavigationItemInternal;

    move-result-object v0

    .restart local v0    # "ret":Lorg/xwalk/core/internal/XWalkNavigationItemInternal;
    goto :goto_0

    .line 92
    :cond_1
    instance-of v1, v0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;

    goto :goto_1

    :cond_2
    new-instance v1, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;

    invoke-direct {v1, v0}, Lorg/xwalk/core/internal/XWalkNavigationItemBridge;-><init>(Lorg/xwalk/core/internal/XWalkNavigationItemInternal;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method public hasItemAt(I)Z
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->hasItemAtintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->hasItemAtSuper(I)Z

    move-result v0

    .line 58
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->hasItemAtintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public hasItemAtSuper(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 64
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    if-nez v1, :cond_0

    .line 65
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->hasItemAt(I)Z

    move-result v0

    .line 70
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 67
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    invoke-virtual {v1, p1}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->hasItemAt(I)Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public navigate(Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal$DirectionInternal;I)V
    .locals 4
    .param p1, "direction"    # Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal$DirectionInternal;
    .param p2, "steps"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->navigateDirectionInternalintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->navigateSuper(Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal$DirectionInternal;I)V

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->navigateDirectionInternalintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->ConvertDirectionInternal(Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal$DirectionInternal;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public navigateSuper(Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal$DirectionInternal;I)V
    .locals 1
    .param p1, "direction"    # Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal$DirectionInternal;
    .param p2, "steps"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    if-nez v0, :cond_0

    .line 174
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->navigate(Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal$DirectionInternal;I)V

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->navigate(Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal$DirectionInternal;I)V

    goto :goto_0
.end method

.method reflectionInit()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 225
    invoke-static {}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;

    move-result-object v2

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 226
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    if-nez v2, :cond_0

    .line 257
    :goto_0
    return-void

    .line 228
    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/ReflectConstructor;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v3, "XWalkNavigationHistory"

    invoke-virtual {v2, v3}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v10, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v3, v8

    invoke-direct {v0, v2, v3}, Lorg/xwalk/core/internal/ReflectConstructor;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 231
    .local v0, "constructor":Lorg/xwalk/core/internal/ReflectConstructor;
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v2}, Lorg/xwalk/core/internal/ReflectConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->wrapper:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->enumDirectionClassValueOfMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v4, "XWalkNavigationHistory$Direction"

    invoke-virtual {v3, v4}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "valueOf"

    new-array v5, v10, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v2, v9, v3, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 239
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->sizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "size"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 241
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->hasItemAtintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "hasItemAt"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 243
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getItemAtintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getItemAt"

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 245
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getCurrentItemMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getCurrentItem"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 247
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->canGoBackMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "canGoBack"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 249
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->canGoForwardMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "canGoForward"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 251
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->navigateDirectionInternalintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "navigate"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    iget-object v6, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v7, "XWalkNavigationHistory$Direction"

    invoke-virtual {v6, v7}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v8

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v10

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 253
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->getCurrentIndexMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getCurrentIndex"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 255
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->clearMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "clear"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v9, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto/16 :goto_0

    .line 232
    :catch_0
    move-exception v1

    .line 233
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    goto/16 :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->sizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->sizeSuper()I

    move-result v0

    .line 36
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->sizeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public sizeSuper()I
    .locals 2

    .prologue
    .line 42
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    if-nez v1, :cond_0

    .line 43
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->size()I

    move-result v0

    .line 48
    .local v0, "ret":I
    :goto_0
    return v0

    .line 45
    .end local v0    # "ret":I
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkNavigationHistoryBridge;->internal:Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkNavigationHistoryInternal;->size()I

    move-result v0

    .restart local v0    # "ret":I
    goto :goto_0
.end method
