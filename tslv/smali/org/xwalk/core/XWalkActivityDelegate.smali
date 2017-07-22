.class public Lorg/xwalk/core/XWalkActivityDelegate;
.super Ljava/lang/Object;
.source "XWalkActivityDelegate.java"

# interfaces
.implements Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;
.implements Lorg/xwalk/core/XWalkLibraryLoader$ActivateListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "XWalkActivity"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBackgroundDecorated:Z

.field private mCancelCommand:Ljava/lang/Runnable;

.field private mCompleteCommand:Ljava/lang/Runnable;

.field private mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

.field private mIsInitializing:Z

.field private mIsXWalkReady:Z

.field private mWillDecompress:Z

.field private mXWalkApkUrl:Ljava/lang/String;

.field private mXWalkUpdater:Lorg/xwalk/core/XWalkUpdater;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cancelCommand"    # Ljava/lang/Runnable;
    .param p3, "completeCommand"    # Ljava/lang/Runnable;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    .line 35
    iput-object p2, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mCancelCommand:Ljava/lang/Runnable;

    .line 36
    iput-object p3, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mCompleteCommand:Ljava/lang/Runnable;

    .line 38
    new-instance v0, Lorg/xwalk/core/XWalkDialogManager;

    iget-object v1, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lorg/xwalk/core/XWalkDialogManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    .line 40
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/xwalk/core/XWalkLibraryLoader;->prepareToInit(Landroid/app/Activity;)V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lorg/xwalk/core/XWalkActivityDelegate;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/XWalkActivityDelegate;

    .prologue
    .line 16
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mCancelCommand:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lorg/xwalk/core/XWalkActivityDelegate;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/XWalkActivityDelegate;

    .prologue
    .line 16
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public getDialogManager()Lorg/xwalk/core/XWalkDialogManager;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    return-object v0
.end method

.method public isDownloadMode()Z
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lorg/xwalk/core/XWalkEnvironment;->isDownloadMode()Z

    move-result v0

    return v0
.end method

.method public isSharedMode()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mIsXWalkReady:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/xwalk/core/XWalkLibraryLoader;->isSharedLibrary()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isXWalkReady()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mIsXWalkReady:Z

    return v0
.end method

.method public onActivateCompleted()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 171
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkDialogManager;->isShowingDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkDialogManager;->dismissDialog()V

    .line 175
    :cond_0
    iget-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mBackgroundDecorated:Z

    if-eqz v0, :cond_1

    .line 176
    const-string v0, "XWalkActivity"

    const-string v1, "Recover the background"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    iput-boolean v2, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mBackgroundDecorated:Z

    .line 181
    :cond_1
    iput-boolean v2, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mIsInitializing:Z

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mIsXWalkReady:Z

    .line 183
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mCompleteCommand:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 184
    return-void
.end method

