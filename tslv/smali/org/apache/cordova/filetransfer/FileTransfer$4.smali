.class Lorg/apache/cordova/filetransfer/FileTransfer$4;
.super Ljava/lang/Object;
.source "FileTransfer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/filetransfer/FileTransfer;->download(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/filetransfer/FileTransfer;

.field final synthetic val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

.field final synthetic val$headers:Lorg/json/JSONObject;

.field final synthetic val$isLocalTransfer:Z

.field final synthetic val$objectId:Ljava/lang/String;

.field final synthetic val$resourceApi:Lorg/apache/cordova/CordovaResourceApi;

.field final synthetic val$source:Ljava/lang/String;

.field final synthetic val$sourceUri:Landroid/net/Uri;

.field final synthetic val$target:Ljava/lang/String;

.field final synthetic val$trustEveryone:Z

.field final synthetic val$useHttps:Z


# direct methods
.method constructor <init>(Lorg/apache/cordova/filetransfer/FileTransfer;Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;Ljava/lang/String;Lorg/apache/cordova/CordovaResourceApi;Landroid/net/Uri;ZZZLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/cordova/filetransfer/FileTransfer;

    .prologue
    .line 798
    iput-object p1, p0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->this$0:Lorg/apache/cordova/filetransfer/FileTransfer;

    iput-object p2, p0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    iput-object p3, p0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$target:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    iput-object p5, p0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$sourceUri:Landroid/net/Uri;

    iput-boolean p6, p0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$isLocalTransfer:Z

    iput-boolean p7, p0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$useHttps:Z

    iput-boolean p8, p0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$trustEveryone:Z

    iput-object p9, p0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$headers:Lorg/json/JSONObject;

    iput-object p10, p0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$source:Ljava/lang/String;

    iput-object p11, p0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$objectId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 37

    .prologue
    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->aborted:Z

    move/from16 v31, v0

    if-eqz v31, :cond_0

    .line 991
    :goto_0
    return-void

    .line 805
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$target:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    .line 806
    .local v29, "tmpTarget":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    move-object/from16 v31, v0

    .line 807
    invoke-virtual/range {v29 .. v29}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_4

    .line 806
    .end local v29    # "tmpTarget":Landroid/net/Uri;
    :goto_1
    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaResourceApi;->remapUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v28

    .line 808
    .local v28, "targetUri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 809
    .local v7, "connection":Ljava/net/HttpURLConnection;
    const/16 v18, 0x0

    .line 810
    .local v18, "oldHostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    const/16 v19, 0x0

    .line 811
    .local v19, "oldSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v11, 0x0

    .line 812
    .local v11, "file":Ljava/io/File;
    const/16 v26, 0x0

    .line 813
    .local v26, "result":Lorg/apache/cordova/PluginResult;
    const/16 v16, 0x0

    .line 814
    .local v16, "inputStream":Lorg/apache/cordova/filetransfer/FileTransfer$TrackingInputStream;
    const/4 v6, 0x0

    .line 816
    .local v6, "cached":Z
    const/16 v20, 0x0

    .line 818
    .local v20, "outputStream":Ljava/io/OutputStream;
    const/16 v25, 0x0

    .line 820
    .local v25, "readResult":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaResourceApi;->mapUriToFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v11

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iput-object v11, v0, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->targetFile:Ljava/io/File;

    .line 823
    const-string v31, "FileTransfer"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Download file:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$sourceUri:Landroid/net/Uri;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    new-instance v23, Lorg/apache/cordova/filetransfer/FileProgressResult;

    invoke-direct/range {v23 .. v23}, Lorg/apache/cordova/filetransfer/FileProgressResult;-><init>()V

    .line 827
    .local v23, "progress":Lorg/apache/cordova/filetransfer/FileProgressResult;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$isLocalTransfer:Z

    move/from16 v31, v0

    if-eqz v31, :cond_5

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$sourceUri:Landroid/net/Uri;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lorg/apache/cordova/CordovaResourceApi;->openForRead(Landroid/net/Uri;)Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;

    move-result-object v25

    .line 829
    move-object/from16 v0, v25

    iget-wide v0, v0, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->length:J

    move-wide/from16 v32, v0

    const-wide/16 v34, -0x1

    cmp-long v31, v32, v34

    if-eqz v31, :cond_1

    .line 830
    const/16 v31, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/apache/cordova/filetransfer/FileProgressResult;->setLengthComputable(Z)V

    .line 831
    move-object/from16 v0, v25

    iget-wide v0, v0, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->length:J

    move-wide/from16 v32, v0

    move-object/from16 v0, v23

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/filetransfer/FileProgressResult;->setTotal(J)V

    .line 833
    :cond_1
    new-instance v17, Lorg/apache/cordova/filetransfer/FileTransfer$SimpleTrackingInputStream;

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->inputStream:Ljava/io/InputStream;

    move-object/from16 v31, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/apache/cordova/filetransfer/FileTransfer$SimpleTrackingInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    .end local v16    # "inputStream":Lorg/apache/cordova/filetransfer/FileTransfer$TrackingInputStream;
    .local v17, "inputStream":Lorg/apache/cordova/filetransfer/FileTransfer$TrackingInputStream;
    move-object/from16 v16, v17

    .end local v17    # "inputStream":Lorg/apache/cordova/filetransfer/FileTransfer$TrackingInputStream;
    .restart local v16    # "inputStream":Lorg/apache/cordova/filetransfer/FileTransfer$TrackingInputStream;
    move-object/from16 v27, v26

    .line 886
    .end local v26    # "result":Lorg/apache/cordova/PluginResult;
    .local v27, "result":Lorg/apache/cordova/PluginResult;
    :goto_2
    if-nez v6, :cond_24

    .line 888
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v32, v0

    monitor-enter v32
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 889
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->aborted:Z

    move/from16 v31, v0

    if-eqz v31, :cond_f

    .line 890
    monitor-exit v32
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 908
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v32, v0

    monitor-enter v32
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_d

    .line 909
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v31, v0

    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    iput-object v0, v1, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->connection:Ljava/net/HttpURLConnection;

    .line 910
    monitor-exit v32
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 911
    :try_start_5
    invoke-static/range {v16 .. v16}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$400(Ljava/io/Closeable;)V

    .line 912
    invoke-static/range {v20 .. v20}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$400(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_d

    .line 969
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v32

    monitor-enter v32

    .line 970
    :try_start_6
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$objectId:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    monitor-exit v32
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 973
    if-eqz v7, :cond_2

    .line 975
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$trustEveryone:Z

    move/from16 v31, v0

    if-eqz v31, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$useHttps:Z

    move/from16 v31, v0

    if-eqz v31, :cond_2

    move-object v15, v7

    .line 976
    check-cast v15, Ljavax/net/ssl/HttpsURLConnection;

    .line 977
    .local v15, "https":Ljavax/net/ssl/HttpsURLConnection;
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 978
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 982
    .end local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :cond_2
    if-nez v27, :cond_23

    .line 983
    new-instance v26, Lorg/apache/cordova/PluginResult;

    sget-object v31, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    sget v32, Lorg/apache/cordova/filetransfer/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$source:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$target:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-static {v0, v1, v2, v7, v3}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$600(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object v32

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 986
    .end local v27    # "result":Lorg/apache/cordova/PluginResult;
    .restart local v26    # "result":Lorg/apache/cordova/PluginResult;
    :goto_3
    if-nez v6, :cond_3

    invoke-virtual/range {v26 .. v26}, Lorg/apache/cordova/PluginResult;->getStatus()I

    move-result v31

    sget-object v32, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual/range {v32 .. v32}, Lorg/apache/cordova/PluginResult$Status;->ordinal()I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_3

    if-eqz v11, :cond_3

    .line 987
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 989
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto/16 :goto_0

    .line 807
    .end local v6    # "cached":Z
    .end local v7    # "connection":Ljava/net/HttpURLConnection;
    .end local v11    # "file":Ljava/io/File;
    .end local v16    # "inputStream":Lorg/apache/cordova/filetransfer/FileTransfer$TrackingInputStream;
    .end local v18    # "oldHostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    .end local v19    # "oldSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v20    # "outputStream":Ljava/io/OutputStream;
    .end local v23    # "progress":Lorg/apache/cordova/filetransfer/FileProgressResult;
    .end local v25    # "readResult":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    .end local v26    # "result":Lorg/apache/cordova/PluginResult;
    .end local v28    # "targetUri":Landroid/net/Uri;
    .restart local v29    # "tmpTarget":Landroid/net/Uri;
    :cond_4
    new-instance v32, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$target:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-direct/range {v32 .. v33}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v32 .. v32}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v29

    goto/16 :goto_1

    .line 837
    .end local v29    # "tmpTarget":Landroid/net/Uri;
    .restart local v6    # "cached":Z
    .restart local v7    # "connection":Ljava/net/HttpURLConnection;
    .restart local v11    # "file":Ljava/io/File;
    .restart local v16    # "inputStream":Lorg/apache/cordova/filetransfer/FileTransfer$TrackingInputStream;
    .restart local v18    # "oldHostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    .restart local v19    # "oldSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v20    # "outputStream":Ljava/io/OutputStream;
    .restart local v23    # "progress":Lorg/apache/cordova/filetransfer/FileProgressResult;
    .restart local v25    # "readResult":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    .restart local v26    # "result":Lorg/apache/cordova/PluginResult;
    .restart local v28    # "targetUri":Landroid/net/Uri;
    :cond_5
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$sourceUri:Landroid/net/Uri;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lorg/apache/cordova/CordovaResourceApi;->createHttpConnection(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object v7

    .line 838
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$useHttps:Z

    move/from16 v31, v0

    if-eqz v31, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$trustEveryone:Z

    move/from16 v31, v0

    if-eqz v31, :cond_6

    .line 840
    move-object v0, v7

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v15, v0

    .line 841
    .restart local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    invoke-static {v15}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$000(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v19

    .line 843
    invoke-virtual {v15}, Ljavax/net/ssl/HttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v18

    .line 845
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$100()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 848
    .end local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :cond_6
    const-string v31, "GET"

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->this$0:Lorg/apache/cordova/filetransfer/FileTransfer;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$sourceUri:Landroid/net/Uri;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$200(Lorg/apache/cordova/filetransfer/FileTransfer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 853
    .local v8, "cookie":Ljava/lang/String;
    if-eqz v8, :cond_7

    .line 855
    const-string v31, "cookie"

    move-object/from16 v0, v31

    invoke-virtual {v7, v0, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    :cond_7
    const-string v31, "Accept-Encoding"

    const-string v32, "gzip"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$headers:Lorg/json/JSONObject;

    move-object/from16 v31, v0

    if-eqz v31, :cond_8

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$headers:Lorg/json/JSONObject;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-static {v7, v0}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$300(Ljava/net/URLConnection;Lorg/json/JSONObject;)V

    .line 866
    :cond_8
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    .line 867
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v31

    const/16 v32, 0x130

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_9

    .line 868
    const/4 v6, 0x1

    .line 869
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 870
    const-string v31, "FileTransfer"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Resource not modified: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$source:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    sget v31, Lorg/apache/cordova/filetransfer/FileTransfer;->NOT_MODIFIED_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$source:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$target:Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-static {v0, v1, v2, v7, v3}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$600(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object v10

    .line 872
    .local v10, "error":Lorg/json/JSONObject;
    new-instance v27, Lorg/apache/cordova/PluginResult;

    sget-object v31, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v10}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 873
    .end local v26    # "result":Lorg/apache/cordova/PluginResult;
    .restart local v27    # "result":Lorg/apache/cordova/PluginResult;
    goto/16 :goto_2

    .line 874
    .end local v10    # "error":Lorg/json/JSONObject;
    .end local v27    # "result":Lorg/apache/cordova/PluginResult;
    .restart local v26    # "result":Lorg/apache/cordova/PluginResult;
    :cond_9
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_a

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v31

    const-string v32, "gzip"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_b

    .line 877
    :cond_a
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v31

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_b

    .line 878
    const/16 v31, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/apache/cordova/filetransfer/FileProgressResult;->setLengthComputable(Z)V

    .line 879
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v31

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-object/from16 v0, v23

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/filetransfer/FileProgressResult;->setTotal(J)V

    .line 882
    :cond_b
    invoke-static {v7}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$500(Ljava/net/URLConnection;)Lorg/apache/cordova/filetransfer/FileTransfer$TrackingInputStream;
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    move-result-object v16

    move-object/from16 v27, v26

    .end local v26    # "result":Lorg/apache/cordova/PluginResult;
    .restart local v27    # "result":Lorg/apache/cordova/PluginResult;
    goto/16 :goto_2

    .line 910
    .end local v8    # "cookie":Ljava/lang/String;
    :catchall_0
    move-exception v31

    :try_start_8
    monitor-exit v32
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v31
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_d

    .line 953
    :catch_0
    move-exception v9

    .line 954
    .end local v23    # "progress":Lorg/apache/cordova/filetransfer/FileProgressResult;
    .local v9, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_a
    sget v31, Lorg/apache/cordova/filetransfer/FileTransfer;->FILE_NOT_FOUND_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$source:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$target:Ljava/lang/String;

    move-object/from16 v33, v0

    move/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2, v7, v9}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$600(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object v10

    .line 955
    .restart local v10    # "error":Lorg/json/JSONObject;
    const-string v31, "FileTransfer"

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v9}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 956
    new-instance v26, Lorg/apache/cordova/PluginResult;

    sget-object v31, Lorg/apache/cordova/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v10}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_d

    .line 969
    .end local v27    # "result":Lorg/apache/cordova/PluginResult;
    .restart local v26    # "result":Lorg/apache/cordova/PluginResult;
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v32

    monitor-enter v32

    .line 970
    :try_start_b
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$objectId:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    monitor-exit v32
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 973
    if-eqz v7, :cond_c

    .line 975
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$trustEveryone:Z

    move/from16 v31, v0

    if-eqz v31, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$useHttps:Z

    move/from16 v31, v0

    if-eqz v31, :cond_c

    move-object v15, v7

    .line 976
    check-cast v15, Ljavax/net/ssl/HttpsURLConnection;

    .line 977
    .restart local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 978
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 982
    .end local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :cond_c
    if-nez v26, :cond_d

    .line 983
    new-instance v26, Lorg/apache/cordova/PluginResult;

    .end local v26    # "result":Lorg/apache/cordova/PluginResult;
    sget-object v31, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    sget v32, Lorg/apache/cordova/filetransfer/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$source:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$target:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-static {v0, v1, v2, v7, v3}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$600(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object v32

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 986
    .restart local v26    # "result":Lorg/apache/cordova/PluginResult;
    :cond_d
    if-nez v6, :cond_e

    invoke-virtual/range {v26 .. v26}, Lorg/apache/cordova/PluginResult;->getStatus()I

    move-result v31

    sget-object v32, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual/range {v32 .. v32}, Lorg/apache/cordova/PluginResult$Status;->ordinal()I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_e

    if-eqz v11, :cond_e

    .line 987
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 989
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto/16 :goto_0

    .line 971
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    .end local v10    # "error":Lorg/json/JSONObject;
    .end local v26    # "result":Lorg/apache/cordova/PluginResult;
    .restart local v23    # "progress":Lorg/apache/cordova/filetransfer/FileProgressResult;
    .restart local v27    # "result":Lorg/apache/cordova/PluginResult;
    :catchall_1
    move-exception v31

    :try_start_c
    monitor-exit v32
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    throw v31

    .line 892
    :cond_f
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iput-object v7, v0, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->connection:Ljava/net/HttpURLConnection;

    .line 893
    monitor-exit v32
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 896
    const/16 v31, 0x4000

    :try_start_e
    move/from16 v0, v31

    new-array v4, v0, [B

    .line 897
    .local v4, "buffer":[B
    const/4 v5, 0x0

    .line 898
    .local v5, "bytesRead":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaResourceApi;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v20

    .line 899
    :goto_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/apache/cordova/filetransfer/FileTransfer$TrackingInputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_13

    .line 900
    const/16 v31, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-virtual {v0, v4, v1, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 902
    invoke-virtual/range {v16 .. v16}, Lorg/apache/cordova/filetransfer/FileTransfer$TrackingInputStream;->getTotalRawBytesRead()J

    move-result-wide v32

    move-object/from16 v0, v23

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/filetransfer/FileProgressResult;->setLoaded(J)V

    .line 903
    new-instance v24, Lorg/apache/cordova/PluginResult;

    sget-object v31, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual/range {v23 .. v23}, Lorg/apache/cordova/filetransfer/FileProgressResult;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 904
    .local v24, "progressResult":Lorg/apache/cordova/PluginResult;
    const/16 v31, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_5

    .line 908
    .end local v4    # "buffer":[B
    .end local v5    # "bytesRead":I
    .end local v24    # "progressResult":Lorg/apache/cordova/PluginResult;
    :catchall_2
    move-exception v31

    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v32, v0

    monitor-enter v32
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_d

    .line 909
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    iput-object v0, v1, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->connection:Ljava/net/HttpURLConnection;

    .line 910
    monitor-exit v32
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 911
    :try_start_11
    invoke-static/range {v16 .. v16}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$400(Ljava/io/Closeable;)V

    .line 912
    invoke-static/range {v20 .. v20}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$400(Ljava/io/Closeable;)V

    throw v31
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_d

    .line 957
    :catch_1
    move-exception v9

    .line 958
    .end local v23    # "progress":Lorg/apache/cordova/filetransfer/FileProgressResult;
    .local v9, "e":Ljava/io/IOException;
    :goto_6
    :try_start_12
    sget v31, Lorg/apache/cordova/filetransfer/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$source:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$target:Ljava/lang/String;

    move-object/from16 v33, v0

    move/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2, v7, v9}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$600(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object v10

    .line 959
    .restart local v10    # "error":Lorg/json/JSONObject;
    const-string v31, "FileTransfer"

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v9}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 960
    new-instance v26, Lorg/apache/cordova/PluginResult;

    sget-object v31, Lorg/apache/cordova/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v10}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_d

    .line 969
    .end local v27    # "result":Lorg/apache/cordova/PluginResult;
    .restart local v26    # "result":Lorg/apache/cordova/PluginResult;
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v32

    monitor-enter v32

    .line 970
    :try_start_13
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$objectId:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    monitor-exit v32
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 973
    if-eqz v7, :cond_10

    .line 975
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$trustEveryone:Z

    move/from16 v31, v0

    if-eqz v31, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$useHttps:Z

    move/from16 v31, v0

    if-eqz v31, :cond_10

    move-object v15, v7

    .line 976
    check-cast v15, Ljavax/net/ssl/HttpsURLConnection;

    .line 977
    .restart local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 978
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 982
    .end local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :cond_10
    if-nez v26, :cond_11

    .line 983
    new-instance v26, Lorg/apache/cordova/PluginResult;

    .end local v26    # "result":Lorg/apache/cordova/PluginResult;
    sget-object v31, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    sget v32, Lorg/apache/cordova/filetransfer/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$source:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$target:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-static {v0, v1, v2, v7, v3}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$600(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object v32

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 986
    .restart local v26    # "result":Lorg/apache/cordova/PluginResult;
    :cond_11
    if-nez v6, :cond_12

    invoke-virtual/range {v26 .. v26}, Lorg/apache/cordova/PluginResult;->getStatus()I

    move-result v31

    sget-object v32, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual/range {v32 .. v32}, Lorg/apache/cordova/PluginResult$Status;->ordinal()I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_12

    if-eqz v11, :cond_12

    .line 987
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 989
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto/16 :goto_0

    .line 893
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "error":Lorg/json/JSONObject;
    .end local v26    # "result":Lorg/apache/cordova/PluginResult;
    .restart local v23    # "progress":Lorg/apache/cordova/filetransfer/FileProgressResult;
    .restart local v27    # "result":Lorg/apache/cordova/PluginResult;
    :catchall_3
    move-exception v31

    :try_start_14
    monitor-exit v32
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    :try_start_15
    throw v31
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 908
    .restart local v4    # "buffer":[B
    .restart local v5    # "bytesRead":I
    :cond_13
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v32, v0

    monitor-enter v32
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_d

    .line 909
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v31, v0

    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    iput-object v0, v1, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->connection:Ljava/net/HttpURLConnection;

    .line 910
    monitor-exit v32
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 911
    :try_start_18
    invoke-static/range {v16 .. v16}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$400(Ljava/io/Closeable;)V

    .line 912
    invoke-static/range {v20 .. v20}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$400(Ljava/io/Closeable;)V

    .line 915
    const-string v31, "FileTransfer"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Saved file: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$target:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->this$0:Lorg/apache/cordova/filetransfer/FileTransfer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer;->webView:Lorg/apache/cordova/CordovaWebView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_18} :catch_0
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_1
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_3
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    move-result-object v30

    .line 920
    .local v30, "webViewClass":Ljava/lang/Class;
    const/16 v21, 0x0

    .line 922
    .local v21, "pm":Lorg/apache/cordova/PluginManager;
    :try_start_19
    const-string v31, "getPluginManager"

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 923
    .local v14, "gpm":Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->this$0:Lorg/apache/cordova/filetransfer/FileTransfer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer;->webView:Lorg/apache/cordova/CordovaWebView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v14, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v31

    check-cast v0, Lorg/apache/cordova/PluginManager;

    move-object/from16 v21, v0
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_19 .. :try_end_19} :catch_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_19 .. :try_end_19} :catch_b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_19 .. :try_end_19} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_19} :catch_0
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_1
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_19} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_3
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    .line 928
    .end local v14    # "gpm":Ljava/lang/reflect/Method;
    :goto_7
    if-nez v21, :cond_14

    .line 930
    :try_start_1a
    const-string v31, "pluginManager"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v22

    .line 931
    .local v22, "pmf":Ljava/lang/reflect/Field;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->this$0:Lorg/apache/cordova/filetransfer/FileTransfer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer;->webView:Lorg/apache/cordova/CordovaWebView;

    move-object/from16 v31, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v31

    check-cast v0, Lorg/apache/cordova/PluginManager;

    move-object/from16 v21, v0
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1a .. :try_end_1a} :catch_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_1a .. :try_end_1a} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1a} :catch_0
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_1a} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_3
    .catchall {:try_start_1a .. :try_end_1a} :catchall_d

    .line 936
    .end local v22    # "pmf":Ljava/lang/reflect/Field;
    :cond_14
    :goto_8
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaResourceApi;->mapUriToFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v11

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iput-object v11, v0, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->targetFile:Ljava/io/File;

    .line 938
    const-string v31, "File"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/apache/cordova/PluginManager;->getPlugin(Ljava/lang/String;)Lorg/apache/cordova/CordovaPlugin;

    move-result-object v13

    check-cast v13, Lorg/apache/cordova/file/FileUtils;

    .line 939
    .local v13, "filePlugin":Lorg/apache/cordova/file/FileUtils;
    if-eqz v13, :cond_1f

    .line 940
    invoke-virtual {v13, v11}, Lorg/apache/cordova/file/FileUtils;->getEntryForFile(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v12

    .line 941
    .local v12, "fileEntry":Lorg/json/JSONObject;
    if-eqz v12, :cond_1e

    .line 942
    new-instance v26, Lorg/apache/cordova/PluginResult;

    sget-object v31, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v12}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_1b} :catch_0
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_1b} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_3
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    .line 969
    .end local v4    # "buffer":[B
    .end local v5    # "bytesRead":I
    .end local v12    # "fileEntry":Lorg/json/JSONObject;
    .end local v13    # "filePlugin":Lorg/apache/cordova/file/FileUtils;
    .end local v21    # "pm":Lorg/apache/cordova/PluginManager;
    .end local v27    # "result":Lorg/apache/cordova/PluginResult;
    .end local v30    # "webViewClass":Ljava/lang/Class;
    .restart local v26    # "result":Lorg/apache/cordova/PluginResult;
    :goto_9
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v32

    monitor-enter v32

    .line 970
    :try_start_1c
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$objectId:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    monitor-exit v32
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    .line 973
    if-eqz v7, :cond_15

    .line 975
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$trustEveryone:Z

    move/from16 v31, v0

    if-eqz v31, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$useHttps:Z

    move/from16 v31, v0

    if-eqz v31, :cond_15

    move-object v15, v7

    .line 976
    check-cast v15, Ljavax/net/ssl/HttpsURLConnection;

    .line 977
    .restart local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 978
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 982
    .end local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :cond_15
    if-nez v26, :cond_16

    .line 983
    new-instance v26, Lorg/apache/cordova/PluginResult;

    .end local v26    # "result":Lorg/apache/cordova/PluginResult;
    sget-object v31, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    sget v32, Lorg/apache/cordova/filetransfer/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$source:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$target:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-static {v0, v1, v2, v7, v3}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$600(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object v32

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 986
    .restart local v26    # "result":Lorg/apache/cordova/PluginResult;
    :cond_16
    if-nez v6, :cond_17

    invoke-virtual/range {v26 .. v26}, Lorg/apache/cordova/PluginResult;->getStatus()I

    move-result v31

    sget-object v32, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual/range {v32 .. v32}, Lorg/apache/cordova/PluginResult$Status;->ordinal()I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_17

    if-eqz v11, :cond_17

    .line 987
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 989
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto/16 :goto_0

    .line 910
    .end local v26    # "result":Lorg/apache/cordova/PluginResult;
    .restart local v4    # "buffer":[B
    .restart local v5    # "bytesRead":I
    .restart local v27    # "result":Lorg/apache/cordova/PluginResult;
    :catchall_4
    move-exception v31

    :try_start_1d
    monitor-exit v32
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    :try_start_1e
    throw v31
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_1e} :catch_0
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_1e} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_3
    .catchall {:try_start_1e .. :try_end_1e} :catchall_d

    .line 961
    .end local v4    # "buffer":[B
    .end local v5    # "bytesRead":I
    :catch_2
    move-exception v9

    .line 962
    .end local v23    # "progress":Lorg/apache/cordova/filetransfer/FileProgressResult;
    .local v9, "e":Lorg/json/JSONException;
    :goto_a
    :try_start_1f
    const-string v31, "FileTransfer"

    invoke-virtual {v9}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v9}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 963
    new-instance v26, Lorg/apache/cordova/PluginResult;

    sget-object v31, Lorg/apache/cordova/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_d

    .line 969
    .end local v27    # "result":Lorg/apache/cordova/PluginResult;
    .restart local v26    # "result":Lorg/apache/cordova/PluginResult;
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v32

    monitor-enter v32

    .line 970
    :try_start_20
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$objectId:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    monitor-exit v32
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    .line 973
    if-eqz v7, :cond_18

    .line 975
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$trustEveryone:Z

    move/from16 v31, v0

    if-eqz v31, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$useHttps:Z

    move/from16 v31, v0

    if-eqz v31, :cond_18

    move-object v15, v7

    .line 976
    check-cast v15, Ljavax/net/ssl/HttpsURLConnection;

    .line 977
    .restart local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 978
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 982
    .end local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :cond_18
    if-nez v26, :cond_19

    .line 983
    new-instance v26, Lorg/apache/cordova/PluginResult;

    .end local v26    # "result":Lorg/apache/cordova/PluginResult;
    sget-object v31, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    sget v32, Lorg/apache/cordova/filetransfer/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$source:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$target:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-static {v0, v1, v2, v7, v3}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$600(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object v32

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 986
    .restart local v26    # "result":Lorg/apache/cordova/PluginResult;
    :cond_19
    if-nez v6, :cond_1a

    invoke-virtual/range {v26 .. v26}, Lorg/apache/cordova/PluginResult;->getStatus()I

    move-result v31

    sget-object v32, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual/range {v32 .. v32}, Lorg/apache/cordova/PluginResult$Status;->ordinal()I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_1a

    if-eqz v11, :cond_1a

    .line 987
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 989
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto/16 :goto_0

    .line 910
    .end local v9    # "e":Lorg/json/JSONException;
    .end local v26    # "result":Lorg/apache/cordova/PluginResult;
    .restart local v23    # "progress":Lorg/apache/cordova/filetransfer/FileProgressResult;
    .restart local v27    # "result":Lorg/apache/cordova/PluginResult;
    :catchall_5
    move-exception v31

    :try_start_21
    monitor-exit v32
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    :try_start_22
    throw v31
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_22} :catch_0
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_1
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_22} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_3
    .catchall {:try_start_22 .. :try_end_22} :catchall_d

    .line 964
    :catch_3
    move-exception v9

    .line 965
    .end local v23    # "progress":Lorg/apache/cordova/filetransfer/FileProgressResult;
    .local v9, "e":Ljava/lang/Throwable;
    :goto_b
    :try_start_23
    sget v31, Lorg/apache/cordova/filetransfer/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$source:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$target:Ljava/lang/String;

    move-object/from16 v33, v0

    move/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2, v7, v9}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$600(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object v10

    .line 966
    .restart local v10    # "error":Lorg/json/JSONObject;
    const-string v31, "FileTransfer"

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v9}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 967
    new-instance v26, Lorg/apache/cordova/PluginResult;

    sget-object v31, Lorg/apache/cordova/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v10}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_d

    .line 969
    .end local v27    # "result":Lorg/apache/cordova/PluginResult;
    .restart local v26    # "result":Lorg/apache/cordova/PluginResult;
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v32

    monitor-enter v32

    .line 970
    :try_start_24
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$objectId:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    monitor-exit v32
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_a

    .line 973
    if-eqz v7, :cond_1b

    .line 975
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$trustEveryone:Z

    move/from16 v31, v0

    if-eqz v31, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$useHttps:Z

    move/from16 v31, v0

    if-eqz v31, :cond_1b

    move-object v15, v7

    .line 976
    check-cast v15, Ljavax/net/ssl/HttpsURLConnection;

    .line 977
    .restart local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 978
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 982
    .end local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :cond_1b
    if-nez v26, :cond_1c

    .line 983
    new-instance v26, Lorg/apache/cordova/PluginResult;

    .end local v26    # "result":Lorg/apache/cordova/PluginResult;
    sget-object v31, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    sget v32, Lorg/apache/cordova/filetransfer/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$source:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$target:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-static {v0, v1, v2, v7, v3}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$600(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object v32

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 986
    .restart local v26    # "result":Lorg/apache/cordova/PluginResult;
    :cond_1c
    if-nez v6, :cond_1d

    invoke-virtual/range {v26 .. v26}, Lorg/apache/cordova/PluginResult;->getStatus()I

    move-result v31

    sget-object v32, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual/range {v32 .. v32}, Lorg/apache/cordova/PluginResult$Status;->ordinal()I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_1d

    if-eqz v11, :cond_1d

    .line 987
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 989
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto/16 :goto_0

    .line 944
    .end local v9    # "e":Ljava/lang/Throwable;
    .end local v10    # "error":Lorg/json/JSONObject;
    .end local v26    # "result":Lorg/apache/cordova/PluginResult;
    .restart local v4    # "buffer":[B
    .restart local v5    # "bytesRead":I
    .restart local v12    # "fileEntry":Lorg/json/JSONObject;
    .restart local v13    # "filePlugin":Lorg/apache/cordova/file/FileUtils;
    .restart local v21    # "pm":Lorg/apache/cordova/PluginManager;
    .restart local v23    # "progress":Lorg/apache/cordova/filetransfer/FileProgressResult;
    .restart local v27    # "result":Lorg/apache/cordova/PluginResult;
    .restart local v30    # "webViewClass":Ljava/lang/Class;
    :cond_1e
    :try_start_25
    sget v31, Lorg/apache/cordova/filetransfer/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$source:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$target:Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-static {v0, v1, v2, v7, v3}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$600(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object v10

    .line 945
    .restart local v10    # "error":Lorg/json/JSONObject;
    const-string v31, "FileTransfer"

    const-string v32, "File plugin cannot represent download path"

    invoke-static/range {v31 .. v32}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    new-instance v26, Lorg/apache/cordova/PluginResult;

    sget-object v31, Lorg/apache/cordova/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v10}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    .end local v27    # "result":Lorg/apache/cordova/PluginResult;
    .restart local v26    # "result":Lorg/apache/cordova/PluginResult;
    goto/16 :goto_9

    .line 949
    .end local v10    # "error":Lorg/json/JSONObject;
    .end local v12    # "fileEntry":Lorg/json/JSONObject;
    .end local v26    # "result":Lorg/apache/cordova/PluginResult;
    .restart local v27    # "result":Lorg/apache/cordova/PluginResult;
    :cond_1f
    const-string v31, "FileTransfer"

    const-string v32, "File plugin not found; cannot save downloaded file"

    invoke-static/range {v31 .. v32}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    new-instance v26, Lorg/apache/cordova/PluginResult;

    sget-object v31, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    const-string v32, "File plugin not found; cannot save downloaded file"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_25} :catch_0
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_1
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_25} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_3
    .catchall {:try_start_25 .. :try_end_25} :catchall_d

    .end local v27    # "result":Lorg/apache/cordova/PluginResult;
    .restart local v26    # "result":Lorg/apache/cordova/PluginResult;
    goto/16 :goto_9

    .line 971
    .end local v4    # "buffer":[B
    .end local v5    # "bytesRead":I
    .end local v13    # "filePlugin":Lorg/apache/cordova/file/FileUtils;
    .end local v21    # "pm":Lorg/apache/cordova/PluginManager;
    .end local v30    # "webViewClass":Ljava/lang/Class;
    :catchall_6
    move-exception v31

    :try_start_26
    monitor-exit v32
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_6

    throw v31

    .end local v23    # "progress":Lorg/apache/cordova/filetransfer/FileProgressResult;
    .local v9, "e":Ljava/io/FileNotFoundException;
    .restart local v10    # "error":Lorg/json/JSONObject;
    :catchall_7
    move-exception v31

    :try_start_27
    monitor-exit v32
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_7

    throw v31

    .local v9, "e":Ljava/io/IOException;
    :catchall_8
    move-exception v31

    :try_start_28
    monitor-exit v32
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_8

    throw v31

    .end local v10    # "error":Lorg/json/JSONObject;
    .local v9, "e":Lorg/json/JSONException;
    :catchall_9
    move-exception v31

    :try_start_29
    monitor-exit v32
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_9

    throw v31

    .local v9, "e":Ljava/lang/Throwable;
    .restart local v10    # "error":Lorg/json/JSONObject;
    :catchall_a
    move-exception v31

    :try_start_2a
    monitor-exit v32
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_a

    throw v31

    .line 969
    .end local v9    # "e":Ljava/lang/Throwable;
    .end local v10    # "error":Lorg/json/JSONObject;
    :catchall_b
    move-exception v31

    :goto_c
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v32

    monitor-enter v32

    .line 970
    :try_start_2b
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$objectId:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    monitor-exit v32
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_c

    .line 973
    if-eqz v7, :cond_20

    .line 975
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$trustEveryone:Z

    move/from16 v32, v0

    if-eqz v32, :cond_20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$useHttps:Z

    move/from16 v32, v0

    if-eqz v32, :cond_20

    move-object v15, v7

    .line 976
    check-cast v15, Ljavax/net/ssl/HttpsURLConnection;

    .line 977
    .restart local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 978
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 982
    .end local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :cond_20
    if-nez v26, :cond_21

    .line 983
    new-instance v26, Lorg/apache/cordova/PluginResult;

    .end local v26    # "result":Lorg/apache/cordova/PluginResult;
    sget-object v32, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    sget v33, Lorg/apache/cordova/filetransfer/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$source:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$target:Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-static {v0, v1, v2, v7, v3}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$600(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object v33

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 986
    .restart local v26    # "result":Lorg/apache/cordova/PluginResult;
    :cond_21
    if-nez v6, :cond_22

    invoke-virtual/range {v26 .. v26}, Lorg/apache/cordova/PluginResult;->getStatus()I

    move-result v32

    sget-object v33, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual/range {v33 .. v33}, Lorg/apache/cordova/PluginResult$Status;->ordinal()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_22

    if-eqz v11, :cond_22

    .line 987
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 989
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$4;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    throw v31

    .line 971
    :catchall_c
    move-exception v31

    :try_start_2c
    monitor-exit v32
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_c

    throw v31

    .line 969
    .end local v26    # "result":Lorg/apache/cordova/PluginResult;
    .restart local v27    # "result":Lorg/apache/cordova/PluginResult;
    :catchall_d
    move-exception v31

    move-object/from16 v26, v27

    .end local v27    # "result":Lorg/apache/cordova/PluginResult;
    .restart local v26    # "result":Lorg/apache/cordova/PluginResult;
    goto/16 :goto_c

    .line 964
    :catch_4
    move-exception v9

    move-object/from16 v27, v26

    .end local v26    # "result":Lorg/apache/cordova/PluginResult;
    .restart local v27    # "result":Lorg/apache/cordova/PluginResult;
    goto/16 :goto_b

    .line 961
    .end local v27    # "result":Lorg/apache/cordova/PluginResult;
    .restart local v26    # "result":Lorg/apache/cordova/PluginResult;
    :catch_5
    move-exception v9

    move-object/from16 v27, v26

    .end local v26    # "result":Lorg/apache/cordova/PluginResult;
    .restart local v27    # "result":Lorg/apache/cordova/PluginResult;
    goto/16 :goto_a

    .line 957
    .end local v27    # "result":Lorg/apache/cordova/PluginResult;
    .restart local v26    # "result":Lorg/apache/cordova/PluginResult;
    :catch_6
    move-exception v9

    move-object/from16 v27, v26

    .end local v26    # "result":Lorg/apache/cordova/PluginResult;
    .restart local v27    # "result":Lorg/apache/cordova/PluginResult;
    goto/16 :goto_6

    .line 953
    .end local v27    # "result":Lorg/apache/cordova/PluginResult;
    .restart local v26    # "result":Lorg/apache/cordova/PluginResult;
    :catch_7
    move-exception v9

    move-object/from16 v27, v26

    .end local v26    # "result":Lorg/apache/cordova/PluginResult;
    .restart local v27    # "result":Lorg/apache/cordova/PluginResult;
    goto/16 :goto_4

    .line 933
    .restart local v4    # "buffer":[B
    .restart local v5    # "bytesRead":I
    .restart local v21    # "pm":Lorg/apache/cordova/PluginManager;
    .restart local v23    # "progress":Lorg/apache/cordova/filetransfer/FileProgressResult;
    .restart local v30    # "webViewClass":Ljava/lang/Class;
    :catch_8
    move-exception v31

    goto/16 :goto_8

    .line 932
    :catch_9
    move-exception v31

    goto/16 :goto_8

    .line 926
    :catch_a
    move-exception v31

    goto/16 :goto_7

    .line 925
    :catch_b
    move-exception v31

    goto/16 :goto_7

    .line 924
    :catch_c
    move-exception v31

    goto/16 :goto_7

    .end local v4    # "buffer":[B
    .end local v5    # "bytesRead":I
    .end local v21    # "pm":Lorg/apache/cordova/PluginManager;
    .end local v30    # "webViewClass":Ljava/lang/Class;
    :cond_23
    move-object/from16 v26, v27

    .end local v27    # "result":Lorg/apache/cordova/PluginResult;
    .restart local v26    # "result":Lorg/apache/cordova/PluginResult;
    goto/16 :goto_3

    .end local v26    # "result":Lorg/apache/cordova/PluginResult;
    .restart local v27    # "result":Lorg/apache/cordova/PluginResult;
    :cond_24
    move-object/from16 v26, v27

    .end local v27    # "result":Lorg/apache/cordova/PluginResult;
    .restart local v26    # "result":Lorg/apache/cordova/PluginResult;
    goto/16 :goto_9
.end method
