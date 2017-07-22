.class public Lorg/xwalk/core/internal/XWalkResourceClientBridge;
.super Lorg/xwalk/core/internal/XWalkResourceClientInternal;
.source "XWalkResourceClientBridge.java"


# instance fields
.field private coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

.field private createXWalkWebResourceResponseStringStringInputStreamMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private createXWalkWebResourceResponseStringStringInputStreamintStringMapMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private doUpdateVisitedHistoryXWalkViewInternalStringbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onDocumentLoadedInFrameXWalkViewInternallongMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onLoadFinishedXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onLoadStartedXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onProgressChangedXWalkViewInternalintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onReceivedClientCertRequestXWalkViewInternalClientCertRequestInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onReceivedHttpAuthRequestXWalkViewInternalXWalkHttpAuthHandlerInternalStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onReceivedLoadErrorXWalkViewInternalintStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onReceivedResponseHeadersXWalkViewInternalXWalkWebResourceRequestInternalXWalkWebResourceResponseInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private onReceivedSslErrorXWalkViewInternalValueCallbackSslErrorMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private shouldInterceptLoadRequestXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private shouldInterceptLoadRequestXWalkViewInternalXWalkWebResourceRequestInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private shouldOverrideUrlLoadingXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private wrapper:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/Object;)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "wrapper"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 38
    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;-><init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V

    .line 66
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onDocumentLoadedInFrame"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onDocumentLoadedInFrameXWalkViewInternallongMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 89
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onLoadStarted"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onLoadStartedXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 112
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onLoadFinished"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onLoadFinishedXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 135
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onProgressChanged"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onProgressChangedXWalkViewInternalintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 161
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "shouldInterceptLoadRequest"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldInterceptLoadRequestXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 187
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "shouldInterceptLoadRequest"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldInterceptLoadRequestXWalkViewInternalXWalkWebResourceRequestInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 210
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onReceivedLoadError"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedLoadErrorXWalkViewInternalintStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 236
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "shouldOverrideUrlLoading"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldOverrideUrlLoadingXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 259
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onReceivedSslError"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedSslErrorXWalkViewInternalValueCallbackSslErrorMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 282
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onReceivedClientCertRequest"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedClientCertRequestXWalkViewInternalClientCertRequestInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 305
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onReceivedResponseHeaders"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedResponseHeadersXWalkViewInternalXWalkWebResourceRequestInternalXWalkWebResourceResponseInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 328
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "doUpdateVisitedHistory"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->doUpdateVisitedHistoryXWalkViewInternalStringbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 351
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "onReceivedHttpAuthRequest"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedHttpAuthRequestXWalkViewInternalXWalkHttpAuthHandlerInternalStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 369
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "createXWalkWebResourceResponse"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->createXWalkWebResourceResponseStringStringInputStreamMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 387
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "createXWalkWebResourceResponse"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->createXWalkWebResourceResponseStringStringInputStreamintStringMapMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 40
    iput-object p2, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    .line 41
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->reflectionInit()V

    .line 43
    return-void
.end method


