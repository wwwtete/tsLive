.class public Lorg/xwalk/core/internal/XWalkPresentationHost$RenderFrameHostId;
.super Ljava/lang/Object;
.source "XWalkPresentationHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xwalk/core/internal/XWalkPresentationHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenderFrameHostId"
.end annotation


# instance fields
.field public renderFrameID:I

.field public renderProcessID:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "renderProcessID"    # I
    .param p2, "renderFrameID"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lorg/xwalk/core/internal/XWalkPresentationHost$RenderFrameHostId;->renderProcessID:I

    .line 34
    iput p2, p0, Lorg/xwalk/core/internal/XWalkPresentationHost$RenderFrameHostId;->renderFrameID:I

    .line 35
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    instance-of v3, p1, Lorg/xwalk/core/internal/XWalkPresentationHost$RenderFrameHostId;

    if-eqz v3, :cond_3

    .line 48
    if-ne p1, p0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 51
    check-cast v0, Lorg/xwalk/core/internal/XWalkPresentationHost$RenderFrameHostId;

    .line 52
    .local v0, "that":Lorg/xwalk/core/internal/XWalkPresentationHost$RenderFrameHostId;
    iget v3, p0, Lorg/xwalk/core/internal/XWalkPresentationHost$RenderFrameHostId;->renderProcessID:I

    iget v4, v0, Lorg/xwalk/core/internal/XWalkPresentationHost$RenderFrameHostId;->renderProcessID:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lorg/xwalk/core/internal/XWalkPresentationHost$RenderFrameHostId;->renderFrameID:I

    iget v4, v0, Lorg/xwalk/core/internal/XWalkPresentationHost$RenderFrameHostId;->renderFrameID:I

    if-eq v3, v4, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "that":Lorg/xwalk/core/internal/XWalkPresentationHost$RenderFrameHostId;
    :cond_3
    move v1, v2

    .line 56
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 39
    iget v1, p0, Lorg/xwalk/core/internal/XWalkPresentationHost$RenderFrameHostId;->renderProcessID:I

    add-int/lit8 v0, v1, 0x11

    .line 40
    .local v0, "hash":I
    mul-int/lit8 v0, v0, 0x1f

    .line 41
    iget v1, p0, Lorg/xwalk/core/internal/XWalkPresentationHost$RenderFrameHostId;->renderFrameID:I

    add-int/2addr v0, v1

    .line 42
    return v0
.end method
