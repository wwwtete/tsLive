.class public Ltv/danmaku/ijk/media/example/content/PathCursor;
.super Landroid/database/AbstractCursor;
.source "PathCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;
    }
.end annotation


# static fields
.field public static final CI_FILE_NAME:I = 0x1

.field public static final CI_FILE_PATH:I = 0x2

.field public static final CI_ID:I = 0x0

.field public static final CI_IS_DIRECTORY:I = 0x3

.field public static final CI_IS_VIDEO:I = 0x4

.field public static final CN_FILE_NAME:Ljava/lang/String; = "file_name"

.field public static final CN_FILE_PATH:Ljava/lang/String; = "file_path"

.field public static final CN_ID:Ljava/lang/String; = "_id"

.field public static final CN_IS_DIRECTORY:Ljava/lang/String; = "is_directory"

.field public static final CN_IS_VIDEO:Ljava/lang/String; = "is_video"

.field public static final columnNames:[Ljava/lang/String;

.field public static sComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;",
            ">;"
        }
    .end annotation
.end field

.field private static sMediaExtSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "file_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "file_path"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "is_directory"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "is_video"

    aput-object v2, v0, v1

    sput-object v0, Ltv/danmaku/ijk/media/example/content/PathCursor;->columnNames:[Ljava/lang/String;

    .line 120
    new-instance v0, Ltv/danmaku/ijk/media/example/content/PathCursor$1;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/example/content/PathCursor$1;-><init>()V

    sput-object v0, Ltv/danmaku/ijk/media/example/content/PathCursor;->sComparator:Ljava/util/Comparator;

    .line 131
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Ltv/danmaku/ijk/media/example/content/PathCursor;->sMediaExtSet:Ljava/util/Set;

    .line 134
    sget-object v0, Ltv/danmaku/ijk/media/example/content/PathCursor;->sMediaExtSet:Ljava/util/Set;

    const-string v1, "flv"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v0, Ltv/danmaku/ijk/media/example/content/PathCursor;->sMediaExtSet:Ljava/util/Set;

    const-string v1, "mp4"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    return-void
.end method

.method constructor <init>(Ljava/io/File;[Ljava/io/File;)V
    .locals 6
    .param p1, "parentDirectory"    # Ljava/io/File;
    .param p2, "fileList"    # [Ljava/io/File;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 32
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ltv/danmaku/ijk/media/example/content/PathCursor;->mFileList:Ljava/util/List;

    .line 47
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 48
    new-instance v1, Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;

    new-instance v2, Ljava/io/File;

    const-string v3, ".."

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, p0, v2}, Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;-><init>(Ltv/danmaku/ijk/media/example/content/PathCursor;Ljava/io/File;)V

    .line 49
    .local v1, "parentFile":Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;
    const/4 v2, 0x1

    iput-boolean v2, v1, Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;->isDirectory:Z

    .line 50
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/content/PathCursor;->mFileList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    .end local v1    # "parentFile":Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;
    :cond_0
    if-eqz p2, :cond_2

    .line 54
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p2, v2

    .line 55
    .local v0, "file":Ljava/io/File;
    iget-object v4, p0, Ltv/danmaku/ijk/media/example/content/PathCursor;->mFileList:Ljava/util/List;

    new-instance v5, Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;

    invoke-direct {v5, p0, v0}, Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;-><init>(Ltv/danmaku/ijk/media/example/content/PathCursor;Ljava/io/File;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/content/PathCursor;->mFileList:Ljava/util/List;

    sget-object v3, Ltv/danmaku/ijk/media/example/content/PathCursor;->sComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 59
    :cond_2
    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Ltv/danmaku/ijk/media/example/content/PathCursor;->sMediaExtSet:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Ltv/danmaku/ijk/media/example/content/PathCursor;->columnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/content/PathCursor;->mFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 112
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public getInt(I)I
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/example/content/PathCursor;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(I)J
    .locals 6
    .param p1, "column"    # I

    .prologue
    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    .line 94
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move-wide v0, v4

    .line 102
    :goto_0
    return-wide v0

    .line 96
    :pswitch_1
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/content/PathCursor;->getPosition()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 98
    :pswitch_2
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/content/PathCursor;->mFileList:Ljava/util/List;

    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/content/PathCursor;->getPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;

    iget-boolean v0, v0, Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;->isDirectory:Z

    if-eqz v0, :cond_0

    move-wide v0, v2

    goto :goto_0

    :cond_0
    move-wide v0, v4

    goto :goto_0

    .line 100
    :pswitch_3
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/content/PathCursor;->mFileList:Ljava/util/List;

    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/content/PathCursor;->getPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;

    iget-boolean v0, v0, Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;->isVideo:Z

    if-eqz v0, :cond_1

    :goto_1
    move-wide v0, v2

    goto :goto_0

    :cond_1
    move-wide v2, v4

    goto :goto_1

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getShort(I)S
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/example/content/PathCursor;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 73
    packed-switch p1, :pswitch_data_0

    .line 79
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 75
    :pswitch_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/content/PathCursor;->mFileList:Ljava/util/List;

    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/content/PathCursor;->getPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;

    iget-object v0, v0, Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 77
    :pswitch_1
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/content/PathCursor;->mFileList:Ljava/util/List;

    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/content/PathCursor;->getPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;

    iget-object v0, v0, Ltv/danmaku/ijk/media/example/content/PathCursor$FileItem;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isNull(I)Z
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 117
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/content/PathCursor;->mFileList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
