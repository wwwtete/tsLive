.class Lorg/chromium/content/browser/input/LegacyPastePopupMenu$1;
.super Ljava/lang/Object;
.source "LegacyPastePopupMenu.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/input/LegacyPastePopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/LegacyPastePopupMenu;

.field final synthetic val$delegate:Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/LegacyPastePopupMenu;Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu$1;->this$0:Lorg/chromium/content/browser/input/LegacyPastePopupMenu;

    iput-object p2, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu$1;->val$delegate:Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu$1;->val$delegate:Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;->onDismiss()V

    .line 53
    return-void
.end method
