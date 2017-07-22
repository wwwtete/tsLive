.class abstract Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$Formatter;
.super Ljava/lang/Object;
.source "IjkMediaFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Formatter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$1;)V
    .locals 0
    .param p1, "x0"    # Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$1;

    .prologue
    .line 80
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$Formatter;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract doFormat(Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;)Ljava/lang/String;
.end method

.method public format(Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;)Ljava/lang/String;
    .locals 2
    .param p1, "mediaFormat"    # Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$Formatter;->doFormat(Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$Formatter;->getDefaultString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method protected getDefaultString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "N/A"

    return-object v0
.end method
