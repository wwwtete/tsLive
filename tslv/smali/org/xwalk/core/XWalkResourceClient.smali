.class public Lorg/xwalk/core/XWalkResourceClient;
.super Ljava/lang/Object;
.source "XWalkResourceClient.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final ERROR_AUTHENTICATION:I = -0x4

.field public static final ERROR_BAD_URL:I = -0xc

.field public static final ERROR_CONNECT:I = -0x6

.field public static final ERROR_FAILED_SSL_HANDSHAKE:I = -0xb

.field public static final ERROR_FILE:I = -0xd

.field public static final ERROR_FILE_NOT_FOUND:I = -0xe

.field public static final ERROR_HOST_LOOKUP:I = -0x2

.field public static final ERROR_IO:I = -0x7

.field public static final ERROR_OK:I = 0x0

.field public static final ERROR_PROXY_AUTHENTICATION:I = -0x5

.field public static final ERROR_REDIRECT_LOOP:I = -0x9

.field public static final ERROR_TIMEOUT:I = -0x8

.field public static final ERROR_TOO_MANY_REQUESTS:I = -0xf

.field public static final ERROR_UNKNOWN:I = -0x1

.field public static final ERROR_UNSUPPORTED_AUTH_SCHEME:I = -0x3

.field public static final ERROR_UNSUPPORTED_SCHEME:I = -0xa


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

.field private createXWalkWebResourceResponseStringStringInputStreamMethod:Lorg/xwalk/core/ReflectMethod;

.field private createXWalkWebResourceResponseStringStringInputStreamintStringMapMethod:Lorg/xwalk/core/ReflectMethod;

.field private doUpdateVisitedHistoryXWalkViewInternalStringbooleanMethod:Lorg/xwalk/core/ReflectMethod;

.field private onDocumentLoadedInFrameXWalkViewInternallongMethod:Lorg/xwalk/core/ReflectMethod;

.field private onLoadFinishedXWalkViewInternalStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private onLoadStartedXWalkViewInternalStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private onProgressChangedXWalkViewInternalintMethod:Lorg/xwalk/core/ReflectMethod;

.field private onReceivedClientCertRequestXWalkViewInternalClientCertRequestInternalMethod:Lorg/xwalk/core/ReflectMethod;

.field private onReceivedHttpAuthRequestXWalkViewInternalXWalkHttpAuthHandlerInternalStringStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private onReceivedLoadErrorXWalkViewInternalintStringStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private onReceivedResponseHeadersXWalkViewInternalXWalkWebResourceRequestInternalXWalkWebResourceResponseInternalMethod:Lorg/xwalk/core/ReflectMethod;

.field private onReceivedSslErrorXWalkViewInternalValueCallbackSslErrorMethod:Lorg/xwalk/core/ReflectMethod;

.field private postWrapperMethod:Lorg/xwalk/core/ReflectMethod;

.field private shouldInterceptLoadRequestXWalkViewInternalStringMethod:Lorg/xwalk/core/ReflectMethod;

.field private shouldInterceptLoadRequestXWalkViewInternalXWalkWebResourceRequestInternalMethod:Lorg/xwalk/core/ReflectMethod;

