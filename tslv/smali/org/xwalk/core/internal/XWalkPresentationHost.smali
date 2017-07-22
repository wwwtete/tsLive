.class Lorg/xwalk/core/internal/XWalkPresentationHost;
.super Ljava/lang/Object;
.source "XWalkPresentationHost.java"

# interfaces
.implements Lorg/xwalk/core/internal/extension/api/XWalkDisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;,
        Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;,
        Lorg/xwalk/core/internal/XWalkPresentationHost$RenderFrameHostId;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "xwalk"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static TAG:Ljava/lang/String;

.field private static sEnduringActivity:Landroid/app/Activity;

.field private static sInstance:Lorg/xwalk/core/internal/XWalkPresentationHost;


# instance fields
.field private mDisplayManager:Lorg/xwalk/core/internal/extension/api/XWalkDisplayManager;

.field private mExistingSessions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/xwalk/core/internal/XWalkPresentationHost$RenderFrameHostId;",
            "Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;",
            ">;"
        }
    .end annotation
.end field

.field private mNativePresentationHost:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lorg/xwalk/core/internal/XWalkPresentationHost;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/xwalk/core/internal/XWalkPresentationHost;->$assertionsDisabled:Z

    .line 27
    const-string v0, "XWalkPresentationHost"

    sput-object v0, Lorg/xwalk/core/internal/XWalkPresentationHost;->TAG:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lorg/xwalk/core/internal/XWalkPresentationHost;->sEnduringActivity:Landroid/app/Activity;

    return-void

    .line 25
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkPresentationHost;->mExistingSessions:Ljava/util/HashMap;

    .line 164
    invoke-static {p1}, Lorg/xwalk/core/internal/extension/api/XWalkDisplayManager;->getInstance(Landroid/content/Context;)Lorg/xwalk/core/internal/extension/api/XWalkDisplayManager;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkPresentationHost;->mDisplayManager:Lorg/xwalk/core/internal/extension/api/XWalkDisplayManager;

    .line 165
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkPresentationHost;->nativeInit()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/xwalk/core/internal/XWalkPresentationHost;->setNativeObject(J)V

    .line 166
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkPresentationHost;->listenToSystemDisplayChange()V

    .line 167
    return-void
.end method

