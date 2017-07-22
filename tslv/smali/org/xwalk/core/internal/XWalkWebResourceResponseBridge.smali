.class public Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;
.super Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
.source "XWalkWebResourceResponseBridge.java"


# instance fields
.field private coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

.field private getDataMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getEncodingMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getMimeTypeMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getReasonPhraseMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getResponseHeadersMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getStatusCodeMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

.field private setDataInputStreamMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setEncodingStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setMimeTypeStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setResponseHeadersMapMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private setStatusCodeAndReasonPhraseintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private wrapper:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;)V
    .locals 5
    .param p1, "internal"    # Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 23
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;-><init>()V

    .line 45
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setMimeType"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setMimeTypeStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 67
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getMimeType"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getMimeTypeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 86
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setEncoding"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setEncodingStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 108
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getEncoding"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getEncodingMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 127
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setData"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setDataInputStreamMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 149
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getData"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getDataMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 168
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setStatusCodeAndReasonPhrase"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setStatusCodeAndReasonPhraseintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 190
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getStatusCode"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getStatusCodeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 212
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getReasonPhrase"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getReasonPhraseMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 231
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "setResponseHeaders"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setResponseHeadersMapMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 253
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getResponseHeaders"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getResponseHeadersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 24
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    .line 25
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->reflectionInit()V

    .line 26
    return-void
.end method


# virtual methods
.method public getData()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getDataMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getDataSuper()Ljava/io/InputStream;

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getDataMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    goto :goto_0
.end method

.method public getDataSuper()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 140
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    if-nez v1, :cond_1

    .line 141
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->getData()Ljava/io/InputStream;

    move-result-object v0

    .line 145
    .local v0, "ret":Ljava/io/InputStream;
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 146
    .end local v0    # "ret":Ljava/io/InputStream;
    :cond_0
    return-object v0

    .line 143
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->getData()Ljava/io/InputStream;

    move-result-object v0

    .restart local v0    # "ret":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getEncodingMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getEncodingSuper()Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getEncodingMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getEncodingSuper()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    if-nez v1, :cond_1

    .line 100
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 105
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 102
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getMimeTypeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getMimeTypeSuper()Ljava/lang/String;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getMimeTypeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getMimeTypeSuper()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    if-nez v1, :cond_1

    .line 59
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 64
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 61
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getReasonPhraseMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getReasonPhraseSuper()Ljava/lang/String;

    move-result-object v0

    .line 197
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getReasonPhraseMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getReasonPhraseSuper()Ljava/lang/String;
    .locals 2

    .prologue
    .line 203
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    if-nez v1, :cond_1

    .line 204
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 209
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 206
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getResponseHeadersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getResponseHeadersSuper()Ljava/util/Map;

    move-result-object v0

    .line 238
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getResponseHeadersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0
.end method

.method public getResponseHeadersSuper()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    if-nez v1, :cond_1

    .line 245
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    .line 249
    .local v0, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 250
    .end local v0    # "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object v0

    .line 247
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    .restart local v0    # "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public getStatusCode()I
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getStatusCodeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getStatusCodeSuper()I

    move-result v0

    .line 175
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getStatusCodeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getStatusCodeSuper()I
    .locals 2

    .prologue
    .line 181
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    if-nez v1, :cond_0

    .line 182
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->getStatusCode()I

    move-result v0

    .line 187
    .local v0, "ret":I
    :goto_0
    return v0

    .line 184
    .end local v0    # "ret":I
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->getStatusCode()I

    move-result v0

    .restart local v0    # "ret":I
    goto :goto_0
.end method

.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method reflectionInit()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 257
    invoke-static {}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;

    move-result-object v2

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 258
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    if-nez v2, :cond_0

    .line 290
    :goto_0
    return-void

    .line 260
    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/ReflectConstructor;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v3, "XWalkWebResourceResponse"

    invoke-virtual {v2, v3}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v3, v7

    invoke-direct {v0, v2, v3}, Lorg/xwalk/core/internal/ReflectConstructor;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 263
    .local v0, "constructor":Lorg/xwalk/core/internal/ReflectConstructor;
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v2}, Lorg/xwalk/core/internal/ReflectConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->wrapper:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setMimeTypeStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setMimeType"

    new-array v5, v9, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v8, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 270
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getMimeTypeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getMimeType"

    new-array v5, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v8, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 272
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setEncodingStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setEncoding"

    new-array v5, v9, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v8, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 274
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getEncodingMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getEncoding"

    new-array v5, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v8, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 276
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setDataInputStreamMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setData"

    new-array v5, v9, [Ljava/lang/Class;

    const-class v6, Ljava/io/InputStream;

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v8, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 278
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getDataMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getData"

    new-array v5, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v8, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 280
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setStatusCodeAndReasonPhraseintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setStatusCodeAndReasonPhrase"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v9

    invoke-virtual {v2, v3, v8, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 282
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getStatusCodeMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getStatusCode"

    new-array v5, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v8, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 284
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getReasonPhraseMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getReasonPhrase"

    new-array v5, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v8, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 286
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setResponseHeadersMapMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "setResponseHeaders"

    new-array v5, v9, [Ljava/lang/Class;

    const-class v6, Ljava/util/Map;

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v8, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 288
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getResponseHeadersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->wrapper:Ljava/lang/Object;

    const-string v4, "getResponseHeaders"

    new-array v5, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v8, v4, v5}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto/16 :goto_0

    .line 264
    :catch_0
    move-exception v1

    .line 265
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    goto/16 :goto_0
.end method

.method public setData(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "data"    # Ljava/io/InputStream;

    .prologue
    .line 112
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setDataInputStreamMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setDataSuper(Ljava/io/InputStream;)V

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setDataInputStreamMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setDataSuper(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "data"    # Ljava/io/InputStream;

    .prologue
    .line 120
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    if-nez v0, :cond_0

    .line 121
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->setData(Ljava/io/InputStream;)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->setData(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 3
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setEncodingStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setEncodingSuper(Ljava/lang/String;)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setEncodingStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setEncodingSuper(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    if-nez v0, :cond_0

    .line 80
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->setEncoding(Ljava/lang/String;)V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->setEncoding(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 3
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setMimeTypeStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setMimeTypeSuper(Ljava/lang/String;)V

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setMimeTypeStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setMimeTypeSuper(Ljava/lang/String;)V
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    if-nez v0, :cond_0

    .line 39
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->setMimeType(Ljava/lang/String;)V

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->setMimeType(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setResponseHeaders(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setResponseHeadersMapMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setResponseHeadersSuper(Ljava/util/Map;)V

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setResponseHeadersMapMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setResponseHeadersSuper(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    if-nez v0, :cond_0

    .line 225
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->setResponseHeaders(Ljava/util/Map;)V

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->setResponseHeaders(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public setStatusCodeAndReasonPhrase(ILjava/lang/String;)V
    .locals 4
    .param p1, "statusCode"    # I
    .param p2, "reasonPhrase"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setStatusCodeAndReasonPhraseintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setStatusCodeAndReasonPhraseSuper(ILjava/lang/String;)V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->setStatusCodeAndReasonPhraseintStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

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

.method public setStatusCodeAndReasonPhraseSuper(ILjava/lang/String;)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "reasonPhrase"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    if-nez v0, :cond_0

    .line 162
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->setStatusCodeAndReasonPhrase(ILjava/lang/String;)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->setStatusCodeAndReasonPhrase(ILjava/lang/String;)V

    goto :goto_0
.end method
