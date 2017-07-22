.class public Ltv/danmaku/ijk/media/example/widget/media/AndroidMediaController;
.super Landroid/widget/MediaController;
.source "AndroidMediaController.java"

# interfaces
.implements Ltv/danmaku/ijk/media/example/widget/media/IMediaController;


# instance fields
.field private mActionBar:Landroid/support/v7/app/ActionBar;

.field private mShowOnceArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/AndroidMediaController;->mShowOnceArray:Ljava/util/ArrayList;

    .line 44
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/example/widget/media/AndroidMediaController;->initView(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/AndroidMediaController;->mShowOnceArray:Ljava/util/ArrayList;

    .line 34
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/example/widget/media/AndroidMediaController;->initView(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useFastForward"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;Z)V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/AndroidMediaController;->mShowOnceArray:Ljava/util/ArrayList;

    .line 39
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/example/widget/media/AndroidMediaController;->initView(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 3

    .prologue
    .line 68
    invoke-super {p0}, Landroid/widget/MediaController;->hide()V

    .line 69
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/AndroidMediaController;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/AndroidMediaController;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 71
    :cond_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/AndroidMediaController;->mShowOnceArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 72
    .local v0, "view":Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 73
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/AndroidMediaController;->mShowOnceArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 74
    return-void
.end method

.method public setSupportActionBar(Landroid/support/v7/app/ActionBar;)V
    .locals 1
    .param p1, "actionBar"    # Landroid/support/v7/app/ActionBar;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 51
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/AndroidMediaController;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 52
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/AndroidMediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar;->show()V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar;->hide()V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/widget/MediaController;->show()V

    .line 62
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/AndroidMediaController;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/AndroidMediaController;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    .line 64
    :cond_0
    return-void
.end method

.method public showOnce(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 82
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/AndroidMediaController;->mShowOnceArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 84
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/AndroidMediaController;->show()V

    .line 85
    return-void
.end method
