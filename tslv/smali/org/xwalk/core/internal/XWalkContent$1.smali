.class Lorg/xwalk/core/internal/XWalkContent$1;
.super Ljava/lang/Object;
.source "XWalkContent.java"

# interfaces
.implements Lorg/chromium/content_public/browser/ContentBitmapCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/internal/XWalkContent;->initCaptureBitmapAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xwalk/core/internal/XWalkContent;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/XWalkContent;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContent$1;->this$0:Lorg/xwalk/core/internal/XWalkContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishGetBitmap(Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "response"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent$1;->this$0:Lorg/xwalk/core/internal/XWalkContent;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkContent;->access$200(Lorg/xwalk/core/internal/XWalkContent;)Lorg/xwalk/core/internal/XWalkGetBitmapCallbackInternal;

    move-result-object v0

    if-nez v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent$1;->this$0:Lorg/xwalk/core/internal/XWalkContent;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkContent;->access$200(Lorg/xwalk/core/internal/XWalkContent;)Lorg/xwalk/core/internal/XWalkGetBitmapCallbackInternal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkGetBitmapCallbackInternal;->onFinishGetBitmap(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method
