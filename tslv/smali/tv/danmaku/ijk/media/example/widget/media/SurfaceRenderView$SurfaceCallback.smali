.class final Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;
.super Ljava/lang/Object;
.source "SurfaceRenderView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SurfaceCallback"
.end annotation


# instance fields
.field private mFormat:I

.field private mHeight:I

.field private mIsFormatChanged:Z

.field private mRenderCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mWeakSurfaceView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method public constructor <init>(Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;)V
    .locals 1
    .param p1, "surfaceView"    # Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    .line 199
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mWeakSurfaceView:Ljava/lang/ref/WeakReference;

    .line 200
    return-void
.end method


# virtual methods
.method public addRenderCallback(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;)V
    .locals 4
    .param p1, "callback"    # Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 203
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "surfaceHolder":Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_1

    .line 207
    if-nez v0, :cond_0

    .line 208
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$InternalSurfaceHolder;

    .end local v0    # "surfaceHolder":Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mWeakSurfaceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {v0, v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$InternalSurfaceHolder;-><init>(Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;Landroid/view/SurfaceHolder;)V

    .line 209
    .restart local v0    # "surfaceHolder":Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;
    :cond_0
    iget v1, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mWidth:I

    iget v2, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mHeight:I

    invoke-interface {p1, v0, v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;->onSurfaceCreated(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;II)V

    .line 212
    :cond_1
    iget-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mIsFormatChanged:Z

    if-eqz v1, :cond_3

    .line 213
    if-nez v0, :cond_2

    .line 214
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$InternalSurfaceHolder;

    .end local v0    # "surfaceHolder":Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mWeakSurfaceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {v0, v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$InternalSurfaceHolder;-><init>(Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;Landroid/view/SurfaceHolder;)V

    .line 215
    .restart local v0    # "surfaceHolder":Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;
    :cond_2
    iget v1, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mFormat:I

    iget v2, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mWidth:I

    iget v3, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mHeight:I

    invoke-interface {p1, v0, v1, v2, v3}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;->onSurfaceChanged(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;III)V

    .line 217
    :cond_3
    return-void
.end method

.method public removeRenderCallback(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;)V
    .locals 1
    .param p1, "callback"    # Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 220
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 254
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 255
    const/4 v2, 0x1

    iput-boolean v2, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 256
    iput p2, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mFormat:I

    .line 257
    iput p3, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mWidth:I

    .line 258
    iput p4, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mHeight:I

    .line 262
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$InternalSurfaceHolder;

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mWeakSurfaceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;

    iget-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {v1, v2, v3}, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$InternalSurfaceHolder;-><init>(Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;Landroid/view/SurfaceHolder;)V

    .line 263
    .local v1, "surfaceHolder":Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;

    .line 264
    .local v0, "renderCallback":Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;
    invoke-interface {v0, v1, p2, p3, p4}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;->onSurfaceChanged(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;III)V

    goto :goto_0

    .line 266
    .end local v0    # "renderCallback":Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v4, 0x0

    .line 225
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 226
    iput-boolean v4, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 227
    iput v4, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mFormat:I

    .line 228
    iput v4, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mWidth:I

    .line 229
    iput v4, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mHeight:I

    .line 231
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$InternalSurfaceHolder;

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mWeakSurfaceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;

    iget-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {v1, v2, v3}, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$InternalSurfaceHolder;-><init>(Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;Landroid/view/SurfaceHolder;)V

    .line 232
    .local v1, "surfaceHolder":Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;

    .line 233
    .local v0, "renderCallback":Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;
    invoke-interface {v0, v1, v4, v4}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;->onSurfaceCreated(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;II)V

    goto :goto_0

    .line 235
    .end local v0    # "renderCallback":Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v3, 0x0

    .line 239
    const/4 v2, 0x0

    iput-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 240
    iput-boolean v3, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 241
    iput v3, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mFormat:I

    .line 242
    iput v3, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mWidth:I

    .line 243
    iput v3, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mHeight:I

    .line 245
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$InternalSurfaceHolder;

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mWeakSurfaceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;

    iget-object v3, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {v1, v2, v3}, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$InternalSurfaceHolder;-><init>(Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView;Landroid/view/SurfaceHolder;)V

    .line 246
    .local v1, "surfaceHolder":Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/SurfaceRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;

    .line 247
    .local v0, "renderCallback":Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;
    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;->onSurfaceDestroyed(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;)V

    goto :goto_0

    .line 249
    .end local v0    # "renderCallback":Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;
    :cond_0
    return-void
.end method
