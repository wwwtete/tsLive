.class public Lorg/chromium/content/browser/input/ReplicaInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "ReplicaInputConnection.java"

# interfaces
.implements Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/input/ReplicaInputConnection$ImeState;,
        Lorg/chromium/content/browser/input/ReplicaInputConnection$Factory;
    }
.end annotation


# static fields
.field private static final DEBUG_LOGS:Z = false

.field public static final INVALID_COMPOSITION:I = -0x1

.field public static final INVALID_SELECTION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "cr_Ime"


# instance fields
.field private final mEditable:Landroid/text/Editable;

.field private final mHandler:Landroid/os/Handler;

.field private final mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

.field private mNumNestedBatchEdits:I

.field private mPendingAccent:I

.field private mSingleLine:Z


# direct methods
.method constructor <init>(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapter;Landroid/os/Handler;Landroid/text/Editable;IILandroid/view/inputmethod/EditorInfo;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "imeAdapter"    # Lorg/chromium/content/browser/input/ImeAdapter;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "editable"    # Landroid/text/Editable;
    .param p5, "inputType"    # I
    .param p6, "inputFlags"    # I
    .param p7, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 89
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 50
    const/4 v2, 0x0

    iput v2, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mNumNestedBatchEdits:I

    .line 90
    iput-object p2, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    .line 91
    iput-object p4, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    .line 92
    iput-object p3, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mHandler:Landroid/os/Handler;

    .line 94
    invoke-static {p4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 95
    .local v1, "initialSelStart":I
    invoke-static {p4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 96
    .local v0, "initialSelEnd":I
    invoke-static {p5, p6, v1, v0, p7}, Lorg/chromium/content/browser/input/ImeUtils;->computeEditorInfo(IIIILandroid/view/inputmethod/EditorInfo;)V

    .line 102
    return-void
.end method

.method private deleteSurroundingTextImpl(IIZ)Z
    .locals 6
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I
    .param p3, "fromPhysicalKey"    # Z

    .prologue
    .line 286
    iget v4, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mPendingAccent:I

    if-eqz v4, :cond_0

    .line 287
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->finishComposingText()Z

    .line 290
    :cond_0
    iget-object v4, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 291
    .local v3, "selectionStart":I
    iget-object v4, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 292
    .local v2, "selectionEnd":I
    move v1, v3

    .line 293
    .local v1, "availableBefore":I
    iget-object v4, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    sub-int v0, v4, v2

    .line 294
    .local v0, "availableAfter":I
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 295
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 299
    iget-object v4, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    sub-int v5, v3, p1

    invoke-static {v4, v5}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->isIndexBetweenUtf16SurrogatePair(Ljava/lang/CharSequence;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 300
    add-int/lit8 p1, p1, 0x1

    .line 302
    :cond_1
    iget-object v4, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    add-int v5, v2, p2

    invoke-static {v4, v5}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->isIndexBetweenUtf16SurrogatePair(Ljava/lang/CharSequence;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 303
    add-int/lit8 p2, p2, 0x1

    .line 306
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    .line 307
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->updateSelectionIfRequired()V

    .line 311
    if-eqz p3, :cond_3

    .line 312
    const/4 v4, 0x1

    .line 315
    :goto_0
    return v4

    :cond_3
    iget-object v4, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v4, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapter;->deleteSurroundingText(II)Z

    move-result v4

    goto :goto_0
.end method

.method static isIndexBetweenUtf16SurrogatePair(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 275
    if-lez p1, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private replaceSelectionWithUnicodeChar(I)V
    .locals 5
    .param p1, "unicodeChar"    # I

    .prologue
    .line 391
    if-nez p1, :cond_0

    .line 401
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v3, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 393
    .local v1, "selectionStart":I
    iget-object v3, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 394
    .local v0, "selectionEnd":I
    if-le v1, v0, :cond_1

    .line 395
    move v2, v1

    .line 396
    .local v2, "temp":I
    move v1, v0

    .line 397
    move v0, v2

    .line 399
    .end local v2    # "temp":I
    :cond_1
    iget-object v3, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    int-to-char v4, p1

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v0, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 400
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->updateSelectionIfRequired()V

    goto :goto_0
.end method

.method private updateComposingText(Ljava/lang/CharSequence;IZ)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I
    .param p3, "isPendingAccent"    # Z

    .prologue
    const/4 v1, 0x0

    .line 184
    if-eqz p3, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mPendingAccent:I

    .line 185
    .local v0, "accentToSend":I
    :goto_0
    iput v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mPendingAccent:I

    .line 186
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 187
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->updateSelectionIfRequired()V

    .line 188
    iget-object v2, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v2, p1, p2, v1, v0}, Lorg/chromium/content/browser/input/ImeAdapter;->sendCompositionToNative(Ljava/lang/CharSequence;IZI)Z

    move-result v1

    return v1

    .end local v0    # "accentToSend":I
    :cond_0
    move v0, v1

    .line 184
    goto :goto_0
.end method

.method private updateSelectionIfRequired()V
    .locals 5

    .prologue
    .line 156
    iget v4, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mNumNestedBatchEdits:I

    if-eqz v4, :cond_0

    .line 168
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v4, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 158
    .local v3, "selectionStart":I
    iget-object v4, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 159
    .local v2, "selectionEnd":I
    iget-object v4, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v4}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    .line 160
    .local v1, "compositionStart":I
    iget-object v4, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v4}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v0

    .line 167
    .local v0, "compositionEnd":I
    iget-object v4, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v4, v3, v2, v1, v0}, Lorg/chromium/content/browser/input/ImeAdapter;->updateSelection(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mNumNestedBatchEdits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mNumNestedBatchEdits:I

    .line 244
    const/4 v0, 0x1

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    const/4 v1, 0x0

    .line 197
    iput v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mPendingAccent:I

    .line 198
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 199
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->updateSelectionIfRequired()V

    .line 200
    iget-object v2, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, p1, p2, v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->sendCompositionToNative(Ljava/lang/CharSequence;IZI)Z

    move-result v0

    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public deleteSurroundingText(II)Z
    .locals 1
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->deleteSurroundingTextImpl(IIZ)Z

    move-result v0

    return v0
.end method

.method public endBatchEdit()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 252
    iget v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mNumNestedBatchEdits:I

    if-nez v1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v0

    .line 253
    :cond_1
    iget v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mNumNestedBatchEdits:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mNumNestedBatchEdits:I

    .line 255
    iget v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mNumNestedBatchEdits:I

    if-nez v1, :cond_2

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->updateSelectionIfRequired()V

    .line 256
    :cond_2
    iget v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mNumNestedBatchEdits:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public finishComposingText()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 409
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mPendingAccent:I

    .line 411
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v1}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 419
    :goto_0
    return v2

    .line 415
    :cond_0
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    .line 416
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->updateSelectionIfRequired()V

    .line 417
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->finishComposingText()Z

    goto :goto_0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    return-object v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 2
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I

    .prologue
    .line 228
    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 229
    .local v0, "et":Landroid/view/inputmethod/ExtractedText;
    iget-object v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 230
    iget-object v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 231
    iget-object v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 232
    iget-object v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 233
    iget-boolean v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mSingleLine:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 234
    return-object v0

    .line 233
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getImeStateForTesting()Lorg/chromium/content/browser/input/ReplicaInputConnection$ImeState;
    .locals 6
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 509
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, "text":Ljava/lang/String;
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 511
    .local v2, "selectionStart":I
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 512
    .local v3, "selectionEnd":I
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 513
    .local v4, "compositionStart":I
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .line 514
    .local v5, "compositionEnd":I
    new-instance v0, Lorg/chromium/content/browser/input/ReplicaInputConnection$ImeState;

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/input/ReplicaInputConnection$ImeState;-><init>(Ljava/lang/String;IIII)V

    return-object v0
.end method

.method public moveCursorToSelectionEndOnUiThread()V
    .locals 2

    .prologue
    .line 468
    iget-object v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 469
    .local v0, "selectionEnd":I
    invoke-virtual {p0, v0, v0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->setSelection(II)Z

    .line 470
    return-void
.end method

.method public onRestartInputOnUiThread()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 461
    iput v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mNumNestedBatchEdits:I

    .line 462
    iput v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mPendingAccent:I

    .line 463
    return-void
.end method

.method public performContextMenuAction(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 218
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->performContextMenuAction(I)Z

    move-result v0

    return v0
.end method

.method public performEditorAction(I)Z
    .locals 1
    .param p1, "actionCode"    # I

    .prologue
    .line 209
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->performEditorAction(I)Z

    move-result v0

    return v0
.end method

.method public requestCursorUpdates(I)Z
    .locals 1
    .param p1, "cursorUpdateMode"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 486
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->onRequestCursorUpdates(I)Z

    move-result v0

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 336
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 337
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 338
    .local v3, "keycode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v5

    .line 343
    .local v5, "unicodeChar":I
    if-eqz v0, :cond_0

    .line 344
    iget-object v6, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v6, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 382
    :goto_0
    return v7

    .line 352
    :cond_0
    const/16 v6, 0x43

    if-ne v3, v6, :cond_2

    .line 353
    invoke-direct {p0, v7, v8, v7}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->deleteSurroundingTextImpl(IIZ)Z

    .line 380
    :cond_1
    :goto_1
    invoke-direct {p0, v5}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->replaceSelectionWithUnicodeChar(I)V

    .line 381
    iget-object v6, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v6, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0

    .line 354
    :cond_2
    const/16 v6, 0x70

    if-ne v3, v6, :cond_3

    .line 355
    invoke-direct {p0, v8, v7, v7}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->deleteSurroundingTextImpl(IIZ)Z

    goto :goto_1

    .line 356
    :cond_3
    const/16 v6, 0x42

    if-ne v3, v6, :cond_4

    .line 359
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->finishComposingText()Z

    goto :goto_1

    .line 360
    :cond_4
    const/high16 v6, -0x80000000

    and-int/2addr v6, v5

    if-eqz v6, :cond_5

    .line 362
    const v6, 0x7fffffff

    and-int v4, v5, v6

    .line 363
    .local v4, "pendingAccent":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v7, v7}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->updateComposingText(Ljava/lang/CharSequence;IZ)Z

    .line 366
    iput v4, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mPendingAccent:I

    goto :goto_0

    .line 368
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v4    # "pendingAccent":I
    :cond_5
    iget v6, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mPendingAccent:I

    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    .line 369
    iget v6, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mPendingAccent:I

    invoke-static {v6, v5}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v2

    .line 370
    .local v2, "combined":I
    if-eqz v2, :cond_6

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v7}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_0

    .line 378
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_6
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->finishComposingText()Z

    goto :goto_1
.end method

.method public sendKeyEventOnUiThread(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 323
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setComposingRegion(II)Z
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 441
    iget-object v3, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v2

    .line 442
    .local v2, "textLength":I
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 443
    .local v0, "a":I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 444
    .local v1, "b":I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 445
    :cond_0
    if-gez v1, :cond_1

    const/4 v1, 0x0

    .line 446
    :cond_1
    if-le v0, v2, :cond_2

    move v0, v2

    .line 447
    :cond_2
    if-le v1, v2, :cond_3

    move v1, v2

    .line 449
    :cond_3
    if-ne v0, v1, :cond_4

    .line 450
    iget-object v3, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v3}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 454
    :goto_0
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->updateSelectionIfRequired()V

    .line 455
    iget-object v3, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v3, v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->setComposingRegion(II)Z

    move-result v3

    return v3

    .line 452
    :cond_4
    invoke-super {p0, v0, v1}, Landroid/view/inputmethod/BaseInputConnection;->setComposingRegion(II)Z

    goto :goto_0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->updateComposingText(Ljava/lang/CharSequence;IZ)Z

    move-result v0

    return v0
.end method

.method public setSelection(II)Z
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 428
    iget-object v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 429
    .local v0, "textLength":I
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-gt p1, v0, :cond_0

    if-le p2, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 432
    :goto_0
    return v1

    .line 430
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setSelection(II)Z

    .line 431
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->updateSelectionIfRequired()V

    .line 432
    iget-object v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v1, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapter;->setEditableSelectionOffsets(II)Z

    move-result v1

    goto :goto_0
.end method

.method public unblockOnUiThread()V
    .locals 0

    .prologue
    .line 473
    return-void
.end method

.method public updateStateOnUiThread(Ljava/lang/String;IIIIZZ)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "selectionStart"    # I
    .param p3, "selectionEnd"    # I
    .param p4, "compositionStart"    # I
    .param p5, "compositionEnd"    # I
    .param p6, "singleLine"    # Z
    .param p7, "isNonImeChange"    # Z

    .prologue
    .line 111
    iput-boolean p6, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mSingleLine:Z

    .line 115
    if-nez p7, :cond_0

    .line 140
    :goto_0
    return-void

    .line 118
    :cond_0
    const/16 v2, 0xa0

    const/16 v3, 0x20

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p5, v2}, Ljava/lang/Math;->min(II)I

    move-result p5

    .line 125
    iget-object v2, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "prevText":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 128
    .local v1, "textUnchanged":Z
    if-nez v1, :cond_1

    .line 129
    iget-object v2, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {v2, v3, v4, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 132
    :cond_1
    iget-object v2, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v2, p2, p3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 134
    if-ne p4, p5, :cond_2

    .line 135
    iget-object v2, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v2}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 139
    :goto_1
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->updateSelectionIfRequired()V

    goto :goto_0

    .line 137
    :cond_2
    invoke-super {p0, p4, p5}, Landroid/view/inputmethod/BaseInputConnection;->setComposingRegion(II)Z

    goto :goto_1
.end method
