.class public interface abstract Lorg/chromium/content/browser/ChildProcessConnection;
.super Ljava/lang/Object;
.source "ChildProcessConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;,
        Lorg/chromium/content/browser/ChildProcessConnection$DeathCallback;
    }
.end annotation


# virtual methods
.method public abstract addModerateBinding()V
.end method

.method public abstract addStrongBinding()V
.end method

.method public abstract dropOomBindings()V
.end method

.method public abstract getPid()I
.end method

.method public abstract getService()Lorg/chromium/content/common/IChildProcessService;
.end method

.method public abstract getServiceNumber()I
.end method

.method public abstract isInSandbox()Z
.end method

.method public abstract isInitialBindingBound()Z
.end method

.method public abstract isModerateBindingBound()Z
.end method

.method public abstract isOomProtectedOrWasWhenDied()Z
.end method

.method public abstract isStrongBindingBound()Z
.end method

.method public abstract removeInitialBinding()V
.end method

.method public abstract removeModerateBinding()V
.end method

.method public abstract removeStrongBinding()V
.end method

.method public abstract setupConnection([Ljava/lang/String;[Lorg/chromium/content/browser/FileDescriptorInfo;Lorg/chromium/content/common/IChildProcessCallback;Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;Landroid/os/Bundle;)V
.end method

.method public abstract start([Ljava/lang/String;)V
.end method

.method public abstract stop()V
.end method
