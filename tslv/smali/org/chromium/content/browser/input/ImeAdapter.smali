.class public Lorg/chromium/content/browser/input/ImeAdapter;
.super Ljava/lang/Object;
.source "ImeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "content"
.end annotation


# static fields
.field private static final COMPOSITION_KEY_CODE:I = 0xe5

.field private static final DEBUG_LOGS:Z = false

.field private static final TAG:Ljava/lang/String; = "cr_Ime"

.field static sKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field static sSingleCharArray:[C


# instance fields
.field private mCurrentConfig:Landroid/content/res/Configuration;

.field private final mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

.field private mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

.field private mInputConnectionFactory:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;

.field private mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

.field private mLastCompositionEnd:I

.field private mLastCompositionStart:I

.field private mLastSelectionEnd:I

.field private mLastSelectionStart:I

.field private mLastText:Ljava/lang/String;

.field private mNativeImeAdapterAndroid:J

.field private mTextInputFlags:I

.field private mTextInputType:I

.field private final mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    new-array v0, v0, [C

    sput-object v0, Lorg/chromium/content/browser/input/ImeAdapter;->sSingleCharArray:[C

    return-void
.end method

.method public constructor <init>(Lorg/chromium/content/browser/input/InputMethodManagerWrapper;Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;)V
    .locals 2
    .param p1, "wrapper"    # Lorg/chromium/content/browser/input/InputMethodManagerWrapper;
    .param p2, "embedder"    # Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    .line 123
    iput-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    .line 124
    iput-object p2, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    .line 126
    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v1}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->getAttachedView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 130
    new-instance v0, Lorg/chromium/content/browser/input/ImeAdapter$1;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/ImeAdapter$1;-><init>(Lorg/chromium/content/browser/input/ImeAdapter;)V

    invoke-static {p1, v0}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->create(Lorg/chromium/content/browser/input/InputMethodManagerWrapper;Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;)Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/input/ImeAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/input/ImeAdapter;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/input/ImeAdapter;)I
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/input/ImeAdapter;

    .prologue
    .line 54
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastSelectionStart:I

    return v0
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/input/ImeAdapter;)I
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/input/ImeAdapter;

    .prologue
    .line 54
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastSelectionEnd:I

    return v0
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/input/ImeAdapter;)I
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/input/ImeAdapter;

    .prologue
    .line 54
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastCompositionStart:I

    return v0
.end method

.method static synthetic access$400(Lorg/chromium/content/browser/input/ImeAdapter;)I
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/input/ImeAdapter;

    .prologue
    .line 54
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastCompositionEnd:I

    return v0
.end method

.method private cancelComposition()V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 693
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->restartInput()V

    .line 694
    :cond_0
    return-void
.end method

.method private createInputConnectionFactory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 164
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnectionFactory:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;

    if-eqz v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->isImeThreadEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    const-string v0, "cr_Ime"

    const-string v1, "ImeThread is enabled."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    invoke-direct {v0, v1}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;-><init>(Lorg/chromium/content/browser/input/InputMethodManagerWrapper;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnectionFactory:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;

    goto :goto_0

    .line 170
    :cond_1
    const-string v0, "cr_Ime"

    const-string v1, "ImeThread is not enabled."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    new-instance v0, Lorg/chromium/content/browser/input/ReplicaInputConnection$Factory;

    invoke-direct {v0}, Lorg/chromium/content/browser/input/ReplicaInputConnection$Factory;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnectionFactory:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;

    goto :goto_0
.end method

.method private detach()V
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 705
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    .line 706
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->focusedNodeChanged(Z)V

    .line 709
    :cond_0
    return-void
.end method

.method private focusedNodeChanged(Z)V
    .locals 1
    .param p1, "isEditable"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 619
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->focusedNodeChanged(Z)V

    .line 623
    :cond_0
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 624
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->restartInput()V

    .line 626
    :cond_1
    return-void
.end method

.method private static getModifiers(I)I
    .locals 2
    .param p0, "metaState"    # I

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "modifiers":I
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 242
    or-int/lit8 v0, v0, 0x1

    .line 244
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 245
    or-int/lit8 v0, v0, 0x4

    .line 247
    :cond_1
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_2

    .line 248
    or-int/lit8 v0, v0, 0x2

    .line 250
    :cond_2
    const/high16 v1, 0x100000

    and-int/2addr v1, p0

    if-eqz v1, :cond_3

    .line 251
    or-int/lit16 v0, v0, 0x200

    .line 253
    :cond_3
    const/high16 v1, 0x200000

    and-int/2addr v1, p0

    if-eqz v1, :cond_4

    .line 254
    or-int/lit16 v0, v0, 0x400

    .line 256
    :cond_4
    return v0
.end method

.method private hideKeyboard()V
    .locals 5

    .prologue
    .line 361
    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v1}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->getAttachedView()Landroid/view/View;

    move-result-object v0

    .line 362
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    .line 368
    :cond_0
    iget v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    if-eqz v1, :cond_1

    .line 369
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->restartInput()V

    .line 371
    :cond_1
    return-void
