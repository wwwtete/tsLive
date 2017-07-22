.class final Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;
.super Ljava/lang/Object;
.source "TextureRenderView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SurfaceCallback"
.end annotation


# instance fields
.field private mDidDetachFromWindow:Z

.field private mHeight:I

.field private mIsFormatChanged:Z

.field private mOwnSurfaceTexture:Z

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

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mWeakRenderView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I

.field private mWillDetachFromWindow:Z


# direct methods
.method public constructor <init>(Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;)V
    .locals 2
    .param p1, "renderView"    # Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    .line 221
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mWillDetachFromWindow:Z

    .line 222
    iput-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mDidDetachFromWindow:Z

    .line 225
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    .line 228
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    .line 229
    return-void
.end method

.method static synthetic access$000(Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;

    .prologue
    .line 214
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method


# virtual methods
.method public addRenderCallback(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;)V
    .locals 4
    .param p1, "callback"    # Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 236
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "surfaceHolder":Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_1

    .line 240
    if-nez v0, :cond_0

    .line 241
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$InternalSurfaceHolder;

    .end local v0    # "surfaceHolder":Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1, v2, p0}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$InternalSurfaceHolder;-><init>(Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    .line 242
    .restart local v0    # "surfaceHolder":Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;
    :cond_0
    iget v1, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mWidth:I

    iget v2, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mHeight:I

    invoke-interface {p1, v0, v1, v2}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;->onSurfaceCreated(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;II)V

    .line 245
    :cond_1
    iget-boolean v1, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    if-eqz v1, :cond_3

    .line 246
    if-nez v0, :cond_2

    .line 247
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$InternalSurfaceHolder;

    .end local v0    # "surfaceHolder":Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1, v2, p0}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$InternalSurfaceHolder;-><init>(Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    .line 248
    .restart local v0    # "surfaceHolder":Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;
    :cond_2
    const/4 v1, 0x0

    iget v2, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mWidth:I

    iget v3, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mHeight:I

    invoke-interface {p1, v0, v1, v2, v3}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;->onSurfaceChanged(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;III)V

    .line 250
    :cond_3
    return-void
.end method

.method public didDetachFromWindow()V
    .locals 2

    .prologue
    .line 349
    const-string v0, "TextureRenderView"

    const-string v1, "didDetachFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mDidDetachFromWindow:Z

    .line 351
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 5
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 258
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 259
    iput-boolean v4, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 260
    iput v4, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mWidth:I

    .line 261
    iput v4, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mHeight:I

    .line 263
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$InternalSurfaceHolder;

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;

    invoke-direct {v1, v2, p1, p0}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$InternalSurfaceHolder;-><init>(Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    .line 264
    .local v1, "surfaceHolder":Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

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

    .line 265
    .local v0, "renderCallback":Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;
    invoke-interface {v0, v1, v4, v4}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;->onSurfaceCreated(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;II)V

    goto :goto_0

    .line 267
    .end local v0    # "renderCallback":Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 5
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v2, 0x0

    .line 284
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 285
    iput-boolean v2, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 286
    iput v2, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mWidth:I

    .line 287
    iput v2, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mHeight:I

    .line 289
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$InternalSurfaceHolder;

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;

    invoke-direct {v1, v2, p1, p0}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$InternalSurfaceHolder;-><init>(Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    .line 290
    .local v1, "surfaceHolder":Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

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

    .line 291
    .local v0, "renderCallback":Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;
    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;->onSurfaceDestroyed(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;)V

    goto :goto_0

    .line 294
    .end local v0    # "renderCallback":Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;
    :cond_0
    const-string v2, "TextureRenderView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSurfaceTextureDestroyed: destroy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-boolean v2, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    return v2
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 4
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 271
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 272
    const/4 v2, 0x1

    iput-boolean v2, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 273
    iput p2, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mWidth:I

    .line 274
    iput p3, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mHeight:I

    .line 276
    new-instance v1, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$InternalSurfaceHolder;

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;

    invoke-direct {v1, v2, p1, p0}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$InternalSurfaceHolder;-><init>(Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView;Landroid/graphics/SurfaceTexture;Ltv/danmaku/ijk/media/player/ISurfaceTextureHost;)V

    .line 277
    .local v1, "surfaceHolder":Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;
    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

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

    .line 278
    .local v0, "renderCallback":Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;
    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, p2, p3}, Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;->onSurfaceChanged(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$ISurfaceHolder;III)V

    goto :goto_0

    .line 280
    .end local v0    # "renderCallback":Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;
    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 300
    return-void
.end method

.method public releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v2, 0x1

    .line 308
    if-nez p1, :cond_0

    .line 309
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mDidDetachFromWindow:Z

    if-eqz v0, :cond_3

    .line 311
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eq p1, v0, :cond_1

    .line 312
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: didDetachFromWindow(): release different SurfaceTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    .line 314
    :cond_1
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    if-nez v0, :cond_2

    .line 315
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: didDetachFromWindow(): release detached SurfaceTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    .line 318
    :cond_2
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: didDetachFromWindow(): already released by TextureView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 320
    :cond_3
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mWillDetachFromWindow:Z

    if-eqz v0, :cond_6

    .line 321
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eq p1, v0, :cond_4

    .line 322
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: willDetachFromWindow(): release different SurfaceTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    .line 324
    :cond_4
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    if-nez v0, :cond_5

    .line 325
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: willDetachFromWindow(): re-attach SurfaceTexture to TextureView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {p0, v2}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->setOwnSurfaceTexture(Z)V

    goto :goto_0

    .line 328
    :cond_5
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: willDetachFromWindow(): will released by TextureView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 331
    :cond_6
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eq p1, v0, :cond_7

    .line 332
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: alive: release different SurfaceTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    .line 334
    :cond_7
    iget-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    if-nez v0, :cond_8

    .line 335
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: alive: re-attach SurfaceTexture to TextureView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {p0, v2}, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->setOwnSurfaceTexture(Z)V

    goto :goto_0

    .line 338
    :cond_8
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: alive: will released by TextureView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeRenderCallback(Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;)V
    .locals 1
    .param p1, "callback"    # Ltv/danmaku/ijk/media/example/widget/media/IRenderView$IRenderCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 253
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    return-void
.end method

.method public setOwnSurfaceTexture(Z)V
    .locals 0
    .param p1, "ownSurfaceTexture"    # Z

    .prologue
    .line 232
    iput-boolean p1, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    .line 233
    return-void
.end method

.method public willDetachFromWindow()V
    .locals 2

    .prologue
    .line 344
    const-string v0, "TextureRenderView"

    const-string v1, "willDetachFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TextureRenderView$SurfaceCallback;->mWillDetachFromWindow:Z

    .line 346
    return-void
.end method