.method private closeSession(II)V
    .locals 4
    .param p1, "renderProcessID"    # I
    .param p2, "renderFrameID"    # I

    .prologue
    .line 149
    new-instance v0, Lorg/xwalk/core/internal/XWalkPresentationHost$RenderFrameHostId;

    invoke-direct {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkPresentationHost$RenderFrameHostId;-><init>(II)V

    .line 150
    .local v0, "id":Lorg/xwalk/core/internal/XWalkPresentationHost$RenderFrameHostId;
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkPresentationHost;->mExistingSessions:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;

    .line 151
    .local v1, "session":Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;
    if-eqz v1, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 152
    iget-object v2, v1, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;->presentationScreen:Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, v1, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;->presentationScreen:Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;

    invoke-virtual {v2}, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;->dismiss()V

    .line 154
    const/4 v2, 0x0

    iput-object v2, v1, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;->presentationScreen:Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;

    .line 155
    iget-wide v2, p0, Lorg/xwalk/core/internal/XWalkPresentationHost;->mNativePresentationHost:J

    invoke-direct {p0, v2, v3, p1, p2}, Lorg/xwalk/core/internal/XWalkPresentationHost;->nativeOnPresentationClosed(JII)V

    .line 158
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkPresentationHost;->removeContextActivity(II)V

    .line 160
    :cond_1
    return-void
.end method

.method public static createInstanceOnce(Landroid/app/Activity;Landroid/content/Context;)Lorg/xwalk/core/internal/XWalkPresentationHost;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    sget-object v0, Lorg/xwalk/core/internal/XWalkPresentationHost;->sInstance:Lorg/xwalk/core/internal/XWalkPresentationHost;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lorg/xwalk/core/internal/XWalkPresentationHost;

    invoke-direct {v0, p1}, Lorg/xwalk/core/internal/XWalkPresentationHost;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/xwalk/core/internal/XWalkPresentationHost;->sInstance:Lorg/xwalk/core/internal/XWalkPresentationHost;

    .line 87
    sget-object v0, Lorg/xwalk/core/internal/XWalkPresentationHost;->sInstance:Lorg/xwalk/core/internal/XWalkPresentationHost;

    invoke-direct {v0, p0}, Lorg/xwalk/core/internal/XWalkPresentationHost;->saveActivityOnce(Landroid/app/Activity;)V

    .line 89
    :cond_0
    sget-object v0, Lorg/xwalk/core/internal/XWalkPresentationHost;->sInstance:Lorg/xwalk/core/internal/XWalkPresentationHost;

    return-object v0
.end method

.method private createNewSession(Lorg/xwalk/core/internal/XWalkPresentationHost$RenderFrameHostId;)Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;
    .locals 6
    .param p1, "id"    # Lorg/xwalk/core/internal/XWalkPresentationHost$RenderFrameHostId;

    .prologue
    .line 103
    new-instance v0, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;

    sget-object v2, Lorg/xwalk/core/internal/XWalkPresentationHost;->sEnduringActivity:Landroid/app/Activity;

    sget-object v3, Lorg/xwalk/core/internal/XWalkPresentationHost;->sEnduringActivity:Landroid/app/Activity;

    iget v4, p1, Lorg/xwalk/core/internal/XWalkPresentationHost$RenderFrameHostId;->renderProcessID:I

    iget v5, p1, Lorg/xwalk/core/internal/XWalkPresentationHost$RenderFrameHostId;->renderFrameID:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;-><init>(Lorg/xwalk/core/internal/XWalkPresentationHost;Landroid/content/Context;Landroid/app/Activity;II)V

    .line 105
    .local v0, "session":Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;
    sget-boolean v1, Lorg/xwalk/core/internal/XWalkPresentationHost;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkPresentationHost;->mExistingSessions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 106
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkPresentationHost;->mExistingSessions:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-object v0
.end method

.method public static getInstance()Lorg/xwalk/core/internal/XWalkPresentationHost;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lorg/xwalk/core/internal/XWalkPresentationHost;->sInstance:Lorg/xwalk/core/internal/XWalkPresentationHost;

    return-object v0
.end method

.method private static native nativeDestroy(J)V
.end method

.method private native nativeInit()J
.end method

.method private native nativeOnDisplayAdded(JI)V
.end method

.method private native nativeOnDisplayChanged(JI)V
.end method

.method private native nativeOnDisplayRemoved(JI)V
.end method

.method private native nativeOnPresentationClosed(JII)V
.end method

.method private native nativeSetupJavaPeer(J)V
.end method

.method public static onPresentationScreenClose(Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;)V
    .locals 8
    .param p0, "attachedSession"    # Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;

    .prologue
    .line 203
    new-instance v0, Lorg/xwalk/core/internal/XWalkPresentationHost$RenderFrameHostId;

    iget v4, p0, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;->renderProcessID:I

    iget v5, p0, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;->renderFrameID:I

    invoke-direct {v0, v4, v5}, Lorg/xwalk/core/internal/XWalkPresentationHost$RenderFrameHostId;-><init>(II)V

    .line 205
    .local v0, "id":Lorg/xwalk/core/internal/XWalkPresentationHost$RenderFrameHostId;
    invoke-static {}, Lorg/xwalk/core/internal/XWalkPresentationHost;->getInstance()Lorg/xwalk/core/internal/XWalkPresentationHost;

    move-result-object v4

    iget-object v4, v4, Lorg/xwalk/core/internal/XWalkPresentationHost;->mExistingSessions:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;

    .line 206
    .local v1, "querySession":Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;
    if-eqz v1, :cond_1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_1

    .line 207
    iget-object v4, v1, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;->presentationScreen:Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;

    if-eqz v4, :cond_0

    .line 208
    const/4 v4, 0x0

    iput-object v4, v1, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;->presentationScreen:Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;

    .line 210
    :cond_0
    iget v3, v1, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;->renderProcessID:I

    .line 211
    .local v3, "renderProcessID":I
    iget v2, v1, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;->renderFrameID:I

    .line 212
    .local v2, "renderFrameID":I
    invoke-static {}, Lorg/xwalk/core/internal/XWalkPresentationHost;->getInstance()Lorg/xwalk/core/internal/XWalkPresentationHost;

    move-result-object v4

    invoke-static {}, Lorg/xwalk/core/internal/XWalkPresentationHost;->getInstance()Lorg/xwalk/core/internal/XWalkPresentationHost;

    move-result-object v5

    iget-wide v6, v5, Lorg/xwalk/core/internal/XWalkPresentationHost;->mNativePresentationHost:J

    invoke-direct {v4, v6, v7, v3, v2}, Lorg/xwalk/core/internal/XWalkPresentationHost;->nativeOnPresentationClosed(JII)V

    .line 214
    invoke-static {}, Lorg/xwalk/core/internal/XWalkPresentationHost;->getInstance()Lorg/xwalk/core/internal/XWalkPresentationHost;

    move-result-object v4

    invoke-direct {v4, v3, v2}, Lorg/xwalk/core/internal/XWalkPresentationHost;->removeContextActivity(II)V

    .line 216
    .end local v2    # "renderFrameID":I
    .end local v3    # "renderProcessID":I
    :cond_1
    return-void
.end method

.method private removeContextActivity(II)V
    .locals 2
    .param p1, "renderProcessID"    # I
    .param p2, "renderFrameID"    # I

    .prologue
    .line 111
    new-instance v0, Lorg/xwalk/core/internal/XWalkPresentationHost$RenderFrameHostId;

    invoke-direct {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkPresentationHost$RenderFrameHostId;-><init>(II)V

    .line 112
    .local v0, "id":Lorg/xwalk/core/internal/XWalkPresentationHost$RenderFrameHostId;
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkPresentationHost;->mExistingSessions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void
.end method

.method private saveActivityOnce(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 97
    sget-object v0, Lorg/xwalk/core/internal/XWalkPresentationHost;->sEnduringActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 98
    sput-object p1, Lorg/xwalk/core/internal/XWalkPresentationHost;->sEnduringActivity:Landroid/app/Activity;

    .line 100
    :cond_0
    return-void
.end method

.method private setNativeObject(J)V
    .locals 5
    .param p1, "newNativePresentationAPI"    # J

    .prologue
    .line 219
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkPresentationHost;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkPresentationHost;->mNativePresentationHost:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 220
    :cond_0
    iput-wide p1, p0, Lorg/xwalk/core/internal/XWalkPresentationHost;->mNativePresentationHost:J

    .line 222
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkPresentationHost;->mNativePresentationHost:J

    invoke-direct {p0, v0, v1}, Lorg/xwalk/core/internal/XWalkPresentationHost;->nativeSetupJavaPeer(J)V

    .line 223
    return-void
.end method

.method private startNewSession(Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;ILjava/lang/String;)Z
    .locals 10
    .param p1, "session"    # Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;
    .param p2, "displayId"    # I
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x11

    const/4 v6, 0x0

    .line 117
    if-eqz p1, :cond_4

    .line 118
    new-array v4, v6, [Landroid/view/Display;

    .line 119
    .local v4, "presentationDisplays":[Landroid/view/Display;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v9, :cond_0

    .line 120
    iget-object v7, p0, Lorg/xwalk/core/internal/XWalkPresentationHost;->mDisplayManager:Lorg/xwalk/core/internal/extension/api/XWalkDisplayManager;

    const-string v8, "android.hardware.display.category.PRESENTATION"

    invoke-virtual {v7, v8}, Lorg/xwalk/core/internal/extension/api/XWalkDisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v4

    .line 123
    :cond_0
    array-length v7, v4

    if-lez v7, :cond_4

    .line 124
    const/4 v1, 0x0

    .line 125
    .local v1, "display":Landroid/view/Display;
    move-object v0, v4

    .local v0, "arr$":[Landroid/view/Display;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 126
    .local v5, "query":Landroid/view/Display;
    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    if-ne v7, p2, :cond_1

    .line 127
    move-object v1, v5

    .line 125
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    .end local v5    # "query":Landroid/view/Display;
    :cond_2
    if-eqz v1, :cond_3

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v9, :cond_3

    .line 133
    new-instance v6, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;

    invoke-direct {v6, p0, p1, v1}, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;-><init>(Lorg/xwalk/core/internal/XWalkPresentationHost;Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;Landroid/view/Display;)V

    iput-object v6, p1, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;->presentationScreen:Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;

    .line 134
    iget-object v6, p1, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;->presentationScreen:Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;

    invoke-virtual {v6}, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;->show()V

    .line 135
    iget-object v6, p1, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;->presentationScreen:Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;

    invoke-virtual {v6, p3}, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;->loadUrl(Ljava/lang/String;)V

    .line 136
    const/4 v6, 0x1

    .line 145
    .end local v0    # "arr$":[Landroid/view/Display;
    .end local v1    # "display":Landroid/view/Display;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "presentationDisplays":[Landroid/view/Display;
    :goto_1
    return v6

    .line 138
    .restart local v0    # "arr$":[Landroid/view/Display;
    .restart local v1    # "display":Landroid/view/Display;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "presentationDisplays":[Landroid/view/Display;
    :cond_3
    sget-object v7, Lorg/xwalk/core/internal/XWalkPresentationHost;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t find specified display with id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .end local v0    # "arr$":[Landroid/view/Display;
    .end local v1    # "display":Landroid/view/Display;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "presentationDisplays":[Landroid/view/Display;
    :cond_4
    sget-object v7, Lorg/xwalk/core/internal/XWalkPresentationHost;->TAG:Ljava/lang/String;

    const-string v8, "startNewSession falied!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public closePresentation(II)V
    .locals 0
    .param p1, "renderProcessID"    # I
    .param p2, "renderFrameID"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 199
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkPresentationHost;->closeSession(II)V

    .line 200
    return-void
.end method

.method public getAndroidDisplayInfo()[Landroid/view/Display;
    .locals 3
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 179
    const/4 v1, 0x0

    new-array v0, v1, [Landroid/view/Display;

    .line 180
    .local v0, "emptyDisplay":[Landroid/view/Display;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 181
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkPresentationHost;->mDisplayManager:Lorg/xwalk/core/internal/extension/api/XWalkDisplayManager;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/extension/api/XWalkDisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 183
    .end local v0    # "emptyDisplay":[Landroid/view/Display;
    :cond_0
    return-object v0
.end method

.method public listenToSystemDisplayChange()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkPresentationHost;->mDisplayManager:Lorg/xwalk/core/internal/extension/api/XWalkDisplayManager;

    invoke-virtual {v0, p0}, Lorg/xwalk/core/internal/extension/api/XWalkDisplayManager;->registerDisplayListener(Lorg/xwalk/core/internal/extension/api/XWalkDisplayManager$DisplayListener;)V

    .line 171
    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 277
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkPresentationHost;->mNativePresentationHost:J

    invoke-direct {p0, v0, v1, p1}, Lorg/xwalk/core/internal/XWalkPresentationHost;->nativeOnDisplayAdded(JI)V

    .line 278
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 282
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkPresentationHost;->mNativePresentationHost:J

    invoke-direct {p0, v0, v1, p1}, Lorg/xwalk/core/internal/XWalkPresentationHost;->nativeOnDisplayChanged(JI)V

    .line 283
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 287
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkPresentationHost;->mNativePresentationHost:J

    invoke-direct {p0, v0, v1, p1}, Lorg/xwalk/core/internal/XWalkPresentationHost;->nativeOnDisplayRemoved(JI)V

    .line 288
    return-void
.end method

.method public showPresentation(IIILjava/lang/String;)Z
    .locals 3
    .param p1, "renderProcessID"    # I
    .param p2, "renderFrameID"    # I
    .param p3, "displayId"    # I
    .param p4, "url"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 189
    new-instance v0, Lorg/xwalk/core/internal/XWalkPresentationHost$RenderFrameHostId;

    invoke-direct {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkPresentationHost$RenderFrameHostId;-><init>(II)V

    .line 190
    .local v0, "id":Lorg/xwalk/core/internal/XWalkPresentationHost$RenderFrameHostId;
    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkPresentationHost;->mExistingSessions:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;

    .line 191
    .local v1, "session":Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;
    if-nez v1, :cond_0

    .line 192
    invoke-direct {p0, v0}, Lorg/xwalk/core/internal/XWalkPresentationHost;->createNewSession(Lorg/xwalk/core/internal/XWalkPresentationHost$RenderFrameHostId;)Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;

    move-result-object v1

    .line 194
    :cond_0
    invoke-direct {p0, v1, p3, p4}, Lorg/xwalk/core/internal/XWalkPresentationHost;->startNewSession(Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;ILjava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public stopListenToSystemDisplayChange()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkPresentationHost;->mDisplayManager:Lorg/xwalk/core/internal/extension/api/XWalkDisplayManager;

    invoke-virtual {v0, p0}, Lorg/xwalk/core/internal/extension/api/XWalkDisplayManager;->unregisterDisplayListener(Lorg/xwalk/core/internal/extension/api/XWalkDisplayManager$DisplayListener;)V

    .line 175
    return-void
.end method