.field private shouldOverrideUrlLoadingXWalkViewInternalStringMethod:Lorg/xwalk/core/ReflectMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/xwalk/core/XWalkResourceClient;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/xwalk/core/XWalkResourceClient;->$assertionsDisabled:Z

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

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "onDocumentLoadedInFrame"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkResourceClient;->onDocumentLoadedInFrameXWalkViewInternallongMethod:Lorg/xwalk/core/ReflectMethod;

    .line 201
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "onLoadStarted"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkResourceClient;->onLoadStartedXWalkViewInternalStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 223
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "onLoadFinished"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkResourceClient;->onLoadFinishedXWalkViewInternalStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 244
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "onProgressChanged"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkResourceClient;->onProgressChangedXWalkViewInternalintMethod:Lorg/xwalk/core/ReflectMethod;

    .line 277
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "shouldInterceptLoadRequest"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkResourceClient;->shouldInterceptLoadRequestXWalkViewInternalStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 307
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "shouldInterceptLoadRequest"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkResourceClient;->shouldInterceptLoadRequestXWalkViewInternalXWalkWebResourceRequestInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 330
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "onReceivedLoadError"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkResourceClient;->onReceivedLoadErrorXWalkViewInternalintStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 360
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "shouldOverrideUrlLoading"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkResourceClient;->shouldOverrideUrlLoadingXWalkViewInternalStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 386
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "onReceivedSslError"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkResourceClient;->onReceivedSslErrorXWalkViewInternalValueCallbackSslErrorMethod:Lorg/xwalk/core/ReflectMethod;

    .line 417
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "onReceivedClientCertRequest"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkResourceClient;->onReceivedClientCertRequestXWalkViewInternalClientCertRequestInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 445
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "onReceivedResponseHeaders"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkResourceClient;->onReceivedResponseHeadersXWalkViewInternalXWalkWebResourceRequestInternalXWalkWebResourceResponseInternalMethod:Lorg/xwalk/core/ReflectMethod;

    .line 469
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "doUpdateVisitedHistory"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkResourceClient;->doUpdateVisitedHistoryXWalkViewInternalStringbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    .line 494
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "onReceivedHttpAuthRequest"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkResourceClient;->onReceivedHttpAuthRequestXWalkViewInternalXWalkHttpAuthHandlerInternalStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    .line 516
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "createXWalkWebResourceResponse"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkResourceClient;->createXWalkWebResourceResponseStringStringInputStreamMethod:Lorg/xwalk/core/ReflectMethod;

    .line 538
    new-instance v0, Lorg/xwalk/core/ReflectMethod;

    const-string v1, "createXWalkWebResourceResponse"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkResourceClient;->createXWalkWebResourceResponseStringStringInputStreamintStringMapMethod:Lorg/xwalk/core/ReflectMethod;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/XWalkResourceClient;->constructorTypes:Ljava/util/ArrayList;

    .line 150
    iget-object v0, p0, Lorg/xwalk/core/XWalkResourceClient;->constructorTypes:Ljava/util/ArrayList;

    const-string v1, "XWalkViewBridge"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/XWalkResourceClient;->constructorParams:Ljava/util/ArrayList;

    .line 153
    iget-object v0, p0, Lorg/xwalk/core/XWalkResourceClient;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-virtual {p0}, Lorg/xwalk/core/XWalkResourceClient;->reflectionInit()V

    .line 156
    return-void
.end method


