.class public Lorg/xwalk/core/XWalkNavigationHistory;
.super Ljava/lang/Object;
.source "XWalkNavigationHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/XWalkNavigationHistory$Direction;
    }
.end annotation


# instance fields
.field private bridge:Ljava/lang/Object;

.field private canGoBackMethod:Lorg/xwalk/core/ReflectMethod;

.field private canGoForwardMethod:Lorg/xwalk/core/ReflectMethod;

.field private clearMethod:Lorg/xwalk/core/ReflectMethod;

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

.field private enumDirectionClassValueOfMethod:Lorg/xwalk/core/ReflectMethod;

.field private getCurrentIndexMethod:Lorg/xwalk/core/ReflectMethod;

.field private getCurrentItemMethod:Lorg/xwalk/core/ReflectMethod;

.field private getItemAtintMethod:Lorg/xwalk/core/ReflectMethod;

.field private hasItemAtintMethod:Lorg/xwalk/core/ReflectMethod;

.field private navigateDirectionInternalintMethod:Lorg/xwalk/core/ReflectMethod;

.field private postWrapperMethod:Lorg/xwalk/core/ReflectMethod;

.field private sizeMethod:Lorg/xwalk/core/ReflectMethod;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 5
    .param p1, "bridge"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    invoke-direct {v0}, Lorg/xwalk/core/ReflectMethod;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/XWalkNavigationHistory;->enumDirectionClassValueOfMethod:Lorg/xwalk/core/ReflectMethod;

    .line 68
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "size"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkNavigationHistory;->sizeMethod:Lorg/xwalk/core/ReflectMethod;

    .line 89
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "hasItemAt"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkNavigationHistory;->hasItemAtintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 110
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getItemAt"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkNavigationHistory;->getItemAtintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 130
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getCurrentItem"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkNavigationHistory;->getCurrentItemMethod:Lorg/xwalk/core/ReflectMethod;

    .line 150
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "canGoBack"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkNavigationHistory;->canGoBackMethod:Lorg/xwalk/core/ReflectMethod;

    .line 170
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "canGoForward"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkNavigationHistory;->canGoForwardMethod:Lorg/xwalk/core/ReflectMethod;

    .line 192
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "navigate"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkNavigationHistory;->navigateDirectionInternalintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 212
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getCurrentIndex"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkNavigationHistory;->getCurrentIndexMethod:Lorg/xwalk/core/ReflectMethod;

    .line 231
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "clear"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkNavigationHistory;->clearMethod:Lorg/xwalk/core/ReflectMethod;

    .line 46
    iput-object p1, p0, Lorg/xwalk/core/XWalkNavigationHistory;->bridge:Ljava/lang/Object;

    .line 47
    invoke-virtual {p0}, Lorg/xwalk/core/XWalkNavigationHistory;->reflectionInit()V

    .line 48
    return-void
.end method

.method private ConvertDirection(Lorg/xwalk/core/XWalkNavigationHistory$Direction;)Ljava/lang/Object;
    .locals 4
    .param p1, "type"    # Lorg/xwalk/core/XWalkNavigationHistory$Direction;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/xwalk/core/XWalkNavigationHistory;->enumDirectionClassValueOfMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkNavigationHistory$Direction;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public canGoBack()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 139
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkNavigationHistory;->canGoBackMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 147
    :goto_0
    return v1

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkNavigationHistory;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 142
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 147
    goto :goto_0

    .line 144
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public canGoForward()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 159
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkNavigationHistory;->canGoForwardMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 167
    :goto_0
    return v1

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkNavigationHistory;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 162
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 167
    goto :goto_0

    .line 164
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 220
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkNavigationHistory;->clearMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkNavigationHistory;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 223
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method protected getBridge()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/xwalk/core/XWalkNavigationHistory;->bridge:Ljava/lang/Object;

    return-object v0
.end method

