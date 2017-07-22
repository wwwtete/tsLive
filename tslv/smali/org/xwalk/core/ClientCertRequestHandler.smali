.class public Lorg/xwalk/core/ClientCertRequestHandler;
.super Ljava/lang/Object;
.source "ClientCertRequestHandler.java"

# interfaces
.implements Lorg/xwalk/core/ClientCertRequest;


# instance fields
.field private bridge:Ljava/lang/Object;

.field private cancelMethod:Lorg/xwalk/core/ReflectMethod;

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

.field private getHostMethod:Lorg/xwalk/core/ReflectMethod;

.field private getKeyTypesMethod:Lorg/xwalk/core/ReflectMethod;

.field private getPortMethod:Lorg/xwalk/core/ReflectMethod;

.field private getPrincipalsMethod:Lorg/xwalk/core/ReflectMethod;

.field private ignoreMethod:Lorg/xwalk/core/ReflectMethod;

.field private postWrapperMethod:Lorg/xwalk/core/ReflectMethod;

.field private proceedPrivateKeyListMethod:Lorg/xwalk/core/ReflectMethod;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 5
    .param p1, "bridge"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "proceed"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/ClientCertRequestHandler;->proceedPrivateKeyListMethod:Lorg/xwalk/core/ReflectMethod;

    .line 66
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "ignore"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/ClientCertRequestHandler;->ignoreMethod:Lorg/xwalk/core/ReflectMethod;

    .line 82
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "cancel"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/ClientCertRequestHandler;->cancelMethod:Lorg/xwalk/core/ReflectMethod;

    .line 98
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getHost"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/ClientCertRequestHandler;->getHostMethod:Lorg/xwalk/core/ReflectMethod;

    .line 114
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getPort"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/ClientCertRequestHandler;->getPortMethod:Lorg/xwalk/core/ReflectMethod;

    .line 130
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getKeyTypes"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/ClientCertRequestHandler;->getKeyTypesMethod:Lorg/xwalk/core/ReflectMethod;

    .line 146
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "getPrincipals"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/ClientCertRequestHandler;->getPrincipalsMethod:Lorg/xwalk/core/ReflectMethod;

    .line 32
    iput-object p1, p0, Lorg/xwalk/core/ClientCertRequestHandler;->bridge:Ljava/lang/Object;

    .line 33
    invoke-virtual {p0}, Lorg/xwalk/core/ClientCertRequestHandler;->reflectionInit()V

    .line 34
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 71
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/ClientCertRequestHandler;->cancelMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/ClientCertRequestHandler;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 74
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method protected getBridge()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/xwalk/core/ClientCertRequestHandler;->bridge:Ljava/lang/Object;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 3

    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/ClientCertRequestHandler;->getHostMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
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
    iget-object v1, p0, Lorg/xwalk/core/ClientCertRequestHandler;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

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

.method public getKeyTypes()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 119
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/ClientCertRequestHandler;->getKeyTypesMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;
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
    iget-object v1, p0, Lorg/xwalk/core/ClientCertRequestHandler;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

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

.method public getPort()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 103
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/ClientCertRequestHandler;->getPortMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 111
    :goto_0
    return v1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/ClientCertRequestHandler;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 106
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 111
    goto :goto_0

    .line 108
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public getPrincipals()[Ljava/security/Principal;
    .locals 3

    .prologue
    .line 135
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/ClientCertRequestHandler;->getPrincipalsMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/Principal;

    check-cast v1, [Ljava/security/Principal;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-object v1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/ClientCertRequestHandler;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 138
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 143
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 140
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public ignore()V
    .locals 3

    .prologue
    .line 55
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/ClientCertRequestHandler;->ignoreMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/ClientCertRequestHandler;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 58
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public proceed(Ljava/security/PrivateKey;Ljava/util/List;)V
    .locals 4
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
    .line 39
    .local p2, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/ClientCertRequestHandler;->proceedPrivateKeyListMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/ClientCertRequestHandler;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 42
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method reflectionInit()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 150
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->initEmbeddedMode()V

    .line 152
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->getInstance()Lorg/xwalk/core/XWalkCoreWrapper;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/ClientCertRequestHandler;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    .line 153
    iget-object v0, p0, Lorg/xwalk/core/ClientCertRequestHandler;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v0, :cond_0

    .line 154
    invoke-static {p0}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectObject(Ljava/lang/Object;)V

    .line 172
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/ClientCertRequestHandler;->proceedPrivateKeyListMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/ClientCertRequestHandler;->bridge:Ljava/lang/Object;

    const-string v2, "proceedSuper"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/security/PrivateKey;

    aput-object v4, v3, v6

    const/4 v4, 0x1

    const-class v5, Ljava/util/List;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 160
    iget-object v0, p0, Lorg/xwalk/core/ClientCertRequestHandler;->ignoreMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/ClientCertRequestHandler;->bridge:Ljava/lang/Object;

    const-string v2, "ignoreSuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 162
    iget-object v0, p0, Lorg/xwalk/core/ClientCertRequestHandler;->cancelMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/ClientCertRequestHandler;->bridge:Ljava/lang/Object;

    const-string v2, "cancelSuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 164
    iget-object v0, p0, Lorg/xwalk/core/ClientCertRequestHandler;->getHostMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/ClientCertRequestHandler;->bridge:Ljava/lang/Object;

    const-string v2, "getHostSuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 166
    iget-object v0, p0, Lorg/xwalk/core/ClientCertRequestHandler;->getPortMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/ClientCertRequestHandler;->bridge:Ljava/lang/Object;

    const-string v2, "getPortSuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 168
    iget-object v0, p0, Lorg/xwalk/core/ClientCertRequestHandler;->getKeyTypesMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/ClientCertRequestHandler;->bridge:Ljava/lang/Object;

    const-string v2, "getKeyTypesSuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 170
    iget-object v0, p0, Lorg/xwalk/core/ClientCertRequestHandler;->getPrincipalsMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/ClientCertRequestHandler;->bridge:Ljava/lang/Object;

    const-string v2, "getPrincipalsSuper"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto :goto_0
.end method
