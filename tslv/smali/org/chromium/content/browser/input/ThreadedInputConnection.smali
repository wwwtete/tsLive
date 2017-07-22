.class public Lorg/chromium/content/browser/input/ThreadedInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "ThreadedInputConnection.java"

# interfaces
.implements Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;


# static fields
.field private static final DEBUG_LOGS:Z = false

.field private static final TAG:Ljava/lang/String; = "cr_Ime"

.field private static final UNBLOCKER:Lorg/chromium/content/browser/input/TextInputState;


# instance fields
.field private final mFinishComposingTextRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private final mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

.field private final mMoveCursorSelectionEndRunnable:Ljava/lang/Runnable;

.field private final mNotifyUserActionRunnable:Ljava/lang/Runnable;

.field private mNumNestedBatchEdits:I

.field private mPendingAccent:I

.field private final mProcessPendingInputStatesRunnable:Ljava/lang/Runnable;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lorg/chromium/content/browser/input/TextInputState;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestTextInputStateUpdate:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 44
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$1;

    const-string v1, ""

    new-instance v2, Lorg/chromium/content/browser/input/Range;

    invoke-direct {v2, v4, v4}, Lorg/chromium/content/browser/input/Range;-><init>(II)V

    new-instance v3, Lorg/chromium/content/browser/input/Range;

    invoke-direct {v3, v5, v5}, Lorg/chromium/content/browser/input/Range;-><init>(II)V

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/input/ThreadedInputConnection$1;-><init>(Ljava/lang/CharSequence;Lorg/chromium/content/browser/input/Range;Lorg/chromium/content/browser/input/Range;ZZ)V

    sput-object v0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->UNBLOCKER:Lorg/chromium/content/browser/input/TextInputState;

    return-void
.end method

.method constructor <init>(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapter;Landroid/os/Handler;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "imeAdapter"    # Lorg/chromium/content/browser/input/ImeAdapter;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 102
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 53
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$2;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection$2;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mProcessPendingInputStatesRunnable:Ljava/lang/Runnable;

    .line 60
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$3;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection$3;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mMoveCursorSelectionEndRunnable:Ljava/lang/Runnable;

    .line 70
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$4;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection$4;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mRequestTextInputStateUpdate:Ljava/lang/Runnable;

    .line 78
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$5;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection$5;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNotifyUserActionRunnable:Ljava/lang/Runnable;

    .line 85
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$6;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection$6;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mFinishComposingTextRunnable:Ljava/lang/Runnable;

    .line 98
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 104
    invoke-static {}, Lorg/chromium/content/browser/input/ImeUtils;->checkOnUiThread()V

    .line 105
    iput-object p2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    .line 106
    iput-object p3, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mHandler:Landroid/os/Handler;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/input/ThreadedInputConnection;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/input/ThreadedInputConnection;

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->processPendingInputStates()V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/input/ThreadedInputConnection;)Lorg/chromium/content/browser/input/TextInputState;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/input/ThreadedInputConnection;

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->requestAndWaitForTextInputState()Lorg/chromium/content/browser/input/TextInputState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/input/ThreadedInputConnection;)Lorg/chromium/content/browser/input/ImeAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/input/ThreadedInputConnection;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    return-object v0
.end method

.method private addToQueueOnUiThread(Lorg/chromium/content/browser/input/TextInputState;)V
    .locals 5
    .param p1, "textInputState"    # Lorg/chromium/content/browser/input/TextInputState;

    .prologue
    .line 220
    invoke-static {}, Lorg/chromium/content/browser/input/ImeUtils;->checkOnUiThread()V

    .line 222
    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "cr_Ime"

    const-string v2, "addToQueueOnUiThread interrupted"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private assertOnImeThread()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/chromium/content/browser/input/ImeUtils;->checkCondition(Z)V

    .line 238
    return-void

    .line 237
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private blockAndGetStateUpdate()Lorg/chromium/content/browser/input/TextInputState;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 246
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 247
    const/4 v1, 0x0

    .line 251
    .local v1, "shouldUpdateSelection":Z
    :goto_0
    :try_start_0
    iget-object v4, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/content/browser/input/TextInputState;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .local v2, "state":Lorg/chromium/content/browser/input/TextInputState;
    invoke-virtual {v2}, Lorg/chromium/content/browser/input/TextInputState;->shouldUnblock()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v2, v3

    .line 265
    .end local v2    # "state":Lorg/chromium/content/browser/input/TextInputState;
    :cond_0
    :goto_1
    return-object v2

    .line 252
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 256
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/chromium/content/browser/input/ImeUtils;->checkCondition(Z)V

    move-object v2, v3

    .line 257
    goto :goto_1

    .line 262
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "state":Lorg/chromium/content/browser/input/TextInputState;
    :cond_1
    invoke-virtual {v2}, Lorg/chromium/content/browser/input/TextInputState;->fromIme()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 263
    if-eqz v1, :cond_0

    invoke-direct {p0, v2}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->updateSelection(Lorg/chromium/content/browser/input/TextInputState;)V

    goto :goto_1

    .line 269
    :cond_2
    const/4 v1, 0x1

    .line 270
    goto :goto_0