.method public onActivateFailed()V
    .locals 5

    .prologue
    .line 111
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mIsInitializing:Z

    .line 113
    iget-object v1, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mXWalkUpdater:Lorg/xwalk/core/XWalkUpdater;

    if-nez v1, :cond_0

    .line 114
    invoke-static {}, Lorg/xwalk/core/XWalkEnvironment;->isDownloadMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    new-instance v1, Lorg/xwalk/core/XWalkUpdater;

    new-instance v2, Lorg/xwalk/core/XWalkActivityDelegate$2;

    invoke-direct {v2, p0}, Lorg/xwalk/core/XWalkActivityDelegate$2;-><init>(Lorg/xwalk/core/XWalkActivityDelegate;)V

    iget-object v3, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v3}, Lorg/xwalk/core/XWalkUpdater;-><init>(Lorg/xwalk/core/XWalkUpdater$XWalkBackgroundUpdateListener;Landroid/app/Activity;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mXWalkUpdater:Lorg/xwalk/core/XWalkUpdater;

    .line 152
    :goto_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mXWalkApkUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mXWalkUpdater:Lorg/xwalk/core/XWalkUpdater;

    iget-object v2, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mXWalkApkUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/xwalk/core/XWalkUpdater;->setXWalkApkUrl(Ljava/lang/String;)V

    .line 157
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mXWalkUpdater:Lorg/xwalk/core/XWalkUpdater;

    invoke-virtual {v1}, Lorg/xwalk/core/XWalkUpdater;->updateXWalkRuntime()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lorg/xwalk/core/XWalkEnvironment;->isDownloadMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 160
    iget-object v1, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 161
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 162
    const-string v1, "XWalkActivity"

    const-string v2, "Set the background to screen_background_dark"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const v1, 0x1080098

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 164
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mBackgroundDecorated:Z

    .line 167
    .end local v0    # "window":Landroid/view/Window;
    :cond_1
    return-void

    .line 142
    :cond_2
    new-instance v1, Lorg/xwalk/core/XWalkUpdater;

    new-instance v2, Lorg/xwalk/core/XWalkActivityDelegate$3;

    invoke-direct {v2, p0}, Lorg/xwalk/core/XWalkActivityDelegate$3;-><init>(Lorg/xwalk/core/XWalkActivityDelegate;)V

    iget-object v3, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    invoke-direct {v1, v2, v3, v4}, Lorg/xwalk/core/XWalkUpdater;-><init>(Lorg/xwalk/core/XWalkUpdater$XWalkUpdateListener;Landroid/app/Activity;Lorg/xwalk/core/XWalkDialogManager;)V

    iput-object v1, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mXWalkUpdater:Lorg/xwalk/core/XWalkUpdater;

    goto :goto_0
.end method

.method public onActivateStarted()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public onDecompressCancelled()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mWillDecompress:Z

    .line 91
    iput-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mIsInitializing:Z

    .line 92
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mCancelCommand:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 93
    return-void
.end method

.method public onDecompressCompleted()V
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mWillDecompress:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkDialogManager;->dismissDialog()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mWillDecompress:Z

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-static {p0, v0}, Lorg/xwalk/core/XWalkLibraryLoader;->startActivate(Lorg/xwalk/core/XWalkLibraryLoader$ActivateListener;Landroid/app/Activity;)V

    .line 103
    return-void
.end method

.method public onDecompressStarted()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mDialogManager:Lorg/xwalk/core/XWalkDialogManager;

    new-instance v1, Lorg/xwalk/core/XWalkActivityDelegate$1;

    invoke-direct {v1, p0}, Lorg/xwalk/core/XWalkActivityDelegate$1;-><init>(Lorg/xwalk/core/XWalkActivityDelegate;)V

    invoke-virtual {v0, v1}, Lorg/xwalk/core/XWalkDialogManager;->showDecompressProgress(Ljava/lang/Runnable;)V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mWillDecompress:Z

    .line 86
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 64
    iget-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mIsInitializing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mIsXWalkReady:Z

    if-eqz v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mIsInitializing:Z

    .line 67
    invoke-static {}, Lorg/xwalk/core/XWalkLibraryLoader;->isLibraryReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    const-string v0, "XWalkActivity"

    const-string v1, "Activate by XWalkActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-static {p0, v0}, Lorg/xwalk/core/XWalkLibraryLoader;->startActivate(Lorg/xwalk/core/XWalkLibraryLoader$ActivateListener;Landroid/app/Activity;)V

    goto :goto_0

    .line 71
    :cond_2
    const-string v0, "XWalkActivity"

    const-string v1, "Initialize by XWalkActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mActivity:Landroid/app/Activity;

    invoke-static {p0, v0}, Lorg/xwalk/core/XWalkLibraryLoader;->startDecompress(Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public setXWalkApkUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lorg/xwalk/core/XWalkActivityDelegate;->mXWalkApkUrl:Ljava/lang/String;

    .line 57
    return-void
.end method
