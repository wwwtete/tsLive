.class Lorg/apache/cordova/file/FileUtils$25;
.super Ljava/lang/Object;
.source "FileUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/file/FileUtils;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;

.field final synthetic val$f:Lorg/apache/cordova/file/FileUtils$FileOp;

.field final synthetic val$rawArgs:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;Lorg/apache/cordova/file/FileUtils$FileOp;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/cordova/file/FileUtils;

    .prologue
    .line 659
    iput-object p1, p0, Lorg/apache/cordova/file/FileUtils$25;->this$0:Lorg/apache/cordova/file/FileUtils;

    iput-object p2, p0, Lorg/apache/cordova/file/FileUtils$25;->val$rawArgs:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/cordova/file/FileUtils$25;->val$f:Lorg/apache/cordova/file/FileUtils$FileOp;

    iput-object p4, p0, Lorg/apache/cordova/file/FileUtils$25;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 662
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object v2, p0, Lorg/apache/cordova/file/FileUtils$25;->val$rawArgs:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 663
    .local v0, "args":Lorg/json/JSONArray;
    iget-object v2, p0, Lorg/apache/cordova/file/FileUtils$25;->val$f:Lorg/apache/cordova/file/FileUtils$FileOp;

    invoke-interface {v2, v0}, Lorg/apache/cordova/file/FileUtils$FileOp;->run(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    .end local v0    # "args":Lorg/json/JSONArray;
    :goto_0
    return-void

    .line 664
    :catch_0
    move-exception v1

    .line 665
    .local v1, "e":Ljava/lang/Exception;
    instance-of v2, v1, Lorg/apache/cordova/file/EncodingException;

    if-eqz v2, :cond_0

    .line 666
    iget-object v2, p0, Lorg/apache/cordova/file/FileUtils$25;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    sget v3, Lorg/apache/cordova/file/FileUtils;->ENCODING_ERR:I

    invoke-virtual {v2, v3}, Lorg/apache/cordova/CallbackContext;->error(I)V

    goto :goto_0

    .line 667
    :cond_0
    instance-of v2, v1, Ljava/io/FileNotFoundException;

    if-eqz v2, :cond_1

    .line 668
    iget-object v2, p0, Lorg/apache/cordova/file/FileUtils$25;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    sget v3, Lorg/apache/cordova/file/FileUtils;->NOT_FOUND_ERR:I

    invoke-virtual {v2, v3}, Lorg/apache/cordova/CallbackContext;->error(I)V

    goto :goto_0

    .line 669
    :cond_1
    instance-of v2, v1, Lorg/apache/cordova/file/FileExistsException;

    if-eqz v2, :cond_2

    .line 670
    iget-object v2, p0, Lorg/apache/cordova/file/FileUtils$25;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    sget v3, Lorg/apache/cordova/file/FileUtils;->PATH_EXISTS_ERR:I

    invoke-virtual {v2, v3}, Lorg/apache/cordova/CallbackContext;->error(I)V

    goto :goto_0

    .line 671
    :cond_2
    instance-of v2, v1, Lorg/apache/cordova/file/NoModificationAllowedException;

    if-eqz v2, :cond_3

    .line 672
    iget-object v2, p0, Lorg/apache/cordova/file/FileUtils$25;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    sget v3, Lorg/apache/cordova/file/FileUtils;->NO_MODIFICATION_ALLOWED_ERR:I

    invoke-virtual {v2, v3}, Lorg/apache/cordova/CallbackContext;->error(I)V

    goto :goto_0

    .line 673
    :cond_3
    instance-of v2, v1, Lorg/apache/cordova/file/InvalidModificationException;

    if-eqz v2, :cond_4

    .line 674
    iget-object v2, p0, Lorg/apache/cordova/file/FileUtils$25;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    sget v3, Lorg/apache/cordova/file/FileUtils;->INVALID_MODIFICATION_ERR:I

    invoke-virtual {v2, v3}, Lorg/apache/cordova/CallbackContext;->error(I)V

    goto :goto_0

    .line 675
    :cond_4
    instance-of v2, v1, Ljava/net/MalformedURLException;

    if-eqz v2, :cond_5

    .line 676
    iget-object v2, p0, Lorg/apache/cordova/file/FileUtils$25;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    sget v3, Lorg/apache/cordova/file/FileUtils;->ENCODING_ERR:I

    invoke-virtual {v2, v3}, Lorg/apache/cordova/CallbackContext;->error(I)V

    goto :goto_0

    .line 677
    :cond_5
    instance-of v2, v1, Ljava/io/IOException;

    if-eqz v2, :cond_6

    .line 678
    iget-object v2, p0, Lorg/apache/cordova/file/FileUtils$25;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    sget v3, Lorg/apache/cordova/file/FileUtils;->INVALID_MODIFICATION_ERR:I

    invoke-virtual {v2, v3}, Lorg/apache/cordova/CallbackContext;->error(I)V

    goto :goto_0

    .line 679
    :cond_6
    instance-of v2, v1, Lorg/apache/cordova/file/EncodingException;

    if-eqz v2, :cond_7

    .line 680
    iget-object v2, p0, Lorg/apache/cordova/file/FileUtils$25;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    sget v3, Lorg/apache/cordova/file/FileUtils;->ENCODING_ERR:I

    invoke-virtual {v2, v3}, Lorg/apache/cordova/CallbackContext;->error(I)V

    goto :goto_0

    .line 681
    :cond_7
    instance-of v2, v1, Lorg/apache/cordova/file/TypeMismatchException;

    if-eqz v2, :cond_8

    .line 682
    iget-object v2, p0, Lorg/apache/cordova/file/FileUtils$25;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    sget v3, Lorg/apache/cordova/file/FileUtils;->TYPE_MISMATCH_ERR:I

    invoke-virtual {v2, v3}, Lorg/apache/cordova/CallbackContext;->error(I)V

    goto :goto_0

    .line 683
    :cond_8
    instance-of v2, v1, Lorg/json/JSONException;

    if-eqz v2, :cond_9

    .line 684
    iget-object v2, p0, Lorg/apache/cordova/file/FileUtils$25;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v3, Lorg/apache/cordova/PluginResult;

    sget-object v4, Lorg/apache/cordova/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v3, v4}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    invoke-virtual {v2, v3}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_0

    .line 685
    :cond_9
    instance-of v2, v1, Ljava/lang/SecurityException;

    if-eqz v2, :cond_a

    .line 686
    iget-object v2, p0, Lorg/apache/cordova/file/FileUtils$25;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    sget v3, Lorg/apache/cordova/file/FileUtils;->SECURITY_ERR:I

    invoke-virtual {v2, v3}, Lorg/apache/cordova/CallbackContext;->error(I)V

    goto/16 :goto_0

    .line 688
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 689
    iget-object v2, p0, Lorg/apache/cordova/file/FileUtils$25;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    sget v3, Lorg/apache/cordova/file/FileUtils;->UNKNOWN_ERR:I

    invoke-virtual {v2, v3}, Lorg/apache/cordova/CallbackContext;->error(I)V

    goto/16 :goto_0
.end method
