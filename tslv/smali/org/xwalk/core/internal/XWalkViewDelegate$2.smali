.class final Lorg/xwalk/core/internal/XWalkViewDelegate$2;
.super Ljava/lang/Object;
.source "XWalkViewDelegate.java"

# interfaces
.implements Lorg/chromium/base/ResourceExtractor$ResourceInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/internal/XWalkViewDelegate;->setupResourceInterceptor(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$interceptableResources:Ljava/util/HashSet;

.field final synthetic val$isDownloadMode:Z

.field final synthetic val$isSharedMode:Z

.field final synthetic val$isTestApk:Z


# direct methods
.method constructor <init>(Ljava/util/HashSet;ZZLandroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkViewDelegate$2;->val$interceptableResources:Ljava/util/HashSet;

    iput-boolean p2, p0, Lorg/xwalk/core/internal/XWalkViewDelegate$2;->val$isSharedMode:Z

    iput-boolean p3, p0, Lorg/xwalk/core/internal/XWalkViewDelegate$2;->val$isTestApk:Z

    iput-object p4, p0, Lorg/xwalk/core/internal/XWalkViewDelegate$2;->val$context:Landroid/content/Context;

    iput-boolean p5, p0, Lorg/xwalk/core/internal/XWalkViewDelegate$2;->val$isDownloadMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public openRawResource(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7
    .param p1, "resource"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 268
    iget-boolean v4, p0, Lorg/xwalk/core/internal/XWalkViewDelegate$2;->val$isSharedMode:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lorg/xwalk/core/internal/XWalkViewDelegate$2;->val$isTestApk:Z

    if-eqz v4, :cond_1

    .line 270
    :cond_0
    :try_start_0
    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkViewDelegate$2;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 286
    :goto_0
    return-object v4

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " can\'t be found in assets."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 274
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    iget-boolean v4, p0, Lorg/xwalk/core/internal/XWalkViewDelegate$2;->val$isDownloadMode:Z

    if-eqz v4, :cond_2

    .line 276
    :try_start_1
    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkViewDelegate$2;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "extracted_xwalkcore"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "resDir":Ljava/lang/String;
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 279
    .end local v1    # "resDir":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 280
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " can\'t be found."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 283
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    const-string v4, "\\."

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v3, v4, v5

    .line 284
    .local v3, "resourceName":Ljava/lang/String;
    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkViewDelegate$2;->val$context:Landroid/content/Context;

    const-string v5, "raw"

    invoke-static {v4, v3, v5}, Lorg/xwalk/core/internal/XWalkViewDelegate;->access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 286
    .local v2, "resourceId":I
    :try_start_2
    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkViewDelegate$2;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    goto :goto_0

    .line 287
    :catch_2
    move-exception v0

    .line 288
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "R.raw."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " can\'t be found."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public shouldInterceptLoadRequest(Ljava/lang/String;)Z
    .locals 1
    .param p1, "resource"    # Ljava/lang/String;

    .prologue
    .line 263
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkViewDelegate$2;->val$interceptableResources:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
