.class public final Lcom/google/android/exoplayer/text/SubtitleLayout;
.super Landroid/view/View;
.source "SubtitleLayout.java"


# static fields
.field private static final ABSOLUTE:I = 0x2

.field public static final DEFAULT_BOTTOM_PADDING_FRACTION:F = 0.08f

.field public static final DEFAULT_TEXT_SIZE_FRACTION:F = 0.0533f

.field private static final FRACTIONAL:I = 0x0

.field private static final FRACTIONAL_IGNORE_PADDING:I = 0x1


# instance fields
.field private applyEmbeddedStyles:Z

.field private bottomPaddingFraction:F

.field private cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private final painters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/text/CuePainter;",
            ">;"
        }
    .end annotation
.end field

.field private style:Lcom/google/android/exoplayer/text/CaptionStyleCompat;

.field private textSize:F

.field private textSizeType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer/text/SubtitleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->painters:Ljava/util/List;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->textSizeType:I

    .line 68
    const v0, 0x3d5a511a    # 0.0533f

    iput v0, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->textSize:F

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->applyEmbeddedStyles:Z

    .line 70
    sget-object v0, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer/text/CaptionStyleCompat;

    iput-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->style:Lcom/google/android/exoplayer/text/CaptionStyleCompat;

    .line 71
    const v0, 0x3da3d70a    # 0.08f

    iput v0, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->bottomPaddingFraction:F

    .line 72
    return-void
.end method

.method private setTextSize(IF)V
    .locals 1
    .param p1, "textSizeType"    # I
    .param p2, "textSize"    # F

    .prologue
    .line 138
    iget v0, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->textSizeType:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->textSize:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 141
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->textSizeType:I

    .line 142
    iput p2, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->textSize:F

    .line 144
    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/SubtitleLayout;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->cues:Ljava/util/List;

    if-nez v0, :cond_1

    const/4 v11, 0x0

    .line 196
    .local v11, "cueCount":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/SubtitleLayout;->getTop()I

    move-result v14

    .line 197
    .local v14, "rawTop":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/SubtitleLayout;->getBottom()I

    move-result v13

    .line 200
    .local v13, "rawBottom":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/SubtitleLayout;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/SubtitleLayout;->getPaddingLeft()I

    move-result v1

    add-int v7, v0, v1

    .line 201
    .local v7, "left":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/SubtitleLayout;->getPaddingTop()I

    move-result v0

    add-int v8, v14, v0

    .line 202
    .local v8, "top":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/SubtitleLayout;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/SubtitleLayout;->getPaddingRight()I

    move-result v1

    add-int v9, v0, v1

    .line 203
    .local v9, "right":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/SubtitleLayout;->getPaddingBottom()I

    move-result v0

    sub-int v10, v13, v0

    .line 204
    .local v10, "bottom":I
    if-le v10, v8, :cond_0

    if-gt v9, v7, :cond_2

    .line 220
    :cond_0
    return-void

    .line 195
    .end local v7    # "left":I
    .end local v8    # "top":I
    .end local v9    # "right":I
    .end local v10    # "bottom":I
    .end local v11    # "cueCount":I
    .end local v13    # "rawBottom":I
    .end local v14    # "rawTop":I
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->cues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    goto :goto_0

    .line 209
    .restart local v7    # "left":I
    .restart local v8    # "top":I
    .restart local v9    # "right":I
    .restart local v10    # "bottom":I
    .restart local v11    # "cueCount":I
    .restart local v13    # "rawBottom":I
    .restart local v14    # "rawTop":I
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->textSizeType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget v4, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->textSize:F

    .line 211
    .local v4, "textSizePx":F
    :goto_1
    const/4 v0, 0x0

    cmpg-float v0, v4, v0

    if-lez v0, :cond_0

    .line 216
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v11, :cond_0

    .line 217
    iget-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->painters:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/text/CuePainter;

    iget-object v1, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->cues:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/text/Cue;

    iget-boolean v2, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->applyEmbeddedStyles:Z

    iget-object v3, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->style:Lcom/google/android/exoplayer/text/CaptionStyleCompat;

    iget v5, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->bottomPaddingFraction:F

    move-object/from16 v6, p1

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/exoplayer/text/CuePainter;->draw(Lcom/google/android/exoplayer/text/Cue;ZLcom/google/android/exoplayer/text/CaptionStyleCompat;FFLandroid/graphics/Canvas;IIII)V

    .line 216
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 209
    .end local v4    # "textSizePx":F
    .end local v12    # "i":I
    :cond_3
    iget v1, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->textSize:F

    iget v0, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->textSizeType:I

    if-nez v0, :cond_4

    sub-int v0, v10, v8

    :goto_3
    int-to-float v0, v0

    mul-float v4, v1, v0

    goto :goto_1

    :cond_4
    sub-int v0, v13, v14

    goto :goto_3
