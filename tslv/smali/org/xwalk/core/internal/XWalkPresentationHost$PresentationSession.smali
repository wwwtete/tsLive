.class final Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;
.super Ljava/lang/Object;
.source "XWalkPresentationHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xwalk/core/internal/XWalkPresentationHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PresentationSession"
.end annotation


# instance fields
.field public activity:Landroid/app/Activity;

.field public context:Landroid/content/Context;

.field public presentationScreen:Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;

.field public renderFrameID:I

.field public renderProcessID:I

.field final synthetic this$0:Lorg/xwalk/core/internal/XWalkPresentationHost;


# direct methods
.method public constructor <init>(Lorg/xwalk/core/internal/XWalkPresentationHost;Landroid/content/Context;Landroid/app/Activity;II)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "activity"    # Landroid/app/Activity;
    .param p4, "renderProcessID"    # I
    .param p5, "renderFrameID"    # I

    .prologue
    .line 65
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;->this$0:Lorg/xwalk/core/internal/XWalkPresentationHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p2, p0, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;->context:Landroid/content/Context;

    .line 67
    iput-object p3, p0, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;->activity:Landroid/app/Activity;

    .line 68
    iput p4, p0, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;->renderProcessID:I

    .line 69
    iput p5, p0, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;->renderFrameID:I

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationSession;->presentationScreen:Lorg/xwalk/core/internal/XWalkPresentationHost$PresentationScreen;

    .line 71
    return-void
.end method
