.class Lorg/chromium/content/browser/ContentViewCore$3;
.super Ljava/lang/Object;
.source "ContentViewCore.java"

# interfaces
.implements Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/ContentViewCore;->initPopupZoomer(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mContainerViewAtCreation:Landroid/view/ViewGroup;

.field final synthetic this$0:Lorg/chromium/content/browser/ContentViewCore;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 1

    .prologue
    .line 907
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore$3;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 910
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$3;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$1200(Lorg/chromium/content/browser/ContentViewCore;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$3;->mContainerViewAtCreation:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$1300(Lorg/chromium/content/browser/ContentViewCore$3;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore$3;

    .prologue
    .line 907
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$3;->mContainerViewAtCreation:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method public onPopupZoomerHidden(Lorg/chromium/content/browser/PopupZoomer;)V
    .locals 2
    .param p1, "zoomer"    # Lorg/chromium/content/browser/PopupZoomer;

    .prologue
    .line 926
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$3;->mContainerViewAtCreation:Landroid/view/ViewGroup;

    new-instance v1, Lorg/chromium/content/browser/ContentViewCore$3$2;

    invoke-direct {v1, p0, p1}, Lorg/chromium/content/browser/ContentViewCore$3$2;-><init>(Lorg/chromium/content/browser/ContentViewCore$3;Lorg/chromium/content/browser/PopupZoomer;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 935
    return-void
.end method

.method public onPopupZoomerShown(Lorg/chromium/content/browser/PopupZoomer;)V
    .locals 2
    .param p1, "zoomer"    # Lorg/chromium/content/browser/PopupZoomer;

    .prologue
    .line 914
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$3;->mContainerViewAtCreation:Landroid/view/ViewGroup;

    new-instance v1, Lorg/chromium/content/browser/ContentViewCore$3$1;

    invoke-direct {v1, p0, p1}, Lorg/chromium/content/browser/ContentViewCore$3$1;-><init>(Lorg/chromium/content/browser/ContentViewCore$3;Lorg/chromium/content/browser/PopupZoomer;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 922
    return-void
.end method