.end method

.method public setApplyEmbeddedStyles(Z)V
    .locals 1
    .param p1, "applyEmbeddedStyles"    # Z

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->applyEmbeddedStyles:Z

    if-ne v0, p1, :cond_0

    .line 159
    :goto_0
    return-void

    .line 156
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->applyEmbeddedStyles:Z

    .line 158
    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/SubtitleLayout;->invalidate()V

    goto :goto_0
.end method

.method public setBottomPaddingFraction(F)V
    .locals 1
    .param p1, "bottomPaddingFraction"    # F

    .prologue
    .line 185
    iget v0, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->bottomPaddingFraction:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 188
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->bottomPaddingFraction:F

    .line 190
    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/SubtitleLayout;->invalidate()V

    goto :goto_0
.end method

.method public setCues(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/text/Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/text/Cue;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->cues:Ljava/util/List;

    if-ne v1, p1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 83
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->cues:Ljava/util/List;

    .line 85
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 86
    .local v0, "cueCount":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->painters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_2

    .line 87
    iget-object v1, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->painters:Ljava/util/List;

    new-instance v2, Lcom/google/android/exoplayer/text/CuePainter;

    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/SubtitleLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer/text/CuePainter;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 85
    .end local v0    # "cueCount":I
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    .line 90
    .restart local v0    # "cueCount":I
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/SubtitleLayout;->invalidate()V

    goto :goto_0
.end method

.method public setFixedTextSize(IF)V
    .locals 4
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/SubtitleLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 104
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 105
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 109
    .local v1, "resources":Landroid/content/res/Resources;
    :goto_0
    const/4 v2, 0x2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {p1, p2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer/text/SubtitleLayout;->setTextSize(IF)V

    .line 110
    return-void

    .line 107
    .end local v1    # "resources":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .restart local v1    # "resources":Landroid/content/res/Resources;
    goto :goto_0
.end method

.method public setFractionalTextSize(F)V
    .locals 1
    .param p1, "fractionOfHeight"    # F

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer/text/SubtitleLayout;->setFractionalTextSize(FZ)V

    .line 122
    return-void
.end method

.method public setFractionalTextSize(FZ)V
    .locals 1
    .param p1, "fractionOfHeight"    # F
    .param p2, "ignorePadding"    # Z

    .prologue
    .line 134
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer/text/SubtitleLayout;->setTextSize(IF)V

    .line 135
    return-void

    .line 134
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStyle(Lcom/google/android/exoplayer/text/CaptionStyleCompat;)V
    .locals 1
    .param p1, "style"    # Lcom/google/android/exoplayer/text/CaptionStyleCompat;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->style:Lcom/google/android/exoplayer/text/CaptionStyleCompat;

    if-ne v0, p1, :cond_0

    .line 173
    :goto_0
    return-void

    .line 170
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer/text/SubtitleLayout;->style:Lcom/google/android/exoplayer/text/CaptionStyleCompat;

    .line 172
    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/SubtitleLayout;->invalidate()V

    goto :goto_0
.end method
