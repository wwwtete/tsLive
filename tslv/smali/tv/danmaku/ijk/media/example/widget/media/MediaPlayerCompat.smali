.class public Ltv/danmaku/ijk/media/example/widget/media/MediaPlayerCompat;
.super Ljava/lang/Object;
.source "MediaPlayerCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deselectTrack(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V
    .locals 1
    .param p0, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p1, "stream"    # I

    .prologue
    .line 63
    invoke-static {p0}, Ltv/danmaku/ijk/media/example/widget/media/MediaPlayerCompat;->getIjkMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v0

    .line 64
    .local v0, "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->deselectTrack(I)V

    goto :goto_0
.end method

.method public static getIjkMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    .locals 2
    .param p0, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    if-nez p0, :cond_0

    .line 46
    const/4 v1, 0x0

    .line 52
    .end local p0    # "mp":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    :goto_0
    return-object v1

    .line 47
    .restart local p0    # "mp":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    :cond_0
    instance-of v1, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v1, :cond_2

    move-object v0, p0

    .line 48
    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .end local p0    # "mp":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    :cond_1
    :goto_1
    move-object v1, v0

    .line 52
    goto :goto_0

    .line 49
    .restart local p0    # "mp":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    :cond_2
    instance-of v1, p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->getInternalMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v1

    instance-of v1, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v1, :cond_1

    .line 50
    check-cast p0, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;

    .end local p0    # "mp":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/MediaPlayerProxy;->getInternalMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    .end local v0    # "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .restart local v0    # "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    goto :goto_1
.end method

.method public static getName(Ltv/danmaku/ijk/media/player/IMediaPlayer;)Ljava/lang/String;
    .locals 3
    .param p0, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const-string v2, "null"

    .line 39
    :goto_0
    return-object v2

    .line 28
    :cond_0
    instance-of v2, p0, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;

    if-eqz v2, :cond_2

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TextureMediaPlayer <"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .local v1, "sb":Ljava/lang/StringBuilder;
    check-cast p0, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;

    .end local p0    # "mp":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;->getInternalMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    .line 31
    .local v0, "internalMediaPlayer":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    if-nez v0, :cond_1

    .line 32
    const-string v2, "null>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 39
    .end local v0    # "internalMediaPlayer":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .restart local p0    # "mp":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getSelectedTrack(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)I
    .locals 2
    .param p0, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p1, "trackType"    # I

    .prologue
    .line 70
    invoke-static {p0}, Ltv/danmaku/ijk/media/example/widget/media/MediaPlayerCompat;->getIjkMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v0

    .line 71
    .local v0, "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    if-nez v0, :cond_0

    .line 72
    const/4 v1, -0x1

    .line 73
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getSelectedTrack(I)I

    move-result v1

    goto :goto_0
.end method

.method public static selectTrack(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V
    .locals 1
    .param p0, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p1, "stream"    # I

    .prologue
    .line 56
    invoke-static {p0}, Ltv/danmaku/ijk/media/example/widget/media/MediaPlayerCompat;->getIjkMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v0

    .line 57
    .local v0, "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->selectTrack(I)V

    goto :goto_0
.end method
