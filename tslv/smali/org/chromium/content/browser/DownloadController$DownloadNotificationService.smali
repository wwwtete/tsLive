.class public interface abstract Lorg/chromium/content/browser/DownloadController$DownloadNotificationService;
.super Ljava/lang/Object;
.source "DownloadController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/DownloadController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadNotificationService"
.end annotation


# virtual methods
.method public abstract onDownloadCancelled(Lorg/chromium/content/browser/DownloadInfo;)V
.end method

.method public abstract onDownloadCompleted(Lorg/chromium/content/browser/DownloadInfo;)V
.end method

.method public abstract onDownloadInterrupted(Lorg/chromium/content/browser/DownloadInfo;Z)V
.end method

.method public abstract onDownloadUpdated(Lorg/chromium/content/browser/DownloadInfo;)V
.end method
