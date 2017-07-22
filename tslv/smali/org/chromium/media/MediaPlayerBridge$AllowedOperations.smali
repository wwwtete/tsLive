.class public Lorg/chromium/media/MediaPlayerBridge$AllowedOperations;
.super Ljava/lang/Object;
.source "MediaPlayerBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/MediaPlayerBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AllowedOperations"
.end annotation


# instance fields
.field private final mCanPause:Z

.field private final mCanSeekBackward:Z

.field private final mCanSeekForward:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 0
    .param p1, "canPause"    # Z
    .param p2, "canSeekForward"    # Z
    .param p3, "canSeekBackward"    # Z

    .prologue
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput-boolean p1, p0, Lorg/chromium/media/MediaPlayerBridge$AllowedOperations;->mCanPause:Z

    .line 349
    iput-boolean p2, p0, Lorg/chromium/media/MediaPlayerBridge$AllowedOperations;->mCanSeekForward:Z

    .line 350
    iput-boolean p3, p0, Lorg/chromium/media/MediaPlayerBridge$AllowedOperations;->mCanSeekBackward:Z

    .line 351
    return-void
.end method

.method private canPause()Z
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
        value = "AllowedOperations"
    .end annotation

    .prologue
    .line 355
    iget-boolean v0, p0, Lorg/chromium/media/MediaPlayerBridge$AllowedOperations;->mCanPause:Z

    return v0
.end method

.method private canSeekBackward()Z
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
        value = "AllowedOperations"
    .end annotation

    .prologue
    .line 365
    iget-boolean v0, p0, Lorg/chromium/media/MediaPlayerBridge$AllowedOperations;->mCanSeekBackward:Z

    return v0
.end method

.method private canSeekForward()Z
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
        value = "AllowedOperations"
    .end annotation

    .prologue
    .line 360
    iget-boolean v0, p0, Lorg/chromium/media/MediaPlayerBridge$AllowedOperations;->mCanSeekForward:Z

    return v0
.end method
