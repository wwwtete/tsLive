.class final Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "InstanceListener_Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub",
        "<",
        "Lorg/chromium/mojom/shell/mojom/InstanceListener;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojom/shell/mojom/InstanceListener;)V
    .locals 0
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;
    .param p2, "impl"    # Lorg/chromium/mojom/shell/mojom/InstanceListener;

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    .line 139
    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 9
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 144
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v3

    .line 146
    .local v3, "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v2

    .line 147
    .local v2, "header":Lorg/chromium/mojo/bindings/MessageHeader;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    .line 214
    .end local v2    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v3    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :goto_0
    return v4

    .line 150
    .restart local v2    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .restart local v3    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :cond_0
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    move v4, v5

    .line 210
    goto :goto_0

    .line 153
    :pswitch_1
    sget-object v4, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v4, v3}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRunOrClosePipe(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;)Z

    move-result v4

    goto :goto_0

    .line 162
    :pswitch_2
    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerSetExistingInstancesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerSetExistingInstancesParams;

    move-result-object v0

    .line 165
    .local v0, "data":Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerSetExistingInstancesParams;
    invoke-virtual {p0}, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v4

    check-cast v4, Lorg/chromium/mojom/shell/mojom/InstanceListener;

    iget-object v7, v0, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerSetExistingInstancesParams;->instances:[Lorg/chromium/mojom/shell/mojom/InstanceInfo;

    invoke-interface {v4, v7}, Lorg/chromium/mojom/shell/mojom/InstanceListener;->setExistingInstances([Lorg/chromium/mojom/shell/mojom/InstanceInfo;)V

    move v4, v6

    .line 166
    goto :goto_0

    .line 175
    .end local v0    # "data":Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerSetExistingInstancesParams;
    :pswitch_3
    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerInstanceCreatedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerInstanceCreatedParams;

    move-result-object v0

    .line 178
    .local v0, "data":Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerInstanceCreatedParams;
    invoke-virtual {p0}, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v4

    check-cast v4, Lorg/chromium/mojom/shell/mojom/InstanceListener;

    iget-object v7, v0, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerInstanceCreatedParams;->instance:Lorg/chromium/mojom/shell/mojom/InstanceInfo;

    invoke-interface {v4, v7}, Lorg/chromium/mojom/shell/mojom/InstanceListener;->instanceCreated(Lorg/chromium/mojom/shell/mojom/InstanceInfo;)V

    move v4, v6

    .line 179
    goto :goto_0

    .line 188
    .end local v0    # "data":Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerInstanceCreatedParams;
    :pswitch_4
    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerInstanceDestroyedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerInstanceDestroyedParams;

    move-result-object v0

    .line 191
    .local v0, "data":Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerInstanceDestroyedParams;
    invoke-virtual {p0}, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v4

    check-cast v4, Lorg/chromium/mojom/shell/mojom/InstanceListener;

    iget v7, v0, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerInstanceDestroyedParams;->id:I

    invoke-interface {v4, v7}, Lorg/chromium/mojom/shell/mojom/InstanceListener;->instanceDestroyed(I)V

    move v4, v6

    .line 192
    goto :goto_0

    .line 201
    .end local v0    # "data":Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerInstanceDestroyedParams;
    :pswitch_5
    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;

    move-result-object v0

    .line 204
    .local v0, "data":Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;
    invoke-virtual {p0}, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v4

    check-cast v4, Lorg/chromium/mojom/shell/mojom/InstanceListener;

    iget v7, v0, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;->id:I

    iget v8, v0, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;->pid:I

    invoke-interface {v4, v7, v8}, Lorg/chromium/mojom/shell/mojom/InstanceListener;->instancePidAvailable(II)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v6

    .line 205
    goto :goto_0

    .line 212
    .end local v0    # "data":Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;
    .end local v2    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v3    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Lorg/chromium/mojo/bindings/DeserializationException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/DeserializationException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v4, v5

    .line 214
    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 6
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;
    .param p2, "receiver"    # Lorg/chromium/mojo/bindings/MessageReceiver;

    .prologue
    const/4 v3, 0x0

    .line 221
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    .line 223
    .local v2, "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    .line 224
    .local v1, "header":Lorg/chromium/mojo/bindings/MessageHeader;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 247
    .end local v1    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v2    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :goto_0
    return v3

    .line 227
    .restart local v1    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .restart local v2    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :cond_0
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 230
    :pswitch_0
    invoke-virtual {p0}, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v4

    sget-object v5, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v4, v5, v2, p2}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 245
    .end local v1    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v2    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Lorg/chromium/mojo/bindings/DeserializationException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/DeserializationException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
