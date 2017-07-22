.class public Lorg/chromium/content/browser/input/TextInputState;
.super Ljava/lang/Object;
.source "TextInputState.java"


# instance fields
.field private final mComposition:Lorg/chromium/content/browser/input/Range;

.field private final mFromIme:Z

.field private final mSelection:Lorg/chromium/content/browser/input/Range;

.field private final mSingleLine:Z

.field private final mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Lorg/chromium/content/browser/input/Range;Lorg/chromium/content/browser/input/Range;ZZ)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "selection"    # Lorg/chromium/content/browser/input/Range;
    .param p3, "composition"    # Lorg/chromium/content/browser/input/Range;
    .param p4, "singleLine"    # Z
    .param p5, "fromIme"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p2, v2, v0}, Lorg/chromium/content/browser/input/Range;->clamp(II)V

    .line 25
    invoke-virtual {p3}, Lorg/chromium/content/browser/input/Range;->start()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p3}, Lorg/chromium/content/browser/input/Range;->end()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 26
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p3, v2, v0}, Lorg/chromium/content/browser/input/Range;->clamp(II)V

    .line 28
    :cond_1
    iput-object p1, p0, Lorg/chromium/content/browser/input/TextInputState;->mText:Ljava/lang/CharSequence;

    .line 29
    iput-object p2, p0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    .line 30
    iput-object p3, p0, Lorg/chromium/content/browser/input/TextInputState;->mComposition:Lorg/chromium/content/browser/input/Range;

    .line 31
    iput-boolean p4, p0, Lorg/chromium/content/browser/input/TextInputState;->mSingleLine:Z

    .line 32
    iput-boolean p5, p0, Lorg/chromium/content/browser/input/TextInputState;->mFromIme:Z

    .line 33
    return-void
.end method


# virtual methods
.method public composition()Lorg/chromium/content/browser/input/Range;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/chromium/content/browser/input/TextInputState;->mComposition:Lorg/chromium/content/browser/input/Range;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    instance-of v3, p1, Lorg/chromium/content/browser/input/TextInputState;

    if-nez v3, :cond_1

    move v1, v2

    .line 74
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 72
    check-cast v0, Lorg/chromium/content/browser/input/TextInputState;

    .line 73
    .local v0, "t":Lorg/chromium/content/browser/input/TextInputState;
    if-eq v0, p0, :cond_0

    .line 74
    iget-object v3, p0, Lorg/chromium/content/browser/input/TextInputState;->mText:Ljava/lang/CharSequence;

    iget-object v4, v0, Lorg/chromium/content/browser/input/TextInputState;->mText:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    iget-object v4, v0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    invoke-virtual {v3, v4}, Lorg/chromium/content/browser/input/Range;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/chromium/content/browser/input/TextInputState;->mComposition:Lorg/chromium/content/browser/input/Range;

    iget-object v4, v0, Lorg/chromium/content/browser/input/TextInputState;->mComposition:Lorg/chromium/content/browser/input/Range;

    invoke-virtual {v3, v4}, Lorg/chromium/content/browser/input/Range;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lorg/chromium/content/browser/input/TextInputState;->mSingleLine:Z

    iget-boolean v4, v0, Lorg/chromium/content/browser/input/TextInputState;->mSingleLine:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lorg/chromium/content/browser/input/TextInputState;->mFromIme:Z

    iget-boolean v4, v0, Lorg/chromium/content/browser/input/TextInputState;->mFromIme:Z

    if-eq v3, v4, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public fromIme()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lorg/chromium/content/browser/input/TextInputState;->mFromIme:Z

    return v0
.end method

.method public getSelectedText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lorg/chromium/content/browser/input/TextInputState;->mText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/Range;->start()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/Range;->end()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextAfterSelection(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "maxChars"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lorg/chromium/content/browser/input/TextInputState;->mText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/Range;->end()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/content/browser/input/TextInputState;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v3, p0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    invoke-virtual {v3}, Lorg/chromium/content/browser/input/Range;->end()I

    move-result v3

    add-int/2addr v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextBeforeSelection(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "maxChars"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lorg/chromium/content/browser/input/TextInputState;->mText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/Range;->start()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/Range;->start()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lorg/chromium/content/browser/input/TextInputState;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    iget-object v2, p0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/Range;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0xb

    add-int/2addr v0, v2

    iget-object v2, p0, Lorg/chromium/content/browser/input/TextInputState;->mComposition:Lorg/chromium/content/browser/input/Range;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/Range;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0xd

    add-int/2addr v2, v0

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/TextInputState;->mSingleLine:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x13

    :goto_0
    add-int/2addr v0, v2

    iget-boolean v2, p0, Lorg/chromium/content/browser/input/TextInputState;->mFromIme:Z

    if-eqz v2, :cond_0

    const/16 v1, 0x17

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public selection()Lorg/chromium/content/browser/input/Range;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    return-object v0
.end method

.method public shouldUnblock()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public singleLine()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lorg/chromium/content/browser/input/TextInputState;->mSingleLine:Z

    return v0
.end method

.method public text()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/chromium/content/browser/input/TextInputState;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 92
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "TextInputState {[%s] SEL%s COM%s %s %s}"

    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v4, p0, Lorg/chromium/content/browser/input/TextInputState;->mText:Ljava/lang/CharSequence;

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget-object v4, p0, Lorg/chromium/content/browser/input/TextInputState;->mSelection:Lorg/chromium/content/browser/input/Range;

    aput-object v4, v3, v0

    const/4 v0, 0x2

    iget-object v4, p0, Lorg/chromium/content/browser/input/TextInputState;->mComposition:Lorg/chromium/content/browser/input/Range;

    aput-object v4, v3, v0

    const/4 v4, 0x3

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/TextInputState;->mSingleLine:Z

    if-eqz v0, :cond_0

    const-string v0, "SIN"

    :goto_0
    aput-object v0, v3, v4

    const/4 v4, 0x4

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/TextInputState;->mFromIme:Z

    if-eqz v0, :cond_1

    const-string v0, "fromIME"

    :goto_1
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "MUL"

    goto :goto_0

    :cond_1
    const-string v0, "NOTfromIME"

    goto :goto_1
.end method
