.class public Lorg/chromium/content/browser/DownloadInfo$Builder;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/DownloadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mContentDisposition:Ljava/lang/String;

.field private mContentLength:J

.field private mCookie:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mDownloadGuid:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mHasUserGesture:Z

.field private mIsGETRequest:Z

.field private mIsOffTheRecord:Z

.field private mIsPaused:Z

.field private mIsResumable:Z

.field private mMimeType:Ljava/lang/String;

.field private mNotificationId:I

.field private mOriginalUrl:Ljava/lang/String;

.field private mPercentCompleted:I

.field private mReferer:Ljava/lang/String;

.field private mTimeRemainingInMillis:J

.field private mUrl:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    const-class v0, Lorg/chromium/content/browser/DownloadInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/DownloadInfo$Builder;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mPercentCompleted:I

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mIsResumable:Z

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/DownloadInfo$Builder;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/DownloadInfo$Builder;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/chromium/content/browser/DownloadInfo$Builder;)I
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/DownloadInfo$Builder;

    .prologue
    .line 141
    iget v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mNotificationId:I

    return v0
.end method

.method static synthetic access$1100(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/DownloadInfo$Builder;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mDownloadGuid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/chromium/content/browser/DownloadInfo$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/DownloadInfo$Builder;

    .prologue
    .line 141
    iget-boolean v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mHasUserGesture:Z

    return v0
.end method

.method static synthetic access$1300(Lorg/chromium/content/browser/DownloadInfo$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/DownloadInfo$Builder;

    .prologue
    .line 141
    iget-boolean v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mIsGETRequest:Z

    return v0
.end method

.method static synthetic access$1400(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/DownloadInfo$Builder;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mContentDisposition:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/chromium/content/browser/DownloadInfo$Builder;)I
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/DownloadInfo$Builder;

    .prologue
    .line 141
    iget v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mPercentCompleted:I

    return v0
.end method

.method static synthetic access$1600(Lorg/chromium/content/browser/DownloadInfo$Builder;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/content/browser/DownloadInfo$Builder;

    .prologue
    .line 141
    iget-wide v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mTimeRemainingInMillis:J

    return-wide v0
.end method

.method static synthetic access$1700(Lorg/chromium/content/browser/DownloadInfo$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/DownloadInfo$Builder;

    .prologue
    .line 141
    iget-boolean v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mIsResumable:Z

    return v0
.end method

.method static synthetic access$1800(Lorg/chromium/content/browser/DownloadInfo$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/DownloadInfo$Builder;

    .prologue
    .line 141
    iget-boolean v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$1900(Lorg/chromium/content/browser/DownloadInfo$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/DownloadInfo$Builder;

    .prologue
    .line 141
    iget-boolean v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mIsOffTheRecord:Z

    return v0
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/DownloadInfo$Builder;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/DownloadInfo$Builder;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mCookie:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/DownloadInfo$Builder;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/DownloadInfo$Builder;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/DownloadInfo$Builder;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/DownloadInfo$Builder;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mReferer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/DownloadInfo$Builder;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mOriginalUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lorg/chromium/content/browser/DownloadInfo$Builder;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/content/browser/DownloadInfo$Builder;

    .prologue
    .line 141
    iget-wide v0, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mContentLength:J

    return-wide v0
.end method

.method public static fromDownloadInfo(Lorg/chromium/content/browser/DownloadInfo;)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 4
    .param p0, "downloadInfo"    # Lorg/chromium/content/browser/DownloadInfo;

    .prologue
    .line 274
    new-instance v0, Lorg/chromium/content/browser/DownloadInfo$Builder;

    invoke-direct {v0}, Lorg/chromium/content/browser/DownloadInfo$Builder;-><init>()V

    .line 275
    .local v0, "builder":Lorg/chromium/content/browser/DownloadInfo$Builder;
    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setUrl(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setUserAgent(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setMimeType(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->getCookie()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setCookie(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setFileName(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setDescription(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setFilePath(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->getReferer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setReferer(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setOriginalUrl(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->getContentLength()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setContentLength(J)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->getNotificationId()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setNotificationId(I)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setDownloadGuid(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->hasUserGesture()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setHasUserGesture(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->getContentDisposition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setContentDisposition(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->isGETRequest()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setIsGETRequest(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->getPercentCompleted()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setPercentCompleted(I)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->getTimeRemainingInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setTimeRemainingInMillis(J)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->isResumable()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setIsResumable(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->isPaused()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setIsPaused(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/DownloadInfo;->isOffTheRecord()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/DownloadInfo$Builder;->setIsOffTheRecord(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;

    .line 295
    return-object v0
.end method


# virtual methods
.method public build()Lorg/chromium/content/browser/DownloadInfo;
    .locals 2

    .prologue
    .line 265
    new-instance v0, Lorg/chromium/content/browser/DownloadInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/content/browser/DownloadInfo;-><init>(Lorg/chromium/content/browser/DownloadInfo$Builder;Lorg/chromium/content/browser/DownloadInfo$1;)V

    return-object v0
.end method

.method public setContentDisposition(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 0
    .param p1, "contentDisposition"    # Ljava/lang/String;

    .prologue
    .line 234
    iput-object p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mContentDisposition:Ljava/lang/String;

    .line 235
    return-object p0
.end method

.method public setContentLength(J)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 1
    .param p1, "contentLength"    # J

    .prologue
    .line 209
    iput-wide p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mContentLength:J

    .line 210
    return-object p0
.end method

.method public setCookie(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 0
    .param p1, "cookie"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mCookie:Ljava/lang/String;

    .line 180
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mDescription:Ljava/lang/String;

    .line 190
    return-object p0
.end method

.method public setDownloadGuid(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 0
    .param p1, "downloadGuid"    # Ljava/lang/String;

    .prologue
    .line 224
    iput-object p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mDownloadGuid:Ljava/lang/String;

    .line 225
    return-object p0
.end method

.method public setFileName(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mFileName:Ljava/lang/String;

    .line 185
    return-object p0
.end method

.method public setFilePath(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mFilePath:Ljava/lang/String;

    .line 195
    return-object p0
.end method

.method public setHasUserGesture(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 0
    .param p1, "hasUserGesture"    # Z

    .prologue
    .line 229
    iput-boolean p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mHasUserGesture:Z

    .line 230
    return-object p0
.end method

.method public setIsGETRequest(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 0
    .param p1, "isGETRequest"    # Z

    .prologue
    .line 214
    iput-boolean p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mIsGETRequest:Z

    .line 215
    return-object p0
.end method

.method public setIsOffTheRecord(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 0
    .param p1, "isOffTheRecord"    # Z

    .prologue
    .line 260
    iput-boolean p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mIsOffTheRecord:Z

    .line 261
    return-object p0
.end method

.method public setIsPaused(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 0
    .param p1, "isPaused"    # Z

    .prologue
    .line 255
    iput-boolean p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mIsPaused:Z

    .line 256
    return-object p0
.end method

.method public setIsResumable(Z)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 0
    .param p1, "isResumable"    # Z

    .prologue
    .line 250
    iput-boolean p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mIsResumable:Z

    .line 251
    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mMimeType:Ljava/lang/String;

    .line 175
    return-object p0
.end method

.method public setNotificationId(I)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 0
    .param p1, "notificationId"    # I

    .prologue
    .line 219
    iput p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mNotificationId:I

    .line 220
    return-object p0
.end method

.method public setOriginalUrl(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 0
    .param p1, "originalUrl"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mOriginalUrl:Ljava/lang/String;

    .line 205
    return-object p0
.end method

.method public setPercentCompleted(I)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 1
    .param p1, "percentCompleted"    # I

    .prologue
    .line 239
    sget-boolean v0, Lorg/chromium/content/browser/DownloadInfo$Builder;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 240
    :cond_0
    iput p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mPercentCompleted:I

    .line 241
    return-object p0
.end method

.method public setReferer(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 0
    .param p1, "referer"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mReferer:Ljava/lang/String;

    .line 200
    return-object p0
.end method

.method public setTimeRemainingInMillis(J)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 1
    .param p1, "timeRemainingInMillis"    # J

    .prologue
    .line 245
    iput-wide p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mTimeRemainingInMillis:J

    .line 246
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mUrl:Ljava/lang/String;

    .line 165
    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Lorg/chromium/content/browser/DownloadInfo$Builder;
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lorg/chromium/content/browser/DownloadInfo$Builder;->mUserAgent:Ljava/lang/String;

    .line 170
    return-object p0
.end method