.end method

.method private cancelCombiningAccent()V
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mPendingAccent:I

    .line 483
    return-void
.end method

.method private handleCombiningAccent(Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 450
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 451
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v4

    .line 453
    .local v4, "unicodeChar":I
    if-eqz v0, :cond_1

    .line 473
    :cond_0
    :goto_0
    return v5

    .line 454
    :cond_1
    const/high16 v7, -0x80000000

    and-int/2addr v7, v4

    if-eqz v7, :cond_2

    .line 455
    const v5, 0x7fffffff

    and-int v3, v4, v5

    .line 456
    .local v3, "pendingAccent":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 457
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v6, v6}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->updateComposingText(Ljava/lang/CharSequence;IZ)Z

    .line 459
    invoke-virtual {p0, v3}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->setCombiningAccent(I)V

    move v5, v6

    .line 460
    goto :goto_0

    .line 461
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "pendingAccent":I
    :cond_2
    iget v7, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mPendingAccent:I

    if-eqz v7, :cond_0

    if-eqz v4, :cond_0

    .line 462
    iget v7, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mPendingAccent:I

    invoke-static {v7, v4}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v2

    .line 463
    .local v2, "combined":I
    if-eqz v2, :cond_3

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 465
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v6}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move v5, v6

    .line 467
    goto :goto_0

    .line 471
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->finishComposingText()Z

    goto :goto_0
.end method

.method private notifyUserAction()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNotifyUserActionRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 275
    return-void
.end method

.method private processPendingInputStates()V
    .locals 2

    .prologue
    .line 185
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 188
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/input/TextInputState;

    .line 189
    .local v0, "state":Lorg/chromium/content/browser/input/TextInputState;
    if-nez v0, :cond_1

    .line 191
    return-void

    .line 194
    :cond_1
    invoke-virtual {v0}, Lorg/chromium/content/browser/input/TextInputState;->shouldUnblock()Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->updateSelection(Lorg/chromium/content/browser/input/TextInputState;)V

    goto :goto_0
.end method

.method private requestAndWaitForTextInputState()Lorg/chromium/content/browser/input/TextInputState;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mRequestTextInputStateUpdate:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 216
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->blockAndGetStateUpdate()Lorg/chromium/content/browser/input/TextInputState;

    move-result-object v0

    return-object v0
.end method

.method private updateSelection(Lorg/chromium/content/browser/input/TextInputState;)V
    .locals 7
    .param p1, "textInputState"    # Lorg/chromium/content/browser/input/TextInputState;

    .prologue
    .line 204
    if-nez p1, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 206
    iget v2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNumNestedBatchEdits:I

    if-nez v2, :cond_0

    .line 207
    invoke-virtual {p1}, Lorg/chromium/content/browser/input/TextInputState;->selection()Lorg/chromium/content/browser/input/Range;

    move-result-object v1

    .line 208
    .local v1, "selection":Lorg/chromium/content/browser/input/Range;
    invoke-virtual {p1}, Lorg/chromium/content/browser/input/TextInputState;->composition()Lorg/chromium/content/browser/input/Range;

    move-result-object v0

    .line 209
    .local v0, "composition":Lorg/chromium/content/browser/input/Range;
    iget-object v2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/Range;->start()I

    move-result v3

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/Range;->end()I

    move-result v4

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/Range;->start()I

    move-result v5

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/Range;->end()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/chromium/content/browser/input/ImeAdapter;->updateSelection(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .prologue
    .line 380
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 381
    iget v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNumNestedBatchEdits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNumNestedBatchEdits:I

    .line 382
    const/4 v0, 0x1

    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 1
    .param p1, "states"    # I

    .prologue
    .line 606
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 607
    const/4 v0, 0x0

    return v0
.end method

.method public closeConnection()V
    .locals 0

    .prologue
    .line 653
    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 583
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 584
    const/4 v0, 0x0

    return v0
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 1
    .param p1, "correctionInfo"    # Landroid/view/inputmethod/CorrectionInfo;

    .prologue
    .line 596
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 597
    const/4 v0, 0x0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 312
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 313
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->cancelCombiningAccent()V

    .line 314
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$9;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/input/ThreadedInputConnection$9;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;Ljava/lang/CharSequence;I)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 320
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->notifyUserAction()V

    .line 321
    const/4 v0, 0x1

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 1
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    .line 406
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 407
    iget v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mPendingAccent:I

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->finishComposingText()Z

    .line 410
    :cond_0
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$12;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/input/ThreadedInputConnection$12;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;II)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 416
    const/4 v0, 0x1

    return v0
