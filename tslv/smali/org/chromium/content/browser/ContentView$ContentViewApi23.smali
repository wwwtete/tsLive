.class Lorg/chromium/content/browser/ContentView$ContentViewApi23;
.super Lorg/chromium/content/browser/ContentView;
.source "ContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/ContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContentViewApi23"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cvc"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 355
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/ContentView;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;)V

    .line 356
    return-void
.end method


# virtual methods
.method public onProvideVirtualStructure(Landroid/view/ViewStructure;)V
    .locals 2
    .param p1, "structure"    # Landroid/view/ViewStructure;

    .prologue
    .line 360
    iget-object v0, p0, Lorg/chromium/content/browser/ContentView$ContentViewApi23;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/chromium/content/browser/ContentViewCore;->onProvideVirtualStructure(Landroid/view/ViewStructure;Z)V

    .line 361
    return-void
.end method
