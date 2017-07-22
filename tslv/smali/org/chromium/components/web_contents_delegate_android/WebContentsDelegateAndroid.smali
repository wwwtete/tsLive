.class public Lorg/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;
.super Ljava/lang/Object;
.source "WebContentsDelegateAndroid.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "web_contents_delegate_android"
.end annotation


# static fields
.field public static final LOG_LEVEL_ERROR:I = 0x3

.field public static final LOG_LEVEL_LOG:I = 0x1

.field public static final LOG_LEVEL_TIP:I = 0x0

.field public static final LOG_LEVEL_WARNING:I = 0x2


# instance fields
.field private mMostRecentProgress:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x64

    iput v0, p0, Lorg/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;->mMostRecentProgress:I

    return-void
.end method

.method private final notifyLoadProgressChanged(D)V
    .locals 3
    .param p1, "progress"    # D
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 74
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, p1

    double-to-int v0, v0

    iput v0, p0, Lorg/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;->mMostRecentProgress:I

    .line 75
    iget v0, p0, Lorg/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;->mMostRecentProgress:I

    invoke-virtual {p0, v0}, Lorg/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;->onLoadProgressChanged(I)V

    .line 76
    return-void
.end method


# virtual methods
.method public activateContents()V
    .locals 0
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 49
    return-void
.end method

.method public addMessageToConsole(ILjava/lang/String;ILjava/lang/String;)Z
    .locals 1
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "lineNumber"    # I
    .param p4, "sourceId"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public closeContents()V
    .locals 0
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 53
    return-void
.end method

.method public getMostRecentProgress()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lorg/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;->mMostRecentProgress:I

    return v0
.end method

.method public handleKeyboardEvent(Landroid/view/KeyEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/KeyEvent;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 126
    return-void
.end method

.method public isFullscreenForTabOrPending()Z
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public navigationStateChanged(I)V
    .locals 0
    .param p1, "flags"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 65
    return-void
.end method

.method public onGoToEntryOffset(I)Z
    .locals 1
    .param p1, "offset"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public onLoadProgressChanged(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 82
    return-void
.end method

.method public onLoadStarted(Z)V
    .locals 0
    .param p1, "toDifferentDocument"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 57
    return-void
.end method

.method public onLoadStopped()V
    .locals 0
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 61
    return-void
.end method

.method public onUpdateUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 115
    return-void
.end method

.method public openNewTab(Ljava/lang/String;Ljava/lang/String;[BIZ)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "extraHeaders"    # Ljava/lang/String;
    .param p3, "postData"    # [B
    .param p4, "disposition"    # I
    .param p5, "isRendererInitiated"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 45
    return-void
.end method

.method public rendererResponsive()V
    .locals 0
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 96
    return-void
.end method

.method public rendererUnresponsive()V
    .locals 0
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 89
    return-void
.end method

.method public shouldCreateWebContents(Ljava/lang/String;)Z
    .locals 1
    .param p1, "targetUrl"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public showRepostFormWarningDialog()V
    .locals 0
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 150
    return-void
.end method

.method public takeFocus(Z)Z
    .locals 1
    .param p1, "reverse"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public toggleFullscreenModeForTab(Z)V
    .locals 0
    .param p1, "enterFullscreen"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 154
    return-void
.end method

.method public visibleSSLStateChanged()V
    .locals 0
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 69
    return-void
.end method

.method public webContentsCreated(Lorg/chromium/content_public/browser/WebContents;JLjava/lang/String;Ljava/lang/String;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0
    .param p1, "sourceWebContents"    # Lorg/chromium/content_public/browser/WebContents;
    .param p2, "openerRenderFrameId"    # J
    .param p4, "frameName"    # Ljava/lang/String;
    .param p5, "targetUrl"    # Ljava/lang/String;
    .param p6, "newWebContents"    # Lorg/chromium/content_public/browser/WebContents;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 101
    return-void
.end method
