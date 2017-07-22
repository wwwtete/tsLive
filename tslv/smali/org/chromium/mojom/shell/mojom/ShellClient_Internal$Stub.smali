.class final Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "ShellClient_Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/shell/mojom/ShellClient_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub",
        "<",
        "Lorg/chromium/mojom/shell/mojom/ShellClient;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojom/shell/mojom/ShellClient;)V
    .locals 0
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;
    .param p2, "impl"    # Lorg/chromium/mojom/shell/mojom/ShellClient;

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    .line 116
    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 12
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    const/4 v11, 0x0

    .line 121
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v10

    .line 123
    .local v10, "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    invoke-virtual {v10}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v9

    .line 124
    .local v9, "header":Lorg/chromium/mojo/bindings/MessageHeader;
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v11

    .line 154
    .end local v9    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v10    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :goto_0
    return v0

    .line 127
    .restart local v9    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .restart local v10    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :cond_0
    invoke-virtual {v9}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v11

    .line 150
    goto :goto_0

    .line 130
    :pswitch_1
    sget-object v0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v0, v10}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRunOrClosePipe(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;)Z

    move-result v0

    goto :goto_0

    .line 141
    :pswitch_2
    invoke-virtual {v10}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;

    move-result-object v7

    .line 144
    .local v7, "data":Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;
    invoke-virtual {p0}, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/shell/mojom/ShellClient;

    iget-object v1, v7, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->source:Lorg/chromium/mojom/shell/mojom/Identity;

    iget v2, v7, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->sourceId:I

    iget-object v3, v7, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->localInterfaces:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v4, v7, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->remoteInterfaces:Lorg/chromium/mojom/shell/mojom/InterfaceProvider;

    iget-object v5, v7, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->allowedCapabilities:Lorg/chromium/mojom/shell/mojom/CapabilityRequest;

    iget-object v6, v7, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;->resolvedName:Ljava/lang/String;

    invoke-interface/range {v0 .. v6}, Lorg/chromium/mojom/shell/mojom/ShellClient;->acceptConnection(Lorg/chromium/mojom/shell/mojom/Identity;ILorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojom/shell/mojom/InterfaceProvider;Lorg/chromium/mojom/shell/mojom/CapabilityRequest;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    const/4 v0, 0x1

    goto :goto_0

    .line 152
    .end local v7    # "data":Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;
    .end local v9    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v10    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :catch_0
    move-exception v8

    .line 153
    .local v8, "e":Lorg/chromium/mojo/bindings/DeserializationException;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v8}, Lorg/chromium/mojo/bindings/DeserializationException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v11

    .line 154
    goto :goto_0

    .line 127
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
    .locals 12
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;
    .param p2, "receiver"    # Lorg/chromium/mojo/bindings/MessageReceiver;

    .prologue
    .line 161
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v3

    .line 163
    .local v3, "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v2

    .line 164
    .local v2, "header":Lorg/chromium/mojo/bindings/MessageHeader;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 165
    const/4 v4, 0x0

    .line 196
    .end local v2    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v3    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :goto_0
    return v4

    .line 167
    .restart local v2    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .restart local v3    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :cond_0
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 192
    const/4 v4, 0x0

    goto :goto_0

    .line 170
    :pswitch_0
    invoke-virtual {p0}, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v4

    sget-object v5, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v4, v5, v3, p2}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    move-result v4

    goto :goto_0

    .line 181
    :pswitch_1
    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;

    move-result-object v0

    .line 184
    .local v0, "data":Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;
    invoke-virtual {p0}, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v4

    check-cast v4, Lorg/chromium/mojom/shell/mojom/ShellClient;

    iget-object v5, v0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;->identity:Lorg/chromium/mojom/shell/mojom/Identity;

    iget v6, v0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;->id:I

    new-instance v7, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v8

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v10

    invoke-direct {v7, v8, p2, v10, v11}, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v4, v5, v6, v7}, Lorg/chromium/mojom/shell/mojom/ShellClient;->initialize(Lorg/chromium/mojom/shell/mojom/Identity;ILorg/chromium/mojom/shell/mojom/ShellClient$InitializeResponse;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    const/4 v4, 0x1

    goto :goto_0

    .line 194
    .end local v0    # "data":Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;
    .end local v2    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v3    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :catch_0
    move-exception v1

    .line 195
    .local v1, "e":Lorg/chromium/mojo/bindings/DeserializationException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/DeserializationException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 196
    const/4 v4, 0x0

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
