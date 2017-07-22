.class Lorg/chromium/content/app/ChildProcessService$2;
.super Ljava/lang/Object;
.source "ChildProcessService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/app/ChildProcessService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/app/ChildProcessService;


# direct methods
.method constructor <init>(Lorg/chromium/content/app/ChildProcessService;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15
    .annotation build Lorg/chromium/base/annotations/SuppressFBWarnings;
        value = {
            "DM_EXIT"
        }
    .end annotation

    .prologue
    .line 128
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$100(Lorg/chromium/content/app/ChildProcessService;)Ljava/lang/Thread;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_1

    .line 129
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$200(Lorg/chromium/content/app/ChildProcessService;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 130
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$100(Lorg/chromium/content/app/ChildProcessService;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_2 .. :try_end_2} :catch_1

    .line 202
    :catch_0
    move-exception v7

    .line 203
    .local v7, "e":Ljava/lang/InterruptedException;
    const-string v0, "ChildProcessService"

    const-string v1, "%s startup failed: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "ChildProcessMain"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v7, v2, v3

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_1
    return-void

    .line 132
    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 133
    :try_start_4
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$200(Lorg/chromium/content/app/ChildProcessService;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/base/CommandLine;->init([Ljava/lang/String;)V

    .line 135
    const/4 v12, 0x0

    .line 136
    .local v12, "linker":Lorg/chromium/base/library_loader/Linker;
    const/4 v14, 0x0

    .line 137
    .local v14, "requestedSharedRelro":Z
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->isUsed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$100(Lorg/chromium/content/app/ChildProcessService;)Ljava/lang/Thread;

    move-result-object v1

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_4 .. :try_end_4} :catch_1

    .line 139
    :goto_2
    :try_start_5
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$300(Lorg/chromium/content/app/ChildProcessService;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 140
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$100(Lorg/chromium/content/app/ChildProcessService;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_2

    .line 142
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_6 .. :try_end_6} :catch_1

    .line 204
    .end local v12    # "linker":Lorg/chromium/base/library_loader/Linker;
    .end local v14    # "requestedSharedRelro":Z
    :catch_1
    move-exception v7

    .line 205
    .local v7, "e":Lorg/chromium/base/library_loader/ProcessInitException;
    const-string v0, "ChildProcessService"

    const-string v1, "%s startup failed: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "ChildProcessMain"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v7, v2, v3

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 142
    .end local v7    # "e":Lorg/chromium/base/library_loader/ProcessInitException;
    .restart local v12    # "linker":Lorg/chromium/base/library_loader/Linker;
    .restart local v14    # "requestedSharedRelro":Z
    :cond_2
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 143
    :try_start_8
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$400(Lorg/chromium/content/app/ChildProcessService;)Lorg/chromium/base/library_loader/Linker;

    move-result-object v12

    .line 144
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$500(Lorg/chromium/content/app/ChildProcessService;)Lorg/chromium/content/app/ChromiumLinkerParams;

    move-result-object v0

    iget-boolean v0, v0, Lorg/chromium/content/app/ChromiumLinkerParams;->mWaitForSharedRelro:Z

    if-eqz v0, :cond_7

    .line 145
    const/4 v14, 0x1

    .line 146
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$500(Lorg/chromium/content/app/ChildProcessService;)Lorg/chromium/content/app/ChromiumLinkerParams;

    move-result-object v0

    iget-wide v0, v0, Lorg/chromium/content/app/ChromiumLinkerParams;->mBaseLoadAddress:J

    invoke-virtual {v12, v0, v1}, Lorg/chromium/base/library_loader/Linker;->initServiceProcess(J)V

    .line 151
    :cond_3
    :goto_3
    const/4 v10, 0x0

    .line 152
    .local v10, "isLoaded":Z
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string v1, "renderer-wait-for-java-debugger"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 154
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_8 .. :try_end_8} :catch_1

    .line 157
    :cond_4
    const/4 v13, 0x0

    .line 159
    .local v13, "loadAtFixedAddressFailed":Z
    :try_start_9
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$600(Lorg/chromium/content/app/ChildProcessService;)I

    move-result v0

    invoke-static {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->get(I)Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-virtual {v1}, Lorg/chromium/content/app/ChildProcessService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/base/library_loader/LibraryLoader;->loadNow(Landroid/content/Context;)V
    :try_end_9
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0

    .line 160
    const/4 v10, 0x1

    .line 170
    :goto_4
    if-nez v10, :cond_5

    if-eqz v14, :cond_5

    .line 171
    :try_start_a
    invoke-virtual {v12}, Lorg/chromium/base/library_loader/Linker;->disableSharedRelros()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_a .. :try_end_a} :catch_1

    .line 173
    :try_start_b
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$600(Lorg/chromium/content/app/ChildProcessService;)I

    move-result v0

    invoke-static {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->get(I)Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-virtual {v1}, Lorg/chromium/content/app/ChildProcessService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/base/library_loader/LibraryLoader;->loadNow(Landroid/content/Context;)V
    :try_end_b
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0

    .line 174
    const/4 v10, 0x1

    .line 179
    :cond_5
    :goto_5
    if-nez v10, :cond_6

    .line 180
    const/4 v0, -0x1

    :try_start_c
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 182
    :cond_6
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$600(Lorg/chromium/content/app/ChildProcessService;)I

    move-result v0

    invoke-static {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->get(I)Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object v0

    invoke-virtual {v0, v14, v13}, Lorg/chromium/base/library_loader/LibraryLoader;->registerRendererProcessHistogram(ZZ)V

    .line 185
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$600(Lorg/chromium/content/app/ChildProcessService;)I

    move-result v0

    invoke-static {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->get(I)Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->initialize()V

    .line 186
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$100(Lorg/chromium/content/app/ChildProcessService;)Ljava/lang/Thread;

    move-result-object v1

    monitor-enter v1
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_c .. :try_end_c} :catch_1

    .line 187
    :try_start_d
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/chromium/content/app/ChildProcessService;->access$702(Lorg/chromium/content/app/ChildProcessService;Z)Z

    .line 188
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$100(Lorg/chromium/content/app/ChildProcessService;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 189
    :goto_6
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$800(Lorg/chromium/content/app/ChildProcessService;)[Lorg/chromium/content/browser/FileDescriptorInfo;

    move-result-object v0

    if-nez v0, :cond_9

    .line 190
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$100(Lorg/chromium/content/app/ChildProcessService;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_6

    .line 192
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw v0

    .line 148
    .end local v10    # "isLoaded":Z
    .end local v13    # "loadAtFixedAddressFailed":Z
    :cond_7
    invoke-virtual {v12}, Lorg/chromium/base/library_loader/Linker;->disableSharedRelros()V

    goto/16 :goto_3

    .line 161
    .restart local v10    # "isLoaded":Z
    .restart local v13    # "loadAtFixedAddressFailed":Z
    :catch_2
    move-exception v7

    .line 162
    .restart local v7    # "e":Lorg/chromium/base/library_loader/ProcessInitException;
    if-eqz v14, :cond_8

    .line 163
    const-string v0, "ChildProcessService"

    const-string v1, "Failed to load native library with shared RELRO, retrying without"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    const/4 v13, 0x1

    goto :goto_4

    .line 167
    :cond_8
    const-string v0, "ChildProcessService"

    const-string v1, "Failed to load native library"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 175
    .end local v7    # "e":Lorg/chromium/base/library_loader/ProcessInitException;
    :catch_3
    move-exception v7

    .line 176
    .restart local v7    # "e":Lorg/chromium/base/library_loader/ProcessInitException;
    const-string v0, "ChildProcessService"

    const-string v1, "Failed to load native library on retry"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_5

    .line 192
    .end local v7    # "e":Lorg/chromium/base/library_loader/ProcessInitException;
    :cond_9
    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 193
    :try_start_10
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$800(Lorg/chromium/content/app/ChildProcessService;)[Lorg/chromium/content/browser/FileDescriptorInfo;

    move-result-object v6

    .local v6, "arr$":[Lorg/chromium/content/browser/FileDescriptorInfo;
    array-length v11, v6

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_7
    if-ge v9, v11, :cond_a

    aget-object v8, v6, v9

    .line 194
    .local v8, "fdInfo":Lorg/chromium/content/browser/FileDescriptorInfo;
    iget v0, v8, Lorg/chromium/content/browser/FileDescriptorInfo;->mId:I

    iget-object v1, v8, Lorg/chromium/content/browser/FileDescriptorInfo;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v1

    iget-wide v2, v8, Lorg/chromium/content/browser/FileDescriptorInfo;->mOffset:J

    iget-wide v4, v8, Lorg/chromium/content/browser/FileDescriptorInfo;->mSize:J

    invoke-static/range {v0 .. v5}, Lorg/chromium/content/app/ChildProcessService;->access$900(IIJJ)V

    .line 193
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 197
    .end local v8    # "fdInfo":Lorg/chromium/content/browser/FileDescriptorInfo;
    :cond_a
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    iget-object v1, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v1}, Lorg/chromium/content/app/ChildProcessService;->access$1000(Lorg/chromium/content/app/ChildProcessService;)I

    move-result v1

    iget-object v2, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v2}, Lorg/chromium/content/app/ChildProcessService;->access$1100(Lorg/chromium/content/app/ChildProcessService;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/chromium/content/app/ChildProcessService;->access$1200(Lorg/chromium/content/app/ChildProcessService;IJ)V

    .line 198
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$1300(Lorg/chromium/content/app/ChildProcessService;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-static {}, Lorg/chromium/content/app/ContentMain;->start()I

    .line 200
    invoke-static {}, Lorg/chromium/content/app/ChildProcessService;->access$1400()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_10 .. :try_end_10} :catch_1

    goto/16 :goto_1
.end method
