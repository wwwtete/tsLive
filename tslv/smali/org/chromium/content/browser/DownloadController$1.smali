.class Lorg/chromium/content/browser/DownloadController$1;
.super Ljava/lang/Object;
.source "DownloadController.java"

# interfaces
.implements Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/DownloadController;->requestFileAccess(Lorg/chromium/content/browser/ContentViewCore;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/DownloadController;

.field final synthetic val$callbackId:J


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/DownloadController;J)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lorg/chromium/content/browser/DownloadController$1;->this$0:Lorg/chromium/content/browser/DownloadController;

    iput-wide p2, p0, Lorg/chromium/content/browser/DownloadController$1;->val$callbackId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult([Ljava/lang/String;[I)V
    .locals 5
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I

    .prologue
    const/4 v0, 0x0

    .line 254
    iget-object v1, p0, Lorg/chromium/content/browser/DownloadController$1;->this$0:Lorg/chromium/content/browser/DownloadController;

    iget-wide v2, p0, Lorg/chromium/content/browser/DownloadController$1;->val$callbackId:J

    array-length v4, p2

    if-lez v4, :cond_0

    aget v4, p2, v0

    if-nez v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v2, v3, v0}, Lorg/chromium/content/browser/DownloadController;->onRequestFileAccessResult(JZ)V

    .line 256
    return-void
.end method