.end method

.method public deleteSurroundingTextInCodePoints(II)Z
    .locals 1
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    .line 424
    const/4 v0, 0x0

    return v0
.end method

.method public endBatchEdit()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 390
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 391
    iget v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNumNestedBatchEdits:I

    if-nez v1, :cond_1

    .line 397
    :cond_0
    :goto_0
    return v0

    .line 392
    :cond_1
    iget v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNumNestedBatchEdits:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNumNestedBatchEdits:I

    .line 394
    iget v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNumNestedBatchEdits:I

    if-nez v1, :cond_2

    .line 395
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->requestAndWaitForTextInputState()Lorg/chromium/content/browser/input/TextInputState;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->updateSelection(Lorg/chromium/content/browser/input/TextInputState;)V

    .line 397
    :cond_2
    iget v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNumNestedBatchEdits:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public finishComposingText()Z
    .locals 1

    .prologue
    .line 491
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->cancelCombiningAccent()V

    .line 494
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mFinishComposingTextRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 495
    const/4 v0, 0x1

    return v0
.end method

.method public getCursorCapsMode(I)I
    .locals 1
    .param p1, "reqModes"    # I

    .prologue
    .line 572
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 574
    const/4 v0, 0x0

    return v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 3
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I

    .prologue
    .line 362
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 363
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->requestAndWaitForTextInputState()Lorg/chromium/content/browser/input/TextInputState;

    move-result-object v1

    .line 364
    .local v1, "textInputState":Lorg/chromium/content/browser/input/TextInputState;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 371
    :goto_0
    return-object v0

    .line 365
    :cond_0
    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 366
    .local v0, "extractedText":Landroid/view/inputmethod/ExtractedText;
    invoke-virtual {v1}, Lorg/chromium/content/browser/input/TextInputState;->text()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 367
    invoke-virtual {v1}, Lorg/chromium/content/browser/input/TextInputState;->text()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 368
    invoke-virtual {v1}, Lorg/chromium/content/browser/input/TextInputState;->selection()Lorg/chromium/content/browser/input/Range;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/Range;->start()I

    move-result v2

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 369
    invoke-virtual {v1}, Lorg/chromium/content/browser/input/TextInputState;->selection()Lorg/chromium/content/browser/input/Range;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/Range;->end()I

    move-result v2

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 370
    invoke-virtual {v1}, Lorg/chromium/content/browser/input/TextInputState;->singleLine()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->flags:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getQueueForTest()Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lorg/chromium/content/browser/input/TextInputState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 560
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 561
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->requestAndWaitForTextInputState()Lorg/chromium/content/browser/input/TextInputState;

    move-result-object v0

    .line 562
    .local v0, "textInputState":Lorg/chromium/content/browser/input/TextInputState;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 563
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/content/browser/input/TextInputState;->getSelectedText()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "maxChars"    # I
    .param p2, "flags"    # I

    .prologue
    .line 548
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 549
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->requestAndWaitForTextInputState()Lorg/chromium/content/browser/input/TextInputState;

    move-result-object v0

    .line 550
    .local v0, "textInputState":Lorg/chromium/content/browser/input/TextInputState;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 551
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/TextInputState;->getTextAfterSelection(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "maxChars"    # I
    .param p2, "flags"    # I

    .prologue
    .line 536
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 537
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->requestAndWaitForTextInputState()Lorg/chromium/content/browser/input/TextInputState;

    move-result-object v0

    .line 538
    .local v0, "textInputState":Lorg/chromium/content/browser/input/TextInputState;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 539
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/TextInputState;->getTextBeforeSelection(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method initializeOutAttrsOnUiThread(IIIILandroid/view/inputmethod/EditorInfo;)V
    .locals 1
    .param p1, "inputType"    # I
    .param p2, "inputFlags"    # I
    .param p3, "selectionStart"    # I
    .param p4, "selectionEnd"    # I
    .param p5, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-static {}, Lorg/chromium/content/browser/input/ImeUtils;->checkOnUiThread()V

    .line 112
    iput v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNumNestedBatchEdits:I

    .line 113
    iput v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mPendingAccent:I

    .line 114
    invoke-static {p1, p2, p3, p4, p5}, Lorg/chromium/content/browser/input/ImeUtils;->computeEditorInfo(IIIILandroid/view/inputmethod/EditorInfo;)V

    .line 118
    return-void
.end method

.method public moveCursorToSelectionEndOnUiThread()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mMoveCursorSelectionEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 172
    return-void
.end method

.method public onRestartInputOnUiThread()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public performContextMenuAction(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 346
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 347
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$11;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnection$11;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;I)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 353
    const/4 v0, 0x1

    return v0
.end method

.method public performEditorAction(I)Z
    .locals 1
    .param p1, "actionCode"    # I

    .prologue
    .line 330
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 331
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$10;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnection$10;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;I)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 337
    const/4 v0, 0x1

    return v0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 628
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 629
    const/4 v0, 0x0

    return v0
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 619
    const/4 v0, 0x0

    return v0
.end method

.method public requestCursorUpdates(I)Z
    .locals 1
    .param p1, "cursorUpdateMode"    # I

    .prologue
    .line 638
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 639
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$16;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnection$16;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;I)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 645
    const/4 v0, 0x1

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 433
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 435
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->handleCombiningAccent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    :goto_0
    return v1

    .line 437
    :cond_0
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$13;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnection$13;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;Landroid/view/KeyEvent;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 443
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->notifyUserAction()V

    goto :goto_0