.end method

.method private isImeThreadEnabled()Z
    .locals 4

    .prologue
    .line 159
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 160
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeIsImeThreadEnabled(J)Z

    move-result v0

    goto :goto_0
.end method

.method private static isTextInputType(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 423
    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/chromium/ui/picker/InputDialogContainer;->isDialogInputType(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native nativeAppendBackgroundColorSpan(JIII)V
.end method

.method private static native nativeAppendUnderlineSpan(JII)V
.end method

.method private native nativeAttachImeAdapter(J)V
.end method

.method private native nativeCommitText(JLjava/lang/String;)V
.end method

.method private native nativeDeleteSurroundingText(JII)V
.end method

.method private native nativeFinishComposingText(J)V
.end method

.method private native nativeIsImeThreadEnabled(J)Z
.end method

.method private native nativeRequestTextInputStateUpdate(J)Z
.end method

.method private native nativeResetImeAdapter(J)V
.end method

.method private native nativeSendKeyEvent(JLandroid/view/KeyEvent;IIJIIZI)Z
.end method

.method private native nativeSendSyntheticKeyEvent(JIJIII)Z
.end method

.method private native nativeSetComposingRegion(JII)V
.end method

.method private native nativeSetComposingText(JLjava/lang/CharSequence;Ljava/lang/String;I)V
.end method

.method private native nativeSetEditableSelectionOffsets(JII)V
.end method

.method private populateUnderlinesFromSpans(Ljava/lang/CharSequence;J)V
    .locals 10
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "underlines"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 673
    instance-of v6, p1, Landroid/text/SpannableString;

    if-nez v6, :cond_1

    .line 688
    :cond_0
    return-void

    :cond_1
    move-object v4, p1

    .line 675
    check-cast v4, Landroid/text/SpannableString;

    .line 676
    .local v4, "spannableString":Landroid/text/SpannableString;
    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const-class v8, Landroid/text/style/CharacterStyle;

    invoke-virtual {v4, v6, v7, v8}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/CharacterStyle;

    .line 678
    .local v5, "spans":[Landroid/text/style/CharacterStyle;
    move-object v0, v5

    .local v0, "arr$":[Landroid/text/style/CharacterStyle;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 679
    .local v3, "span":Landroid/text/style/CharacterStyle;
    instance-of v6, v3, Landroid/text/style/BackgroundColorSpan;

    if-eqz v6, :cond_3

    .line 680
    invoke-virtual {v4, v3}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v3}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    check-cast v3, Landroid/text/style/BackgroundColorSpan;

    .end local v3    # "span":Landroid/text/style/CharacterStyle;
    invoke-virtual {v3}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v8

    invoke-static {p2, p3, v6, v7, v8}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeAppendBackgroundColorSpan(JIII)V

    .line 678
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 683
    .restart local v3    # "span":Landroid/text/style/CharacterStyle;
    :cond_3
    instance-of v6, v3, Landroid/text/style/UnderlineSpan;

    if-eqz v6, :cond_2

    .line 684
    invoke-virtual {v4, v3}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v3}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-static {p2, p3, v6, v7}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeAppendUnderlineSpan(JII)V

    goto :goto_1
.end method

.method private setCharacterBounds([F)V
    .locals 1
    .param p1, "characterBounds"    # [F
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 698
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    if-nez v0, :cond_0

    .line 700
    :goto_0
    return-void

    .line 699
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->setCompositionCharacterBounds([F)V

    goto :goto_0
.end method

.method private setInputConnection(Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;)V
    .locals 1
    .param p1, "inputConnection"    # Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    .prologue
    .line 202
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    if-ne v0, p1, :cond_0

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;->unblockOnUiThread()V

    .line 205
    :cond_1
    iput-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    goto :goto_0
.end method

.method private showSoftKeyboard()V
    .locals 4

    .prologue
    .line 348
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v1}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->getAttachedView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v3}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->getNewShowKeyboardReceiver()Landroid/os/ResultReceiver;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)V

    .line 350
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->getAttachedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 352
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->onKeyboardBoundsUnchanged()V

    .line 354
    :cond_0
    return-void
.end method


# virtual methods
.method public attach(J)V
    .locals 5
    .param p1, "nativeImeAdapter"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 330
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 332
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeResetImeAdapter(J)V

    .line 334
    :cond_2
    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    .line 335
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeAttachImeAdapter(J)V

    .line 337
    :cond_3
    iput-wide p1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    .line 338
    cmp-long v0, p1, v2

    if-eqz v0, :cond_0

    .line 339
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->createInputConnectionFactory()V

    goto :goto_0
.end method

.method deleteSurroundingText(II)Z
    .locals 9
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    const/16 v6, 0xe5

    const/4 v7, 0x0

    .line 580
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->onImeEvent()V

    .line 581
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 587
    :goto_0
    return v7

    .line 582
    :cond_0
    iget-wide v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const/4 v3, 0x7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSendSyntheticKeyEvent(JIJIII)Z

    .line 584
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeDeleteSurroundingText(JII)V

    .line 585
    iget-wide v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const/16 v3, 0x9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSendSyntheticKeyEvent(JIJIII)Z

    .line 587
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 436
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;->sendKeyEventOnUiThread(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 437
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method finishComposingText()Z
    .locals 4
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 543
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 545
    :goto_0
    return v0

    .line 544
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeFinishComposingText(J)V

    .line 545
    const/4 v0, 0x1

    goto :goto_0
.end method

.method getInputConnectionFactoryForTest()Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnectionFactory:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;

    return-object v0
.end method

.method public getInputConnectionForTest()Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    return-object v0
.end method

.method public hasTextInputType()Z
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    invoke-static {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->isTextInputType(I)Z

    move-result v0

    return v0
.end method

.method public moveCursorToSelectionEnd()V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;->moveCursorToSelectionEndOnUiThread()V

    .line 415
    :cond_0
    return-void
.end method

.method notifyUserAction()V
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->notifyUserAction()V

    .line 498
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;
    .locals 8
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v0, 0x0

    .line 181
    const/high16 v1, 0x12000000

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 185
    iget v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    if-nez v1, :cond_1

    .line 186
    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/ImeAdapter;->setInputConnection(Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;)V

    .line 198
    :cond_0
    :goto_0
    return-object v0

    .line 190
    :cond_1
    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnectionFactory:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;

    if-eqz v1, :cond_0

    .line 191
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnectionFactory:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v1}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->getAttachedView()Landroid/view/View;

    move-result-object v1

    iget v3, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    iget v4, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputFlags:I

    iget v5, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastSelectionStart:I

    iget v6, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastSelectionEnd:I

    move-object v2, p0

    move-object v7, p1

    invoke-interface/range {v0 .. v7}, Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;->initializeAndGet(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapter;IIIILandroid/view/inputmethod/EditorInfo;)Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/ImeAdapter;->setInputConnection(Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;)V

    .line 195
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->resetMonitoringState()V

    .line 198
    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    goto :goto_0
.end method

.method public onKeyboardConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 378
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCurrentConfig:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCurrentConfig:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCurrentConfig:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v1, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 389
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->restartInput()V

    .line 394
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->showSoftKeyboard()V

    goto :goto_0
.end method

.method public onRequestCursorUpdates(I)Z
    .locals 2
    .param p1, "cursorUpdateMode"    # I

    .prologue
    .line 642
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 643
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v1}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->getAttachedView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->onRequestCursorUpdates(ILandroid/view/View;)Z

    move-result v0

    goto :goto_0
.end method

.method public onUpdateFrameInfo(Lorg/chromium/content/browser/RenderCoordinates;ZZFFF)V
    .locals 8
    .param p1, "renderCoordinates"    # Lorg/chromium/content/browser/RenderCoordinates;
    .param p2, "hasInsertionMarker"    # Z
    .param p3, "isInsertionMarkerVisible"    # Z
    .param p4, "insertionMarkerHorizontal"    # F
    .param p5, "insertionMarkerTop"    # F
    .param p6, "insertionMarkerBottom"    # F

    .prologue
    .line 662
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    if-nez v0, :cond_0

    .line 666
    :goto_0
    return-void

    .line 663
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v1}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->getAttachedView()Landroid/view/View;

    move-result-object v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->onUpdateFrameInfo(Lorg/chromium/content/browser/RenderCoordinates;ZZFFFLandroid/view/View;)V

    goto :goto_0
