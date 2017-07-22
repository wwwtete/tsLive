.class final Lorg/chromium/mojom/shell/mojom/Connector_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "Connector_Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/shell/mojom/Connector_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub",
        "<",
        "Lorg/chromium/mojom/shell/mojom/Connector;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojom/shell/mojom/Connector;)V
    .locals 0
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;
    .param p2, "impl"    # Lorg/chromium/mojom/shell/mojom/Connector;

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    .line 110
    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 7
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    const/4 v5, 0x0

    .line 115
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v3

    .line 117
    .local v3, "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v2

    .line 118
    .local v2, "header":Lorg/chromium/mojo/bindings/MessageHeader;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    .line 148
    .end local v2    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v3    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :goto_0
    return v4

    .line 121
    .restart local v2    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .restart local v3    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :cond_0
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    move v4, v5

    .line 144
    goto :goto_0

    .line 124
    :pswitch_1
    sget-object v4, Lorg/chromium/mojom/shell/mojom/Connector_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v4, v3}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRunOrClosePipe(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;)Z

    move-result v4

    goto :goto_0

    .line 135
    :pswitch_2
    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorCloneParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorCloneParams;

    move-result-object v0

    .line 138
    .local v0, "data":Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorCloneParams;
    invoke-virtual {p0}, Lorg/chromium/mojom/shell/mojom/Connector_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v4

    check-cast v4, Lorg/chromium/mojom/shell/mojom/Connector;

    iget-object v6, v0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorCloneParams;->request:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-interface {v4, v6}, Lorg/chromium/mojom/shell/mojom/Connector;->clone(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    const/4 v4, 0x1

    goto :goto_0

    .line 146
    .end local v0    # "data":Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorCloneParams;
    .end local v2    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v3    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Lorg/chromium/mojo/bindings/DeserializationException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/DeserializationException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v4, v5

    .line 148
    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 16
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;
    .param p2, "receiver"    # Lorg/chromium/mojo/bindings/MessageReceiver;

    .prologue
    .line 155
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v11

    .line 157
    .local v11, "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    invoke-virtual {v11}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v10

    .line 158
    .local v10, "header":Lorg/chromium/mojo/bindings/MessageHeader;
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    const/4 v2, 0x0

    .line 190
    .end local v10    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v11    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :goto_0
    return v2

    .line 161
    .restart local v10    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .restart local v11    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :cond_0
    invoke-virtual {v10}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 186
    const/4 v2, 0x0

    goto :goto_0

    .line 164
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojom/shell/mojom/Connector_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    sget-object v3, Lorg/chromium/mojom/shell/mojom/Connector_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    move-object/from16 v0, p2

    invoke-static {v2, v3, v11, v0}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    move-result v2

    goto :goto_0

    .line 175
    :pswitch_1
    invoke-virtual {v11}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;

    move-result-object v8

    .line 178
    .local v8, "data":Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojom/shell/mojom/Connector_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/mojom/shell/mojom/Connector;

    iget-object v3, v8, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;->target:Lorg/chromium/mojom/shell/mojom/Identity;

    iget-object v4, v8, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;->remoteInterfaces:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v5, v8, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;->localInterfaces:Lorg/chromium/mojom/shell/mojom/InterfaceProvider;

    iget-object v6, v8, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;->clientProcessConnection:Lorg/chromium/mojom/shell/mojom/ClientProcessConnection;

    new-instance v7, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParamsProxyToResponder;

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojom/shell/mojom/Connector_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v12

    invoke-virtual {v10}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v14

    move-object/from16 v0, p2

    invoke-direct {v7, v12, v0, v14, v15}, Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v2 .. v7}, Lorg/chromium/mojom/shell/mojom/Connector;->connect(Lorg/chromium/mojom/shell/mojom/Identity;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojom/shell/mojom/InterfaceProvider;Lorg/chromium/mojom/shell/mojom/ClientProcessConnection;Lorg/chromium/mojom/shell/mojom/Connector$ConnectResponse;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    const/4 v2, 0x1

    goto :goto_0

    .line 188
    .end local v8    # "data":Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;
    .end local v10    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v11    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :catch_0
    move-exception v9

    .line 189
    .local v9, "e":Lorg/chromium/mojo/bindings/DeserializationException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v9}, Lorg/chromium/mojo/bindings/DeserializationException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 190
    const/4 v2, 0x0

    goto :goto_0

    .line 161
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
