.class public Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;
.super Ljava/lang/Object;
.source "IjkMediaFormat.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/misc/IMediaFormat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$Formatter;
    }
.end annotation


# static fields
.field public static final CODEC_NAME_H264:Ljava/lang/String; = "h264"

.field public static final KEY_IJK_BIT_RATE_UI:Ljava/lang/String; = "ijk-bit-rate-ui"

.field public static final KEY_IJK_CHANNEL_UI:Ljava/lang/String; = "ijk-channel-ui"

.field public static final KEY_IJK_CODEC_LONG_NAME_UI:Ljava/lang/String; = "ijk-codec-long-name-ui"

.field public static final KEY_IJK_CODEC_NAME_UI:Ljava/lang/String; = "ijk-codec-name-ui"

.field public static final KEY_IJK_CODEC_PIXEL_FORMAT_UI:Ljava/lang/String; = "ijk-pixel-format-ui"

.field public static final KEY_IJK_CODEC_PROFILE_LEVEL_UI:Ljava/lang/String; = "ijk-profile-level-ui"

.field public static final KEY_IJK_FRAME_RATE_UI:Ljava/lang/String; = "ijk-frame-rate-ui"

.field public static final KEY_IJK_RESOLUTION_UI:Ljava/lang/String; = "ijk-resolution-ui"

.field public static final KEY_IJK_SAMPLE_RATE_UI:Ljava/lang/String; = "ijk-sample-rate-ui"

.field private static final sFormatterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$Formatter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mMediaFormat:Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;->sFormatterMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;)V
    .locals 3
    .param p1, "streamMeta"    # Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    sget-object v0, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;->sFormatterMap:Ljava/util/Map;

    const-string v1, "ijk-codec-long-name-ui"

    new-instance v2, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$1;

    invoke-direct {v2, p0}, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$1;-><init>(Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;->sFormatterMap:Ljava/util/Map;

    const-string v1, "ijk-codec-name-ui"

    new-instance v2, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$2;

    invoke-direct {v2, p0}, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$2;-><init>(Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;->sFormatterMap:Ljava/util/Map;

    const-string v1, "ijk-bit-rate-ui"

    new-instance v2, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$3;

    invoke-direct {v2, p0}, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$3;-><init>(Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;->sFormatterMap:Ljava/util/Map;

    const-string v1, "ijk-profile-level-ui"

    new-instance v2, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$4;

    invoke-direct {v2, p0}, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$4;-><init>(Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;->sFormatterMap:Ljava/util/Map;

    const-string v1, "ijk-pixel-format-ui"

    new-instance v2, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$5;

    invoke-direct {v2, p0}, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$5;-><init>(Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;->sFormatterMap:Ljava/util/Map;

    const-string v1, "ijk-resolution-ui"

    new-instance v2, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$6;

    invoke-direct {v2, p0}, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$6;-><init>(Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;->sFormatterMap:Ljava/util/Map;

    const-string v1, "ijk-frame-rate-ui"

    new-instance v2, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$7;

    invoke-direct {v2, p0}, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$7;-><init>(Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;->sFormatterMap:Ljava/util/Map;

    const-string v1, "ijk-sample-rate-ui"

    new-instance v2, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$8;

    invoke-direct {v2, p0}, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$8;-><init>(Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;->sFormatterMap:Ljava/util/Map;

    const-string v1, "ijk-channel-ui"

    new-instance v2, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$9;

    invoke-direct {v2, p0}, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$9;-><init>(Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;->mMediaFormat:Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;

    .line 52
    return-void
.end method


# virtual methods
.method public getInteger(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;->mMediaFormat:Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;->mMediaFormat:Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;->mMediaFormat:Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;

    if-nez v1, :cond_0

    .line 66
    const/4 v1, 0x0

    .line 73
    :goto_0
    return-object v1

    .line 68
    :cond_0
    sget-object v1, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;->sFormatterMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    sget-object v1, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;->sFormatterMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$Formatter;

    .line 70
    .local v0, "formatter":Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$Formatter;
    invoke-virtual {v0, p0}, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$Formatter;->format(Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 73
    .end local v0    # "formatter":Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$Formatter;
    :cond_1
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;->mMediaFormat:Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;

    invoke-virtual {v1, p1}, Ltv/danmaku/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
