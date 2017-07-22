.class Lorg/xwalk/core/extension/XWalkCoreExtensionBridge;
.super Lorg/xwalk/core/XWalkExtension;
.source "XWalkCoreExtensionBridge.java"

# interfaces
.implements Lorg/xwalk/core/extension/XWalkExternalExtensionBridge;


# instance fields
.field private mExtension:Lorg/xwalk/core/extension/XWalkExternalExtension;


# direct methods
.method public constructor <init>(Lorg/xwalk/core/extension/XWalkExternalExtension;)V
    .locals 3
    .param p1, "extension"    # Lorg/xwalk/core/extension/XWalkExternalExtension;

    .prologue
    .line 19
    invoke-virtual {p1}, Lorg/xwalk/core/extension/XWalkExternalExtension;->getExtensionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xwalk/core/extension/XWalkExternalExtension;->getJsApi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xwalk/core/extension/XWalkExternalExtension;->getEntryPoints()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/xwalk/core/XWalkExtension;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lorg/xwalk/core/extension/XWalkCoreExtensionBridge;->mExtension:Lorg/xwalk/core/extension/XWalkExternalExtension;

    .line 21
    return-void
.end method


# virtual methods
.method public broadcastMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lorg/xwalk/core/XWalkExtension;->broadcastMessage(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/xwalk/core/extension/XWalkCoreExtensionBridge;->mExtension:Lorg/xwalk/core/extension/XWalkExternalExtension;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xwalk/core/extension/XWalkExternalExtension;->onActivityResult(IILandroid/content/Intent;)V

    .line 74
    return-void
.end method

.method public onBinaryMessage(I[B)V
    .locals 1
    .param p1, "instanceID"    # I
    .param p2, "message"    # [B

    .prologue
    .line 31
    iget-object v0, p0, Lorg/xwalk/core/extension/XWalkCoreExtensionBridge;->mExtension:Lorg/xwalk/core/extension/XWalkExternalExtension;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/extension/XWalkExternalExtension;->onBinaryMessage(I[B)V

    .line 32
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/xwalk/core/extension/XWalkCoreExtensionBridge;->mExtension:Lorg/xwalk/core/extension/XWalkExternalExtension;

    invoke-virtual {v0}, Lorg/xwalk/core/extension/XWalkExternalExtension;->onDestroy()V

    .line 50
    return-void
.end method

.method public onInstanceCreated(I)V
    .locals 1
    .param p1, "instanceID"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lorg/xwalk/core/extension/XWalkCoreExtensionBridge;->mExtension:Lorg/xwalk/core/extension/XWalkExternalExtension;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/extension/XWalkExternalExtension;->onInstanceCreated(I)V

    .line 41
    return-void
.end method

.method public onInstanceDestroyed(I)V
    .locals 1
    .param p1, "instanceID"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lorg/xwalk/core/extension/XWalkCoreExtensionBridge;->mExtension:Lorg/xwalk/core/extension/XWalkExternalExtension;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/extension/XWalkExternalExtension;->onInstanceDestroyed(I)V

    .line 46
    return-void
.end method

.method public onMessage(ILjava/lang/String;)V
    .locals 1
    .param p1, "instanceID"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 27
    iget-object v0, p0, Lorg/xwalk/core/extension/XWalkCoreExtensionBridge;->mExtension:Lorg/xwalk/core/extension/XWalkExternalExtension;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/extension/XWalkExternalExtension;->onMessage(ILjava/lang/String;)V

    .line 28
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/xwalk/core/extension/XWalkCoreExtensionBridge;->mExtension:Lorg/xwalk/core/extension/XWalkExternalExtension;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/extension/XWalkExternalExtension;->onNewIntent(Landroid/content/Intent;)V

    .line 70
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/xwalk/core/extension/XWalkCoreExtensionBridge;->mExtension:Lorg/xwalk/core/extension/XWalkExternalExtension;

    invoke-virtual {v0}, Lorg/xwalk/core/extension/XWalkExternalExtension;->onPause()V

    .line 58
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/xwalk/core/extension/XWalkCoreExtensionBridge;->mExtension:Lorg/xwalk/core/extension/XWalkExternalExtension;

    invoke-virtual {v0}, Lorg/xwalk/core/extension/XWalkExternalExtension;->onResume()V

    .line 54
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/xwalk/core/extension/XWalkCoreExtensionBridge;->mExtension:Lorg/xwalk/core/extension/XWalkExternalExtension;

    invoke-virtual {v0}, Lorg/xwalk/core/extension/XWalkExternalExtension;->onStart()V

    .line 62
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/xwalk/core/extension/XWalkCoreExtensionBridge;->mExtension:Lorg/xwalk/core/extension/XWalkExternalExtension;

    invoke-virtual {v0}, Lorg/xwalk/core/extension/XWalkExternalExtension;->onStop()V

    .line 66
    return-void
.end method

.method public onSyncMessage(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "instanceID"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/xwalk/core/extension/XWalkCoreExtensionBridge;->mExtension:Lorg/xwalk/core/extension/XWalkExternalExtension;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/extension/XWalkExternalExtension;->onSyncMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public postBinaryMessage(I[B)V
    .locals 0
    .param p1, "instanceId"    # I
    .param p2, "message"    # [B

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/XWalkExtension;->postBinaryMessage(I[B)V

    .line 87
    return-void
.end method

.method public postMessage(ILjava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/XWalkExtension;->postMessage(ILjava/lang/String;)V

    .line 82
    return-void
.end method