# virtual methods
.method public createXWalkWebResourceResponse(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    .locals 4
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/io/InputStream;

    .prologue
    .line 355
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->createXWalkWebResourceResponseStringStringInputStreamMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->createXWalkWebResourceResponseSuper(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    move-result-object v0

    .line 358
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->createXWalkWebResourceResponseStringStringInputStreamMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getBridgeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    goto :goto_0
.end method

.method public createXWalkWebResourceResponse(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;Ljava/util/Map;)Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    .locals 5
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/io/InputStream;
    .param p4, "statusCode"    # I
    .param p5, "reasonPhrase"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;"
        }
    .end annotation

    .prologue
    .line 373
    .local p6, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->createXWalkWebResourceResponseStringStringInputStreamintStringMapMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual/range {p0 .. p6}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->createXWalkWebResourceResponseSuper(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;Ljava/util/Map;)Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    move-result-object v0

    .line 376
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->createXWalkWebResourceResponseStringStringInputStreamintStringMapMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    const/4 v3, 0x5

    aput-object p6, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getBridgeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    goto :goto_0
.end method

.method public createXWalkWebResourceResponseSuper(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/io/InputStream;

    .prologue
    .line 364
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->createXWalkWebResourceResponse(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    move-result-object v0

    .line 365
    .local v0, "ret":Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 366
    .end local v0    # "ret":Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    :goto_0
    return-object v0

    .restart local v0    # "ret":Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    :cond_0
    instance-of v1, v0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    invoke-direct {v1, v0}, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;-><init>(Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public createXWalkWebResourceResponseSuper(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;Ljava/util/Map;)Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/io/InputStream;
    .param p4, "statusCode"    # I
    .param p5, "reasonPhrase"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;"
        }
    .end annotation

    .prologue
    .line 382
    .local p6, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-super/range {p0 .. p6}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->createXWalkWebResourceResponse(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;Ljava/util/Map;)Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    move-result-object v0

    .line 383
    .local v0, "ret":Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 384
    .end local v0    # "ret":Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    :goto_0
    return-object v0

    .restart local v0    # "ret":Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    :cond_0
    instance-of v1, v0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    invoke-direct {v1, v0}, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;-><init>(Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public doUpdateVisitedHistory(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    .prologue
    .line 317
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->doUpdateVisitedHistoryXWalkViewInternalStringbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->doUpdateVisitedHistorySuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Z)V

    .line 322
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_0
    return-void

    .line 320
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->doUpdateVisitedHistoryXWalkViewInternalStringbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public doUpdateVisitedHistory(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    .prologue
    .line 309
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 310
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->doUpdateVisitedHistory(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Z)V

    .line 314
    :goto_0
    return-void

    .line 312
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->doUpdateVisitedHistory(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public doUpdateVisitedHistorySuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    .prologue
    .line 325
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->doUpdateVisitedHistory(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Z)V

    .line 326
    return-void
.end method

.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method public onDocumentLoadedInFrame(Lorg/xwalk/core/internal/XWalkViewBridge;J)V
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "frameId"    # J

    .prologue
    .line 55
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onDocumentLoadedInFrameXWalkViewInternallongMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onDocumentLoadedInFrameSuper(Lorg/xwalk/core/internal/XWalkViewBridge;J)V

    .line 60
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_0
    return-void

    .line 58
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onDocumentLoadedInFrameXWalkViewInternallongMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public onDocumentLoadedInFrame(Lorg/xwalk/core/internal/XWalkViewInternal;J)V
    .locals 2
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "frameId"    # J

    .prologue
    .line 47
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 48
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onDocumentLoadedInFrame(Lorg/xwalk/core/internal/XWalkViewBridge;J)V

    .line 52
    :goto_0
    return-void

    .line 50
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onDocumentLoadedInFrame(Lorg/xwalk/core/internal/XWalkViewInternal;J)V

    goto :goto_0
.end method

.method public onDocumentLoadedInFrameSuper(Lorg/xwalk/core/internal/XWalkViewBridge;J)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "frameId"    # J

    .prologue
    .line 63
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onDocumentLoadedInFrame(Lorg/xwalk/core/internal/XWalkViewInternal;J)V

    .line 64
    return-void
.end method

.method public onLoadFinished(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onLoadFinishedXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onLoadFinishedSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)V

    .line 106
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_0
    return-void

    .line 104
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onLoadFinishedXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public onLoadFinished(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 93
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 94
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onLoadFinished(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)V

    .line 98
    :goto_0
    return-void

    .line 96
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onLoadFinished(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLoadFinishedSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onLoadFinished(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public onLoadStarted(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onLoadStartedXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onLoadStartedSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)V

    .line 83
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_0
    return-void

    .line 81
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onLoadStartedXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public onLoadStarted(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 70
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 71
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onLoadStarted(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)V

    .line 75
    :goto_0
    return-void

    .line 73
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onLoadStarted(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLoadStartedSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onLoadStarted(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public onProgressChanged(Lorg/xwalk/core/internal/XWalkViewBridge;I)V
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "progressInPercent"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onProgressChangedXWalkViewInternalintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onProgressChangedSuper(Lorg/xwalk/core/internal/XWalkViewBridge;I)V

    .line 129
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_0
    return-void

    .line 127
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onProgressChangedXWalkViewInternalintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public onProgressChanged(Lorg/xwalk/core/internal/XWalkViewInternal;I)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "progressInPercent"    # I

    .prologue
    .line 116
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 117
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onProgressChanged(Lorg/xwalk/core/internal/XWalkViewBridge;I)V

    .line 121
    :goto_0
    return-void

    .line 119
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onProgressChanged(Lorg/xwalk/core/internal/XWalkViewInternal;I)V

    goto :goto_0
.end method

.method public onProgressChangedSuper(Lorg/xwalk/core/internal/XWalkViewBridge;I)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "progressInPercent"    # I

    .prologue
    .line 132
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onProgressChanged(Lorg/xwalk/core/internal/XWalkViewInternal;I)V

    .line 133
    return-void
.end method

.method public onReceivedClientCertRequest(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;)V
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "handler"    # Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;

    .prologue
    .line 271
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedClientCertRequestXWalkViewInternalClientCertRequestInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedClientCertRequestSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;)V

    .line 276
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    .end local p2    # "handler":Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;
    :goto_0
    return-void

    .line 274
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    .restart local p2    # "handler":Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedClientCertRequestXWalkViewInternalClientCertRequestInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    instance-of v0, p2, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;

    if-eqz v0, :cond_2

    .end local p2    # "handler":Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;
    :goto_2
    invoke-virtual {p2}, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    .restart local p2    # "handler":Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;
    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_2
    new-instance v0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;

    invoke-direct {v0, p2}, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;-><init>(Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;)V

    move-object p2, v0

    goto :goto_2
.end method

.method public onReceivedClientCertRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/ClientCertRequestInternal;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "handler"    # Lorg/xwalk/core/internal/ClientCertRequestInternal;

    .prologue
    .line 263
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_1

    .line 264
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    instance-of v0, p2, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;

    .end local p2    # "handler":Lorg/xwalk/core/internal/ClientCertRequestInternal;
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedClientCertRequest(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;)V

    .line 268
    :goto_1
    return-void

    .line 264
    .restart local p2    # "handler":Lorg/xwalk/core/internal/ClientCertRequestInternal;
    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;

    check-cast p2, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    .end local p2    # "handler":Lorg/xwalk/core/internal/ClientCertRequestInternal;
    invoke-direct {v0, p2}, Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;-><init>(Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;)V

    move-object p2, v0

    goto :goto_0

    .line 266
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    .restart local p2    # "handler":Lorg/xwalk/core/internal/ClientCertRequestInternal;
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onReceivedClientCertRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/ClientCertRequestInternal;)V

    goto :goto_1
.end method

.method public onReceivedClientCertRequestSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "handler"    # Lorg/xwalk/core/internal/ClientCertRequestHandlerBridge;

    .prologue
    .line 279
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onReceivedClientCertRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/ClientCertRequestInternal;)V

    .line 280
    return-void
.end method

.method public onReceivedHttpAuthRequest(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "handler"    # Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 340
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedHttpAuthRequestXWalkViewInternalXWalkHttpAuthHandlerInternalStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedHttpAuthRequestSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    .end local p2    # "handler":Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;
    :goto_0
    return-void

    .line 343
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    .restart local p2    # "handler":Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedHttpAuthRequestXWalkViewInternalXWalkHttpAuthHandlerInternalStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    instance-of v0, p2, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;

    if-eqz v0, :cond_2

    .end local p2    # "handler":Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;
    :goto_2
    invoke-virtual {p2}, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object p3, v2, v0

    const/4 v0, 0x3

    aput-object p4, v2, v0

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    .restart local p2    # "handler":Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;
    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_2
    new-instance v0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;

    invoke-direct {v0, p2}, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;-><init>(Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;)V

    move-object p2, v0

    goto :goto_2
.end method

.method public onReceivedHttpAuthRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "handler"    # Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 332
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_1

    .line 333
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    instance-of v0, p2, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;

    .end local p2    # "handler":Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedHttpAuthRequest(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :goto_1
    return-void

    .line 333
    .restart local p2    # "handler":Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;
    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;

    invoke-direct {v0, p2}, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;-><init>(Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;)V

    move-object p2, v0

    goto :goto_0

    .line 335
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onReceivedHttpAuthRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onReceivedHttpAuthRequestSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "handler"    # Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 348
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onReceivedHttpAuthRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method public onReceivedLoadError(Lorg/xwalk/core/internal/XWalkViewBridge;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedLoadErrorXWalkViewInternalintStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedLoadErrorSuper(Lorg/xwalk/core/internal/XWalkViewBridge;ILjava/lang/String;Ljava/lang/String;)V

    .line 204
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_0
    return-void

    .line 202
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedLoadErrorXWalkViewInternalintStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public onReceivedLoadError(Lorg/xwalk/core/internal/XWalkViewInternal;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 191
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 192
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedLoadError(Lorg/xwalk/core/internal/XWalkViewBridge;ILjava/lang/String;Ljava/lang/String;)V

    .line 196
    :goto_0
    return-void

    .line 194
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onReceivedLoadError(Lorg/xwalk/core/internal/XWalkViewInternal;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedLoadErrorSuper(Lorg/xwalk/core/internal/XWalkViewBridge;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 207
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onReceivedLoadError(Lorg/xwalk/core/internal/XWalkViewInternal;ILjava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public onReceivedResponseHeaders(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;)V
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "request"    # Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;
    .param p3, "response"    # Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    .prologue
    .line 294
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedResponseHeadersXWalkViewInternalXWalkWebResourceRequestInternalXWalkWebResourceResponseInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedResponseHeadersSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;)V

    .line 299
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    .end local p2    # "request":Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;
    .end local p3    # "response":Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;
    :goto_0
    return-void

    .line 297
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    .restart local p2    # "request":Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;
    .restart local p3    # "response":Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedResponseHeadersXWalkViewInternalXWalkWebResourceRequestInternalXWalkWebResourceResponseInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    instance-of v0, p2, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;

    if-eqz v0, :cond_2

    .end local p2    # "request":Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;
    :goto_2
    invoke-virtual {p2}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v3, 0x2

    instance-of v0, p3, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    if-eqz v0, :cond_3

    .end local p3    # "response":Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;
    :goto_3
    invoke-virtual {p3}, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    .restart local p2    # "request":Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;
    .restart local p3    # "response":Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;
    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_2
    new-instance v0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;

    invoke-direct {v0, p2}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;-><init>(Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;)V

    move-object p2, v0

    goto :goto_2

    .end local p2    # "request":Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;
    :cond_3
    new-instance v0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    invoke-direct {v0, p3}, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;-><init>(Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;)V

    move-object p3, v0

    goto :goto_3
.end method

.method public onReceivedResponseHeaders(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "request"    # Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;
    .param p3, "response"    # Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    .prologue
    .line 286
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_2

    .line 287
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    instance-of v0, p2, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;

    .end local p2    # "request":Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;
    :goto_0
    instance-of v0, p3, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    if-eqz v0, :cond_1

    check-cast p3, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    .end local p3    # "response":Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedResponseHeaders(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;)V

    .line 291
    :goto_2
    return-void

    .line 287
    .restart local p2    # "request":Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;
    .restart local p3    # "response":Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;

    check-cast p2, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;

    .end local p2    # "request":Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;
    invoke-direct {v0, p2}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;-><init>(Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;)V

    move-object p2, v0

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    invoke-direct {v0, p3}, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;-><init>(Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;)V

    move-object p3, v0

    goto :goto_1

    .line 289
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    .restart local p2    # "request":Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onReceivedResponseHeaders(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;)V

    goto :goto_2
.end method

.method public onReceivedResponseHeadersSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "request"    # Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;
    .param p3, "response"    # Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    .prologue
    .line 302
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onReceivedResponseHeaders(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;)V

    .line 303
    return-void
.end method

.method public onReceivedSslError(Lorg/xwalk/core/internal/XWalkViewBridge;Landroid/webkit/ValueCallback;Landroid/net/http/SslError;)V
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p3, "error"    # Landroid/net/http/SslError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xwalk/core/internal/XWalkViewBridge;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/net/http/SslError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 248
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedSslErrorXWalkViewInternalValueCallbackSslErrorMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedSslErrorSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Landroid/webkit/ValueCallback;Landroid/net/http/SslError;)V

    .line 253
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_0
    return-void

    .line 251
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedSslErrorXWalkViewInternalValueCallbackSslErrorMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public onReceivedSslError(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/webkit/ValueCallback;Landroid/net/http/SslError;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p3, "error"    # Landroid/net/http/SslError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xwalk/core/internal/XWalkViewInternal;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/net/http/SslError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 240
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 241
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedSslError(Lorg/xwalk/core/internal/XWalkViewBridge;Landroid/webkit/ValueCallback;Landroid/net/http/SslError;)V

    .line 245
    :goto_0
    return-void

    .line 243
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onReceivedSslError(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/webkit/ValueCallback;Landroid/net/http/SslError;)V

    goto :goto_0
.end method

.method public onReceivedSslErrorSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Landroid/webkit/ValueCallback;Landroid/net/http/SslError;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p3, "error"    # Landroid/net/http/SslError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xwalk/core/internal/XWalkViewBridge;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/net/http/SslError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 256
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    invoke-super {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->onReceivedSslError(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/webkit/ValueCallback;Landroid/net/http/SslError;)V

    .line 257
    return-void
.end method

.method reflectionInit()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 391
    invoke-static {}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 392
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    if-nez v0, :cond_0

    .line 424
    :goto_0
    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onDocumentLoadedInFrameXWalkViewInternallongMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onDocumentLoadedInFrame"

    new-array v3, v8, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 396
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onLoadStartedXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onLoadStarted"

    new-array v3, v8, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 398
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onLoadFinishedXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onLoadFinished"

    new-array v3, v8, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 400
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onProgressChangedXWalkViewInternalintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onProgressChanged"

    new-array v3, v8, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 402
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldInterceptLoadRequestXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "shouldInterceptLoadRequest"

    new-array v3, v8, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 404
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldInterceptLoadRequestXWalkViewInternalXWalkWebResourceRequestInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "shouldInterceptLoadRequest"

    new-array v3, v8, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkWebResourceRequest"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 406
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedLoadErrorXWalkViewInternalintStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onReceivedLoadError"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v7

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v8

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v10

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 408
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldOverrideUrlLoadingXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "shouldOverrideUrlLoading"

    new-array v3, v8, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 410
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedSslErrorXWalkViewInternalValueCallbackSslErrorMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onReceivedSslError"

    new-array v3, v10, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    const-class v4, Landroid/webkit/ValueCallback;

    aput-object v4, v3, v7

    const-class v4, Landroid/net/http/SslError;

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 412
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedClientCertRequestXWalkViewInternalClientCertRequestInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onReceivedClientCertRequest"

    new-array v3, v8, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "ClientCertRequest"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 414
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedResponseHeadersXWalkViewInternalXWalkWebResourceRequestInternalXWalkWebResourceResponseInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onReceivedResponseHeaders"

    new-array v3, v10, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkWebResourceRequest"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkWebResourceResponse"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 416
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->doUpdateVisitedHistoryXWalkViewInternalStringbooleanMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "doUpdateVisitedHistory"

    new-array v3, v10, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 418
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->onReceivedHttpAuthRequestXWalkViewInternalXWalkHttpAuthHandlerInternalStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "onReceivedHttpAuthRequest"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkView"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v5, "XWalkHttpAuthHandler"

    invoke-virtual {v4, v5}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v7

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v8

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v10

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 420
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->createXWalkWebResourceResponseStringStringInputStreamMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "createXWalkWebResourceResponse"

    new-array v3, v10, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    const-class v4, Ljava/io/InputStream;

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 422
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->createXWalkWebResourceResponseStringStringInputStreamintStringMapMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->wrapper:Ljava/lang/Object;

    const-string v2, "createXWalkWebResourceResponse"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    const-class v4, Ljava/io/InputStream;

    aput-object v4, v3, v8

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v10

    const/4 v4, 0x4

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-class v5, Ljava/util/Map;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v9, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto/16 :goto_0
.end method

.method public shouldInterceptLoadRequest(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldInterceptLoadRequestXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldInterceptLoadRequestSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 150
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_0
    return-object v0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldInterceptLoadRequestXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebResourceResponse;

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public shouldInterceptLoadRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 139
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 140
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldInterceptLoadRequest(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->shouldInterceptLoadRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public shouldInterceptLoadRequest(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;)Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "request"    # Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;

    .prologue
    .line 173
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldInterceptLoadRequestXWalkViewInternalXWalkWebResourceRequestInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldInterceptLoadRequestSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;)Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    move-result-object v0

    .line 176
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    .end local p2    # "request":Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;
    :goto_0
    return-object v0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    .restart local p2    # "request":Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldInterceptLoadRequestXWalkViewInternalXWalkWebResourceRequestInternalMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    instance-of v4, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v4, :cond_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    instance-of v0, p2, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;

    if-eqz v0, :cond_2

    .end local p2    # "request":Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;
    :goto_2
    invoke-virtual {p2}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getBridgeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    .restart local p2    # "request":Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;
    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_2
    new-instance v0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;

    invoke-direct {v0, p2}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;-><init>(Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;)V

    move-object p2, v0

    goto :goto_2
.end method

.method public shouldInterceptLoadRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;)Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "request"    # Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;

    .prologue
    .line 165
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_1

    .line 166
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    instance-of v0, p2, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;

    .end local p2    # "request":Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldInterceptLoadRequest(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;)Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    move-result-object v0

    .line 168
    :goto_1
    return-object v0

    .line 166
    .restart local p2    # "request":Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;
    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;

    check-cast p2, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;

    .end local p2    # "request":Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;
    invoke-direct {v0, p2}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;-><init>(Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;)V

    move-object p2, v0

    goto :goto_0

    .line 168
    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    .restart local p2    # "request":Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->shouldInterceptLoadRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;)Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    move-result-object v0

    goto :goto_1
.end method

.method public shouldInterceptLoadRequestSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->shouldInterceptLoadRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 157
    .local v0, "ret":Landroid/webkit/WebResourceResponse;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 158
    .end local v0    # "ret":Landroid/webkit/WebResourceResponse;
    :cond_0
    return-object v0
.end method

.method public shouldInterceptLoadRequestSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;)Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;
    .locals 2
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "request"    # Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;

    .prologue
    .line 182
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->shouldInterceptLoadRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;)Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    move-result-object v0

    .line 183
    .local v0, "ret":Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 184
    .end local v0    # "ret":Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    :goto_0
    return-object v0

    .restart local v0    # "ret":Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    :cond_0
    instance-of v1, v0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;

    invoke-direct {v1, v0}, Lorg/xwalk/core/internal/XWalkWebResourceResponseBridge;-><init>(Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 222
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldOverrideUrlLoadingXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldOverrideUrlLoadingSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)Z

    move-result v0

    .line 225
    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_0
    return v0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldOverrideUrlLoadingXWalkViewInternalStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v3, :cond_1

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :goto_1
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewBridge;->getWrapper()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewBridge;
    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public shouldOverrideUrlLoading(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 214
    instance-of v0, p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    if-eqz v0, :cond_0

    .line 215
    check-cast p1, Lorg/xwalk/core/internal/XWalkViewBridge;

    .end local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientBridge;->shouldOverrideUrlLoading(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)Z

    move-result v0

    .line 217
    :goto_0
    return v0

    .restart local p1    # "view":Lorg/xwalk/core/internal/XWalkViewInternal;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->shouldOverrideUrlLoading(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldOverrideUrlLoadingSuper(Lorg/xwalk/core/internal/XWalkViewBridge;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewBridge;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 231
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkResourceClientInternal;->shouldOverrideUrlLoading(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)Z

    move-result v0

    .line 233
    .local v0, "ret":Z
    return v0
.end method
