.class public Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
.super Landroid/widget/FrameLayout;
.source "IjkVideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field public static final RENDER_NONE:I = 0x0

.field public static final RENDER_SURFACE_VIEW:I = 0x1

.field public static final RENDER_TEXTURE_VIEW:I = 0x2

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final s_allAspectRatio:[I


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAllRenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAppContext:Landroid/content/Context;

.field private mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private mCurrentAspectRatio:I

.field private mCurrentAspectRatioIndex:I

.field private mCurrentBufferPercentage:I

.field private mCurrentRender:I

.field private mCurrentRenderIndex:I

.field private mCurrentState:I

.field private mEnableBackgroundPlay:Z

.field public mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHudViewHolder:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

.field public mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

.field private mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

.field private mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field private mPrepareEndTime:J

.field private mPrepareStartTime:J

.field mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field private mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

.field mSHCallback:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;

.field private mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

.field private mSeekEndTime:J

.field private mSeekStartTime:J

.field private mSeekWhenPrepared:I

.field private mSettings:Ltv/danmaku/ijk/media/example/application/Settings;

.field mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoRotationDegree:I

.field private mVideoSarDen:I

.field private mVideoSarNum:I

.field private mVideoWidth:I

.field private subtitleDisplay:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 816
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->s_allAspectRatio:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x4
        0x5
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 136
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 65
    const-string v0, "IjkVideoView"

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->TAG:Ljava/lang/String;

    .line 84
    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    .line 85
    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    .line 88
    iput-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSurfaceHolder:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

    .line 89
    iput-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 103
    iput-boolean v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanPause:Z

    .line 104
    iput-boolean v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanSeekBack:Z

    .line 105
    iput-boolean v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanSeekForward:Z

    .line 123
    iput-wide v4, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPrepareStartTime:J

    .line 124
    iput-wide v4, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPrepareEndTime:J

    .line 126
    iput-wide v4, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekStartTime:J

    .line 127
    iput-wide v4, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekEndTime:J

    .line 396
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 414
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 471
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$3;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$3;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 485
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$4;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$4;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 492
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 568
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSHCallback:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;

    .line 823
    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatioIndex:I

    .line 824
    sget-object v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->s_allAspectRatio:[I

    aget v0, v0, v2

    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatio:I

    .line 843
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    .line 844
    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRenderIndex:I

    .line 845
    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRender:I

    .line 997
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mEnableBackgroundPlay:Z

    .line 137
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->initVideoView(Landroid/content/Context;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 141
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    const-string v0, "IjkVideoView"

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->TAG:Ljava/lang/String;

    .line 84
    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    .line 85
    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    .line 88
    iput-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSurfaceHolder:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

    .line 89
    iput-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 103
    iput-boolean v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanPause:Z

    .line 104
    iput-boolean v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanSeekBack:Z

    .line 105
    iput-boolean v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanSeekForward:Z

    .line 123
    iput-wide v4, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPrepareStartTime:J

    .line 124
    iput-wide v4, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPrepareEndTime:J

    .line 126
    iput-wide v4, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekStartTime:J

    .line 127
    iput-wide v4, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekEndTime:J

    .line 396
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 414
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 471
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$3;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$3;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 485
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$4;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$4;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 492
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 568
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSHCallback:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;

    .line 823
    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatioIndex:I

    .line 824
    sget-object v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->s_allAspectRatio:[I

    aget v0, v0, v2

    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatio:I

    .line 843
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    .line 844
    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRenderIndex:I

    .line 845
    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRender:I

    .line 997
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mEnableBackgroundPlay:Z

    .line 142
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->initVideoView(Landroid/content/Context;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 146
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    const-string v0, "IjkVideoView"

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->TAG:Ljava/lang/String;

    .line 84
    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    .line 85
    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    .line 88
    iput-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSurfaceHolder:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

    .line 89
    iput-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 103
    iput-boolean v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanPause:Z

    .line 104
    iput-boolean v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanSeekBack:Z

    .line 105
    iput-boolean v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanSeekForward:Z

    .line 123
    iput-wide v4, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPrepareStartTime:J

    .line 124
    iput-wide v4, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPrepareEndTime:J

    .line 126
    iput-wide v4, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekStartTime:J

    .line 127
    iput-wide v4, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekEndTime:J

    .line 396
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 414
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 471
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$3;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$3;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 485
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$4;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$4;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 492
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 568
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSHCallback:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;

    .line 823
    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatioIndex:I

    .line 824
    sget-object v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->s_allAspectRatio:[I

    aget v0, v0, v2

    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatio:I

    .line 843
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    .line 844
    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRenderIndex:I

    .line 845
    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRender:I

    .line 997
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mEnableBackgroundPlay:Z

    .line 147
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->initVideoView(Landroid/content/Context;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 152
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    const-string v0, "IjkVideoView"

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->TAG:Ljava/lang/String;

    .line 84
    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    .line 85
    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    .line 88
    iput-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSurfaceHolder:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

    .line 89
    iput-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 103
    iput-boolean v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanPause:Z

    .line 104
    iput-boolean v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanSeekBack:Z

    .line 105
    iput-boolean v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanSeekForward:Z

    .line 123
    iput-wide v4, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPrepareStartTime:J

    .line 124
    iput-wide v4, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPrepareEndTime:J

    .line 126
    iput-wide v4, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekStartTime:J

    .line 127
    iput-wide v4, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekEndTime:J

    .line 396
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$1;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 414
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$2;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 471
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$3;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$3;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 485
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$4;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$4;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 492
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$5;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 568
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView$6;-><init>(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSHCallback:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;

    .line 823
    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatioIndex:I

    .line 824
    sget-object v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->s_allAspectRatio:[I

    aget v0, v0, v2

    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatio:I

    .line 843
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    .line 844
    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRenderIndex:I

    .line 845
    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRender:I

    .line 997
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mEnableBackgroundPlay:Z

    .line 153
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->initVideoView(Landroid/content/Context;)V

    .line 154
    return-void
.end method

.method static synthetic access$000(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .prologue
    .line 64
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$002(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .prologue
    .line 64
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$1000(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .prologue
    .line 64
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    return-object v0
.end method

.method static synthetic access$102(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1100(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IMediaController;
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .prologue
    .line 64
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    return-object v0
.end method

.method static synthetic access$1200(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .prologue
    .line 64
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$1300(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .prologue
    .line 64
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$1302(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$1400(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .prologue
    .line 64
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$1402(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$1500(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .prologue
    .line 64
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$1502(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$1600(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .prologue
    .line 64
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$1702(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$1800(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)J
    .locals 2
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .prologue
    .line 64
    iget-wide v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekEndTime:J

    return-wide v0
.end method

.method static synthetic access$1802(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;J)J
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
    .param p1, "x1"    # J

    .prologue
    .line 64
    iput-wide p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekEndTime:J

    return-wide p1
.end method

.method static synthetic access$1900(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)J
    .locals 2
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .prologue
    .line 64
    iget-wide v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekStartTime:J

    return-wide v0
.end method

.method static synthetic access$200(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .prologue
    .line 64
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoSarNum:I

    return v0
.end method

.method static synthetic access$2000(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .prologue
    .line 64
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoSarNum:I

    return p1
.end method

.method static synthetic access$2102(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
    .param p1, "x1"    # Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

    .prologue
    .line 64
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSurfaceHolder:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

    return-object p1
.end method

.method static synthetic access$2200(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;Ltv/danmaku/ijk/media/player/IMediaPlayer;Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;)V
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
    .param p1, "x1"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "x2"    # Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->bindSurfaceHolder(Ltv/danmaku/ijk/media/player/IMediaPlayer;Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;)V

    return-void
.end method

.method static synthetic access$2300(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)V
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .prologue
    .line 64
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$300(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)I
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .prologue
    .line 64
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoSarDen:I

    return v0
.end method

.method static synthetic access$302(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoSarDen:I

    return p1
.end method

.method static synthetic access$400(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/IRenderView;
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .prologue
    .line 64
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    return-object v0
.end method

.method static synthetic access$500(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)J
    .locals 2
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .prologue
    .line 64
    iget-wide v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPrepareEndTime:J

    return-wide v0
.end method

.method static synthetic access$502(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;J)J
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
    .param p1, "x1"    # J

    .prologue
    .line 64
    iput-wide p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPrepareEndTime:J

    return-wide p1
.end method

.method static synthetic access$600(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .prologue
    .line 64
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mHudViewHolder:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    return-object v0
.end method

.method static synthetic access$700(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)J
    .locals 2
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .prologue
    .line 64
    iget-wide v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPrepareStartTime:J

    return-wide v0
.end method

.method static synthetic access$802(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;I)I
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$900(Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .prologue
    .line 64
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method private attachMediaController()V
    .locals 3

    .prologue
    .line 387
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    if-eqz v1, :cond_0

    .line 388
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    invoke-interface {v1, p0}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 389
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 390
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .line 391
    .local v0, "anchorView":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    invoke-interface {v1, v0}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->setAnchorView(Landroid/view/View;)V

    .line 392
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result v2

    invoke-interface {v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->setEnabled(Z)V

    .line 394
    .end local v0    # "anchorView":Landroid/view/View;
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 390
    goto :goto_0
.end method

.method private bindSurfaceHolder(Ltv/danmaku/ijk/media/player/IMediaPlayer;Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;)V
    .locals 1
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "holder"    # Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

    .prologue
    .line 557
    if-nez p1, :cond_0

    .line 566
    :goto_0
    return-void

    .line 560
    :cond_0
    if-nez p2, :cond_1

    .line 561
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 565
    :cond_1
    invoke-interface {p2, p1}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;->bindToMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    goto :goto_0
.end method

.method private buildLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 1144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1145
    const-string p1, "und"

    .line 1146
    .end local p1    # "language":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private buildResolution(IIII)Ljava/lang/String;
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "sarNum"    # I
    .param p4, "sarDen"    # I

    .prologue
    const/4 v2, 0x1

    .line 1091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1092
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1093
    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1094
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1096
    if-gt p3, v2, :cond_0

    if-le p4, v2, :cond_1

    .line 1097
    :cond_0
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1099
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1100
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1101
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private buildTimeMilli(J)Ljava/lang/String;
    .locals 13
    .param p1, "duration"    # J

    .prologue
    .line 1108
    const-wide/16 v8, 0x3e8

    div-long v6, p1, v8

    .line 1109
    .local v6, "total_seconds":J
    const-wide/16 v8, 0xe10

    div-long v0, v6, v8

    .line 1110
    .local v0, "hours":J
    const-wide/16 v8, 0xe10

    rem-long v8, v6, v8

    const-wide/16 v10, 0x3c

    div-long v2, v8, v10

    .line 1111
    .local v2, "minutes":J
    const-wide/16 v8, 0x3c

    rem-long v4, v6, v8

    .line 1112
    .local v4, "seconds":J
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-gtz v8, :cond_0

    .line 1113
    const-string v8, "--:--"

    .line 1120
    :goto_0
    return-object v8

    .line 1115
    :cond_0
    const-wide/16 v8, 0x64

    cmp-long v8, v0, v8

    if-ltz v8, :cond_1

    .line 1116
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%d:%02d:%02d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 1117
    :cond_1
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-lez v8, :cond_2

    .line 1118
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%02d:%02d:%02d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 1120
    :cond_2
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%02d:%02d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method private buildTrackType(I)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 1125
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1126
    .local v0, "context":Landroid/content/Context;
    packed-switch p1, :pswitch_data_0

    .line 1139
    const v1, 0x7f080053

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 1128
    :pswitch_0
    const v1, 0x7f080054

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1130
    :pswitch_1
    const v1, 0x7f08004f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1132
    :pswitch_2
    const v1, 0x7f080051

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1134
    :pswitch_3
    const v1, 0x7f080052

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1136
    :pswitch_4
    const v1, 0x7f080050

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public static getPlayerText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "player"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 908
    packed-switch p1, :pswitch_data_0

    .line 919
    const v1, 0x7f08004e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 922
    .local v0, "text":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 910
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_0
    const v1, 0x7f08005e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 911
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 913
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_1
    const v1, 0x7f080060

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 914
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 916
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_2
    const v1, 0x7f08005f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 917
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 908
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getRenderText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "render"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 875
    packed-switch p1, :pswitch_data_0

    .line 886
    const v1, 0x7f08004e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 889
    .local v0, "text":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 877
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_0
    const v1, 0x7f080062

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 878
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 880
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_1
    const v1, 0x7f080063

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 881
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 883
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_2
    const v1, 0x7f080064

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 884
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 875
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initBackground()V
    .locals 2

    .prologue
    .line 1000
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/application/Settings;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/application/Settings;->getEnableBackgroundPlay()Z

    move-result v0

    iput-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mEnableBackgroundPlay:Z

    .line 1001
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mEnableBackgroundPlay:Z

    if-eqz v0, :cond_0

    .line 1002
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/services/MediaPlayerService;->intentToStart(Landroid/content/Context;)V

    .line 1003
    invoke-static {}, Ltv/danmaku/ijk/media/example/services/MediaPlayerService;->getMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 1004
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mHudViewHolder:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mHudViewHolder:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->setMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 1007
    :cond_0
    return-void
.end method

.method private initRenders()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 848
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 850
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/application/Settings;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/application/Settings;->getEnableSurfaceView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 852
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/application/Settings;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/application/Settings;->getEnableTextureView()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 853
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 854
    :cond_1
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/application/Settings;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/application/Settings;->getEnableNoView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 855
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
    :cond_2
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 858
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 859
    :cond_3
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    iget v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRenderIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRender:I

    .line 860
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRender:I

    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setRender(I)V

    .line 861
    return-void
.end method

.method private initVideoView(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    .line 163
    new-instance v1, Ltv/danmaku/ijk/media/example/application/Settings;

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Ltv/danmaku/ijk/media/example/application/Settings;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/application/Settings;

    .line 165
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->initBackground()V

    .line 166
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->initRenders()V

    .line 168
    iput v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoWidth:I

    .line 169
    iput v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoHeight:I

    .line 176
    iput v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    .line 177
    iput v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    .line 179
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->subtitleDisplay:Landroid/widget/TextView;

    .line 180
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->subtitleDisplay:Landroid/widget/TextView;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 181
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->subtitleDisplay:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 182
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 186
    .local v0, "layoutParams_txt":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->subtitleDisplay:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 777
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openVideo()V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 309
    iget-object v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mUri:Landroid/net/Uri;

    if-eqz v5, :cond_0

    iget-object v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSurfaceHolder:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

    if-nez v5, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    invoke-virtual {p0, v6}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->release(Z)V

    .line 317
    iget-object v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 318
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v8, v7}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 321
    :try_start_0
    iget-object v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/application/Settings;

    invoke-virtual {v5}, Ltv/danmaku/ijk/media/example/application/Settings;->getPlayer()I

    move-result v5

    invoke-virtual {p0, v5}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->createPlayer(I)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object v5

    iput-object v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 325
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 329
    .local v1, "context":Landroid/content/Context;
    iget-object v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    invoke-interface {v5, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 330
    iget-object v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    invoke-interface {v5, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 331
    iget-object v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    invoke-interface {v5, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 332
    iget-object v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    invoke-interface {v5, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 333
    iget-object v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    invoke-interface {v5, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 334
    iget-object v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v5, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 335
    iget-object v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    invoke-interface {v5, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 337
    const/4 v5, 0x0

    iput v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentBufferPercentage:I

    .line 338
    iget-object v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 339
    .local v4, "scheme":Ljava/lang/String;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_4

    iget-object v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/application/Settings;

    .line 340
    invoke-virtual {v5}, Ltv/danmaku/ijk/media/example/application/Settings;->getUsingMediaDataSource()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 341
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "file"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 342
    :cond_2
    new-instance v2, Ltv/danmaku/ijk/media/example/widget/media/FileMediaDataSource;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ltv/danmaku/ijk/media/example/widget/media/FileMediaDataSource;-><init>(Ljava/io/File;)V

    .line 343
    .local v2, "dataSource":Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;
    iget-object v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v5, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;)V

    .line 349
    .end local v2    # "dataSource":Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;
    :goto_1
    iget-object v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSurfaceHolder:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

    invoke-direct {p0, v5, v6}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->bindSurfaceHolder(Ltv/danmaku/ijk/media/player/IMediaPlayer;Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;)V

    .line 350
    iget-object v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setAudioStreamType(I)V

    .line 351
    iget-object v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mPrepareStartTime:J

    .line 353
    iget-object v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v5}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->prepareAsync()V

    .line 354
    iget-object v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mHudViewHolder:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    if-eqz v5, :cond_3

    .line 355
    iget-object v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mHudViewHolder:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-virtual {v5, v6}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->setMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 361
    :cond_3
    const/4 v5, 0x1

    iput v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    .line 362
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->attachMediaController()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 363
    .end local v1    # "context":Landroid/content/Context;
    .end local v4    # "scheme":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 364
    .local v3, "ex":Ljava/io/IOException;
    :try_start_1
    iget-object v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to open content: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    const/4 v5, -0x1

    iput v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    .line 366
    const/4 v5, -0x1

    iput v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    .line 367
    iget-object v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 373
    .end local v3    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    throw v5

    .line 344
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v4    # "scheme":Ljava/lang/String;
    :cond_4
    :try_start_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-lt v5, v6, :cond_5

    .line 345
    iget-object v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    iget-object v7, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mUri:Landroid/net/Uri;

    iget-object v8, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mHeaders:Ljava/util/Map;

    invoke-interface {v5, v6, v7, v8}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 368
    .end local v1    # "context":Landroid/content/Context;
    .end local v4    # "scheme":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 369
    .local v3, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_3
    iget-object v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to open content: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    const/4 v5, -0x1

    iput v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    .line 371
    const/4 v5, -0x1

    iput v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    .line 372
    iget-object v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 347
    .end local v3    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v4    # "scheme":Ljava/lang/String;
    :cond_5
    :try_start_4
    iget-object v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method

.method private setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 282
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mUri:Landroid/net/Uri;

    .line 283
    iput-object p2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mHeaders:Ljava/util/Map;

    .line 284
    const/4 v0, 0x0

    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekWhenPrepared:I

    .line 285
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->openVideo()V

    .line 286
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->requestLayout()V

    .line 287
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->invalidate()V

    .line 288
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->hide()V

    .line 705
    :goto_0
    return-void

    .line 703
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->show()V

    goto :goto_0
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 785
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 790
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 795
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCanSeekForward:Z

    return v0
.end method

.method public createPlayer(I)Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 14
    .param p1, "playerType"    # I

    .prologue
    const-wide/16 v12, 0x1

    const-wide/16 v10, 0x0

    const/4 v7, 0x4

    .line 926
    const/4 v3, 0x0

    .line 928
    .local v3, "mediaPlayer":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    packed-switch p1, :pswitch_data_0

    .line 941
    :pswitch_0
    const/4 v2, 0x0

    .line 942
    .local v2, "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mUri:Landroid/net/Uri;

    if-eqz v6, :cond_0

    .line 943
    new-instance v2, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .end local v2    # "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    invoke-direct {v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>()V

    .line 944
    .restart local v2    # "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    const/4 v6, 0x3

    invoke-static {v6}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_setLogLevel(I)V

    .line 946
    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/application/Settings;

    invoke-virtual {v6}, Ltv/danmaku/ijk/media/example/application/Settings;->getUsingMediaCodec()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 947
    const-string v6, "mediacodec"

    invoke-virtual {v2, v7, v6, v12, v13}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 948
    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/application/Settings;

    invoke-virtual {v6}, Ltv/danmaku/ijk/media/example/application/Settings;->getUsingMediaCodecAutoRotate()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 949
    const-string v6, "mediacodec-auto-rotate"

    invoke-virtual {v2, v7, v6, v12, v13}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 953
    :goto_0
    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/application/Settings;

    invoke-virtual {v6}, Ltv/danmaku/ijk/media/example/application/Settings;->getMediaCodecHandleResolutionChange()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 954
    const-string v6, "mediacodec-handle-resolution-change"

    invoke-virtual {v2, v7, v6, v12, v13}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 962
    :goto_1
    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/application/Settings;

    invoke-virtual {v6}, Ltv/danmaku/ijk/media/example/application/Settings;->getUsingOpenSLES()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 963
    const-string v6, "opensles"

    invoke-virtual {v2, v7, v6, v12, v13}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 968
    :goto_2
    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/application/Settings;

    invoke-virtual {v6}, Ltv/danmaku/ijk/media/example/application/Settings;->getPixelFormat()Ljava/lang/String;

    move-result-object v5

    .line 969
    .local v5, "pixelFormat":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 970
    const-string v6, "overlay-format"

    const-wide/32 v8, 0x32335652

    invoke-virtual {v2, v7, v6, v8, v9}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 974
    :goto_3
    const-string v6, "framedrop"

    invoke-virtual {v2, v7, v6, v12, v13}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 975
    const-string v6, "start-on-prepared"

    invoke-virtual {v2, v7, v6, v10, v11}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 977
    const/4 v6, 0x1

    const-string v7, "http-detect-range-support"

    invoke-virtual {v2, v6, v7, v10, v11}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 979
    const/4 v6, 0x2

    const-string v7, "skip_loop_filter"

    const-wide/16 v8, 0x30

    invoke-virtual {v2, v6, v7, v8, v9}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 981
    .end local v5    # "pixelFormat":Ljava/lang/String;
    :cond_0
    move-object v3, v2

    .line 986
    .end local v2    # "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    :goto_4
    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/application/Settings;

    invoke-virtual {v6}, Ltv/danmaku/ijk/media/example/application/Settings;->getEnableDetachedSurfaceTextureView()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 987
    new-instance v4, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;

    invoke-direct {v4, v3}, Ltv/danmaku/ijk/media/player/TextureMediaPlayer;-><init>(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .end local v3    # "mediaPlayer":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .local v4, "mediaPlayer":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    move-object v3, v4

    .line 990
    .end local v4    # "mediaPlayer":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .restart local v3    # "mediaPlayer":Ltv/danmaku/ijk/media/player/IMediaPlayer;
    :cond_1
    return-object v3

    .line 930
    :pswitch_1
    new-instance v0, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;

    iget-object v6, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;-><init>(Landroid/content/Context;)V

    .line 931
    .local v0, "IjkExoMediaPlayer":Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;
    move-object v3, v0

    .line 933
    goto :goto_4

    .line 935
    .end local v0    # "IjkExoMediaPlayer":Ltv/danmaku/ijk/media/exo/IjkExoMediaPlayer;
    :pswitch_2
    new-instance v1, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-direct {v1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;-><init>()V

    .line 936
    .local v1, "androidMediaPlayer":Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
    move-object v3, v1

    .line 938
    goto :goto_4

    .line 951
    .end local v1    # "androidMediaPlayer":Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
    .restart local v2    # "ijkMediaPlayer":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    :cond_2
    const-string v6, "mediacodec-auto-rotate"

    invoke-virtual {v2, v7, v6, v10, v11}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_0

    .line 956
    :cond_3
    const-string v6, "mediacodec-handle-resolution-change"

    invoke-virtual {v2, v7, v6, v10, v11}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_1

    .line 959
    :cond_4
    const-string v6, "mediacodec"

    invoke-virtual {v2, v7, v6, v10, v11}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_1

    .line 965
    :cond_5
    const-string v6, "opensles"

    invoke-virtual {v2, v7, v6, v10, v11}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    goto :goto_2

    .line 972
    .restart local v5    # "pixelFormat":Ljava/lang/String;
    :cond_6
    const-string v6, "overlay-format"

    invoke-virtual {v2, v7, v6, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 928
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public deselectTrack(I)V
    .locals 1
    .param p1, "stream"    # I

    .prologue
    .line 1161
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {v0, p1}, Ltv/danmaku/ijk/media/example/widget/media/MediaPlayerCompat;->deselectTrack(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V

    .line 1162
    return-void
.end method

.method public enterBackground()V
    .locals 1

    .prologue
    .line 1014
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/services/MediaPlayerService;->setMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 1015
    return-void
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 800
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 771
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentBufferPercentage:I

    .line 773
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 746
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v0, v0

    .line 749
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 737
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    .line 741
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSelectedTrack(I)I
    .locals 1
    .param p1, "trackType"    # I

    .prologue
    .line 1165
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {v0, p1}, Ltv/danmaku/ijk/media/example/widget/media/MediaPlayerCompat;->getSelectedTrack(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)I

    move-result v0

    return v0
.end method

.method public getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-nez v0, :cond_0

    .line 1151
    const/4 v0, 0x0

    .line 1153
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public isBackgroundPlayEnabled()Z
    .locals 1

    .prologue
    .line 1010
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mEnableBackgroundPlay:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 765
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 695
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 642
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    if-eqz v0, :cond_0

    .line 643
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleMediaControlsVisiblity()V

    .line 645
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 650
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    if-eqz v0, :cond_0

    .line 651
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->toggleMediaControlsVisiblity()V

    .line 653
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 718
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->pause()V

    .line 721
    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    .line 724
    :cond_0
    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    .line 725
    return-void
.end method

.method public release(Z)V
    .locals 4
    .param p1, "cleartargetstate"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 626
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v1, :cond_1

    .line 627
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->reset()V

    .line 628
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V

    .line 629
    iput-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 631
    iput v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    .line 632
    if-eqz p1, :cond_0

    .line 633
    iput v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    .line 635
    :cond_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 636
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 638
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_1
    return-void
.end method

.method public releaseWithoutStop()V
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 620
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 732
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->openVideo()V

    .line 733
    return-void
.end method

.method public seekTo(I)V
    .locals 4
    .param p1, "msec"    # I

    .prologue
    .line 754
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekStartTime:J

    .line 756
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->seekTo(J)V

    .line 757
    const/4 v0, 0x0

    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekWhenPrepared:I

    .line 761
    :goto_0
    return-void

    .line 759
    :cond_0
    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public selectTrack(I)V
    .locals 1
    .param p1, "stream"    # I

    .prologue
    .line 1157
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {v0, p1}, Ltv/danmaku/ijk/media/example/widget/media/MediaPlayerCompat;->selectTrack(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V

    .line 1158
    return-void
.end method

.method public setHudView(Landroid/widget/TableLayout;)V
    .locals 2
    .param p1, "tableLayout"    # Landroid/widget/TableLayout;

    .prologue
    .line 250
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;-><init>(Landroid/content/Context;Landroid/widget/TableLayout;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mHudViewHolder:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    .line 251
    return-void
.end method

.method public setMediaController(Ltv/danmaku/ijk/media/example/widget/media/IMediaController;)V
    .locals 1
    .param p1, "controller"    # Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    .prologue
    .line 379
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/example/widget/media/IMediaController;->hide()V

    .line 382
    :cond_0
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaController:Ltv/danmaku/ijk/media/example/widget/media/IMediaController;

    .line 383
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->attachMediaController()V

    .line 384
    return-void
.end method

.method public setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .prologue
    .line 530
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 531
    return-void
.end method

.method public setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .prologue
    .line 542
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 543
    return-void
.end method

.method public setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .prologue
    .line 552
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 553
    return-void
.end method

.method public setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "l"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .prologue
    .line 520
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 521
    return-void
.end method

.method public setRender(I)V
    .locals 7
    .param p1, "render"    # I

    .prologue
    .line 223
    packed-switch p1, :pswitch_data_0

    .line 244
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "invalid render %d\n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :goto_0
    return-void

    .line 225
    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setRenderView(Ltv/danmaku/ijk/media/example/widget/media/IRenderView;)V

    goto :goto_0

    .line 228
    :pswitch_1
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;

    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;-><init>(Landroid/content/Context;)V

    .line 229
    .local v0, "renderView":Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v1, :cond_0

    .line 230
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->getSurfaceHolder()Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;->bindToMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 231
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v1

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->setVideoSize(II)V

    .line 232
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarNum()I

    move-result v1

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarDen()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->setVideoSampleAspectRatio(II)V

    .line 233
    iget v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatio:I

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;->setAspectRatio(I)V

    .line 235
    :cond_0
    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setRenderView(Ltv/danmaku/ijk/media/example/widget/media/IRenderView;)V

    goto :goto_0

    .line 239
    .end local v0    # "renderView":Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;
    :pswitch_2
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;

    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;-><init>(Landroid/content/Context;)V

    .line 240
    .local v0, "renderView":Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;
    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setRenderView(Ltv/danmaku/ijk/media/example/widget/media/IRenderView;)V

    goto :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setRenderView(Ltv/danmaku/ijk/media/example/widget/media/IRenderView;)V
    .locals 6
    .param p1, "renderView"    # Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 190
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    if-eqz v2, :cond_1

    .line 191
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v2, :cond_0

    .line 192
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v2, v5}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 194
    :cond_0
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->getView()Landroid/view/View;

    move-result-object v1

    .line 195
    .local v1, "renderUIView":Landroid/view/View;
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    iget-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSHCallback:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;

    invoke-interface {v2, v3}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->removeRenderCallback(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;)V

    .line 196
    iput-object v5, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    .line 197
    invoke-virtual {p0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->removeView(Landroid/view/View;)V

    .line 200
    .end local v1    # "renderUIView":Landroid/view/View;
    :cond_1
    if-nez p1, :cond_2

    .line 220
    :goto_0
    return-void

    .line 203
    :cond_2
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    .line 204
    iget v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatio:I

    invoke-interface {p1, v2}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->setAspectRatio(I)V

    .line 205
    iget v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoWidth:I

    if-lez v2, :cond_3

    iget v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoHeight:I

    if-lez v2, :cond_3

    .line 206
    iget v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoWidth:I

    iget v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoHeight:I

    invoke-interface {p1, v2, v3}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->setVideoSize(II)V

    .line 207
    :cond_3
    iget v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoSarNum:I

    if-lez v2, :cond_4

    iget v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoSarDen:I

    if-lez v2, :cond_4

    .line 208
    iget v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoSarNum:I

    iget v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoSarDen:I

    invoke-interface {p1, v2, v3}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->setVideoSampleAspectRatio(II)V

    .line 210
    :cond_4
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    invoke-interface {v2}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->getView()Landroid/view/View;

    move-result-object v1

    .line 211
    .restart local v1    # "renderUIView":Landroid/view/View;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v0, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 215
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    invoke-virtual {p0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->addView(Landroid/view/View;)V

    .line 218
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    iget-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSHCallback:Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;

    invoke-interface {v2, v3}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->addRenderCallback(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;)V

    .line 219
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    iget v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoRotationDegree:I

    invoke-interface {v2, v3}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->setVideoRotation(I)V

    goto :goto_0
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 259
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 260
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 268
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 269
    return-void
.end method

.method public showMediaInfo()V
    .locals 20

    .prologue
    .line 1025
    move-object/from16 v0, p0

    iget-object v12, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-nez v12, :cond_0

    .line 1088
    :goto_0
    return-void

    .line 1028
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Ltv/danmaku/ijk/media/example/widget/media/MediaPlayerCompat;->getSelectedTrack(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)I

    move-result v8

    .line 1029
    .local v8, "selectedVideoTrack":I
    move-object/from16 v0, p0

    iget-object v12, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v13, 0x2

    invoke-static {v12, v13}, Ltv/danmaku/ijk/media/example/widget/media/MediaPlayerCompat;->getSelectedTrack(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)I

    move-result v6

    .line 1030
    .local v6, "selectedAudioTrack":I
    move-object/from16 v0, p0

    iget-object v12, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v13, 0x3

    invoke-static {v12, v13}, Ltv/danmaku/ijk/media/example/widget/media/MediaPlayerCompat;->getSelectedTrack(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)I

    move-result v7

    .line 1032
    .local v7, "selectedSubtitleTrack":I
    new-instance v3, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;

    invoke-virtual/range {p0 .. p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v3, v12}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;-><init>(Landroid/content/Context;)V

    .line 1033
    .local v3, "builder":Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;
    const v12, 0x7f080098

    invoke-virtual {v3, v12}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendSection(I)Landroid/view/View;

    .line 1034
    const v12, 0x7f080098

    move-object/from16 v0, p0

    iget-object v13, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {v13}, Ltv/danmaku/ijk/media/example/widget/media/MediaPlayerCompat;->getName(Ltv/danmaku/ijk/media/player/IMediaPlayer;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1035
    const v12, 0x7f080096

    invoke-virtual {v3, v12}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendSection(I)Landroid/view/View;

    .line 1036
    const v12, 0x7f08009a

    move-object/from16 v0, p0

    iget v13, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoHeight:I

    move-object/from16 v0, p0

    iget v15, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoSarNum:I

    move-object/from16 v0, p0

    iget v0, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mVideoSarDen:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v13, v14, v15, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->buildResolution(IIII)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1037
    const v12, 0x7f080095

    move-object/from16 v0, p0

    iget-object v13, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v13}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getDuration()J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->buildTimeMilli(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1039
    move-object/from16 v0, p0

    iget-object v12, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v12}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    move-result-object v10

    .line 1040
    .local v10, "trackInfos":[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    if-eqz v10, :cond_6

    .line 1041
    const/4 v4, -0x1

    .line 1042
    .local v4, "index":I
    array-length v13, v10

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v13, :cond_6

    aget-object v9, v10, v12

    .line 1043
    .local v9, "trackInfo":Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    add-int/lit8 v4, v4, 0x1

    .line 1045
    invoke-interface {v9}, Ltv/danmaku/ijk/media/player/misc/ITrackInfo;->getTrackType()I

    move-result v11

    .line 1046
    .local v11, "trackType":I
    if-ne v4, v8, :cond_2

    .line 1047
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f08009c

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f08008f

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendSection(Ljava/lang/String;)Landroid/view/View;

    .line 1055
    :goto_2
    const v14, 0x7f08009d

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->buildTrackType(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1056
    const v14, 0x7f080094

    invoke-interface {v9}, Ltv/danmaku/ijk/media/player/misc/ITrackInfo;->getLanguage()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->buildLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1058
    invoke-interface {v9}, Ltv/danmaku/ijk/media/player/misc/ITrackInfo;->getFormat()Ltv/danmaku/ijk/media/player/misc/IMediaFormat;

    move-result-object v5

    .line 1059
    .local v5, "mediaFormat":Ltv/danmaku/ijk/media/player/misc/IMediaFormat;
    if-nez v5, :cond_5

    .line 1042
    :cond_1
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1048
    .end local v5    # "mediaFormat":Ltv/danmaku/ijk/media/player/misc/IMediaFormat;
    :cond_2
    if-ne v4, v6, :cond_3

    .line 1049
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f08009c

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f08008d

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendSection(Ljava/lang/String;)Landroid/view/View;

    goto :goto_2

    .line 1050
    :cond_3
    if-ne v4, v7, :cond_4

    .line 1051
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f08009c

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f08008e

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendSection(Ljava/lang/String;)Landroid/view/View;

    goto/16 :goto_2

    .line 1053
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f08009c

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendSection(Ljava/lang/String;)Landroid/view/View;

    goto/16 :goto_2

    .line 1060
    .restart local v5    # "mediaFormat":Ltv/danmaku/ijk/media/player/misc/IMediaFormat;
    :cond_5
    instance-of v14, v5, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;

    if-eqz v14, :cond_1

    .line 1061
    packed-switch v11, :pswitch_data_0

    goto/16 :goto_3

    .line 1063
    :pswitch_0
    const v14, 0x7f080092

    const-string v15, "ijk-codec-long-name-ui"

    invoke-interface {v5, v15}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1064
    const v14, 0x7f080099

    const-string v15, "ijk-profile-level-ui"

    invoke-interface {v5, v15}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1065
    const v14, 0x7f080097

    const-string v15, "ijk-pixel-format-ui"

    invoke-interface {v5, v15}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1066
    const v14, 0x7f08009a

    const-string v15, "ijk-resolution-ui"

    invoke-interface {v5, v15}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1067
    const v14, 0x7f080093

    const-string v15, "ijk-frame-rate-ui"

    invoke-interface {v5, v15}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1068
    const v14, 0x7f080090

    const-string v15, "ijk-bit-rate-ui"

    invoke-interface {v5, v15}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    goto/16 :goto_3

    .line 1071
    :pswitch_1
    const v14, 0x7f080092

    const-string v15, "ijk-codec-long-name-ui"

    invoke-interface {v5, v15}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1072
    const v14, 0x7f080099

    const-string v15, "ijk-profile-level-ui"

    invoke-interface {v5, v15}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1073
    const v14, 0x7f08009b

    const-string v15, "ijk-sample-rate-ui"

    invoke-interface {v5, v15}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1074
    const v14, 0x7f080091

    const-string v15, "ijk-channel-ui"

    invoke-interface {v5, v15}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    .line 1075
    const v14, 0x7f080090

    const-string v15, "ijk-bit-rate-ui"

    invoke-interface {v5, v15}, Ltv/danmaku/ijk/media/player/misc/IMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    goto/16 :goto_3

    .line 1084
    .end local v4    # "index":I
    .end local v5    # "mediaFormat":Ltv/danmaku/ijk/media/player/misc/IMediaFormat;
    .end local v9    # "trackInfo":Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    .end local v11    # "trackType":I
    :cond_6
    invoke-virtual {v3}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->buildAlertDialogBuilder()Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 1085
    .local v2, "adBuilder":Landroid/support/v7/app/AlertDialog$Builder;
    const v12, 0x7f08008c

    invoke-virtual {v2, v12}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1086
    const v12, 0x7f080075

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1087
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 1061
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 709
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->start()V

    .line 711
    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    .line 713
    :cond_0
    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    .line 714
    return-void
.end method

.method public stopBackgroundPlay()V
    .locals 1

    .prologue
    .line 1018
    const/4 v0, 0x0

    invoke-static {v0}, Ltv/danmaku/ijk/media/example/services/MediaPlayerService;->setMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 1019
    return-void
.end method

.method public stopPlayback()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 294
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v1, :cond_1

    .line 295
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->stop()V

    .line 296
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V

    .line 297
    iput-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 298
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mHudViewHolder:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mHudViewHolder:Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    invoke-virtual {v1, v3}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->setMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 300
    :cond_0
    iput v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentState:I

    .line 301
    iput v2, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mTargetState:I

    .line 302
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAppContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 303
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 305
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_1
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 728
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->release(Z)V

    .line 729
    return-void
.end method

.method public toggleAspectRatio()I
    .locals 2

    .prologue
    .line 827
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatioIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatioIndex:I

    .line 828
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatioIndex:I

    sget-object v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->s_allAspectRatio:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatioIndex:I

    .line 830
    sget-object v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->s_allAspectRatio:[I

    iget v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatioIndex:I

    aget v0, v0, v1

    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatio:I

    .line 831
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    iget v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatio:I

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->setAspectRatio(I)V

    .line 833
    :cond_0
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentAspectRatio:I

    return v0
.end method

.method public togglePlayer()I
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V

    .line 899
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    if-eqz v0, :cond_1

    .line 900
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mRenderView:Ltv/danmaku/ijk/media/example/widget/media/IRenderView;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 901
    :cond_1
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->openVideo()V

    .line 902
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mSettings:Ltv/danmaku/ijk/media/example/application/Settings;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/application/Settings;->getPlayer()I

    move-result v0

    return v0
.end method

.method public toggleRender()I
    .locals 2

    .prologue
    .line 864
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRenderIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRenderIndex:I

    .line 865
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRenderIndex:I

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRenderIndex:I

    .line 867
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mAllRenders:Ljava/util/List;

    iget v1, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRenderIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRender:I

    .line 868
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRender:I

    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setRender(I)V

    .line 869
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mCurrentRender:I

    return v0
.end method
