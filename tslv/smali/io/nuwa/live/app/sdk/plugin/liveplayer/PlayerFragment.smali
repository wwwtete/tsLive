.class public Lio/nuwa/live/app/sdk/plugin/liveplayer/PlayerFragment;
.super Landroid/app/Fragment;
.source "PlayerFragment.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field address:Ljava/lang/String;

.field private appResourcesPackage:Ljava/lang/String;

.field infoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field listener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field videoView:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 43
    const-string v0, "PlayerFragment"

    iput-object v0, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/PlayerFragment;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-virtual {p0}, Lio/nuwa/live/app/sdk/plugin/liveplayer/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/PlayerFragment;->appResourcesPackage:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lio/nuwa/live/app/sdk/plugin/liveplayer/PlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "player_preview_fragment"

    const-string v3, "layout"

    iget-object v4, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/PlayerFragment;->appResourcesPackage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e008c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    iput-object v1, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/PlayerFragment;->videoView:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    .line 67
    return-object v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/PlayerFragment;->videoView:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->pause()V

    .line 80
    return-void
.end method

.method public play(Ljava/lang/String;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "listener"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
    .param p3, "infoListener"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .prologue
    .line 71
    iput-object p1, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/PlayerFragment;->address:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/PlayerFragment;->videoView:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    iput-object p3, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/PlayerFragment;->infoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    iput-object p3, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 73
    iget-object v0, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/PlayerFragment;->videoView:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    iput-object p2, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/PlayerFragment;->listener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    iput-object p2, v0, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 74
    iget-object v0, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/PlayerFragment;->videoView:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 75
    iget-object v0, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/PlayerFragment;->videoView:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->start()V

    .line 76
    return-void
.end method

.method public reconnect(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 1
    .param p1, "listener"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
    .param p2, "infoListener"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .prologue
    .line 91
    invoke-virtual {p0}, Lio/nuwa/live/app/sdk/plugin/liveplayer/PlayerFragment;->stop()V

    .line 92
    iget-object v0, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/PlayerFragment;->address:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lio/nuwa/live/app/sdk/plugin/liveplayer/PlayerFragment;->play(Ljava/lang/String;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 93
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/PlayerFragment;->videoView:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->resume()V

    .line 84
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lio/nuwa/live/app/sdk/plugin/liveplayer/PlayerFragment;->videoView:Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IjkVideoView;->release(Z)V

    .line 88
    return-void
.end method
