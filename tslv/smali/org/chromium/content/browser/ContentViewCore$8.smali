.class Lorg/chromium/content/browser/ContentViewCore$8;
.super Lorg/chromium/content_public/browser/AccessibilitySnapshotCallback;
.source "ContentViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/ContentViewCore;->onProvideVirtualStructure(Landroid/view/ViewStructure;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/ContentViewCore;

.field final synthetic val$ignoreScrollOffset:Z

.field final synthetic val$viewRoot:Landroid/view/ViewStructure;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/ContentViewCore;Landroid/view/ViewStructure;Z)V
    .locals 0

    .prologue
    .line 3112
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore$8;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    iput-object p2, p0, Lorg/chromium/content/browser/ContentViewCore$8;->val$viewRoot:Landroid/view/ViewStructure;

    iput-boolean p3, p0, Lorg/chromium/content/browser/ContentViewCore$8;->val$ignoreScrollOffset:Z

    invoke-direct {p0}, Lorg/chromium/content_public/browser/AccessibilitySnapshotCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilitySnapshot(Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;)V
    .locals 3
    .param p1, "root"    # Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;

    .prologue
    .line 3115
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$8;->val$viewRoot:Landroid/view/ViewStructure;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    .line 3116
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$8;->val$viewRoot:Landroid/view/ViewStructure;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$8;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {v1}, Lorg/chromium/content/browser/ContentViewCore;->access$2500(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewClient;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewStructure;->setHint(Ljava/lang/CharSequence;)V

    .line 3117
    if-nez p1, :cond_0

    .line 3118
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$8;->val$viewRoot:Landroid/view/ViewStructure;

    invoke-virtual {v0}, Landroid/view/ViewStructure;->asyncCommit()V

    .line 3122
    :goto_0
    return-void

    .line 3121
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$8;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$8;->val$viewRoot:Landroid/view/ViewStructure;

    iget-boolean v2, p0, Lorg/chromium/content/browser/ContentViewCore$8;->val$ignoreScrollOffset:Z

    invoke-static {v0, v1, p1, v2}, Lorg/chromium/content/browser/ContentViewCore;->access$2600(Lorg/chromium/content/browser/ContentViewCore;Landroid/view/ViewStructure;Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;Z)V

    goto :goto_0
.end method
