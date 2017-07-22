.class Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$9;
.super Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$Formatter;
.source "IjkMediaFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;


# direct methods
.method constructor <init>(Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;)V
    .locals 1
    .param p1, "this$0"    # Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;

    .prologue
    .line 240
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$9;->this$0:Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$Formatter;-><init>(Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$1;)V

    return-void
.end method


# virtual methods
.method protected doFormat(Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;)Ljava/lang/String;
    .locals 6
    .param p1, "mediaFormat"    # Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;

    .prologue
    .line 243
    const-string v1, "channel_layout"

    invoke-virtual {p1, v1}, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 244
    .local v0, "channelLayout":I
    if-gtz v0, :cond_0

    .line 245
    const/4 v1, 0x0

    .line 252
    :goto_0
    return-object v1

    .line 247
    :cond_0
    int-to-long v2, v0

    const-wide/16 v4, 0x4

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 248
    const-string v1, "mono"

    goto :goto_0

    .line 249
    :cond_1
    int-to-long v2, v0

    const-wide/16 v4, 0x3

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 250
    const-string v1, "stereo"

    goto :goto_0

    .line 252
    :cond_2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
