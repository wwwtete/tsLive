.class final Lorg/chromium/content/browser/ChildProcessLauncher$1;
.super Ljava/lang/Object;
.source "ChildProcessLauncher.java"

# interfaces
.implements Lorg/chromium/content/browser/ChildProcessConnection$DeathCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/ChildProcessLauncher;->allocateConnection(Landroid/content/Context;ZLorg/chromium/content/app/ChromiumLinkerParams;Z)Lorg/chromium/content/browser/ChildProcessConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildProcessDied(Lorg/chromium/content/browser/ChildProcessConnection;)V
    .locals 1
    .param p1, "connection"    # Lorg/chromium/content/browser/ChildProcessConnection;

    .prologue
    .line 289
    invoke-interface {p1}, Lorg/chromium/content/browser/ChildProcessConnection;->getPid()I

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-interface {p1}, Lorg/chromium/content/browser/ChildProcessConnection;->getPid()I

    move-result v0

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessLauncher;->stop(I)V

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    invoke-static {p1}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$100(Lorg/chromium/content/browser/ChildProcessConnection;)V

    goto :goto_0
.end method