.end method

.method public onViewFocusChanged(Z)V
    .locals 0
    .param p1, "gainFocus"    # Z

    .prologue
    .line 404
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->resetAndHideKeyboard()V

    .line 405
    :cond_0
    return-void
.end method

.method performContextMenuAction(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 479
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->performContextMenuAction(I)Z

    move-result v0

    return v0
.end method

.method performEditorAction(I)Z
    .locals 5
    .param p1, "actionCode"    # I

    .prologue
    const/16 v4, 0x16

    .line 483
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 493
    :goto_0
    return v0

    .line 484
    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 485
    const/16 v0, 0x3d

    invoke-virtual {p0, v0, v4}, Lorg/chromium/content/browser/input/ImeAdapter;->sendSyntheticKeyPress(II)V

    .line 493
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 489
    :cond_1
    const/16 v0, 0x42

    invoke-virtual {p0, v0, v4}, Lorg/chromium/content/browser/input/ImeAdapter;->sendSyntheticKeyPress(II)V

    goto :goto_1
.end method

.method requestTextInputStateUpdate()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 632
    iget-wide v2, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 635
    :cond_0
    :goto_0
    return v0

    .line 634
    :cond_1
    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    if-eqz v1, :cond_0

    .line 635
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeRequestTextInputStateUpdate(J)Z

    move-result v0

    goto :goto_0
.end method

.method public resetAndHideKeyboard()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 445
    iput v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    .line 446
    iput v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputFlags:I

    .line 448
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->hideKeyboard()V

    .line 449
    return-void
.end method

.method restartInput()V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v1}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->getAttachedView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->restartInput(Landroid/view/View;)V

    .line 471
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;->onRestartInputOnUiThread()V

    .line 472
    :cond_0
    return-void
