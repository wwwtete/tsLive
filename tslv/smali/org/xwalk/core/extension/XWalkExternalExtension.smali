.class public Lorg/xwalk/core/extension/XWalkExternalExtension;
.super Ljava/lang/Object;
.source "XWalkExternalExtension.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private instanceHelpers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/xwalk/core/extension/ExtensionInstanceHelper;",
            ">;"
        }
    .end annotation
.end field

.field protected mEntryPoints:[Ljava/lang/String;

.field protected mExtensionContext:Lorg/xwalk/core/extension/XWalkExtensionContextClient;

.field protected mHandler:Lorg/xwalk/core/extension/MessageHandler;

.field protected mJsApi:Ljava/lang/String;

.field protected mName:Ljava/lang/String;

.field protected mReflection:Lorg/xwalk/core/extension/ReflectionHelper;

.field protected useJsStubGeneration:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lorg/xwalk/core/extension/XWalkExternalExtension;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/xwalk/core/extension/XWalkExternalExtension;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/xwalk/core/extension/XWalkExtensionContextClient;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "jsApi"    # Ljava/lang/String;
    .param p3, "context"    # Lorg/xwalk/core/extension/XWalkExtensionContextClient;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/xwalk/core/extension/XWalkExternalExtension;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/xwalk/core/extension/XWalkExtensionContextClient;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/xwalk/core/extension/XWalkExtensionContextClient;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "jsApi"    # Ljava/lang/String;
    .param p3, "entryPoints"    # [Ljava/lang/String;
    .param p4, "context"    # Lorg/xwalk/core/extension/XWalkExtensionContextClient;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget-boolean v0, Lorg/xwalk/core/extension/XWalkExternalExtension;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 70
    :cond_0
    iput-object p1, p0, Lorg/xwalk/core/extension/XWalkExternalExtension;->mName:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lorg/xwalk/core/extension/XWalkExternalExtension;->mJsApi:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lorg/xwalk/core/extension/XWalkExternalExtension;->mEntryPoints:[Ljava/lang/String;

    .line 73
    iput-object p4, p0, Lorg/xwalk/core/extension/XWalkExternalExtension;->mExtensionContext:Lorg/xwalk/core/extension/XWalkExtensionContextClient;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/extension/XWalkExternalExtension;->instanceHelpers:Ljava/util/Map;

    .line 75
    new-instance v0, Lorg/xwalk/core/extension/MessageHandler;

    invoke-direct {v0}, Lorg/xwalk/core/extension/MessageHandler;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/extension/XWalkExternalExtension;->mHandler:Lorg/xwalk/core/extension/MessageHandler;

    .line 77
    iget-object v0, p0, Lorg/xwalk/core/extension/XWalkExternalExtension;->mJsApi:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/xwalk/core/extension/XWalkExternalExtension;->mJsApi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 78
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xwalk/core/extension/XWalkExternalExtension;->useJsStubGeneration:Z

    .line 79
    new-instance v0, Lorg/xwalk/core/extension/ReflectionHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xwalk/core/extension/ReflectionHelper;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/extension/XWalkExternalExtension;->mReflection:Lorg/xwalk/core/extension/ReflectionHelper;

    .line 80
    new-instance v0, Lorg/xwalk/core/extension/JsStubGenerator;

    iget-object v1, p0, Lorg/xwalk/core/extension/XWalkExternalExtension;->mReflection:Lorg/xwalk/core/extension/ReflectionHelper;

    invoke-direct {v0, v1}, Lorg/xwalk/core/extension/JsStubGenerator;-><init>(Lorg/xwalk/core/extension/ReflectionHelper;)V

    invoke-virtual {v0}, Lorg/xwalk/core/extension/JsStubGenerator;->generate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/extension/XWalkExternalExtension;->mJsApi:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lorg/xwalk/core/extension/XWalkExternalExtension;->mJsApi:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/xwalk/core/extension/XWalkExternalExtension;->mJsApi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 82
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Extension-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/xwalk/core/extension/XWalkExternalExtension;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Can\'t generate JavaScript stub for this extension."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :goto_0
    return-void

    .line 86
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xwalk/core/extension/XWalkExternalExtension;->mReflection:Lorg/xwalk/core/extension/ReflectionHelper;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xwalk/core/extension/XWalkExternalExtension;->useJsStubGeneration:Z

    .line 89
    :cond_4
    iget-object v0, p0, Lorg/xwalk/core/extension/XWalkExternalExtension;->mExtensionContext:Lorg/xwalk/core/extension/XWalkExtensionContextClient;

    invoke-interface {v0, p0}, Lorg/xwalk/core/extension/XWalkExtensionContextClient;->registerExtension(Lorg/xwalk/core/extension/XWalkExternalExtension;)V

    goto :goto_0
.end method


# virtual methods
.method public final broadcastMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 281
    iget-object v0, p0, Lorg/xwalk/core/extension/XWalkExternalExtension;->mExtensionContext:Lorg/xwalk/core/extension/XWalkExtensionContextClient;

    invoke-interface {v0, p0, p1}, Lorg/xwalk/core/extension/XWalkExtensionContextClient;->broadcastMessage(Lorg/xwalk/core/extension/XWalkExternalExtension;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public final getEntryPoints()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/xwalk/core/extension/XWalkExternalExtension;->mEntryPoints:[Ljava/lang/String;

    return-object v0
.end method

.method public final getExtensionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/xwalk/core/extension/XWalkExternalExtension;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected getInstanceHelper(I)Lorg/xwalk/core/extension/ExtensionInstanceHelper;
    .locals 2
    .param p1, "instanceId"    # I

    .prologue
    .line 236
    iget-object v0, p0, Lorg/xwalk/core/extension/XWalkExternalExtension;->instanceHelpers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/extension/ExtensionInstanceHelper;

    return-object v0
.end method

.method public final getJsApi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/xwalk/core/extension/XWalkExternalExtension;->mJsApi:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageHandler()Lorg/xwalk/core/extension/MessageHandler;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/xwalk/core/extension/XWalkExternalExtension;->mHandler:Lorg/xwalk/core/extension/MessageHandler;

    return-object v0
.end method

.method public getReflection()Lorg/xwalk/core/extension/ReflectionHelper;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lorg/xwalk/core/extension/XWalkExternalExtension;->mReflection:Lorg/xwalk/core/extension/ReflectionHelper;

    return-object v0
.end method

.method public getTargetReflect(Ljava/lang/String;)Lorg/xwalk/core/extension/ReflectionHelper;
    .locals 2
    .param p1, "cName"    # Ljava/lang/String;

    .prologue
    .line 231
    iget-object v1, p0, Lorg/xwalk/core/extension/XWalkExternalExtension;->mReflection:Lorg/xwalk/core/extension/ReflectionHelper;

    invoke-virtual {v1, p1}, Lorg/xwalk/core/extension/ReflectionHelper;->getConstructorReflection(Ljava/lang/String;)Lorg/xwalk/core/extension/ReflectionHelper;

    move-result-object v0

    .line 232
    .local v0, "targetReflect":Lorg/xwalk/core/extension/ReflectionHelper;
    if-eqz v0, :cond_0

    .end local v0    # "targetReflect":Lorg/xwalk/core/extension/ReflectionHelper;
    :goto_0
    return-object v0

    .restart local v0    # "targetReflect":Lorg/xwalk/core/extension/ReflectionHelper;
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/extension/XWalkExternalExtension;->mReflection:Lorg/xwalk/core/extension/ReflectionHelper;

    goto :goto_0
.end method

.method public isAutoJS()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lorg/xwalk/core/extension/XWalkExternalExtension;->useJsStubGeneration:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 159
    return-void
.end method

.method public onBinaryMessage(I[B)V
    .locals 1
    .param p1, "extensionInstanceID"    # I
    .param p2, "message"    # [B

    .prologue
    .line 202
    iget-boolean v0, p0, Lorg/xwalk/core/extension/XWalkExternalExtension;->useJsStubGeneration:Z

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p0, p1}, Lorg/xwalk/core/extension/XWalkExternalExtension;->getInstanceHelper(I)Lorg/xwalk/core/extension/ExtensionInstanceHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/xwalk/core/extension/ExtensionInstanceHelper;->handleMessage([B)Ljava/lang/Object;

    .line 205
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public onInstanceCreated(I)V
    .locals 3
    .param p1, "instanceID"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lorg/xwalk/core/extension/XWalkExternalExtension;->instanceHelpers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/xwalk/core/extension/ExtensionInstanceHelper;

    invoke-direct {v2, p0, p1}, Lorg/xwalk/core/extension/ExtensionInstanceHelper;-><init>(Lorg/xwalk/core/extension/XWalkExternalExtension;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    return-void
.end method

.method public onInstanceDestroyed(I)V
    .locals 2
    .param p1, "instanceID"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lorg/xwalk/core/extension/XWalkExternalExtension;->instanceHelpers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    return-void
.end method

.method public onMessage(ILjava/lang/String;)V
    .locals 1
    .param p1, "extensionInstanceID"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-boolean v0, p0, Lorg/xwalk/core/extension/XWalkExternalExtension;->useJsStubGeneration:Z

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0, p1}, Lorg/xwalk/core/extension/XWalkExternalExtension;->getInstanceHelper(I)Lorg/xwalk/core/extension/ExtensionInstanceHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/xwalk/core/extension/ExtensionInstanceHelper;->handleMessage(Ljava/lang/String;)Ljava/lang/Object;

    .line 191
    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 150
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public onSyncMessage(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "extensionInstanceID"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "result":Ljava/lang/Object;
    iget-boolean v1, p0, Lorg/xwalk/core/extension/XWalkExternalExtension;->useJsStubGeneration:Z

    if-eqz v1, :cond_0

    .line 217
    invoke-virtual {p0, p1}, Lorg/xwalk/core/extension/XWalkExternalExtension;->getInstanceHelper(I)Lorg/xwalk/core/extension/ExtensionInstanceHelper;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/xwalk/core/extension/ExtensionInstanceHelper;->handleMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 219
    .end local v0    # "result":Ljava/lang/Object;
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/xwalk/core/extension/ReflectionHelper;->objToJSON(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public final postBinaryMessage(I[B)V
    .locals 1
    .param p1, "instanceID"    # I
    .param p2, "message"    # [B

    .prologue
    .line 271
    iget-object v0, p0, Lorg/xwalk/core/extension/XWalkExternalExtension;->mExtensionContext:Lorg/xwalk/core/extension/XWalkExtensionContextClient;

    invoke-interface {v0, p0, p1, p2}, Lorg/xwalk/core/extension/XWalkExtensionContextClient;->postBinaryMessage(Lorg/xwalk/core/extension/XWalkExternalExtension;I[B)V

    .line 272
    return-void
.end method

.method public final postMessage(ILjava/lang/String;)V
    .locals 1
    .param p1, "instanceID"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 259
    iget-object v0, p0, Lorg/xwalk/core/extension/XWalkExternalExtension;->mExtensionContext:Lorg/xwalk/core/extension/XWalkExtensionContextClient;

    invoke-interface {v0, p0, p1, p2}, Lorg/xwalk/core/extension/XWalkExtensionContextClient;->postMessage(Lorg/xwalk/core/extension/XWalkExternalExtension;ILjava/lang/String;)V

    .line 260
    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/Object;

    .prologue
    .line 241
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 242
    .local v1, "msgOut":Lorg/json/JSONObject;
    const-string v2, "cmd"

    const-string v3, "onEvent"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    const-string v2, "type"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    const-string v2, "event"

    invoke-static {p2}, Lorg/xwalk/core/extension/ReflectionHelper;->objToJSON(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/xwalk/core/extension/XWalkExternalExtension;->broadcastMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .end local v1    # "msgOut":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 292
    iget-object v0, p0, Lorg/xwalk/core/extension/XWalkExternalExtension;->mExtensionContext:Lorg/xwalk/core/extension/XWalkExtensionContextClient;

    invoke-interface {v0, p1, p2, p3}, Lorg/xwalk/core/extension/XWalkExtensionContextClient;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 293
    return-void
.end method
