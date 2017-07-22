.class public Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;
.super Landroid/view/SurfaceView;
.source "SurfaceRenderView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/example/widget/media/IRenderView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;,
        Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$InternalSurfaceHolder;
    }
.end annotation


# instance fields
.field private mMeasureHelper:Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;

.field private mSurfaceCallback:Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;->initView(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;->initView(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;->initView(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;->initView(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;->mMeasureHelper:Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;

    .line 67
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;-><init>(Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;->mSurfaceCallback:Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;

    .line 68
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;->mSurfaceCallback:Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 70
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 71
    return-void
.end method


# virtual methods
.method public addRenderCallback(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;)V
    .locals 1
    .param p1, "callback"    # Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;

    .prologue
    .line 178
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;->mSurfaceCallback:Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->addRenderCallback(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;)V

    .line 179
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 75
    return-object p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 275
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 276
    const-class v0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 277
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 282
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 283
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 284
    const-class v0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 286
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 116
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;->mMeasureHelper:Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->doMeasure(II)V

    .line 117
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;->mMeasureHelper:Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;->mMeasureHelper:Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;->setMeasuredDimension(II)V

    .line 118
    return-void
.end method

.method public removeRenderCallback(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;)V
    .locals 1
    .param p1, "callback"    # Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;

    .prologue
    .line 183
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;->mSurfaceCallback:Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->removeRenderCallback(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;)V

    .line 184
    return-void
.end method

.method public setAspectRatio(I)V
    .locals 1
    .param p1, "aspectRatio"    # I

    .prologue
    .line 110
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;->mMeasureHelper:Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->setAspectRatio(I)V

    .line 111
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;->requestLayout()V

    .line 112
    return-void
.end method

.method public setVideoRotation(I)V
    .locals 3
    .param p1, "degree"    # I

    .prologue
    .line 105
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SurfaceView doesn\'t support rotation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method public setVideoSampleAspectRatio(II)V
    .locals 1
    .param p1, "videoSarNum"    # I
    .param p2, "videoSarDen"    # I

    .prologue
    .line 97
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 98
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;->mMeasureHelper:Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->setVideoSampleAspectRatio(II)V

    .line 99
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;->requestLayout()V

    .line 101
    :cond_0
    return-void
.end method

.method public setVideoSize(II)V
    .locals 1
    .param p1, "videoWidth"    # I
    .param p2, "videoHeight"    # I

    .prologue
    .line 88
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 89
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;->mMeasureHelper:Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->setVideoSize(II)V

    .line 90
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 91
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;->requestLayout()V

    .line 93
    :cond_0
    return-void
.end method

.method public shouldWaitForResize()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method
