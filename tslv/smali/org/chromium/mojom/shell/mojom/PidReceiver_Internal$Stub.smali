.class final Lorg/chromium/mojom/shell/mojom/PidReceiver_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "PidReceiver_Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/shell/mojom/PidReceiver_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub",
        "<",
        "Lorg/chromium/mojom/shell/mojom/PidReceiver;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojom/shell/mojom/PidReceiver;)V
    .locals 0
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;
    .param p2, "impl"    # Lorg/chromium/mojom/shell/mojom/PidReceiver;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    .line 80
    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 7
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    const/4 v5, 0x0

    .line 85
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v3

    .line 87
    .local v3, "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v2

    .line 88
    .local v2, "header":Lorg/chromium/mojo/bindings/MessageHeader;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    .line 116
    .end local v2    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v3    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :goto_0
    return v4

    .line 91
    .restart local v2    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .restart local v3    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :cond_0
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    move v4, v5

    .line 112
    goto :goto_0

    .line 94
    :pswitch_1
    sget-object v4, Lorg/chromium/mojom/shell/mojom/PidReceiver_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v4, v3}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRunOrClosePipe(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;)Z

    move-result v4

    goto :goto_0

    .line 103
    :pswitch_2
    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/mojom/shell/mojom/PidReceiver_Internal$PidReceiverSetPidParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/shell/mojom/PidReceiver_Internal$PidReceiverSetPidParams;

    move-result-object v0

    .line 106
    .local v0, "data":Lorg/chromium/mojom/shell/mojom/PidReceiver_Internal$PidReceiverSetPidParams;
    invoke-virtual {p0}, Lorg/chromium/mojom/shell/mojom/PidReceiver_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v4

    check-cast v4, Lorg/chromium/mojom/shell/mojom/PidReceiver;

    iget v6, v0, Lorg/chromium/mojom/shell/mojom/PidReceiver_Internal$PidReceiverSetPidParams;->pid:I

    invoke-interface {v4, v6}, Lorg/chromium/mojom/shell/mojom/PidReceiver;->setPid(I)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    const/4 v4, 0x1

    goto :goto_0

    .line 114
    .end local v0    # "data":Lorg/chromium/mojom/shell/mojom/PidReceiver_Internal$PidReceiverSetPidParams;
    .end local v2    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v3    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Lorg/chromium/mojo/bindings/DeserializationException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/DeserializationException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v4, v5

    .line 116
    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 6
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;
    .param p2, "receiver"    # Lorg/chromium/mojo/bindings/MessageReceiver;

    .prologue
    const/4 v3, 0x0

    .line 123
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    .line 125
    .local v2, "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    .line 126
    .local v1, "header":Lorg/chromium/mojo/bindings/MessageHeader;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 143
    .end local v1    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v2    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :goto_0
    return v3

    .line 129
    .restart local v1    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .restart local v2    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :cond_0
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 132
    :pswitch_0
    invoke-virtual {p0}, Lorg/chromium/mojom/shell/mojom/PidReceiver_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v4

    sget-object v5, Lorg/chromium/mojom/shell/mojom/PidReceiver_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v4, v5, v2, p2}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 141
    .end local v1    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v2    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Lorg/chromium/mojo/bindings/DeserializationException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/DeserializationException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