.end method

.method sendCompositionToNative(Ljava/lang/CharSequence;IZI)Z
    .locals 13
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I
    .param p3, "isCommit"    # Z
    .param p4, "unicodeFromKeyEvent"    # I

    .prologue
    .line 515
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 538
    :goto_0
    return v0

    .line 518
    :cond_0
    const-string v0, "\n"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 519
    const/16 v0, 0x42

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->sendSyntheticKeyPress(II)V

    .line 521
    const/4 v0, 0x1

    goto :goto_0

    .line 524
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->onImeEvent()V

    .line 525
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 526
    .local v4, "timestampMs":J
    iget-wide v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const/4 v3, 0x7

    const/16 v6, 0xe5

    const/4 v7, 0x0

    move-object v0, p0

    move/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSendSyntheticKeyEvent(JIJIII)Z

    .line 529
    if-eqz p3, :cond_2

    .line 530
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeCommitText(JLjava/lang/String;)V

    .line 536
    :goto_1
    iget-wide v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const/16 v3, 0x9

    const/16 v6, 0xe5

    const/4 v7, 0x0

    move-object v0, p0

    move/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSendSyntheticKeyEvent(JIJIII)Z

    .line 538
    const/4 v0, 0x1

    goto :goto_0

    .line 532
    :cond_2
    iget-wide v8, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v7, p0

    move-object v10, p1

    move v12, p2

    invoke-direct/range {v7 .. v12}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSetComposingText(JLjava/lang/CharSequence;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v10, 0x0

    .line 549
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 566
    :cond_0
    :goto_0
    return v10

    .line 551
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v12

    .line 552
    .local v12, "action":I
    if-eqz v12, :cond_2

    const/4 v0, 0x1

    if-ne v12, v0, :cond_0

    .line 565
    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->onImeEvent()V

    .line 566
    iget-wide v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-static {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->getModifiers(I)I

    move-result v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v11

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v11}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSendKeyEvent(JLandroid/view/KeyEvent;IIJIIZI)Z

    move-result v10

    goto :goto_0
.end method

.method protected sendSyntheticKeyPress(II)V
    .locals 19
    .param p1, "keyCode"    # I
    .param p2, "flags"    # I
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 502
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 503
    .local v4, "eventTime":J
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-wide v6, v4

    move/from16 v9, p1

    move/from16 v14, p2

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/chromium/content/browser/input/ImeAdapter;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 507
    new-instance v7, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    move-wide v10, v4

    move/from16 v13, p1

    move/from16 v18, p2

    invoke-direct/range {v7 .. v18}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/chromium/content/browser/input/ImeAdapter;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 511
    return-void
.end method

.method setComposingRegion(II)Z
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 609
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 611
    :goto_0
    return v0

    .line 610
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSetComposingRegion(JII)V

    .line 611
    const/4 v0, 0x1

    goto :goto_0
.end method

.method setEditableSelectionOffsets(II)Z
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 597
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 599
    :goto_0
    return v0

    .line 598
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSetEditableSelectionOffsets(JII)V

    .line 599
    const/4 v0, 0x1

    goto :goto_0
.end method

.method setInputConnectionFactory(Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;)V
    .locals 0
    .param p1, "factory"    # Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 223
    iput-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnectionFactory:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;

    .line 224
    return-void
.end method

.method public setInputMethodManagerWrapperForTest(Lorg/chromium/content/browser/input/InputMethodManagerWrapper;)V
    .locals 1
    .param p1, "immw"    # Lorg/chromium/content/browser/input/InputMethodManagerWrapper;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 215
    iput-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    .line 216
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->setInputMethodManagerWrapperForTest(Lorg/chromium/content/browser/input/InputMethodManagerWrapper;)V

    .line 219
    :cond_0
    return-void
.end method

.method setInputTypeForTest(I)V
    .locals 0
    .param p1, "textInputType"    # I
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 419
    iput p1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    .line 420
    return-void
.end method

.method public updateKeyboardVisibility(IIZ)V
    .locals 1
    .param p1, "textInputType"    # I
    .param p2, "textInputFlags"    # I
    .param p3, "showIfNeeded"    # Z

    .prologue
    .line 271
    iput p2, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputFlags:I

    .line 272
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    if-eq v0, p1, :cond_0

    .line 273
    iput p1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    .line 275
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->restartInput()V

    .line 280
    :cond_0
    if-eqz p1, :cond_2

    .line 281
    if-eqz p3, :cond_1

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->showSoftKeyboard()V

    .line 285
    :cond_1
    :goto_0
    return-void

    .line 283
    :cond_2
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->hideKeyboard()V

    goto :goto_0
.end method

.method updateSelection(IIII)V
    .locals 6
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I
    .param p3, "compositionStart"    # I
    .param p4, "compositionEnd"    # I

    .prologue
    .line 461
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v1}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->getAttachedView()Landroid/view/View;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->updateSelection(Landroid/view/View;IIII)V

    .line 463
    return-void