.method public getCurrentIndex()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 201
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkNavigationHistory;->getCurrentIndexMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 209
    :goto_0
    return v1

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkNavigationHistory;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 204
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 209
    goto :goto_0

    .line 206
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getCurrentItem()Lorg/xwalk/core/XWalkNavigationItem;
    .locals 4

    .prologue
    .line 119
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkNavigationHistory;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    iget-object v2, p0, Lorg/xwalk/core/XWalkNavigationHistory;->getCurrentItemMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xwalk/core/XWalkCoreWrapper;->getWrapperObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xwalk/core/XWalkNavigationItem;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-object v1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkNavigationHistory;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 122
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 127
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 124
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getItemAt(I)Lorg/xwalk/core/XWalkNavigationItem;
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 99
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkNavigationHistory;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    iget-object v2, p0, Lorg/xwalk/core/XWalkNavigationHistory;->getItemAtintMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xwalk/core/XWalkCoreWrapper;->getWrapperObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xwalk/core/XWalkNavigationItem;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-object v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkNavigationHistory;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 102
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 107
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 104
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public hasItemAt(I)Z
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 78
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkNavigationHistory;->hasItemAtintMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 86
    :goto_0
    return v1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkNavigationHistory;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 81
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 86
    goto :goto_0

    .line 83
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public navigate(Lorg/xwalk/core/XWalkNavigationHistory$Direction;I)V
    .locals 5
    .param p1, "direction"    # Lorg/xwalk/core/XWalkNavigationHistory$Direction;
    .param p2, "steps"    # I

    .prologue
    .line 181
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkNavigationHistory;->navigateDirectionInternalintMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lorg/xwalk/core/XWalkNavigationHistory;->ConvertDirection(Lorg/xwalk/core/XWalkNavigationHistory$Direction;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkNavigationHistory;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 184
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method reflectionInit()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 235
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->initEmbeddedMode()V

    .line 237
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->getInstance()Lorg/xwalk/core/XWalkCoreWrapper;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/XWalkNavigationHistory;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    .line 238
    iget-object v0, p0, Lorg/xwalk/core/XWalkNavigationHistory;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v0, :cond_0

    .line 239
    invoke-static {p0}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectObject(Ljava/lang/Object;)V

    .line 264
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/XWalkNavigationHistory;->enumDirectionClassValueOfMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkNavigationHistory;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v2, "XWalkNavigationHistoryInternal$DirectionInternal"

    invoke-virtual {v1, v2}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "valueOf"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v0, v7, v1, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 246
    iget-object v0, p0, Lorg/xwalk/core/XWalkNavigationHistory;->sizeMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkNavigationHistory;->bridge:Ljava/lang/Object;

    const-string v2, "sizeSuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 248
    iget-object v0, p0, Lorg/xwalk/core/XWalkNavigationHistory;->hasItemAtintMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkNavigationHistory;->bridge:Ljava/lang/Object;

    const-string v2, "hasItemAtSuper"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 250
    iget-object v0, p0, Lorg/xwalk/core/XWalkNavigationHistory;->getItemAtintMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkNavigationHistory;->bridge:Ljava/lang/Object;

    const-string v2, "getItemAtSuper"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 252
    iget-object v0, p0, Lorg/xwalk/core/XWalkNavigationHistory;->getCurrentItemMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkNavigationHistory;->bridge:Ljava/lang/Object;

    const-string v2, "getCurrentItemSuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 254
    iget-object v0, p0, Lorg/xwalk/core/XWalkNavigationHistory;->canGoBackMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkNavigationHistory;->bridge:Ljava/lang/Object;

    const-string v2, "canGoBackSuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 256
    iget-object v0, p0, Lorg/xwalk/core/XWalkNavigationHistory;->canGoForwardMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkNavigationHistory;->bridge:Ljava/lang/Object;

    const-string v2, "canGoForwardSuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 258
    iget-object v0, p0, Lorg/xwalk/core/XWalkNavigationHistory;->navigateDirectionInternalintMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkNavigationHistory;->bridge:Ljava/lang/Object;

    const-string v2, "navigateSuper"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/XWalkNavigationHistory;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v5, "XWalkNavigationHistoryInternal$DirectionInternal"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 260
    iget-object v0, p0, Lorg/xwalk/core/XWalkNavigationHistory;->getCurrentIndexMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkNavigationHistory;->bridge:Ljava/lang/Object;

    const-string v2, "getCurrentIndexSuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 262
    iget-object v0, p0, Lorg/xwalk/core/XWalkNavigationHistory;->clearMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/XWalkNavigationHistory;->bridge:Ljava/lang/Object;

    const-string v2, "clearSuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto/16 :goto_0
.end method

.method public size()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 57
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkNavigationHistory;->sizeMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 65
    :goto_0
    return v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkNavigationHistory;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 60
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 65
    goto :goto_0

    .line 62
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method
