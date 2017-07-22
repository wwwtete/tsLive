.class public Ltv/danmaku/ijk/media/player/misc/AndroidTrackInfo;
.super Ljava/lang/Object;
.source "AndroidTrackInfo.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/misc/ITrackInfo;


# instance fields
.field private final mTrackInfo:Landroid/media/MediaPlayer$TrackInfo;


# direct methods
.method private constructor <init>(Landroid/media/MediaPlayer$TrackInfo;)V
    .locals 0
    .param p1, "trackInfo"    # Landroid/media/MediaPlayer$TrackInfo;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/misc/AndroidTrackInfo;->mTrackInfo:Landroid/media/MediaPlayer$TrackInfo;

    .line 48
    return-void
.end method

.method public static fromMediaPlayer(Landroid/media/MediaPlayer;)[Ltv/danmaku/ijk/media/player/misc/AndroidTrackInfo;
    .locals 2
    .param p0, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 29
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v0

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/misc/AndroidTrackInfo;->fromTrackInfo([Landroid/media/MediaPlayer$TrackInfo;)[Ltv/danmaku/ijk/media/player/misc/AndroidTrackInfo;

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static fromTrackInfo([Landroid/media/MediaPlayer$TrackInfo;)[Ltv/danmaku/ijk/media/player/misc/AndroidTrackInfo;
    .locals 4
    .param p0, "trackInfos"    # [Landroid/media/MediaPlayer$TrackInfo;

    .prologue
    .line 35
    if-nez p0, :cond_1

    .line 36
    const/4 v0, 0x0

    .line 43
    :cond_0
    return-object v0

    .line 38
    :cond_1
    array-length v2, p0

    new-array v0, v2, [Ltv/danmaku/ijk/media/player/misc/AndroidTrackInfo;

    .line 39
    .local v0, "androidTrackInfo":[Ltv/danmaku/ijk/media/player/misc/AndroidTrackInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 40
    new-instance v2, Ltv/danmaku/ijk/media/player/misc/AndroidTrackInfo;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Ltv/danmaku/ijk/media/player/misc/AndroidTrackInfo;-><init>(Landroid/media/MediaPlayer$TrackInfo;)V

    aput-object v2, v0, v1

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getFormat()Ltv/danmaku/ijk/media/player/misc/IMediaFormat;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 53
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/misc/AndroidTrackInfo;->mTrackInfo:Landroid/media/MediaPlayer$TrackInfo;

    if-nez v2, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-object v1

    .line 56
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 59
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/misc/AndroidTrackInfo;->mTrackInfo:Landroid/media/MediaPlayer$TrackInfo;

    invoke-virtual {v2}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 60
    .local v0, "mediaFormat":Landroid/media/MediaFormat;
    if-eqz v0, :cond_0

    .line 63
    new-instance v1, Ltv/danmaku/ijk/media/player/misc/AndroidMediaFormat;

    invoke-direct {v1, v0}, Ltv/danmaku/ijk/media/player/misc/AndroidMediaFormat;-><init>(Landroid/media/MediaFormat;)V

    goto :goto_0
.end method

.method public getInfoInline()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/misc/AndroidTrackInfo;->mTrackInfo:Landroid/media/MediaPlayer$TrackInfo;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/misc/AndroidTrackInfo;->mTrackInfo:Landroid/media/MediaPlayer$TrackInfo;

    invoke-virtual {v0}, Landroid/media/MediaPlayer$TrackInfo;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/misc/AndroidTrackInfo;->mTrackInfo:Landroid/media/MediaPlayer$TrackInfo;

    if-nez v0, :cond_0

    .line 70
    const-string v0, "und"

    .line 72
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/misc/AndroidTrackInfo;->mTrackInfo:Landroid/media/MediaPlayer$TrackInfo;

    invoke-virtual {v0}, Landroid/media/MediaPlayer$TrackInfo;->getLanguage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTrackType()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/misc/AndroidTrackInfo;->mTrackInfo:Landroid/media/MediaPlayer$TrackInfo;

    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 81
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/misc/AndroidTrackInfo;->mTrackInfo:Landroid/media/MediaPlayer$TrackInfo;

    invoke-virtual {v0}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 88
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/misc/AndroidTrackInfo;->mTrackInfo:Landroid/media/MediaPlayer$TrackInfo;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/misc/AndroidTrackInfo;->mTrackInfo:Landroid/media/MediaPlayer$TrackInfo;

    invoke-virtual {v1}, Landroid/media/MediaPlayer$TrackInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :goto_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 93
    :cond_0
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
