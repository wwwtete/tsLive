.class Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;
.super Ljava/lang/Object;
.source "ChildProcessLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/ChildProcessLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChildConnectionAllocator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mChildClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/chromium/content/app/ChildProcessService;",
            ">;"
        }
    .end annotation
.end field

.field private final mChildProcessConnections:[Lorg/chromium/content/browser/ChildProcessConnection;

.field private final mConnectionLock:Ljava/lang/Object;

.field private final mFreeConnectionIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mInSandbox:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lorg/chromium/content/browser/ChildProcessLauncher;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(ZI)V
    .locals 3
    .param p1, "inSandbox"    # Z
    .param p2, "numChildServices"    # I

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mConnectionLock:Ljava/lang/Object;

    .line 72
    new-array v1, p2, [Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    iput-object v1, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mChildProcessConnections:[Lorg/chromium/content/browser/ChildProcessConnection;

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mFreeConnectionIndices:Ljava/util/ArrayList;

    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 75
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mFreeConnectionIndices:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    if-eqz p1, :cond_1

    const-class v1, Lorg/chromium/content/app/SandboxedProcessService;

    :goto_1
    iput-object v1, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mChildClass:Ljava/lang/Class;

    .line 79
    iput-boolean p1, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mInSandbox:Z

    .line 80
    return-void

    .line 77
    :cond_1
    const-class v1, Lorg/chromium/content/app/PrivilegedProcessService;

    goto :goto_1
.end method


# virtual methods
.method public allocate(Landroid/content/Context;Lorg/chromium/content/browser/ChildProcessConnection$DeathCallback;Lorg/chromium/content/app/ChromiumLinkerParams;ZLorg/chromium/content/browser/ChildProcessCreationParams;)Lorg/chromium/content/browser/ChildProcessConnection;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deathCallback"    # Lorg/chromium/content/browser/ChildProcessConnection$DeathCallback;
    .param p3, "chromiumLinkerParams"    # Lorg/chromium/content/app/ChromiumLinkerParams;
    .param p4, "alwaysInForeground"    # Z
    .param p5, "creationParams"    # Lorg/chromium/content/browser/ChildProcessCreationParams;

    .prologue
    .line 87
    iget-object v9, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mConnectionLock:Ljava/lang/Object;

    monitor-enter v9

    .line 88
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mFreeConnectionIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "ChildProcLauncher"

    const-string v1, "Ran out of services to allocate."

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x0

    monitor-exit v9

    .line 99
    :goto_0
    return-object v0

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mFreeConnectionIndices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 93
    .local v2, "slot":I
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mChildProcessConnections:[Lorg/chromium/content/browser/ChildProcessConnection;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 100
    .end local v2    # "slot":I
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 94
    .restart local v2    # "slot":I
    :cond_1
    :try_start_1
    iget-object v10, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mChildProcessConnections:[Lorg/chromium/content/browser/ChildProcessConnection;

    new-instance v0, Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    iget-boolean v3, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mInSandbox:Z

    iget-object v5, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mChildClass:Ljava/lang/Class;

    move-object v1, p1

    move-object v4, p2

    move-object v6, p3

    move v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;-><init>(Landroid/content/Context;IZLorg/chromium/content/browser/ChildProcessConnection$DeathCallback;Ljava/lang/Class;Lorg/chromium/content/app/ChromiumLinkerParams;ZLorg/chromium/content/browser/ChildProcessCreationParams;)V

    aput-object v0, v10, v2

    .line 97
    const-string v0, "ChildProcLauncher"

    const-string v1, "Allocator allocated a connection, sandbox: %b, slot: %d"

    iget-boolean v3, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mInSandbox:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mChildProcessConnections:[Lorg/chromium/content/browser/ChildProcessConnection;

    aget-object v0, v0, v2

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method allocatedConnectionsCountForTesting()I
    .locals 2
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mChildProcessConnections:[Lorg/chromium/content/browser/ChildProcessConnection;

    array-length v0, v0

    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mFreeConnectionIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public free(Lorg/chromium/content/browser/ChildProcessConnection;)V
    .locals 8
    .param p1, "connection"    # Lorg/chromium/content/browser/ChildProcessConnection;

    .prologue
    .line 104
    iget-object v3, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mConnectionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 105
    :try_start_0
    invoke-interface {p1}, Lorg/chromium/content/browser/ChildProcessConnection;->getServiceNumber()I

    move-result v1

    .line 106
    .local v1, "slot":I
    iget-object v2, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mChildProcessConnections:[Lorg/chromium/content/browser/ChildProcessConnection;

    aget-object v2, v2, v1

    if-eq v2, p1, :cond_1

    .line 107
    iget-object v2, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mChildProcessConnections:[Lorg/chromium/content/browser/ChildProcessConnection;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    const/4 v0, -0x1

    .line 109
    .local v0, "occupier":I
    :goto_0
    const-string v2, "ChildProcLauncher"

    const-string v4, "Unable to find connection to free in slot: %d already occupied by service: %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    sget-boolean v2, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 119
    .end local v0    # "occupier":I
    .end local v1    # "slot":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 107
    .restart local v1    # "slot":I
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mChildProcessConnections:[Lorg/chromium/content/browser/ChildProcessConnection;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lorg/chromium/content/browser/ChildProcessConnection;->getServiceNumber()I

    move-result v0

    goto :goto_0

    .line 113
    :cond_1
    iget-object v2, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mChildProcessConnections:[Lorg/chromium/content/browser/ChildProcessConnection;

    const/4 v4, 0x0

    aput-object v4, v2, v1

    .line 114
    sget-boolean v2, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mFreeConnectionIndices:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 115
    :cond_2
    iget-object v2, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mFreeConnectionIndices:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    const-string v2, "ChildProcLauncher"

    const-string v4, "Allocator freed a connection, sandbox: %b, slot: %d"

    iget-boolean v5, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mInSandbox:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v4, v5, v6}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    return-void
.end method

.method public isFreeConnectionAvailable()Z
    .locals 2

    .prologue
    .line 123
    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mConnectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 124
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->mFreeConnectionIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
