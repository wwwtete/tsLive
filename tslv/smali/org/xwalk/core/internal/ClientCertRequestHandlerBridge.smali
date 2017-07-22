.class public Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;
.super Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;
.source "ClientCertRequestHandlerBridge.java"


# instance fields
.field private cancelMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

.field private getHostMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getKeyTypesMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getPortMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getPrincipalsMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private ignoreMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private internal:Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

.field private proceedPrivateKeyListMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private wrapper:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;)V
    .locals 5
    .param p1, "internal"    # Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 25
    invoke-direct {p0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;-><init>()V

    .line 47
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "proceed"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->proceedPrivateKeyListMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 66
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "ignore"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->ignoreMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 85
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "cancel"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->cancelMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 107
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getHost"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->getHostMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 129
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getPort"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->getPortMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 151
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getKeyTypes"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->getKeyTypesMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 173
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getPrincipals"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->getPrincipalsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 26
    iput-object p1, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    .line 27
    invoke-virtual {p0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->reflectionInit()V

    .line 28
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->cancelMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->cancelSuper()V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->cancelMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public cancelSuper()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    if-nez v0, :cond_0

    .line 79
    invoke-super {p0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->cancel()V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->cancel()V

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->getHostMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->getHostSuper()Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->getHostMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getHostSuper()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    iget-object v1, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    if-nez v1, :cond_1

    .line 99
    invoke-super {p0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 104
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 101
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->getHost()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method public getKeyTypes()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->getKeyTypesMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->getKeyTypesSuper()[Ljava/lang/String;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->getKeyTypesMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getKeyTypesSuper()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    iget-object v1, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    if-nez v1, :cond_1

    .line 143
    invoke-super {p0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->getKeyTypes()[Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "ret":[Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 148
    .end local v0    # "ret":[Ljava/lang/String;
    :cond_0
    return-object v0

    .line 145
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->getKeyTypes()[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":[Ljava/lang/String;
    goto :goto_0
.end method

.method public getPort()I
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->getPortMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->getPortSuper()I

    move-result v0

    .line 114
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->getPortMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getPortSuper()I
    .locals 2

    .prologue
    .line 120
    iget-object v1, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    if-nez v1, :cond_0

    .line 121
    invoke-super {p0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->getPort()I

    move-result v0

    .line 126
    .local v0, "ret":I
    :goto_0
    return v0

    .line 123
    .end local v0    # "ret":I
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->getPort()I

    move-result v0

    .restart local v0    # "ret":I
    goto :goto_0
.end method

.method public getPrincipals()[Ljava/security/Principal;
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->getPrincipalsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->getPrincipalsSuper()[Ljava/security/Principal;

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->getPrincipalsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/Principal;

    check-cast v0, [Ljava/security/Principal;

    goto :goto_0
.end method

.method public getPrincipalsSuper()[Ljava/security/Principal;
    .locals 2

    .prologue
    .line 164
    iget-object v1, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    if-nez v1, :cond_1

    .line 165
    invoke-super {p0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->getPrincipals()[Ljava/security/Principal;

    move-result-object v0

    .line 169
    .local v0, "ret":[Ljava/security/Principal;
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 170
    .end local v0    # "ret":[Ljava/security/Principal;
    :cond_0
    return-object v0

    .line 167
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->getPrincipals()[Ljava/security/Principal;

    move-result-object v0

    .restart local v0    # "ret":[Ljava/security/Principal;
    goto :goto_0
.end method

.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method public ignore()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->ignoreMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->ignoreSuper()V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->ignoreMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public ignoreSuper()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    if-nez v0, :cond_0

    .line 60
    invoke-super {p0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->ignore()V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->ignore()V

    goto :goto_0
.end method

.method public proceed(Ljava/security/PrivateKey;Ljava/util/List;)V
    .locals 3
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PrivateKey;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->proceedPrivateKeyListMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->proceedSuper(Ljava/security/PrivateKey;Ljava/util/List;)V

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->proceedPrivateKeyListMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public proceedSuper(Ljava/security/PrivateKey;Ljava/util/List;)V
    .locals 1
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PrivateKey;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    if-nez v0, :cond_0

    .line 41
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->proceed(Ljava/security/PrivateKey;Ljava/util/List;)V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->proceed(Ljava/security/PrivateKey;Ljava/util/List;)V

    goto :goto_0
.end method

.method reflectionInit()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 177
    invoke-static {}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;

    move-result-object v2

    iput-object v2, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 178
    iget-object v2, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    if-nez v2, :cond_0

    .line 202
    :goto_0
    return-void

    .line 180
    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/ReflectConstructor;

    iget-object v2, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v3, "ClientCertRequestHandler"

    invoke-virtual {v2, v3}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v3, v7

    invoke-direct {v0, v2, v3}, Lorg/xwalk/core/internal/ReflectConstructor;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 183
    .local v0, "constructor":Lorg/xwalk/core/internal/ReflectConstructor;
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v2}, Lorg/xwalk/core/internal/ReflectConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->wrapper:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    iget-object v2, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->proceedPrivateKeyListMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "proceed"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/security/PrivateKey;

    aput-object v6, v5, v7

    const-class v6, Ljava/util/List;

    aput-object v6, v5, v9

    invoke-virtual {v2, v3, v8, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 190
    iget-object v2, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->ignoreMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "ignore"

    new-array v5, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v8, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 192
    iget-object v2, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->cancelMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "cancel"

    new-array v5, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v8, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 194
    iget-object v2, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->getHostMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getHost"

    new-array v5, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v8, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 196
    iget-object v2, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->getPortMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getPort"

    new-array v5, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v8, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 198
    iget-object v2, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->getKeyTypesMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getKeyTypes"

    new-array v5, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v8, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 200
    iget-object v2, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->getPrincipalsMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getPrincipals"

    new-array v5, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v8, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto :goto_0

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    goto :goto_0
.end method