.end method

.method public updateState(Ljava/lang/String;IIIIZ)V
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "selectionStart"    # I
    .param p3, "selectionEnd"    # I
    .param p4, "compositionStart"    # I
    .param p5, "compositionEnd"    # I
    .param p6, "isNonImeChange"    # Z

    .prologue
    .line 304
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastText:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastSelectionStart:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastSelectionEnd:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastCompositionStart:I

    if-ne v0, p4, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastCompositionEnd:I

    if-eq v0, p5, :cond_1

    .line 308
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->invalidateLastCursorAnchorInfo()V

    .line 310
    :cond_1
    iput-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastText:Ljava/lang/String;

    .line 311
    iput p2, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastSelectionStart:I

    .line 312
    iput p3, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastSelectionEnd:I

    .line 313
    iput p4, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastCompositionStart:I

    .line 314
    iput p5, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastCompositionEnd:I

    .line 316
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    if-nez v0, :cond_2

    .line 321
    :goto_0
    return-void

    .line 317
    :cond_2
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_3

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_3

    const/4 v6, 0x1

    .line 319
    .local v6, "singleLine":Z
    :goto_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;->updateStateOnUiThread(Ljava/lang/String;IIIIZZ)V

    goto :goto_0

    .line 317
    .end local v6    # "singleLine":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method
