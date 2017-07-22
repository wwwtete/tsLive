.class public Lorg/xwalk/core/internal/XWalkExtensionBridge;
.super Lorg/xwalk/core/internal/XWalkExtensionInternal;
.source "XWalkExtensionBridge.java"


# instance fields
.field private broadcastMessageStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

.field private onBinaryMessageintbyteArrayMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onInstanceCreatedintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onInstanceDestroyedintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onSyncMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private postBinaryMessageintbyteArrayMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private postMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private wrapper:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "jsApi"    # Ljava/lang/String;
    .param p3, "wrapper"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 19
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkExtensionInternal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "postMessage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->postMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 62
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "postBinaryMessage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->postBinaryMessageintbyteArrayMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 77
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "broadcastMessage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->broadcastMessageStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 92
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onInstanceCreated"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onInstanceCreatedintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 107
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onInstanceDestroyed"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onInstanceDestroyedintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 122
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onBinaryMessage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onBinaryMessageintbyteArrayMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 130
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onMessage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 138
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onSyncMessage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onSyncMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 21
    iput-object p3, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->wrapper:Ljava/lang/Object;

    .line 22
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkExtensionBridge;->reflectionInit()V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "jsApi"    # Ljava/lang/String;
    .param p3, "entryPoints"    # [Ljava/lang/String;
    .param p4, "wrapper"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkExtensionInternal;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 47
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "postMessage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->postMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 62
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "postBinaryMessage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->postBinaryMessageintbyteArrayMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 77
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "broadcastMessage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->broadcastMessageStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 92
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onInstanceCreated"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onInstanceCreatedintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 107
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onInstanceDestroyed"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onInstanceDestroyedintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 122
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onBinaryMessage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onBinaryMessageintbyteArrayMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 130
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onMessage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 138
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onSyncMessage"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onSyncMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 29
    iput-object p4, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->wrapper:Ljava/lang/Object;

    .line 30
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkExtensionBridge;->reflectionInit()V

    .line 32
    return-void
.end method


# virtual methods
.method public broadcastMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->broadcastMessageStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkExtensionBridge;->broadcastMessageSuper(Ljava/lang/String;)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->broadcastMessageStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public broadcastMessageSuper(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkExtensionInternal;->broadcastMessage(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method public onBinaryMessage(I[B)V
    .locals 4
    .param p1, "instanceID"    # I
    .param p2, "message"    # [B

    .prologue
    .line 111
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onBinaryMessageintbyteArrayMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onBinaryMessageSuper(I[B)V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onBinaryMessageintbyteArrayMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onBinaryMessageSuper(I[B)V
    .locals 0
    .param p1, "instanceID"    # I
    .param p2, "message"    # [B

    .prologue
    .line 119
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkExtensionInternal;->onBinaryMessage(I[B)V

    .line 120
    return-void
.end method

.method public onInstanceCreated(I)V
    .locals 4
    .param p1, "instanceID"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onInstanceCreatedintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onInstanceCreatedSuper(I)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onInstanceCreatedintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onInstanceCreatedSuper(I)V
    .locals 0
    .param p1, "instanceID"    # I

    .prologue
    .line 89
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkExtensionInternal;->onInstanceCreated(I)V

    .line 90
    return-void
.end method

.method public onInstanceDestroyed(I)V
    .locals 4
    .param p1, "instanceID"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onInstanceDestroyedintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onInstanceDestroyedSuper(I)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onInstanceDestroyedintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onInstanceDestroyedSuper(I)V
    .locals 0
    .param p1, "instanceID"    # I

    .prologue
    .line 104
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkExtensionInternal;->onInstanceDestroyed(I)V

    .line 105
    return-void
.end method

.method public onMessage(ILjava/lang/String;)V
    .locals 4
    .param p1, "instanceID"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-void
.end method

.method public onSyncMessage(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "instanceID"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 134
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onSyncMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public postBinaryMessage(I[B)V
    .locals 4
    .param p1, "instanceID"    # I
    .param p2, "message"    # [B

    .prologue
    .line 51
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->postBinaryMessageintbyteArrayMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkExtensionBridge;->postBinaryMessageSuper(I[B)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->postBinaryMessageintbyteArrayMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public postBinaryMessageSuper(I[B)V
    .locals 0
    .param p1, "instanceID"    # I
    .param p2, "message"    # [B

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkExtensionInternal;->postBinaryMessage(I[B)V

    .line 60
    return-void
.end method

.method public postMessage(ILjava/lang/String;)V
    .locals 4
    .param p1, "instanceID"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->postMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkExtensionBridge;->postMessageSuper(ILjava/lang/String;)V

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->postMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public postMessageSuper(ILjava/lang/String;)V
    .locals 0
    .param p1, "instanceID"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkExtensionInternal;->postMessage(ILjava/lang/String;)V

    .line 45
    return-void
.end method

.method reflectionInit()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 142
    invoke-static {}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 143
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    if-nez v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->postMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "postMessage"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 147
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->postBinaryMessageintbyteArrayMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "postBinaryMessage"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    const-class v4, [B

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 149
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->broadcastMessageStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "broadcastMessage"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 151
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onInstanceCreatedintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onInstanceCreated"

    new-array v3, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 153
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onInstanceDestroyedintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onInstanceDestroyed"

    new-array v3, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 155
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onBinaryMessageintbyteArrayMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onBinaryMessage"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    const-class v4, [B

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 157
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onMessage"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 159
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->onSyncMessageintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkExtensionBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onSyncMessage"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto/16 :goto_0
.end method
