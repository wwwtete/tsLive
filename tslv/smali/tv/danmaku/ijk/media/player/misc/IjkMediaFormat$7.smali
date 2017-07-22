.class Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$7;
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
    .line 217
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$7;->this$0:Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$Formatter;-><init>(Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$1;)V

    return-void
.end method


# virtual methods
.method protected doFormat(Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;)Ljava/lang/String;
    .locals 4
    .param p1, "mediaFormat"    # Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;

    .prologue
    .line 220
    const-string v2, "fps_num"

    invoke-virtual {p1, v2}, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 221
    .local v1, "fpsNum":I
    const-string v2, "fps_den"

    invoke-virtual {p1, v2}, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 222
    .local v0, "fpsDen":I
    if-lez v1, :cond_0

    if-gtz v0, :cond_1

    .line 223
    :cond_0
    const/4 v2, 0x0

    .line 225
    :goto_0
    return-object v2

    :cond_1
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
