.class Lorg/chromium/content/browser/input/ReplicaInputConnection$Factory;
.super Ljava/lang/Object;
.source "ReplicaInputConnection.java"

# interfaces
.implements Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/input/ReplicaInputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# instance fields
.field private final mEditable:Landroid/text/Editable;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection$Factory;->mHandler:Landroid/os/Handler;

    .line 67
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection$Factory;->mEditable:Landroid/text/Editable;

    .line 68
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection$Factory;->mEditable:Landroid/text/Editable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 69
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection$Factory;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public bridge synthetic initializeAndGet(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapter;IIIILandroid/view/inputmethod/EditorInfo;)Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;
    .locals 1

    .prologue
    .line 57
    invoke-virtual/range {p0 .. p7}, Lorg/chromium/content/browser/input/ReplicaInputConnection$Factory;->initializeAndGet(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapter;IIIILandroid/view/inputmethod/EditorInfo;)Lorg/chromium/content/browser/input/ReplicaInputConnection;

    move-result-object v0

    return-object v0
.end method

.method public initializeAndGet(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapter;IIIILandroid/view/inputmethod/EditorInfo;)Lorg/chromium/content/browser/input/ReplicaInputConnection;
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "imeAdapter"    # Lorg/chromium/content/browser/input/ImeAdapter;
    .param p3, "inputType"    # I
    .param p4, "inputFlags"    # I
    .param p5, "selectionStart"    # I
    .param p6, "selectionEnd"    # I
    .param p7, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 75
    new-instance v0, Lorg/chromium/content/browser/input/InputMethodUma;

    invoke-direct {v0}, Lorg/chromium/content/browser/input/InputMethodUma;-><init>()V

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/InputMethodUma;->recordProxyViewReplicaInputConnection()V

    .line 76
    new-instance v0, Lorg/chromium/content/browser/input/ReplicaInputConnection;

    iget-object v3, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection$Factory;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection$Factory;->mEditable:Landroid/text/Editable;

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move v6, p4

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/chromium/content/browser/input/ReplicaInputConnection;-><init>(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapter;Landroid/os/Handler;Landroid/text/Editable;IILandroid/view/inputmethod/EditorInfo;)V

    return-object v0
.end method
