.class Lorg/chromium/content/browser/ContentViewCore$6$1;
.super Ljava/lang/Object;
.source "ContentViewCore.java"

# interfaces
.implements Lorg/chromium/ui/base/WindowAndroid$IntentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/ContentViewCore$6;->processText(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/chromium/content/browser/ContentViewCore$6;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/ContentViewCore$6;)V
    .locals 0

    .prologue
    .line 2094
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore$6$1;->this$1:Lorg/chromium/content/browser/ContentViewCore$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIntentCompleted(Lorg/chromium/ui/base/WindowAndroid;ILandroid/content/ContentResolver;Landroid/content/Intent;)V
    .locals 1
    .param p1, "window"    # Lorg/chromium/ui/base/WindowAndroid;
    .param p2, "resultCode"    # I
    .param p3, "contentResolver"    # Landroid/content/ContentResolver;
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 2099
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6$1;->this$1:Lorg/chromium/content/browser/ContentViewCore$6;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p2, p4}, Lorg/chromium/content/browser/ContentViewCore;->onReceivedProcessTextResult(ILandroid/content/Intent;)V

    .line 2100
    return-void
.end method
