.class Lorg/xwalk/core/XWalkDecompressor$DecompressResourceTask;
.super Ljava/lang/Object;
.source "XWalkDecompressor.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xwalk/core/XWalkDecompressor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecompressResourceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mDestFile:Ljava/io/File;

.field mZipEntry:Ljava/util/zip/ZipEntry;

.field mZipFile:Ljava/util/zip/ZipFile;


# direct methods
.method constructor <init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;)V
    .locals 0
    .param p1, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p2, "zipEntry"    # Ljava/util/zip/ZipEntry;
    .param p3, "destFile"    # Ljava/io/File;

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lorg/xwalk/core/XWalkDecompressor$DecompressResourceTask;->mZipFile:Ljava/util/zip/ZipFile;

    .line 216
    iput-object p2, p0, Lorg/xwalk/core/XWalkDecompressor$DecompressResourceTask;->mZipEntry:Ljava/util/zip/ZipEntry;

    .line 217
    iput-object p3, p0, Lorg/xwalk/core/XWalkDecompressor$DecompressResourceTask;->mDestFile:Ljava/io/File;

    .line 218
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 223
    :try_start_0
    const-string v1, "XWalkLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Decompressing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/xwalk/core/XWalkDecompressor$DecompressResourceTask;->mZipEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v1, p0, Lorg/xwalk/core/XWalkDecompressor$DecompressResourceTask;->mZipFile:Ljava/util/zip/ZipFile;

    iget-object v2, p0, Lorg/xwalk/core/XWalkDecompressor$DecompressResourceTask;->mZipEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lorg/xwalk/core/XWalkDecompressor$DecompressResourceTask;->mDestFile:Ljava/io/File;

    invoke-static {v1, v2}, Lorg/xwalk/core/XWalkDecompressor;->access$000(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    return-object v1

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "XWalkLib"

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 209
    invoke-virtual {p0}, Lorg/xwalk/core/XWalkDecompressor$DecompressResourceTask;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
