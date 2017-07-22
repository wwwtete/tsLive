.class public final Lorg/chromium/content/browser/DownloadInfo;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/DownloadInfo$1;,
        Lorg/chromium/content/browser/DownloadInfo$Builder;
    }
.end annotation


# instance fields
.field private final mContentDisposition:Ljava/lang/String;

.field private final mContentLength:J

.field private final mCookie:Ljava/lang/String;

.field private final mDescription:Ljava/lang/String;

.field private final mDownloadGuid:Ljava/lang/String;

.field private final mFileName:Ljava/lang/String;

.field private final mFilePath:Ljava/lang/String;

.field private final mHasUserGesture:Z

.field private final mIsGETRequest:Z

.field private final mIsOffTheRecord:Z

.field private final mIsPaused:Z

.field private final mIsResumable:Z

.field private final mMimeType:Ljava/lang/String;

.field private final mNotificationId:I

.field private final mOriginalUrl:Ljava/lang/String;

.field private final mPercentCompleted:I

.field private final mReferer:Ljava/lang/String;

.field private final mTimeRemainingInMillis:J

.field private final mUrl:Ljava/lang/String;

.field private final mUserAgent:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/chromium/content/browser/DownloadInfo$Builder;)V
    .locals 2
    .param p1, "builder"    # Lorg/chromium/content/browser/DownloadInfo$Builder;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$000(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mUrl:Ljava/lang/String;

    .line 34
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$100(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mUserAgent:Ljava/lang/String;

    .line 35
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$200(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mMimeType:Ljava/lang/String;

    .line 36
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$300(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mCookie:Ljava/lang/String;

    .line 37
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$400(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mFileName:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$500(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mDescription:Ljava/lang/String;

    .line 39
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$600(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mFilePath:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$700(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mReferer:Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$800(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mOriginalUrl:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$900(Lorg/chromium/content/browser/DownloadInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mContentLength:J

    .line 43
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$1000(Lorg/chromium/content/browser/DownloadInfo$Builder;)I

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mNotificationId:I

    .line 44
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$1100(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mDownloadGuid:Ljava/lang/String;

    .line 45
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$1200(Lorg/chromium/content/browser/DownloadInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mHasUserGesture:Z

    .line 46
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$1300(Lorg/chromium/content/browser/DownloadInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mIsGETRequest:Z

    .line 47
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$1400(Lorg/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mContentDisposition:Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$1500(Lorg/chromium/content/browser/DownloadInfo$Builder;)I

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mPercentCompleted:I

    .line 49
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$1600(Lorg/chromium/content/browser/DownloadInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mTimeRemainingInMillis:J

    .line 50
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$1700(Lorg/chromium/content/browser/DownloadInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mIsResumable:Z

    .line 51
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$1800(Lorg/chromium/content/browser/DownloadInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mIsPaused:Z

    .line 52
    invoke-static {p1}, Lorg/chromium/content/browser/DownloadInfo$Builder;->access$1900(Lorg/chromium/content/browser/DownloadInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mIsOffTheRecord:Z

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/content/browser/DownloadInfo$Builder;Lorg/chromium/content/browser/DownloadInfo$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/content/browser/DownloadInfo$Builder;
    .param p2, "x1"    # Lorg/chromium/content/browser/DownloadInfo$1;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/DownloadInfo;-><init>(Lorg/chromium/content/browser/DownloadInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public getContentDisposition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mContentDisposition:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mContentLength:J

    return-wide v0
.end method

.method public getCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mCookie:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mDownloadGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationId()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mNotificationId:I

    return v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mOriginalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPercentCompleted()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mPercentCompleted:I

    return v0
.end method

.method public getReferer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mReferer:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeRemainingInMillis()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mTimeRemainingInMillis:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public hasUserGesture()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mHasUserGesture:Z

    return v0
.end method

.method public isGETRequest()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mIsGETRequest:Z

    return v0
.end method

.method public isOffTheRecord()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mIsOffTheRecord:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mIsPaused:Z

    return v0
.end method

.method public isResumable()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lorg/chromium/content/browser/DownloadInfo;->mIsResumable:Z

    return v0
.end method