.end method

.method public sendKeyEventOnUiThread(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 156
    invoke-static {}, Lorg/chromium/content/browser/input/ImeUtils;->checkOnUiThread()V

    .line 157
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/content/browser/input/ThreadedInputConnection$7;

    invoke-direct {v1, p0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnection$7;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;Landroid/view/KeyEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public setCombiningAccent(I)V
    .locals 0
    .param p1, "pendingAccent"    # I
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 478
    iput p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mPendingAccent:I

    .line 479
    return-void
.end method

.method public setComposingRegion(II)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 520
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 521
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$15;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/input/ThreadedInputConnection$15;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;II)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 527
    const/4 v0, 0x1

    return v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 283
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->updateComposingText(Ljava/lang/CharSequence;IZ)Z

    move-result v0

    return v0
.end method

.method public setSelection(II)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 504
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 505
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$14;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/input/ThreadedInputConnection$14;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;II)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 511
    const/4 v0, 0x1

    return v0
.end method

.method public unblockOnUiThread()V
    .locals 2
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 178
    invoke-static {}, Lorg/chromium/content/browser/input/ImeUtils;->checkOnUiThread()V

    .line 179
    sget-object v0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->UNBLOCKER:Lorg/chromium/content/browser/input/TextInputState;

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->addToQueueOnUiThread(Lorg/chromium/content/browser/input/TextInputState;)V

    .line 180
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mProcessPendingInputStatesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 181
    return-void
.end method

.method public updateComposingText(Ljava/lang/CharSequence;IZ)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I
    .param p3, "isPendingAccent"    # Z
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 292
    if-eqz p3, :cond_0

    iget v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mPendingAccent:I

    const/high16 v2, -0x80000000

    or-int v0, v1, v2

    .line 294
    .local v0, "accentToSend":I
    :goto_0
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 295
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->cancelCombiningAccent()V

    .line 296
    new-instance v1, Lorg/chromium/content/browser/input/ThreadedInputConnection$8;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/chromium/content/browser/input/ThreadedInputConnection$8;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;Ljava/lang/CharSequence;II)V

    invoke-static {v1}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 302
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->notifyUserAction()V

    .line 303
    const/4 v1, 0x1

    return v1

    .line 292
    .end local v0    # "accentToSend":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateStateOnUiThread(Ljava/lang/String;IIIIZZ)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "selectionStart"    # I
    .param p3, "selectionEnd"    # I
    .param p4, "compositionStart"    # I
    .param p5, "compositionEnd"    # I
    .param p6, "singleLine"    # Z
    .param p7, "isNonImeChange"    # Z

    .prologue
    .line 124
    invoke-static {}, Lorg/chromium/content/browser/input/ImeUtils;->checkOnUiThread()V

    .line 126
    new-instance v0, Lorg/chromium/content/browser/input/TextInputState;

    new-instance v2, Lorg/chromium/content/browser/input/Range;

    invoke-direct {v2, p2, p3}, Lorg/chromium/content/browser/input/Range;-><init>(II)V

    new-instance v3, Lorg/chromium/content/browser/input/Range;

    invoke-direct {v3, p4, p5}, Lorg/chromium/content/browser/input/Range;-><init>(II)V

    if-nez p7, :cond_1

    const/4 v5, 0x1

    :goto_0
    move-object v1, p1

    move v4, p6

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/input/TextInputState;-><init>(Ljava/lang/CharSequence;Lorg/chromium/content/browser/input/Range;Lorg/chromium/content/browser/input/Range;ZZ)V

    .line 131
    .local v0, "newState":Lorg/chromium/content/browser/input/TextInputState;
    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->addToQueueOnUiThread(Lorg/chromium/content/browser/input/TextInputState;)V

    .line 132
    if-eqz p7, :cond_0

    .line 133
    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mProcessPendingInputStatesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
    :cond_0
    return-void

    .line 126
    .end local v0    # "newState":Lorg/chromium/content/browser/input/TextInputState;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method
