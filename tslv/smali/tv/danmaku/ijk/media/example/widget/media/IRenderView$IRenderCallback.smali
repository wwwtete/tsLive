.class public interface abstract Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;
.super Ljava/lang/Object;
.source "IRenderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/example/widget/media/IRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IRenderCallback"
.end annotation


# virtual methods
.method public abstract onSurfaceChanged(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;III)V
    .param p1    # Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onSurfaceCreated(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;II)V
    .param p1    # Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onSurfaceDestroyed(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;)V
    .param p1    # Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
