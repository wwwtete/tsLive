.class Lorg/chromium/content/browser/ContentViewRenderView$2;
.super Ljava/lang/Object;
.source "ContentViewRenderView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/ContentViewRenderView;->onNativeLibraryLoaded(Lorg/chromium/ui/base/WindowAndroid;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/ContentViewRenderView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 184
    const-class v0, Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ContentViewRenderView$2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/content/browser/ContentViewRenderView;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewRenderView$2;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 8
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 187
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewRenderView$2;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$2;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->access$000(Lorg/chromium/content/browser/ContentViewRenderView;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 188
    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewRenderView$2;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$2;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->access$000(Lorg/chromium/content/browser/ContentViewRenderView;)J

    move-result-wide v2

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v7

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v7}, Lorg/chromium/content/browser/ContentViewRenderView;->access$400(Lorg/chromium/content/browser/ContentViewRenderView;JIIILandroid/view/Surface;)V

    .line 190
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$2;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewRenderView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$2;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewRenderView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p3, p4}, Lorg/chromium/content/browser/ContentViewCore;->onPhysicalBackingSizeChanged(II)V

    .line 194
    :cond_1
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 198
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewRenderView$2;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$2;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->access$000(Lorg/chromium/content/browser/ContentViewRenderView;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 199
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$2;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewRenderView$2;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-static {v1}, Lorg/chromium/content/browser/ContentViewRenderView;->access$000(Lorg/chromium/content/browser/ContentViewRenderView;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lorg/chromium/content/browser/ContentViewRenderView;->access$200(Lorg/chromium/content/browser/ContentViewRenderView;J)V

    .line 201
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$2;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->onReadyToRender()V

    .line 202
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 206
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewRenderView$2;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$2;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->access$000(Lorg/chromium/content/browser/ContentViewRenderView;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$2;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewRenderView$2;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-static {v1}, Lorg/chromium/content/browser/ContentViewRenderView;->access$000(Lorg/chromium/content/browser/ContentViewRenderView;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lorg/chromium/content/browser/ContentViewRenderView;->access$500(Lorg/chromium/content/browser/ContentViewRenderView;J)V

    .line 208
    return-void
.end method
