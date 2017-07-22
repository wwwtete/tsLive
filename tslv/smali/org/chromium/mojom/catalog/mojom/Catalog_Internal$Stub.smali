.class final Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "Catalog_Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/catalog/mojom/Catalog_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub",
        "<",
        "Lorg/chromium/mojom/catalog/mojom/Catalog;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojom/catalog/mojom/Catalog;)V
    .locals 0
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;
    .param p2, "impl"    # Lorg/chromium/mojom/catalog/mojom/Catalog;

    .prologue
    .line 156
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    .line 157
    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 6
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    const/4 v3, 0x0

    .line 162
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    .line 164
    .local v2, "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    .line 165
    .local v1, "header":Lorg/chromium/mojo/bindings/MessageHeader;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 188
    .end local v1    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v2    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :goto_0
    return v3

    .line 168
    .restart local v1    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .restart local v2    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :cond_0
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 171
    :pswitch_0
    sget-object v4, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v4, v2}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRunOrClosePipe(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;)Z
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 186
    .end local v1    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v2    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Lorg/chromium/mojo/bindings/DeserializationException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/DeserializationException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
    .end packed-switch
.end method

.method public acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 12
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;
    .param p2, "receiver"    # Lorg/chromium/mojo/bindings/MessageReceiver;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 195
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v3

    .line 197
    .local v3, "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v2

    .line 198
    .local v2, "header":Lorg/chromium/mojo/bindings/MessageHeader;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    .line 273
    .end local v2    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v3    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :goto_0
    return v4

    .line 201
    .restart local v2    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .restart local v3    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :cond_0
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    move v4, v5

    .line 269
    goto :goto_0

    .line 204
    :pswitch_0
    invoke-virtual {p0}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v4

    sget-object v6, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v4, v6, v3, p2}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    move-result v4

    goto :goto_0

    .line 215
    :pswitch_1
    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesParams;

    move-result-object v0

    .line 218
    .local v0, "data":Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesParams;
    invoke-virtual {p0}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v4

    check-cast v4, Lorg/chromium/mojom/catalog/mojom/Catalog;

    iget-object v7, v0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesParams;->names:[Ljava/lang/String;

    new-instance v8, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v9

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v10

    invoke-direct {v8, v9, p2, v10, v11}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v4, v7, v8}, Lorg/chromium/mojom/catalog/mojom/Catalog;->getEntries([Ljava/lang/String;Lorg/chromium/mojom/catalog/mojom/Catalog$GetEntriesResponse;)V

    move v4, v6

    .line 219
    goto :goto_0

    .line 230
    .end local v0    # "data":Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesParams;
    :pswitch_2
    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesProvidingClassParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesProvidingClassParams;

    move-result-object v0

    .line 233
    .local v0, "data":Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesProvidingClassParams;
    invoke-virtual {p0}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v4

    check-cast v4, Lorg/chromium/mojom/catalog/mojom/Catalog;

    iget-object v7, v0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesProvidingClassParams;->clazz:Ljava/lang/String;

    new-instance v8, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesProvidingClassResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v9

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v10

    invoke-direct {v8, v9, p2, v10, v11}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesProvidingClassResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v4, v7, v8}, Lorg/chromium/mojom/catalog/mojom/Catalog;->getEntriesProvidingClass(Ljava/lang/String;Lorg/chromium/mojom/catalog/mojom/Catalog$GetEntriesProvidingClassResponse;)V

    move v4, v6

    .line 234
    goto :goto_0

    .line 245
    .end local v0    # "data":Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesProvidingClassParams;
    :pswitch_3
    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesConsumingMimeTypeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesConsumingMimeTypeParams;

    move-result-object v0

    .line 248
    .local v0, "data":Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesConsumingMimeTypeParams;
    invoke-virtual {p0}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v4

    check-cast v4, Lorg/chromium/mojom/catalog/mojom/Catalog;

    iget-object v7, v0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesConsumingMimeTypeParams;->mimeType:Ljava/lang/String;

    new-instance v8, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesConsumingMimeTypeResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v9

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v10

    invoke-direct {v8, v9, p2, v10, v11}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesConsumingMimeTypeResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v4, v7, v8}, Lorg/chromium/mojom/catalog/mojom/Catalog;->getEntriesConsumingMimeType(Ljava/lang/String;Lorg/chromium/mojom/catalog/mojom/Catalog$GetEntriesConsumingMimeTypeResponse;)V

    move v4, v6

    .line 249
    goto :goto_0

    .line 260
    .end local v0    # "data":Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesConsumingMimeTypeParams;
    :pswitch_4
    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesSupportingSchemeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesSupportingSchemeParams;

    move-result-object v0

    .line 263
    .local v0, "data":Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesSupportingSchemeParams;
    invoke-virtual {p0}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v4

    check-cast v4, Lorg/chromium/mojom/catalog/mojom/Catalog;

    iget-object v7, v0, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesSupportingSchemeParams;->protocolScheme:Ljava/lang/String;

    new-instance v8, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesSupportingSchemeResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v9

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v10

    invoke-direct {v8, v9, p2, v10, v11}, Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesSupportingSchemeResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v4, v7, v8}, Lorg/chromium/mojom/catalog/mojom/Catalog;->getEntriesSupportingScheme(Ljava/lang/String;Lorg/chromium/mojom/catalog/mojom/Catalog$GetEntriesSupportingSchemeResponse;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v6

    .line 264
    goto/16 :goto_0

    .line 271
    .end local v0    # "data":Lorg/chromium/mojom/catalog/mojom/Catalog_Internal$CatalogGetEntriesSupportingSchemeParams;
    .end local v2    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v3    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :catch_0
    move-exception v1

    .line 272
    .local v1, "e":Lorg/chromium/mojo/bindings/DeserializationException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/DeserializationException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v4, v5

    .line 273
    goto/16 :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
