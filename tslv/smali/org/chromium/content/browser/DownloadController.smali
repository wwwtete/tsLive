.class public Lorg/chromium/content/browser/DownloadController;
.super Ljava/lang/Object;
.source "DownloadController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "content"
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "DownloadController"

.field private static sDownloadNotificationService:Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;

.field private static final sInstance:Lorg/chromium/content/browser/DownloadController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lorg/chromium/content/browser/DownloadController;

    invoke-direct {v0}, Lorg/chromium/content/browser/DownloadController;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/DownloadController;->sInstance:Lorg/chromium/content/browser/DownloadController;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-direct {p0}, Lorg/chromium/content/browser/DownloadController;->nativeInit()V

    .line 63
    return-void
.end method

.method private static downloadDelegateFromView(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/ContentViewDownloadDelegate;
    .locals 1
    .param p0, "view"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 66
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getDownloadDelegate()Lorg/chromium/content/browser/ContentViewDownloadDelegate;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lorg/chromium/content/browser/DownloadController;
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 58
    sget-object v0, Lorg/chromium/content/browser/DownloadController;->sInstance:Lorg/chromium/content/browser/DownloadController;

    return-object v0
.end method

.method private hasFileAccess(Lorg/chromium/content/browser/ContentViewCore;)Z
    .locals 2
    .param p1, "view"    # Lorg/chromium/content/browser/ContentViewCore;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 236
    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private native nativeInit()V
.end method

.method private native nativeOnRequestFileAccessResult(JZ)V
.end method

.method private newHttpGetDownload(Lorg/chromium/content/browser/ContentViewCore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;JZ)V
    .locals 6
    .param p1, "view"    # Lorg/chromium/content/browser/ContentViewCore;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "userAgent"    # Ljava/lang/String;
    .param p4, "contentDisposition"    # Ljava/lang/String;
    .param p5, "mimeType"    # Ljava/lang/String;
    .param p6, "cookie"    # Ljava/lang/String;
    .param p7, "referer"    # Ljava/lang/String;
    .param p8, "hasUserGesture"    # Z
    .param p9, "filename"    # Ljava/lang/String;
    .param p10, "contentLength"    # J
    .param p12, "mustDownload"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 84
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadController;->downloadDelegateFromView(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/ContentViewDownloadDelegate;

    move-result-object v2

    .line 86
    .local v2, "downloadDelegate":Lorg/chromium/content/browser/ContentViewDownloadDelegate;
    if-nez v2, :cond_0

    .line 100
    :goto_0
    return-void

    .line 87
    :cond_0
    new-instance v4, Lorg/chromium/content/browser/DownloadInfo$Builder;

    invoke-direct {v4}, Lorg/chromium/content/browser/DownloadInfo$Builder;-><init>()V

    invoke-virtual {v4, p2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setUrl(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v4

    invoke-virtual {v4, p3}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setUserAgent(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v4

    invoke-virtual {v4, p4}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setContentDisposition(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v4

    invoke-virtual {v4, p5}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setMimeType(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v4

    invoke-virtual {v4, p6}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setCookie(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v4

    invoke-virtual {v4, p7}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setReferer(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v4

    invoke-virtual {v4, p8}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setHasUserGesture(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v4

    invoke-virtual {v4, p9}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setFileName(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v4

    move-wide/from16 v0, p10

    invoke-virtual {v4, v0, v1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setContentLength(J)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setIsGETRequest(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/content/browser/DownloadInfo$Builder;->build()Lorg/chromium/content/browser/DownloadInfo;

    move-result-object v3

    .line 99
    .local v3, "downloadInfo":Lorg/chromium/content/browser/DownloadInfo;
    move/from16 v0, p12

    invoke-interface {v2, v3, v0}, Lorg/chromium/content/browser/ContentViewDownloadDelegate;->requestHttpGetDownload(Lorg/chromium/content/browser/DownloadInfo;Z)V

    goto :goto_0
.end method

.method private onDangerousDownload(Lorg/chromium/content/browser/ContentViewCore;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lorg/chromium/content/browser/ContentViewCore;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "downloadGuid"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 222
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadController;->downloadDelegateFromView(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/ContentViewDownloadDelegate;

    move-result-object v0

    .line 223
    .local v0, "downloadDelegate":Lorg/chromium/content/browser/ContentViewDownloadDelegate;
    if-eqz v0, :cond_0

    .line 224
    invoke-interface {v0, p2, p3}, Lorg/chromium/content/browser/ContentViewDownloadDelegate;->onDangerousDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_0
    return-void
.end method

.method private onDownloadCancelled(ILjava/lang/String;)V
    .locals 2
    .param p1, "notificationId"    # I
    .param p2, "downloadGuid"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 178
    sget-object v1, Lorg/chromium/content/browser/DownloadController;->sDownloadNotificationService:Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;

    if-nez v1, :cond_0

    .line 184
    :goto_0
    return-void

    .line 179
    :cond_0
    new-instance v1, Lorg/chromium/content/browser/DownloadInfo$Builder;

    invoke-direct {v1}, Lorg/chromium/content/browser/DownloadInfo$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setNotificationId(I)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setDownloadGuid(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->build()Lorg/chromium/content/browser/DownloadInfo;

    move-result-object v0

    .line 183
    .local v0, "downloadInfo":Lorg/chromium/content/browser/DownloadInfo;
    sget-object v1, Lorg/chromium/content/browser/DownloadController;->sDownloadNotificationService:Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;

    invoke-interface {v1, v0}, Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;->onDownloadCancelled(Lorg/chromium/content/browser/DownloadInfo;)V

    goto :goto_0
.end method

.method private onDownloadCompleted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "contentLength"    # J
    .param p7, "notificationId"    # I
    .param p8, "downloadGuid"    # Ljava/lang/String;
    .param p9, "originalUrl"    # Ljava/lang/String;
    .param p10, "refererUrl"    # Ljava/lang/String;
    .param p11, "hasUserGesture"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 128
    sget-object v1, Lorg/chromium/content/browser/DownloadController;->sDownloadNotificationService:Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;

    if-nez v1, :cond_0

    .line 143
    :goto_0
    return-void

    .line 129
    :cond_0
    new-instance v1, Lorg/chromium/content/browser/DownloadInfo$Builder;

    invoke-direct {v1}, Lorg/chromium/content/browser/DownloadInfo$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setUrl(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setMimeType(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setFileName(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setFilePath(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setContentLength(J)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setDescription(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p7}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setNotificationId(I)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p8}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setDownloadGuid(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p9}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setOriginalUrl(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p10}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setReferer(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p11}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setHasUserGesture(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->build()Lorg/chromium/content/browser/DownloadInfo;

    move-result-object v0

    .line 142
    .local v0, "downloadInfo":Lorg/chromium/content/browser/DownloadInfo;
    sget-object v1, Lorg/chromium/content/browser/DownloadController;->sDownloadNotificationService:Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;

    invoke-interface {v1, v0}, Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;->onDownloadCompleted(Lorg/chromium/content/browser/DownloadInfo;)V

    goto :goto_0
.end method

.method private onDownloadInterrupted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;ZZZ)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "contentLength"    # J
    .param p7, "notificationId"    # I
    .param p8, "downloadGuid"    # Ljava/lang/String;
    .param p9, "isResumable"    # Z
    .param p10, "isAutoResumable"    # Z
    .param p11, "isOffTheRecord"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 153
    sget-object v1, Lorg/chromium/content/browser/DownloadController;->sDownloadNotificationService:Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;

    if-nez v1, :cond_0

    .line 167
    :goto_0
    return-void

    .line 154
    :cond_0
    new-instance v1, Lorg/chromium/content/browser/DownloadInfo$Builder;

    invoke-direct {v1}, Lorg/chromium/content/browser/DownloadInfo$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setUrl(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setMimeType(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setFileName(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setFilePath(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setContentLength(J)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setDescription(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p7}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setNotificationId(I)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p8}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setDownloadGuid(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p9}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setIsResumable(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, p11}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setIsOffTheRecord(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->build()Lorg/chromium/content/browser/DownloadInfo;

    move-result-object v0

    .line 166
    .local v0, "downloadInfo":Lorg/chromium/content/browser/DownloadInfo;
    sget-object v1, Lorg/chromium/content/browser/DownloadController;->sDownloadNotificationService:Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;

    invoke-interface {v1, v0, p10}, Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;->onDownloadInterrupted(Lorg/chromium/content/browser/DownloadInfo;Z)V

    goto :goto_0
.end method

.method private onDownloadStarted(Lorg/chromium/content/browser/ContentViewCore;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lorg/chromium/content/browser/ContentViewCore;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 111
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadController;->downloadDelegateFromView(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/ContentViewDownloadDelegate;

    move-result-object v0

    .line 113
    .local v0, "downloadDelegate":Lorg/chromium/content/browser/ContentViewDownloadDelegate;
    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0, p2, p3}, Lorg/chromium/content/browser/ContentViewDownloadDelegate;->onDownloadStarted(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    return-void
.end method

.method private onDownloadUpdated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IJZZZ)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "contentLength"    # J
    .param p7, "notificationId"    # I
    .param p8, "downloadGuid"    # Ljava/lang/String;
    .param p9, "percentCompleted"    # I
    .param p10, "timeRemainingInMs"    # J
    .param p12, "hasUserGesture"    # Z
    .param p13, "isPaused"    # Z
    .param p14, "isOffTheRecord"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 197
    sget-object v2, Lorg/chromium/content/browser/DownloadController;->sDownloadNotificationService:Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;

    if-nez v2, :cond_0

    .line 215
    :goto_0
    return-void

    .line 198
    :cond_0
    new-instance v2, Lorg/chromium/content/browser/DownloadInfo$Builder;

    invoke-direct {v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;-><init>()V

    invoke-virtual {v2, p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setUrl(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setMimeType(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p3}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setFileName(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p4}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setFilePath(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setContentLength(J)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p3}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setDescription(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p7}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setNotificationId(I)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p8}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setDownloadGuid(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p9}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setPercentCompleted(I)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p10, p11}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setTimeRemainingInMillis(J)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v2

    move/from16 v0, p12

    invoke-virtual {v2, v0}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setHasUserGesture(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v2

    move/from16 v0, p13

    invoke-virtual {v2, v0}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setIsPaused(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v3

    if-nez p14, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setIsResumable(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v2

    move/from16 v0, p14

    invoke-virtual {v2, v0}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setIsOffTheRecord(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->build()Lorg/chromium/content/browser/DownloadInfo;

    move-result-object v1

    .line 214
    .local v1, "downloadInfo":Lorg/chromium/content/browser/DownloadInfo;
    sget-object v2, Lorg/chromium/content/browser/DownloadController;->sDownloadNotificationService:Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;

    invoke-interface {v2, v1}, Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;->onDownloadUpdated(Lorg/chromium/content/browser/DownloadInfo;)V

    goto :goto_0

    .line 198
    .end local v1    # "downloadInfo":Lorg/chromium/content/browser/DownloadInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private requestFileAccess(Lorg/chromium/content/browser/ContentViewCore;J)V
    .locals 6
    .param p1, "view"    # Lorg/chromium/content/browser/ContentViewCore;
    .param p2, "callbackId"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 247
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadController;->downloadDelegateFromView(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/ContentViewDownloadDelegate;

    move-result-object v0

    .line 248
    .local v0, "downloadDelegate":Lorg/chromium/content/browser/ContentViewDownloadDelegate;
    if-eqz v0, :cond_0

    .line 249
    invoke-interface {v0, p2, p3}, Lorg/chromium/content/browser/ContentViewDownloadDelegate;->requestFileAccess(J)V

    .line 262
    :goto_0
    return-void

    .line 251
    :cond_0
    new-instance v1, Lorg/chromium/content/browser/DownloadController$1;

    invoke-direct {v1, p0, p2, p3}, Lorg/chromium/content/browser/DownloadController$1;-><init>(Lorg/chromium/content/browser/DownloadController;J)V

    .line 258
    .local v1, "permissionCallback":Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;
    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v5, v3, v4

    invoke-virtual {v2, v3, v1}, Lorg/chromium/ui/base/WindowAndroid;->requestPermissions([Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)V

    goto :goto_0
.end method

.method public static setDownloadNotificationService(Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;)V
    .locals 0
    .param p0, "service"    # Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;

    .prologue
    .line 70
    sput-object p0, Lorg/chromium/content/browser/DownloadController;->sDownloadNotificationService:Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;

    .line 71
    return-void
.end method


# virtual methods
.method public onRequestFileAccessResult(JZ)V
    .locals 1
    .param p1, "callbackId"    # J
    .param p3, "granted"    # Z

    .prologue
    .line 270
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/content/browser/DownloadController;->nativeOnRequestFileAccessResult(JZ)V

    .line 271
    return-void
.end method
