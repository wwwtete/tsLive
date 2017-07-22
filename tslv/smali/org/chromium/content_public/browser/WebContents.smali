.class public interface abstract Lorg/chromium/content_public/browser/WebContents;
.super Ljava/lang/Object;
.source "WebContents.java"

# interfaces
.implements Landroid/os/Parcelable;


# virtual methods
.method public abstract addMessageToDevToolsConsole(ILjava/lang/String;)V
.end method

.method public abstract addObserver(Lorg/chromium/content_public/browser/WebContentsObserver;)V
.end method

.method public abstract adjustSelectionByCharacterOffset(II)V
.end method

.method public abstract copy()V
.end method

.method public abstract cut()V
.end method

.method public abstract destroy()V
.end method

.method public abstract evaluateJavaScript(Ljava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V
.end method

.method public abstract evaluateJavaScriptForTests(Ljava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation
.end method

.method public abstract exitFullscreen()V
.end method

.method public abstract focusLocationBarByDefault()Z
.end method

.method public abstract getBackgroundColor()I
.end method

.method public abstract getContentBitmapAsync(Landroid/graphics/Bitmap$Config;FLandroid/graphics/Rect;Lorg/chromium/content_public/browser/ContentBitmapCallback;)V
.end method

.method public abstract getEncoding()Ljava/lang/String;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation
.end method

.method public abstract getLastCommittedUrl()Ljava/lang/String;
.end method

.method public abstract getNavigationController()Lorg/chromium/content_public/browser/NavigationController;
.end method

.method public abstract getObserversForTesting()Lorg/chromium/base/ObserverList$RewindableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/chromium/base/ObserverList$RewindableIterator",
            "<",
            "Lorg/chromium/content_public/browser/WebContentsObserver;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation
.end method

.method public abstract getThemeColor()I
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract getVisibleUrl()Ljava/lang/String;
.end method

.method public abstract hasAccessedInitialDocument()Z
.end method

.method public abstract insertCSS(Ljava/lang/String;)V
.end method

.method public abstract isDestroyed()Z
.end method

.method public abstract isIncognito()Z
.end method

.method public abstract isLoading()Z
.end method

.method public abstract isLoadingToDifferentDocument()Z
.end method

.method public abstract isReady()Z
.end method

.method public abstract isShowingInterstitialPage()Z
.end method

.method public abstract onContextMenuClosed()V
.end method

.method public abstract onContextMenuOpened()V
.end method

.method public abstract onHide()V
.end method

.method public abstract onShow()V
.end method

.method public abstract paste()V
.end method

.method public abstract reloadLoFiImages()V
.end method

.method public abstract removeObserver(Lorg/chromium/content_public/browser/WebContentsObserver;)V
.end method

.method public abstract replace(Ljava/lang/String;)V
.end method

.method public abstract requestAccessibilitySnapshot(Lorg/chromium/content_public/browser/AccessibilitySnapshotCallback;)V
.end method

.method public abstract resumeLoadingCreatedWebContents()V
.end method

.method public abstract resumeMediaSession()V
.end method

.method public abstract scrollFocusedEditableNodeIntoView()V
.end method

.method public abstract selectAll()V
.end method

.method public abstract selectWordAroundCaret()V
.end method

.method public abstract sendMessageToFrame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setAudioMuted(Z)V
.end method

.method public abstract showImeIfNeeded()V
.end method

.method public abstract showInterstitialPage(Ljava/lang/String;J)V
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation
.end method

.method public abstract stop()V
.end method

.method public abstract stopMediaSession()V
.end method

.method public abstract suspendAllMediaPlayers()V
.end method

.method public abstract suspendMediaSession()V
.end method

.method public abstract unselect()V
.end method

.method public abstract updateTopControlsState(ZZZ)V
.end method
