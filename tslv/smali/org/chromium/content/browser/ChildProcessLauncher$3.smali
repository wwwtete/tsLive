.class final Lorg/chromium/content/browser/ChildProcessLauncher$3;
.super Ljava/lang/Object;
.source "ChildProcessLauncher.java"

# interfaces
.implements Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/ChildProcessLauncher;->triggerConnectionSetup(Lorg/chromium/content/browser/ChildProcessConnection;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callbackType:I

.field final synthetic val$clientContext:J

.field final synthetic val$connection:Lorg/chromium/content/browser/ChildProcessConnection;


# direct methods
.method constructor <init>(JILorg/chromium/content/browser/ChildProcessConnection;)V
    .locals 1

    .prologue
    .line 715
    iput-wide p1, p0, Lorg/chromium/content/browser/ChildProcessLauncher$3;->val$clientContext:J

    iput p3, p0, Lorg/chromium/content/browser/ChildProcessLauncher$3;->val$callbackType:I

    iput-object p4, p0, Lorg/chromium/content/browser/ChildProcessLauncher$3;->val$connection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(I)V
    .locals 6
    .param p1, "pid"    # I

    .prologue
    .line 718
    const-string v0, "ChildProcLauncher"

    const-string v1, "on connect callback, pid=%d context=%d callbackType=%d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v4, p0, Lorg/chromium/content/browser/ChildProcessLauncher$3;->val$clientContext:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v4, p0, Lorg/chromium/content/browser/ChildProcessLauncher$3;->val$callbackType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 720
    if-eqz p1, :cond_0

    .line 721
    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$1200()Lorg/chromium/content/browser/BindingManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessLauncher$3;->val$connection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-interface {v0, p1, v1}, Lorg/chromium/content/browser/BindingManager;->addNewConnection(ILorg/chromium/content/browser/ChildProcessConnection;)V

    .line 722
    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$1300()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/content/browser/ChildProcessLauncher$3;->val$connection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$3;->val$clientContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 728
    iget-wide v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$3;->val$clientContext:J

    invoke-static {v0, v1, p1}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$1400(JI)V

    .line 730
    :cond_1
    return-void
.end method
