.class Lorg/chromium/content/browser/ChildProcessLauncher$2$1;
.super Ljava/lang/Object;
.source "ChildProcessLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/ChildProcessLauncher$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/ChildProcessLauncher$2;

.field final synthetic val$pendingSpawn:Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/ChildProcessLauncher$2;Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lorg/chromium/content/browser/ChildProcessLauncher$2$1;->this$0:Lorg/chromium/content/browser/ChildProcessLauncher$2;

    iput-object p2, p0, Lorg/chromium/content/browser/ChildProcessLauncher$2$1;->val$pendingSpawn:Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 370
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$2$1;->val$pendingSpawn:Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->access$300(Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessLauncher$2$1;->val$pendingSpawn:Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;

    invoke-static {v1}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->access$400(Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/content/browser/ChildProcessLauncher$2$1;->val$pendingSpawn:Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;

    invoke-static {v2}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->access$500(Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;)I

    move-result v2

    iget-object v3, p0, Lorg/chromium/content/browser/ChildProcessLauncher$2$1;->val$pendingSpawn:Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;

    invoke-static {v3}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->access$600(Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;)[Lorg/chromium/content/browser/FileDescriptorInfo;

    move-result-object v3

    iget-object v4, p0, Lorg/chromium/content/browser/ChildProcessLauncher$2$1;->val$pendingSpawn:Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;

    invoke-static {v4}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->access$700(Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;)J

    move-result-wide v4

    iget-object v6, p0, Lorg/chromium/content/browser/ChildProcessLauncher$2$1;->val$pendingSpawn:Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;

    invoke-static {v6}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->access$800(Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;)I

    move-result v6

    iget-object v7, p0, Lorg/chromium/content/browser/ChildProcessLauncher$2$1;->val$pendingSpawn:Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;

    invoke-static {v7}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;->access$900(Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;)Z

    move-result v7

    invoke-static/range {v0 .. v7}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$1000(Landroid/content/Context;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;JIZ)V

    .line 374
    return-void
.end method