# virtual methods
.method public createXWalkWebResourceResponse(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lorg/xwalk/core/XWalkWebResourceResponse;
    .locals 5
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/io/InputStream;

    .prologue
    .line 505
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    iget-object v2, p0, Lorg/xwalk/core/XWalkResourceClient;->createXWalkWebResourceResponseStringStringInputStreamMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-virtual {v2, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xwalk/core/XWalkCoreWrapper;->getWrapperObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xwalk/core/XWalkWebResourceResponse;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :goto_0
    return-object v1

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 508
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 513
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 510
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public createXWalkWebResourceResponse(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;Ljava/util/Map;)Lorg/xwalk/core/XWalkWebResourceResponse;
    .locals 6
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
            "Lorg/xwalk/core/XWalkWebResourceResponse;"
        }
    .end annotation

    .prologue
    .line 527
    .local p6, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    iget-object v2, p0, Lorg/xwalk/core/XWalkResourceClient;->createXWalkWebResourceResponseStringStringInputStreamintStringMapMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object p5, v3, v4

    const/4 v4, 0x5

    aput-object p6, v3, v4

    invoke-virtual {v2, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xwalk/core/XWalkCoreWrapper;->getWrapperObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xwalk/core/XWalkWebResourceResponse;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :goto_0
    return-object v1

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 530
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 535
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 532
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public doUpdateVisitedHistory(Lorg/xwalk/core/XWalkView;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    .prologue
    .line 458
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkResourceClient;->doUpdateVisitedHistoryXWalkViewInternalStringbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkView;->getBridge()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    :goto_0
    return-void

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 461
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 463
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method protected getBridge()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/xwalk/core/XWalkResourceClient;->bridge:Ljava/lang/Object;

    return-object v0
.end method

.method public onDocumentLoadedInFrame(Lorg/xwalk/core/XWalkView;J)V
    .locals 6
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "frameId"    # J

    .prologue
    .line 168
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkResourceClient;->onDocumentLoadedInFrameXWalkViewInternallongMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkView;->getBridge()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 171
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public onLoadFinished(Lorg/xwalk/core/XWalkView;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 212
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkResourceClient;->onLoadFinishedXWalkViewInternalStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkView;->getBridge()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 215
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public onLoadStarted(Lorg/xwalk/core/XWalkView;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 190
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkResourceClient;->onLoadStartedXWalkViewInternalStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkView;->getBridge()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 193
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public onProgressChanged(Lorg/xwalk/core/XWalkView;I)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "progressInPercent"    # I

    .prologue
    .line 233
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkResourceClient;->onProgressChangedXWalkViewInternalintMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkView;->getBridge()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 236
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public onReceivedClientCertRequest(Lorg/xwalk/core/XWalkView;Lorg/xwalk/core/ClientCertRequest;)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "handler"    # Lorg/xwalk/core/ClientCertRequest;

    .prologue
    .line 406
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkResourceClient;->onReceivedClientCertRequestXWalkViewInternalClientCertRequestInternalMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkView;->getBridge()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    check-cast p2, Lorg/xwalk/core/ClientCertRequestHandler;

    .end local p2    # "handler":Lorg/xwalk/core/ClientCertRequest;
    invoke-virtual {p2}, Lorg/xwalk/core/ClientCertRequestHandler;->getBridge()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :goto_0
    return-void

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 409
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 411
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public onReceivedHttpAuthRequest(Lorg/xwalk/core/XWalkView;Lorg/xwalk/core/XWalkHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "handler"    # Lorg/xwalk/core/XWalkHttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 483
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkResourceClient;->onReceivedHttpAuthRequestXWalkViewInternalXWalkHttpAuthHandlerInternalStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkView;->getBridge()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Lorg/xwalk/core/XWalkHttpAuthHandler;->getBridge()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :goto_0
    return-void

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 486
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 488
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public onReceivedLoadError(Lorg/xwalk/core/XWalkView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 319
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkResourceClient;->onReceivedLoadErrorXWalkViewInternalintStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkView;->getBridge()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 322
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 324
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public onReceivedResponseHeaders(Lorg/xwalk/core/XWalkView;Lorg/xwalk/core/XWalkWebResourceRequest;Lorg/xwalk/core/XWalkWebResourceResponse;)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "request"    # Lorg/xwalk/core/XWalkWebResourceRequest;
    .param p3, "response"    # Lorg/xwalk/core/XWalkWebResourceResponse;

    .prologue
    .line 434
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkResourceClient;->onReceivedResponseHeadersXWalkViewInternalXWalkWebResourceRequestInternalXWalkWebResourceResponseInternalMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkView;->getBridge()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    check-cast p2, Lorg/xwalk/core/XWalkWebResourceRequestHandler;

    .end local p2    # "request":Lorg/xwalk/core/XWalkWebResourceRequest;
    invoke-virtual {p2}, Lorg/xwalk/core/XWalkWebResourceRequestHandler;->getBridge()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p3}, Lorg/xwalk/core/XWalkWebResourceResponse;->getBridge()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :goto_0
    return-void

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 437
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 439
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public onReceivedSslError(Lorg/xwalk/core/XWalkView;Landroid/webkit/ValueCallback;Landroid/net/http/SslError;)V
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p3, "error"    # Landroid/net/http/SslError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xwalk/core/XWalkView;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/net/http/SslError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 375
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkResourceClient;->onReceivedSslErrorXWalkViewInternalValueCallbackSslErrorMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkView;->getBridge()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :goto_0
    return-void

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 378
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method reflectionInit()V
    .locals 14

    .prologue
    .line 542
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->initEmbeddedMode()V

    .line 544
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->getInstance()Lorg/xwalk/core/XWalkCoreWrapper;

    move-result-object v6

    iput-object v6, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    .line 545
    iget-object v6, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v6, :cond_0

    .line 546
    invoke-static {p0}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectObject(Ljava/lang/Object;)V

    .line 607
    :goto_0
    return-void

    .line 550
    :cond_0
    iget-object v6, p0, Lorg/xwalk/core/XWalkResourceClient;->constructorTypes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 551
    .local v3, "length":I
    add-int/lit8 v6, v3, 0x1

    new-array v4, v6, [Ljava/lang/Class;

    .line 552
    .local v4, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 553
    iget-object v6, p0, Lorg/xwalk/core/XWalkResourceClient;->constructorTypes:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 554
    .local v5, "type":Ljava/lang/Object;
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 555
    iget-object v6, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    check-cast v5, Ljava/lang/String;

    .end local v5    # "type":Ljava/lang/Object;
    invoke-virtual {v6, v5}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v2

    .line 556
    iget-object v6, p0, Lorg/xwalk/core/XWalkResourceClient;->constructorParams:Ljava/util/ArrayList;

    iget-object v7, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    iget-object v8, p0, Lorg/xwalk/core/XWalkResourceClient;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 552
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 557
    .restart local v5    # "type":Ljava/lang/Object;
    :cond_2
    instance-of v6, v5, Ljava/lang/Class;

    if-eqz v6, :cond_3

    .line 558
    check-cast v5, Ljava/lang/Class;

    .end local v5    # "type":Ljava/lang/Object;
    aput-object v5, v4, v2

    goto :goto_2

    .line 560
    .restart local v5    # "type":Ljava/lang/Object;
    :cond_3
    sget-boolean v6, Lorg/xwalk/core/XWalkResourceClient;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 564
    .end local v5    # "type":Ljava/lang/Object;
    :cond_4
    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v3

    .line 565
    iget-object v6, p0, Lorg/xwalk/core/XWalkResourceClient;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    new-instance v0, Lorg/xwalk/core/ReflectConstructor;

    iget-object v6, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v7, "XWalkResourceClientBridge"

    invoke-virtual {v6, v7}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v0, v6, v4}, Lorg/xwalk/core/ReflectConstructor;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 570
    .local v0, "constructor":Lorg/xwalk/core/ReflectConstructor;
    :try_start_0
    iget-object v6, p0, Lorg/xwalk/core/XWalkResourceClient;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/xwalk/core/ReflectConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lorg/xwalk/core/XWalkResourceClient;->bridge:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    iget-object v6, p0, Lorg/xwalk/core/XWalkResourceClient;->postWrapperMethod:Lorg/xwalk/core/ReflectMethod;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lorg/xwalk/core/XWalkResourceClient;->postWrapperMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v7}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    :cond_5
    iget-object v6, p0, Lorg/xwalk/core/XWalkResourceClient;->onDocumentLoadedInFrameXWalkViewInternallongMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkResourceClient;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onDocumentLoadedInFrameSuper"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkViewBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 579
    iget-object v6, p0, Lorg/xwalk/core/XWalkResourceClient;->onLoadStartedXWalkViewInternalStringMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkResourceClient;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onLoadStartedSuper"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkViewBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 581
    iget-object v6, p0, Lorg/xwalk/core/XWalkResourceClient;->onLoadFinishedXWalkViewInternalStringMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkResourceClient;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onLoadFinishedSuper"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkViewBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 583
    iget-object v6, p0, Lorg/xwalk/core/XWalkResourceClient;->onProgressChangedXWalkViewInternalintMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkResourceClient;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onProgressChangedSuper"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkViewBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 585
    iget-object v6, p0, Lorg/xwalk/core/XWalkResourceClient;->shouldInterceptLoadRequestXWalkViewInternalStringMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkResourceClient;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "shouldInterceptLoadRequestSuper"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkViewBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 587
    iget-object v6, p0, Lorg/xwalk/core/XWalkResourceClient;->shouldInterceptLoadRequestXWalkViewInternalXWalkWebResourceRequestInternalMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkResourceClient;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "shouldInterceptLoadRequestSuper"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkViewBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkWebResourceRequestHandlerBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 589
    iget-object v6, p0, Lorg/xwalk/core/XWalkResourceClient;->onReceivedLoadErrorXWalkViewInternalintStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkResourceClient;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onReceivedLoadErrorSuper"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkViewBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 591
    iget-object v6, p0, Lorg/xwalk/core/XWalkResourceClient;->shouldOverrideUrlLoadingXWalkViewInternalStringMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkResourceClient;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "shouldOverrideUrlLoadingSuper"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkViewBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 593
    iget-object v6, p0, Lorg/xwalk/core/XWalkResourceClient;->onReceivedSslErrorXWalkViewInternalValueCallbackSslErrorMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkResourceClient;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onReceivedSslErrorSuper"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkViewBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Landroid/webkit/ValueCallback;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-class v12, Landroid/net/http/SslError;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 595
    iget-object v6, p0, Lorg/xwalk/core/XWalkResourceClient;->onReceivedClientCertRequestXWalkViewInternalClientCertRequestInternalMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkResourceClient;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onReceivedClientCertRequestSuper"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkViewBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "ClientCertRequestHandlerBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 597
    iget-object v6, p0, Lorg/xwalk/core/XWalkResourceClient;->onReceivedResponseHeadersXWalkViewInternalXWalkWebResourceRequestInternalXWalkWebResourceResponseInternalMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkResourceClient;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onReceivedResponseHeadersSuper"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkViewBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkWebResourceRequestHandlerBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    iget-object v12, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkWebResourceResponseBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 599
    iget-object v6, p0, Lorg/xwalk/core/XWalkResourceClient;->doUpdateVisitedHistoryXWalkViewInternalStringbooleanMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkResourceClient;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "doUpdateVisitedHistorySuper"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkViewBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 601
    iget-object v6, p0, Lorg/xwalk/core/XWalkResourceClient;->onReceivedHttpAuthRequestXWalkViewInternalXWalkHttpAuthHandlerInternalStringStringMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkResourceClient;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "onReceivedHttpAuthRequestSuper"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkViewBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v13, "XWalkHttpAuthHandlerBridge"

    invoke-virtual {v12, v13}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 603
    iget-object v6, p0, Lorg/xwalk/core/XWalkResourceClient;->createXWalkWebResourceResponseStringStringInputStreamMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkResourceClient;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "createXWalkWebResourceResponseSuper"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-class v12, Ljava/io/InputStream;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 605
    iget-object v6, p0, Lorg/xwalk/core/XWalkResourceClient;->createXWalkWebResourceResponseStringStringInputStreamintStringMapMethod:Lorg/xwalk/core/ReflectMethod;

    iget-object v7, p0, Lorg/xwalk/core/XWalkResourceClient;->bridge:Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "createXWalkWebResourceResponseSuper"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-class v12, Ljava/io/InputStream;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-class v12, Ljava/util/Map;

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/xwalk/core/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto/16 :goto_0

    .line 571
    :catch_0
    move-exception v1

    .line 572
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    goto/16 :goto_0
.end method

.method public shouldInterceptLoadRequest(Lorg/xwalk/core/XWalkView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 5
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 266
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkResourceClient;->shouldInterceptLoadRequestXWalkViewInternalStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkView;->getBridge()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebResourceResponse;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_0
    return-object v1

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 269
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 274
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 271
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public shouldInterceptLoadRequest(Lorg/xwalk/core/XWalkView;Lorg/xwalk/core/XWalkWebResourceRequest;)Lorg/xwalk/core/XWalkWebResourceResponse;
    .locals 6
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "request"    # Lorg/xwalk/core/XWalkWebResourceRequest;

    .prologue
    .line 296
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    iget-object v2, p0, Lorg/xwalk/core/XWalkResourceClient;->shouldInterceptLoadRequestXWalkViewInternalXWalkWebResourceRequestInternalMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkView;->getBridge()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    check-cast p2, Lorg/xwalk/core/XWalkWebResourceRequestHandler;

    .end local p2    # "request":Lorg/xwalk/core/XWalkWebResourceRequest;
    invoke-virtual {p2}, Lorg/xwalk/core/XWalkWebResourceRequestHandler;->getBridge()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xwalk/core/XWalkCoreWrapper;->getWrapperObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xwalk/core/XWalkWebResourceResponse;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    return-object v1

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 299
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 304
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 301
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method

.method public shouldOverrideUrlLoading(Lorg/xwalk/core/XWalkView;Ljava/lang/String;)Z
    .locals 6
    .param p1, "view"    # Lorg/xwalk/core/XWalkView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 349
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkResourceClient;->shouldOverrideUrlLoadingXWalkViewInternalStringMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lorg/xwalk/core/XWalkView;->getBridge()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v3}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 357
    :goto_0
    return v1

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    iget-object v1, p0, Lorg/xwalk/core/XWalkResourceClient;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v1, :cond_0

    .line 352
    const-string v1, "Cannot call this method before xwalk is ready"

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    .line 357
    goto :goto_0

    .line 354
    :cond_0
    invoke-static {v0}, Lorg/xwalk/core/XWalkCoreWrapper;->handleRuntimeError(Ljava/lang/RuntimeException;)V

    goto :goto_1
.end method
