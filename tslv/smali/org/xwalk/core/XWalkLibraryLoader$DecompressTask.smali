.class Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;
.super Landroid/os/AsyncTask;
.source "XWalkLibraryLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xwalk/core/XWalkLibraryLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecompressTask"
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


# instance fields
.field mContext:Landroid/content/Context;

.field mIsCompressed:Z

.field mIsDecompressed:Z

.field mListener:Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;


# direct methods
.method constructor <init>(Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;Landroid/content/Context;)V
    .locals 0
    .param p1, "listener"    # Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 267
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 268
    iput-object p1, p0, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->mListener:Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;

    .line 269
    iput-object p2, p0, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->mContext:Landroid/content/Context;

    .line 270
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    .line 289
    iget-boolean v1, p0, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->mIsCompressed:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->mIsDecompressed:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 296
    :goto_0
    return-object v1

    .line 291
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/xwalk/core/XWalkDecompressor;->decompressLibrary(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 293
    :cond_2
    iget-object v1, p0, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->mContext:Landroid/content/Context;

    const-string v2, "libxwalkcore"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 295
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "version"

    const/4 v3, 0x7

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 296
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 260
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 301
    const-string v0, "XWalkLib"

    const-string v1, "DecompressTask cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/xwalk/core/XWalkLibraryLoader;->access$002(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 303
    iget-object v0, p0, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->mListener:Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;

    invoke-interface {v0}, Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;->onDecompressCancelled()V

    .line 304
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 260
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->onCancelled(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 308
    const-string v0, "XWalkLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DecompressTask finished, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Decompression Failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/xwalk/core/XWalkLibraryLoader;->access$002(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 313
    iget-object v0, p0, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->mListener:Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;

    invoke-interface {v0}, Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;->onDecompressCompleted()V

    .line 314
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 260
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 274
    const-string v3, "XWalkLib"

    const-string v4, "DecompressTask started"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-static {p0}, Lorg/xwalk/core/XWalkLibraryLoader;->access$002(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 277
    iget-object v3, p0, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/xwalk/core/XWalkDecompressor;->isLibraryCompressed(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->mIsCompressed:Z

    .line 278
    iget-boolean v3, p0, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->mIsCompressed:Z

    if-eqz v3, :cond_1

    .line 279
    iget-object v3, p0, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->mContext:Landroid/content/Context;

    const-string v4, "libxwalkcore"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 281
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v3, "version"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 282
    .local v1, "version":I
    if-lez v1, :cond_0

    const/4 v3, 0x7

    if-ne v1, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->mIsDecompressed:Z

    .line 284
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local v1    # "version":I
    :cond_1
    iget-boolean v2, p0, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->mIsCompressed:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->mIsDecompressed:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->mListener:Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;

    invoke-interface {v2}, Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;->onDecompressStarted()V

    .line 285
    :cond_2
    return-void
.end method
