.class Lorg/xwalk/core/XWalkLibraryLoader$HttpDownloadTask;
.super Landroid/os/AsyncTask;
.source "XWalkLibraryLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xwalk/core/XWalkLibraryLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HttpDownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final DOWNLOAD_FAILED:I = -0x1

.field private static final DOWNLOAD_SUCCESS:I = 0x0

.field private static final UPDATE_INTERVAL_MS:I = 0x1f4

.field private static final XWALK_DOWNLOAD_DIR:Ljava/lang/String; = "xwalk_download"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDownloadUrl:Ljava/lang/String;

.field private mDownloadedFile:Ljava/io/File;

.field private mListener:Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;

.field private mProgressUpdateTime:J


# direct methods
.method constructor <init>(Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "listener"    # Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 523
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 524
    iput-object p1, p0, Lorg/xwalk/core/XWalkLibraryLoader$HttpDownloadTask;->mListener:Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;

    .line 525
    iput-object p2, p0, Lorg/xwalk/core/XWalkLibraryLoader$HttpDownloadTask;->mContext:Landroid/content/Context;

    .line 526
    iput-object p3, p0, Lorg/xwalk/core/XWalkLibraryLoader$HttpDownloadTask;->mDownloadUrl:Ljava/lang/String;

    .line 527
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 20
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 551
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/xwalk/core/XWalkLibraryLoader$HttpDownloadTask;->mDownloadUrl:Ljava/lang/String;

    if-nez v15, :cond_1

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 599
    :cond_0
    :goto_0
    return-object v15

    .line 552
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/xwalk/core/XWalkLibraryLoader$HttpDownloadTask;->mDownloadedFile:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/xwalk/core/XWalkLibraryLoader$HttpDownloadTask;->mDownloadedFile:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 554
    :cond_2
    const/4 v7, 0x0

    .line 555
    .local v7, "input":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 556
    .local v8, "output":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 558
    .local v2, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v14, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/xwalk/core/XWalkLibraryLoader$HttpDownloadTask;->mDownloadUrl:Ljava/lang/String;

    invoke-direct {v14, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 559
    .local v14, "url":Ljava/net/URL;
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 560
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 562
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v15

    const/16 v16, 0xc8

    move/from16 v0, v16

    if-eq v15, v0, :cond_5

    .line 563
    const-string v15, "XWalkLib"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Server returned HTTP "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v15

    .line 592
    if-eqz v8, :cond_3

    :try_start_1
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 593
    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 597
    :cond_4
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 568
    :cond_5
    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    .line 570
    .local v6, "fileLength":I
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 571
    new-instance v9, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/xwalk/core/XWalkLibraryLoader$HttpDownloadTask;->mDownloadedFile:Ljava/io/File;

    invoke-direct {v9, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 573
    .end local v8    # "output":Ljava/io/OutputStream;
    .local v9, "output":Ljava/io/OutputStream;
    const/16 v15, 0x1000

    :try_start_3
    new-array v4, v15, [B

    .line 574
    .local v4, "data":[B
    const-wide/16 v12, 0x0

    .line 576
    .local v12, "total":J
    :cond_6
    :goto_2
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "count":I
    const/4 v15, -0x1

    if-eq v3, v15, :cond_c

    .line 577
    invoke-virtual/range {p0 .. p0}, Lorg/xwalk/core/XWalkLibraryLoader$HttpDownloadTask;->isCancelled()Z

    move-result v15

    if-eqz v15, :cond_9

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v15

    .line 592
    if-eqz v9, :cond_7

    :try_start_4
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 593
    :cond_7
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 597
    :cond_8
    :goto_3
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 578
    :cond_9
    int-to-long v0, v3

    move-wide/from16 v16, v0

    add-long v12, v12, v16

    .line 579
    const/4 v15, 0x0

    :try_start_5
    invoke-virtual {v9, v4, v15, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 581
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 582
    .local v10, "time":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/xwalk/core/XWalkLibraryLoader$HttpDownloadTask;->mProgressUpdateTime:J

    move-wide/from16 v16, v0

    sub-long v16, v10, v16

    const-wide/16 v18, 0x1f4

    cmp-long v15, v16, v18

    if-lez v15, :cond_6

    .line 583
    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/xwalk/core/XWalkLibraryLoader$HttpDownloadTask;->mProgressUpdateTime:J

    .line 584
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Integer;

    const/16 v16, 0x0

    long-to-int v0, v12

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/xwalk/core/XWalkLibraryLoader$HttpDownloadTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 588
    .end local v3    # "count":I
    .end local v4    # "data":[B
    .end local v10    # "time":J
    .end local v12    # "total":J
    :catch_0
    move-exception v5

    move-object v8, v9

    .line 589
    .end local v6    # "fileLength":I
    .end local v9    # "output":Ljava/io/OutputStream;
    .end local v14    # "url":Ljava/net/URL;
    .local v5, "e":Ljava/lang/Exception;
    .restart local v8    # "output":Ljava/io/OutputStream;
    :goto_4
    const/4 v15, -0x1

    :try_start_6
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v15

    .line 592
    if-eqz v8, :cond_a

    :try_start_7
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 593
    :cond_a
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 597
    :cond_b
    :goto_5
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 587
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v8    # "output":Ljava/io/OutputStream;
    .restart local v3    # "count":I
    .restart local v4    # "data":[B
    .restart local v6    # "fileLength":I
    .restart local v9    # "output":Ljava/io/OutputStream;
    .restart local v12    # "total":J
    .restart local v14    # "url":Ljava/net/URL;
    :cond_c
    :try_start_8
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 592
    if-eqz v9, :cond_d

    :try_start_9
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 593
    :cond_d
    if-eqz v7, :cond_e

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 597
    :cond_e
    :goto_6
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 599
    :cond_f
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto/16 :goto_0

    .line 591
    .end local v3    # "count":I
    .end local v4    # "data":[B
    .end local v6    # "fileLength":I
    .end local v9    # "output":Ljava/io/OutputStream;
    .end local v12    # "total":J
    .end local v14    # "url":Ljava/net/URL;
    .restart local v8    # "output":Ljava/io/OutputStream;
    :catchall_0
    move-exception v15

    .line 592
    :goto_7
    if-eqz v8, :cond_10

    :try_start_a
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 593
    :cond_10
    if-eqz v7, :cond_11

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 597
    :cond_11
    :goto_8
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_12
    throw v15

    .line 594
    :catch_1
    move-exception v16

    goto :goto_8

    .line 591
    .end local v8    # "output":Ljava/io/OutputStream;
    .restart local v6    # "fileLength":I
    .restart local v9    # "output":Ljava/io/OutputStream;
    .restart local v14    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v15

    move-object v8, v9

    .end local v9    # "output":Ljava/io/OutputStream;
    .restart local v8    # "output":Ljava/io/OutputStream;
    goto :goto_7

    .line 594
    .end local v6    # "fileLength":I
    .end local v14    # "url":Ljava/net/URL;
    .restart local v5    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v16

    goto :goto_5

    .line 588
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v5

    goto :goto_4

    .line 594
    .end local v8    # "output":Ljava/io/OutputStream;
    .restart local v3    # "count":I
    .restart local v4    # "data":[B
    .restart local v6    # "fileLength":I
    .restart local v9    # "output":Ljava/io/OutputStream;
    .restart local v12    # "total":J
    .restart local v14    # "url":Ljava/net/URL;
    :catch_4
    move-exception v15

    goto :goto_6

    :catch_5
    move-exception v16

    goto/16 :goto_3

    .end local v3    # "count":I
    .end local v4    # "data":[B
    .end local v6    # "fileLength":I
    .end local v9    # "output":Ljava/io/OutputStream;
    .end local v12    # "total":J
    .restart local v8    # "output":Ljava/io/OutputStream;
    :catch_6
    move-exception v16

    goto/16 :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 510
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/xwalk/core/XWalkLibraryLoader$HttpDownloadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 612
    const-string v0, "XWalkLib"

    const-string v1, "HttpDownloadTask cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/xwalk/core/XWalkLibraryLoader;->access$002(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 614
    iget-object v0, p0, Lorg/xwalk/core/XWalkLibraryLoader$HttpDownloadTask;->mListener:Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;

    invoke-interface {v0}, Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;->onDownloadCancelled()V

    .line 615
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 510
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/xwalk/core/XWalkLibraryLoader$HttpDownloadTask;->onCancelled(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 619
    const-string v0, "XWalkLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HttpDownloadTask finished, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/xwalk/core/XWalkLibraryLoader;->access$002(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 622
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 623
    iget-object v0, p0, Lorg/xwalk/core/XWalkLibraryLoader$HttpDownloadTask;->mListener:Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;

    iget-object v1, p0, Lorg/xwalk/core/XWalkLibraryLoader$HttpDownloadTask;->mDownloadedFile:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;->onDownloadCompleted(Landroid/net/Uri;)V

    .line 628
    :goto_0
    return-void

    .line 626
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/XWalkLibraryLoader$HttpDownloadTask;->mListener:Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;->onDownloadFailed(II)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 510
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/xwalk/core/XWalkLibraryLoader$HttpDownloadTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 7

    .prologue
    .line 531
    const-string v3, "XWalkLib"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HttpDownloadTask started, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/xwalk/core/XWalkLibraryLoader$HttpDownloadTask;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-static {p0}, Lorg/xwalk/core/XWalkLibraryLoader;->access$002(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 534
    const-string v2, "xwalk_download.tmp"

    .line 536
    .local v2, "savedFile":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lorg/xwalk/core/XWalkLibraryLoader$HttpDownloadTask;->mDownloadUrl:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 537
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    move-object v2, v1

    .line 543
    :cond_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lorg/xwalk/core/XWalkLibraryLoader$HttpDownloadTask;->mContext:Landroid/content/Context;

    const-string v5, "xwalk_download"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lorg/xwalk/core/XWalkLibraryLoader$HttpDownloadTask;->mDownloadedFile:Ljava/io/File;

    .line 546
    iget-object v3, p0, Lorg/xwalk/core/XWalkLibraryLoader$HttpDownloadTask;->mListener:Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;

    invoke-interface {v3}, Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;->onDownloadStarted()V

    .line 547
    .end local v1    # "name":Ljava/lang/String;
    :goto_0
    return-void

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v3, "XWalkLib"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid download URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/xwalk/core/XWalkLibraryLoader$HttpDownloadTask;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/xwalk/core/XWalkLibraryLoader$HttpDownloadTask;->mDownloadUrl:Ljava/lang/String;

    goto :goto_0

    .line 538
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 7
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 604
    const-string v1, "XWalkLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HttpDownloadTask updated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const/4 v0, 0x0

    .line 606
    .local v0, "percentage":I
    aget-object v1, p1, v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    aget-object v1, p1, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v2, v1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    aget-object v1, p1, v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v4, v1

    div-double/2addr v2, v4

    double-to-int v0, v2

    .line 607
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkLibraryLoader$HttpDownloadTask;->mListener:Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;

    invoke-interface {v1, v0}, Lorg/xwalk/core/XWalkLibraryLoader$DownloadListener;->onDownloadUpdated(I)V

    .line 608
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 510
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/xwalk/core/XWalkLibraryLoader$HttpDownloadTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
