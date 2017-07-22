.class Lorg/xwalk/core/XWalkDecompressor;
.super Ljava/lang/Object;
.source "XWalkDecompressor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/XWalkDecompressor$DecompressResourceTask;
    }
.end annotation


# static fields
.field private static final LZMA_OUTSIZE:I = 0x8

.field private static final LZMA_PROP_SIZE:I = 0x5

.field private static final MANDATORY_LIBRARIES:[Ljava/lang/String;

.field private static final MANDATORY_RESOURCES:[Ljava/lang/String;

.field private static final STREAM_BUFFER_SIZE:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "XWalkLib"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "libxwalkcore.so"

    aput-object v1, v0, v2

    sput-object v0, Lorg/xwalk/core/XWalkDecompressor;->MANDATORY_LIBRARIES:[Ljava/lang/String;

    .line 37
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "libxwalkcore.so"

    aput-object v1, v0, v2

    const-string v1, "classes.dex"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "icudtl.dat"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "xwalk.pak"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "xwalk_100_percent.pak"

    aput-object v2, v0, v1

    sput-object v0, Lorg/xwalk/core/XWalkDecompressor;->MANDATORY_RESOURCES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    return-void
.end method

.method static synthetic access$000(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-static {p0, p1}, Lorg/xwalk/core/XWalkDecompressor;->extractLzmaToFile(Ljava/io/InputStream;Ljava/io/File;)V

    return-void
.end method

.method public static decompressLibrary(Landroid/content/Context;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 67
    const-string v11, "xwalkcore"

    invoke-virtual {p0, v11, v10}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    .line 69
    .local v6, "libDir":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 71
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v11

    if-nez v11, :cond_1

    .line 88
    :goto_0
    return v10

    .line 73
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 74
    .local v8, "start":J
    sget-object v0, Lorg/xwalk/core/XWalkDecompressor;->MANDATORY_LIBRARIES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v7, v0, v3

    .line 76
    .local v7, "library":Ljava/lang/String;
    :try_start_0
    const-string v11, "XWalkLib"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Decompressing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {p0, v7}, Lorg/xwalk/core/XWalkDecompressor;->openRawResource(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 78
    .local v4, "input":Ljava/io/InputStream;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v11}, Lorg/xwalk/core/XWalkDecompressor;->extractLzmaToFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 79
    .end local v4    # "input":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v11, "XWalkLib"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " not found"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v1

    .line 83
    .local v1, "e":Ljava/io/IOException;
    const-string v11, "XWalkLib"

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 87
    .end local v1    # "e":Ljava/io/IOException;
    .end local v7    # "library":Ljava/lang/String;
    :cond_2
    const-string v10, "XWalkLib"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Time to decompress : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v10, 0x1

    goto :goto_0
.end method

.method public static decompressResource(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 22
    .param p0, "libFile"    # Ljava/lang/String;
    .param p1, "destDir"    # Ljava/lang/String;

    .prologue
    .line 162
    const-string v18, "XWalkLib"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Decompress resource from Apk "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 165
    .local v12, "start":J
    new-instance v15, Ljava/util/ArrayList;

    sget-object v18, Lorg/xwalk/core/XWalkDecompressor;->MANDATORY_RESOURCES:[Ljava/lang/String;

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 167
    .local v15, "taskList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;>;"
    sget-object v18, Lorg/xwalk/core/XWalkDecompressor;->MANDATORY_RESOURCES:[Ljava/lang/String;

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v10

    .line 168
    .local v10, "pool":Ljava/util/concurrent/ExecutorService;
    const/16 v16, 0x0

    .line 169
    .local v16, "zipFile":Ljava/util/zip/ZipFile;
    const/4 v14, 0x1

    .line 172
    .local v14, "success":Z
    :try_start_0
    new-instance v17, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 174
    .end local v16    # "zipFile":Ljava/util/zip/ZipFile;
    .local v17, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_1
    sget-object v2, Lorg/xwalk/core/XWalkDecompressor;->MANDATORY_RESOURCES:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_1

    aget-object v11, v2, v8

    .line 175
    .local v11, "resource":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "assets"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".lzma"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    .line 176
    .local v5, "entry":Ljava/util/zip/ZipEntry;
    if-nez v5, :cond_0

    .line 177
    const-string v18, "XWalkLib"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " not found"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 178
    const/16 v18, 0x0

    .line 201
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4

    :goto_1
    move-object/from16 v16, v17

    .line 206
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v11    # "resource":Ljava/lang/String;
    .end local v17    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v16    # "zipFile":Ljava/util/zip/ZipFile;
    :goto_2
    return v18

    .line 181
    .end local v16    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v5    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v8    # "i$":I
    .restart local v9    # "len$":I
    .restart local v11    # "resource":Ljava/lang/String;
    .restart local v17    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_0
    :try_start_3
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .local v3, "destFile":Ljava/io/File;
    new-instance v18, Lorg/xwalk/core/XWalkDecompressor$DecompressResourceTask;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v5, v3}, Lorg/xwalk/core/XWalkDecompressor$DecompressResourceTask;-><init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;)V

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 174
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 186
    .end local v3    # "destFile":Ljava/io/File;
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    .end local v11    # "resource":Ljava/lang/String;
    :cond_1
    :try_start_4
    invoke-interface {v10, v15}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v7

    .line 187
    .local v7, "futureList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/Future;

    .line 188
    .local v6, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    invoke-interface {v6}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v18

    and-int v14, v14, v18

    .line 189
    goto :goto_3

    .line 194
    .end local v6    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    :cond_2
    :try_start_5
    invoke-interface {v10}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 201
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_a

    .line 205
    :goto_4
    const-string v18, "XWalkLib"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Time to decompress : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v12

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ms"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v17

    .end local v17    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v16    # "zipFile":Ljava/util/zip/ZipFile;
    move/from16 v18, v14

    .line 206
    goto :goto_2

    .line 190
    .end local v7    # "futureList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v16    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v17    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v18

    move-object/from16 v4, v18

    .line 191
    .local v4, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_7
    const-string v18, "XWalkLib"

    const-string v19, "Failed to execute decompression"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 192
    const/16 v18, 0x0

    .line 194
    :try_start_8
    invoke-interface {v10}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 201
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_8

    :goto_6
    move-object/from16 v16, v17

    .line 203
    .end local v17    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v16    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 194
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v16    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v17    # "zipFile":Ljava/util/zip/ZipFile;
    :catchall_0
    move-exception v18

    :try_start_a
    invoke-interface {v10}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw v18
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 196
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v9    # "len$":I
    :catch_1
    move-exception v4

    move-object/from16 v16, v17

    .line 197
    .end local v17    # "zipFile":Ljava/util/zip/ZipFile;
    .local v4, "e":Ljava/io/IOException;
    .restart local v16    # "zipFile":Ljava/util/zip/ZipFile;
    :goto_7
    :try_start_b
    const-string v18, "XWalkLib"

    invoke-virtual {v4}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 198
    const/16 v18, 0x0

    .line 201
    :try_start_c
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_b

    goto/16 :goto_2

    .line 202
    :catch_2
    move-exception v19

    goto/16 :goto_2

    .line 200
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v18

    .line 201
    :goto_8
    :try_start_d
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_d

    .line 203
    :goto_9
    throw v18

    .line 202
    .end local v16    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v5    # "entry":Ljava/util/zip/ZipEntry;
    .local v8, "i$":I
    .restart local v9    # "len$":I
    .restart local v11    # "resource":Ljava/lang/String;
    .restart local v17    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_3
    move-exception v19

    goto/16 :goto_1

    :catch_4
    move-exception v19

    goto/16 :goto_1

    .line 190
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    .end local v8    # "i$":I
    .end local v11    # "resource":Ljava/lang/String;
    :catch_5
    move-exception v18

    move-object/from16 v4, v18

    goto :goto_5

    :catch_6
    move-exception v18

    move-object/from16 v4, v18

    goto :goto_5

    .line 202
    .local v4, "e":Ljava/lang/Exception;
    :catch_7
    move-exception v19

    goto :goto_6

    :catch_8
    move-exception v19

    goto :goto_6

    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v7    # "futureList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;>;"
    .local v8, "i$":Ljava/util/Iterator;
    :catch_9
    move-exception v18

    goto :goto_4

    :catch_a
    move-exception v18

    goto :goto_4

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v7    # "futureList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "len$":I
    .end local v17    # "zipFile":Ljava/util/zip/ZipFile;
    .local v4, "e":Ljava/io/IOException;
    .restart local v16    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_b
    move-exception v19

    goto/16 :goto_2

    .end local v4    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v19

    goto :goto_9

    :catch_d
    move-exception v19

    goto :goto_9

    .line 200
    .end local v16    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v17    # "zipFile":Ljava/util/zip/ZipFile;
    :catchall_2
    move-exception v18

    move-object/from16 v16, v17

    .end local v17    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v16    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_8

    .line 196
    :catch_e
    move-exception v4

    goto :goto_7
.end method

.method private static extractLzmaToFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 14
    .param p0, "srcStream"    # Ljava/io/InputStream;
    .param p1, "destFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x5

    .line 250
    const/4 v3, 0x0

    .line 251
    .local v3, "input":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 254
    .local v5, "output":Ljava/io/OutputStream;
    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    .end local v3    # "input":Ljava/io/InputStream;
    .local v4, "input":Ljava/io/InputStream;
    :try_start_1
    new-instance v8, Ljava/io/BufferedOutputStream;

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 257
    .end local v5    # "output":Ljava/io/OutputStream;
    .local v8, "output":Ljava/io/OutputStream;
    const/4 v11, 0x5

    :try_start_2
    new-array v9, v11, [B

    .line 258
    .local v9, "properties":[B
    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-virtual {v4, v9, v11, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    if-eq v11, v13, :cond_1

    .line 259
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Input lzma file is too short"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 279
    .end local v9    # "properties":[B
    :catch_0
    move-exception v1

    move-object v5, v8

    .end local v8    # "output":Ljava/io/OutputStream;
    .restart local v5    # "output":Ljava/io/OutputStream;
    move-object v3, v4

    .line 280
    .end local v4    # "input":Ljava/io/InputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v3    # "input":Ljava/io/InputStream;
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 281
    :cond_0
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 283
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 284
    :goto_1
    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_8

    .line 288
    :goto_2
    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_a

    .line 292
    :goto_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_c

    .line 294
    :goto_4
    throw v11

    .line 262
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v5    # "output":Ljava/io/OutputStream;
    .restart local v4    # "input":Ljava/io/InputStream;
    .restart local v8    # "output":Ljava/io/OutputStream;
    .restart local v9    # "properties":[B
    :cond_1
    :try_start_7
    new-instance v0, LSevenZip/Compression/LZMA/Decoder;

    invoke-direct {v0}, LSevenZip/Compression/LZMA/Decoder;-><init>()V

    .line 263
    .local v0, "decoder":LSevenZip/Compression/LZMA/Decoder;
    invoke-virtual {v0, v9}, LSevenZip/Compression/LZMA/Decoder;->SetDecoderProperties([B)Z

    move-result v11

    if-nez v11, :cond_2

    .line 264
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Incorrect lzma properties"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 283
    .end local v0    # "decoder":LSevenZip/Compression/LZMA/Decoder;
    .end local v9    # "properties":[B
    :catchall_1
    move-exception v11

    move-object v5, v8

    .end local v8    # "output":Ljava/io/OutputStream;
    .restart local v5    # "output":Ljava/io/OutputStream;
    move-object v3, v4

    .end local v4    # "input":Ljava/io/InputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    goto :goto_1

    .line 267
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v5    # "output":Ljava/io/OutputStream;
    .restart local v0    # "decoder":LSevenZip/Compression/LZMA/Decoder;
    .restart local v4    # "input":Ljava/io/InputStream;
    .restart local v8    # "output":Ljava/io/OutputStream;
    .restart local v9    # "properties":[B
    :cond_2
    const-wide/16 v6, 0x0

    .line 268
    .local v6, "outSize":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    const/16 v11, 0x8

    if-ge v2, v11, :cond_4

    .line 269
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v10

    .line 270
    .local v10, "v":I
    if-gez v10, :cond_3

    .line 271
    const-string v11, "XWalkLib"

    const-string v12, "Can\'t read stream size"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_3
    int-to-long v12, v10

    mul-int/lit8 v11, v2, 0x8

    shl-long/2addr v12, v11

    or-long/2addr v6, v12

    .line 268
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 276
    .end local v10    # "v":I
    :cond_4
    invoke-virtual {v0, v4, v8, v6, v7}, LSevenZip/Compression/LZMA/Decoder;->Code(Ljava/io/InputStream;Ljava/io/OutputStream;J)Z

    move-result v11

    if-nez v11, :cond_5

    .line 277
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Error in data stream"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 284
    :cond_5
    :try_start_8
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_2

    .line 288
    :goto_6
    :try_start_9
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_4

    .line 292
    :goto_7
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_6

    .line 296
    :goto_8
    return-void

    .line 285
    :catch_1
    move-exception v11

    goto :goto_6

    :catch_2
    move-exception v11

    goto :goto_6

    .line 289
    :catch_3
    move-exception v11

    goto :goto_7

    :catch_4
    move-exception v11

    goto :goto_7

    .line 293
    :catch_5
    move-exception v11

    goto :goto_8

    :catch_6
    move-exception v11

    goto :goto_8

    .line 285
    .end local v0    # "decoder":LSevenZip/Compression/LZMA/Decoder;
    .end local v2    # "i":I
    .end local v4    # "input":Ljava/io/InputStream;
    .end local v6    # "outSize":J
    .end local v8    # "output":Ljava/io/OutputStream;
    .end local v9    # "properties":[B
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v5    # "output":Ljava/io/OutputStream;
    :catch_7
    move-exception v12

    goto :goto_2

    :catch_8
    move-exception v12

    goto :goto_2

    .line 289
    :catch_9
    move-exception v12

    goto :goto_3

    :catch_a
    move-exception v12

    goto :goto_3

    .line 293
    :catch_b
    move-exception v12

    goto :goto_4

    :catch_c
    move-exception v12

    goto :goto_4

    .line 283
    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "input":Ljava/io/InputStream;
    :catchall_2
    move-exception v11

    move-object v3, v4

    .end local v4    # "input":Ljava/io/InputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    goto :goto_1

    .line 279
    :catch_d
    move-exception v1

    goto :goto_0

    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "input":Ljava/io/InputStream;
    :catch_e
    move-exception v1

    move-object v3, v4

    .end local v4    # "input":Ljava/io/InputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public static extractResource(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 18
    .param p0, "libFile"    # Ljava/lang/String;
    .param p1, "destDir"    # Ljava/lang/String;

    .prologue
    .line 112
    const-string v14, "XWalkLib"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Extract resource from Apk "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 115
    .local v10, "start":J
    const/4 v12, 0x0

    .line 117
    .local v12, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v13, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .local v13, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_1
    sget-object v3, Lorg/xwalk/core/XWalkDecompressor;->MANDATORY_RESOURCES:[Ljava/lang/String;

    .local v3, "arr$":[Ljava/lang/String;
    array-length v7, v3

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_6

    aget-object v9, v3, v6

    .line 120
    .local v9, "resource":Ljava/lang/String;
    const/4 v5, 0x0

    .line 121
    .local v5, "entry":Ljava/util/zip/ZipEntry;
    invoke-static {v9}, Lorg/xwalk/core/XWalkDecompressor;->isNativeLibrary(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 122
    invoke-static {}, Lorg/xwalk/core/XWalkEnvironment;->getDeviceAbi()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "abi":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "lib"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 124
    .local v8, "path":Ljava/lang/String;
    invoke-virtual {v13, v8}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    .line 125
    if-nez v5, :cond_1

    invoke-static {}, Lorg/xwalk/core/XWalkEnvironment;->is64bitDevice()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 126
    const-string v14, "arm64-v8a"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 127
    const-string v2, "armeabi-v7a"

    .line 131
    :cond_0
    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "lib"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 132
    invoke-virtual {v13, v8}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    .line 141
    .end local v2    # "abi":Ljava/lang/String;
    .end local v8    # "path":Ljava/lang/String;
    :cond_1
    :goto_2
    if-nez v5, :cond_5

    .line 142
    const-string v14, "XWalkLib"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " not found"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 143
    const/4 v14, 0x0

    .line 153
    :try_start_2
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    move-object v12, v13

    .line 158
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v9    # "resource":Ljava/lang/String;
    .end local v13    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v12    # "zipFile":Ljava/util/zip/ZipFile;
    :goto_4
    return v14

    .line 128
    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v2    # "abi":Ljava/lang/String;
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v5    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v9    # "resource":Ljava/lang/String;
    .restart local v13    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_2
    :try_start_3
    const-string v14, "x86_64"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 129
    const-string v2, "x86"

    goto :goto_1

    .line 134
    .end local v2    # "abi":Ljava/lang/String;
    .end local v8    # "path":Ljava/lang/String;
    :cond_3
    invoke-static {v9}, Lorg/xwalk/core/XWalkDecompressor;->isAsset(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 135
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "assets"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 136
    .restart local v8    # "path":Ljava/lang/String;
    invoke-virtual {v13, v8}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    .line 137
    goto :goto_2

    .line 138
    .end local v8    # "path":Ljava/lang/String;
    :cond_4
    invoke-virtual {v13, v9}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    goto :goto_2

    .line 145
    :cond_5
    const-string v14, "XWalkLib"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Extracting "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {v13, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v14

    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v15, v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v14, v15}, Lorg/xwalk/core/XWalkDecompressor;->extractStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 119
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 153
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    .end local v9    # "resource":Ljava/lang/String;
    :cond_6
    :try_start_4
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_5

    .line 157
    :goto_5
    const-string v14, "XWalkLib"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Time to extract : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v10

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ms"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v14, 0x1

    move-object v12, v13

    .end local v13    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v12    # "zipFile":Ljava/util/zip/ZipFile;
    goto/16 :goto_4

    .line 148
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :catch_0
    move-exception v4

    .line 149
    .local v4, "e":Ljava/io/IOException;
    :goto_6
    :try_start_5
    const-string v14, "XWalkLib"

    invoke-virtual {v4}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 150
    const/4 v14, 0x0

    .line 153
    :try_start_6
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_4

    .line 154
    :catch_1
    move-exception v15

    goto/16 :goto_4

    .line 152
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    .line 153
    :goto_7
    :try_start_7
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_8

    .line 155
    :goto_8
    throw v14

    .line 154
    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v5    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    .restart local v9    # "resource":Ljava/lang/String;
    .restart local v13    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v15

    goto/16 :goto_3

    :catch_3
    move-exception v15

    goto/16 :goto_3

    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    .end local v9    # "resource":Ljava/lang/String;
    :catch_4
    move-exception v14

    goto :goto_5

    :catch_5
    move-exception v14

    goto :goto_5

    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v13    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v4    # "e":Ljava/io/IOException;
    .restart local v12    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_6
    move-exception v15

    goto/16 :goto_4

    .end local v4    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v15

    goto :goto_8

    :catch_8
    move-exception v15

    goto :goto_8

    .line 152
    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v13    # "zipFile":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v14

    move-object v12, v13

    .end local v13    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v12    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_7

    .line 148
    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v13    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_9
    move-exception v4

    move-object v12, v13

    .end local v13    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v12    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_6
.end method

.method private static extractStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 7
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    const/4 v3, 0x0

    .line 304
    .local v3, "output":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    .line 305
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    .end local v3    # "output":Ljava/io/OutputStream;
    .local v4, "output":Ljava/io/OutputStream;
    const/16 v5, 0x1000

    :try_start_1
    new-array v0, v5, [B

    .line 308
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .local v2, "len":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_1

    .line 309
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 311
    .end local v0    # "buffer":[B
    .end local v2    # "len":I
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 312
    .end local v4    # "output":Ljava/io/OutputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v3    # "output":Ljava/io/OutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 313
    :cond_0
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 315
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 316
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_8

    .line 320
    :goto_3
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_a

    .line 324
    :goto_4
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_c

    .line 326
    :goto_5
    throw v5

    .line 316
    .end local v3    # "output":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "len":I
    .restart local v4    # "output":Ljava/io/OutputStream;
    :cond_1
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2

    .line 320
    :goto_6
    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_4

    .line 324
    :goto_7
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_6

    .line 328
    :goto_8
    return-void

    .line 317
    :catch_1
    move-exception v5

    goto :goto_6

    :catch_2
    move-exception v5

    goto :goto_6

    .line 321
    :catch_3
    move-exception v5

    goto :goto_7

    :catch_4
    move-exception v5

    goto :goto_7

    .line 325
    :catch_5
    move-exception v5

    goto :goto_8

    :catch_6
    move-exception v5

    goto :goto_8

    .line 317
    .end local v0    # "buffer":[B
    .end local v2    # "len":I
    .end local v4    # "output":Ljava/io/OutputStream;
    .restart local v3    # "output":Ljava/io/OutputStream;
    :catch_7
    move-exception v6

    goto :goto_3

    :catch_8
    move-exception v6

    goto :goto_3

    .line 321
    :catch_9
    move-exception v6

    goto :goto_4

    :catch_a
    move-exception v6

    goto :goto_4

    .line 325
    :catch_b
    move-exception v6

    goto :goto_5

    :catch_c
    move-exception v6

    goto :goto_5

    .line 315
    .end local v3    # "output":Ljava/io/OutputStream;
    .restart local v4    # "output":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "output":Ljava/io/OutputStream;
    .restart local v3    # "output":Ljava/io/OutputStream;
    goto :goto_2

    .line 311
    :catch_d
    move-exception v1

    goto :goto_1
.end method

.method private static isAsset(Ljava/lang/String;)Z
    .locals 1
    .param p0, "resource"    # Ljava/lang/String;

    .prologue
    .line 238
    const-string v0, ".dat"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".pak"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLibraryCompressed(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    sget-object v0, Lorg/xwalk/core/XWalkDecompressor;->MANDATORY_LIBRARIES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 54
    .local v5, "library":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, v5}, Lorg/xwalk/core/XWalkDecompressor;->openRawResource(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 56
    .local v3, "input":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 52
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    .end local v3    # "input":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v6, 0x0

    .line 63
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v5    # "library":Ljava/lang/String;
    :goto_2
    return v6

    :cond_0
    const/4 v6, 0x1

    goto :goto_2

    .line 57
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v5    # "library":Ljava/lang/String;
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method private static isNativeLibrary(Ljava/lang/String;)Z
    .locals 1
    .param p0, "resource"    # Ljava/lang/String;

    .prologue
    .line 234
    const-string v0, ".so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isResourceCompressed(Ljava/lang/String;)Z
    .locals 11
    .param p0, "libFile"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 92
    const/4 v6, 0x0

    .line 94
    .local v6, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v7, Ljava/util/zip/ZipFile;

    invoke-direct {v7, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .end local v6    # "zipFile":Ljava/util/zip/ZipFile;
    .local v7, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_1
    sget-object v0, Lorg/xwalk/core/XWalkDecompressor;->MANDATORY_RESOURCES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 97
    .local v5, "resource":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "assets"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".lzma"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 98
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    if-nez v2, :cond_0

    .line 104
    :try_start_2
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_1
    move-object v6, v7

    .line 108
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "resource":Ljava/lang/String;
    .end local v7    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v6    # "zipFile":Ljava/util/zip/ZipFile;
    :goto_2
    return v8

    .line 96
    .end local v6    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "resource":Ljava/lang/String;
    .restart local v7    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "resource":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5

    .line 108
    :goto_3
    const/4 v8, 0x1

    move-object v6, v7

    .end local v7    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v6    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 100
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/io/IOException;
    :goto_4
    :try_start_4
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_2

    .line 105
    :catch_1
    move-exception v9

    goto :goto_2

    .line 103
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 104
    :goto_5
    :try_start_5
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_8

    .line 106
    :goto_6
    throw v8

    .line 105
    .end local v6    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "resource":Ljava/lang/String;
    .restart local v7    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v9

    goto :goto_1

    :catch_3
    move-exception v9

    goto :goto_1

    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "resource":Ljava/lang/String;
    :catch_4
    move-exception v8

    goto :goto_3

    :catch_5
    move-exception v8

    goto :goto_3

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v7    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v1    # "e":Ljava/io/IOException;
    .restart local v6    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_6
    move-exception v9

    goto :goto_2

    .end local v1    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v9

    goto :goto_6

    :catch_8
    move-exception v9

    goto :goto_6

    .line 103
    .end local v6    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v7    # "zipFile":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v6    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_5

    .line 100
    .end local v6    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v7    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_9
    move-exception v1

    move-object v6, v7

    .end local v7    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v6    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_4
.end method

.method private static openRawResource(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "library"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 244
    .local v2, "res":Landroid/content/res/Resources;
    const-string v3, "\\."

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v1, v3, v4

    .line 245
    .local v1, "libraryName":Ljava/lang/String;
    const-string v3, "raw"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 246
    .local v0, "id":I
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    return-object v3
.end method
