.class public abstract Lorg/xwalk/core/XWalkActivity;
.super Landroid/app/Activity;
.source "XWalkActivity.java"


# instance fields
.field private mActivityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDialogManager()Lorg/xwalk/core/XWalkDialogManager;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivity;->mActivityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkActivityDelegate;->getDialogManager()Lorg/xwalk/core/XWalkDialogManager;

    move-result-object v0

    return-object v0
.end method

.method public isDownloadMode()Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivity;->mActivityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkActivityDelegate;->isDownloadMode()Z

    move-result v0

    return v0
.end method

.method public isSharedMode()Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivity;->mActivityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkActivityDelegate;->isSharedMode()Z

    move-result v0

    return v0
.end method

.method public isXWalkReady()Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivity;->mActivityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkActivityDelegate;->isXWalkReady()Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 197
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 199
    new-instance v0, Lorg/xwalk/core/XWalkActivity$1;

    invoke-direct {v0, p0}, Lorg/xwalk/core/XWalkActivity$1;-><init>(Lorg/xwalk/core/XWalkActivity;)V

    .line 205
    .local v0, "cancelCommand":Ljava/lang/Runnable;
    new-instance v1, Lorg/xwalk/core/XWalkActivity$2;

    invoke-direct {v1, p0}, Lorg/xwalk/core/XWalkActivity$2;-><init>(Lorg/xwalk/core/XWalkActivity;)V

    .line 211
    .local v1, "completeCommand":Ljava/lang/Runnable;
    new-instance v2, Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-direct {v2, p0, v0, v1}, Lorg/xwalk/core/XWalkActivityDelegate;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v2, p0, Lorg/xwalk/core/XWalkActivity;->mActivityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    .line 212
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 216
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 217
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivity;->mActivityDelegate:Lorg/xwalk/core/XWalkActivityDelegate;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkActivityDelegate;->onResume()V

    .line 218
    return-void
.end method

.method protected onXWalkFailed()V
    .locals 0

    .prologue
    .line 152
    invoke-virtual {p0}, Lorg/xwalk/core/XWalkActivity;->finish()V

    .line 153
    return-void
.end method

.method protected abstract onXWalkReady()V
.end method
