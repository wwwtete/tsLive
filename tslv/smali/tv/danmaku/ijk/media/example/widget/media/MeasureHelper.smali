.class public final Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;
.super Ljava/lang/Object;
.source "MeasureHelper.java"


# instance fields
.field private mCurrentAspectRatio:I

.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field private mVideoHeight:I

.field private mVideoRotationDegree:I

.field private mVideoSarDen:I

.field private mVideoSarNum:I

.field private mVideoWidth:I

.field private mWeakView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mCurrentAspectRatio:I

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mWeakView:Ljava/lang/ref/WeakReference;

    .line 44
    return-void
.end method

.method public static getAspectRatioText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "aspectRatio"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 222
    packed-switch p1, :pswitch_data_0

    .line 242
    const v1, 0x7f08004e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "text":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 224
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_0
    const v1, 0x7f080058

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 225
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 227
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_1
    const v1, 0x7f080057

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 230
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_2
    const v1, 0x7f080059

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 231
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 233
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_3
    const v1, 0x7f08005a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 234
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 236
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_4
    const v1, 0x7f080055

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 237
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 239
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_5
    const v1, 0x7f080056

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 240
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public doMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 75
    iget v10, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoRotationDegree:I

    const/16 v11, 0x5a

    if-eq v10, v11, :cond_0

    iget v10, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoRotationDegree:I

    const/16 v11, 0x10e

    if-ne v10, v11, :cond_1

    .line 76
    :cond_0
    move v6, p1

    .line 77
    .local v6, "tempSpec":I
    move p1, p2

    .line 78
    move p2, v6

    .line 81
    .end local v6    # "tempSpec":I
    :cond_1
    iget v10, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    invoke-static {v10, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v7

    .line 82
    .local v7, "width":I
    iget v10, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    invoke-static {v10, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v1

    .line 83
    .local v1, "height":I
    iget v10, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mCurrentAspectRatio:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_3

    .line 84
    move v7, p1

    .line 85
    move v1, p2

    .line 203
    :cond_2
    :goto_0
    iput v7, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mMeasuredWidth:I

    .line 204
    iput v1, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mMeasuredHeight:I

    .line 205
    return-void

    .line 86
    :cond_3
    iget v10, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    if-lez v10, :cond_2

    iget v10, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    if-lez v10, :cond_2

    .line 87
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 88
    .local v8, "widthSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 89
    .local v9, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 90
    .local v2, "heightSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 92
    .local v3, "heightSpecSize":I
    const/high16 v10, -0x80000000

    if-ne v8, v10, :cond_b

    const/high16 v10, -0x80000000

    if-ne v2, v10, :cond_b

    .line 93
    int-to-float v10, v9

    int-to-float v11, v3

    div-float v5, v10, v11

    .line 95
    .local v5, "specAspectRatio":F
    iget v10, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mCurrentAspectRatio:I

    packed-switch v10, :pswitch_data_0

    .line 110
    iget v10, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    int-to-float v10, v10

    iget v11, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    int-to-float v11, v11

    div-float v0, v10, v11

    .line 111
    .local v0, "displayAspectRatio":F
    iget v10, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoSarNum:I

    if-lez v10, :cond_4

    iget v10, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoSarDen:I

    if-lez v10, :cond_4

    .line 112
    iget v10, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoSarNum:I

    int-to-float v10, v10

    mul-float/2addr v10, v0

    iget v11, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoSarDen:I

    int-to-float v11, v11

    div-float v0, v10, v11

    .line 115
    :cond_4
    :goto_1
    cmpl-float v10, v0, v5

    if-lez v10, :cond_7

    const/4 v4, 0x1

    .line 117
    .local v4, "shouldBeWider":Z
    :goto_2
    iget v10, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mCurrentAspectRatio:I

    packed-switch v10, :pswitch_data_1

    .line 144
    :pswitch_0
    if-eqz v4, :cond_a

    .line 146
    iget v10, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 147
    int-to-float v10, v7

    div-float/2addr v10, v0

    float-to-int v1, v10

    goto :goto_0

    .line 97
    .end local v0    # "displayAspectRatio":F
    .end local v4    # "shouldBeWider":Z
    :pswitch_1
    const v0, 0x3fe38e39

    .line 98
    .restart local v0    # "displayAspectRatio":F
    iget v10, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoRotationDegree:I

    const/16 v11, 0x5a

    if-eq v10, v11, :cond_5

    iget v10, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoRotationDegree:I

    const/16 v11, 0x10e

    if-ne v10, v11, :cond_4

    .line 99
    :cond_5
    const/high16 v10, 0x3f800000    # 1.0f

    div-float v0, v10, v0

    goto :goto_1

    .line 102
    .end local v0    # "displayAspectRatio":F
    :pswitch_2
    const v0, 0x3faaaaab

    .line 103
    .restart local v0    # "displayAspectRatio":F
    iget v10, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoRotationDegree:I

    const/16 v11, 0x5a

    if-eq v10, v11, :cond_6

    iget v10, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoRotationDegree:I

    const/16 v11, 0x10e

    if-ne v10, v11, :cond_4

    .line 104
    :cond_6
    const/high16 v10, 0x3f800000    # 1.0f

    div-float v0, v10, v0

    goto :goto_1

    .line 115
    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    .line 121
    .restart local v4    # "shouldBeWider":Z
    :pswitch_3
    if-eqz v4, :cond_8

    .line 123
    move v7, v9

    .line 124
    int-to-float v10, v7

    div-float/2addr v10, v0

    float-to-int v1, v10

    goto/16 :goto_0

    .line 127
    :cond_8
    move v1, v3

    .line 128
    int-to-float v10, v1

    mul-float/2addr v10, v0

    float-to-int v7, v10

    .line 130
    goto/16 :goto_0

    .line 132
    :pswitch_4
    if-eqz v4, :cond_9

    .line 134
    move v1, v3

    .line 135
    int-to-float v10, v1

    mul-float/2addr v10, v0

    float-to-int v7, v10

    goto/16 :goto_0

    .line 138
    :cond_9
    move v7, v9

    .line 139
    int-to-float v10, v7

    div-float/2addr v10, v0

    float-to-int v1, v10

    .line 141
    goto/16 :goto_0

    .line 150
    :cond_a
    iget v10, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 151
    int-to-float v10, v1

    mul-float/2addr v10, v0

    float-to-int v7, v10

    goto/16 :goto_0

    .line 155
    .end local v0    # "displayAspectRatio":F
    .end local v4    # "shouldBeWider":Z
    .end local v5    # "specAspectRatio":F
    :cond_b
    const/high16 v10, 0x40000000    # 2.0f

    if-ne v8, v10, :cond_d

    const/high16 v10, 0x40000000    # 2.0f

    if-ne v2, v10, :cond_d

    .line 157
    move v7, v9

    .line 158
    move v1, v3

    .line 161
    iget v10, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    mul-int/2addr v10, v1

    iget v11, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    mul-int/2addr v11, v7

    if-ge v10, v11, :cond_c

    .line 163
    iget v10, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    mul-int/2addr v10, v1

    iget v11, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    div-int v7, v10, v11

    goto/16 :goto_0

    .line 164
    :cond_c
    iget v10, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    mul-int/2addr v10, v1

    iget v11, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    mul-int/2addr v11, v7

    if-le v10, v11, :cond_2

    .line 166
    iget v10, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    mul-int/2addr v10, v7

    iget v11, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    div-int v1, v10, v11

    goto/16 :goto_0

    .line 168
    :cond_d
    const/high16 v10, 0x40000000    # 2.0f

    if-ne v8, v10, :cond_e

    .line 170
    move v7, v9

    .line 171
    iget v10, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    mul-int/2addr v10, v7

    iget v11, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    div-int v1, v10, v11

    .line 172
    const/high16 v10, -0x80000000

    if-ne v2, v10, :cond_2

    if-le v1, v3, :cond_2

    .line 174
    move v1, v3

    goto/16 :goto_0

    .line 176
    :cond_e
    const/high16 v10, 0x40000000    # 2.0f

    if-ne v2, v10, :cond_f

    .line 178
    move v1, v3

    .line 179
    iget v10, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    mul-int/2addr v10, v1

    iget v11, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    div-int v7, v10, v11

    .line 180
    const/high16 v10, -0x80000000

    if-ne v8, v10, :cond_2

    if-le v7, v9, :cond_2

    .line 182
    move v7, v9

    goto/16 :goto_0

    .line 186
    :cond_f
    iget v7, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    .line 187
    iget v1, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    .line 188
    const/high16 v10, -0x80000000

    if-ne v2, v10, :cond_10

    if-le v1, v3, :cond_10

    .line 190
    move v1, v3

    .line 191
    iget v10, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    mul-int/2addr v10, v1

    iget v11, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    div-int v7, v10, v11

    .line 193
    :cond_10
    const/high16 v10, -0x80000000

    if-ne v8, v10, :cond_2

    if-le v7, v9, :cond_2

    .line 195
    move v7, v9

    .line 196
    iget v10, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    mul-int/2addr v10, v7

    iget v11, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    div-int v1, v10, v11

    goto/16 :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 117
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public getMeasuredHeight()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mMeasuredHeight:I

    return v0
.end method

.method public getMeasuredWidth()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mMeasuredWidth:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mWeakView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mWeakView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method public setAspectRatio(I)V
    .locals 0
    .param p1, "aspectRatio"    # I

    .prologue
    .line 216
    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mCurrentAspectRatio:I

    .line 217
    return-void
.end method

.method public setVideoRotation(I)V
    .locals 0
    .param p1, "videoRotationDegree"    # I

    .prologue
    .line 63
    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoRotationDegree:I

    .line 64
    return-void
.end method

.method public setVideoSampleAspectRatio(II)V
    .locals 0
    .param p1, "videoSarNum"    # I
    .param p2, "videoSarDen"    # I

    .prologue
    .line 58
    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoSarNum:I

    .line 59
    iput p2, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoSarDen:I

    .line 60
    return-void
.end method

.method public setVideoSize(II)V
    .locals 0
    .param p1, "videoWidth"    # I
    .param p2, "videoHeight"    # I

    .prologue
    .line 53
    iput p1, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoWidth:I

    .line 54
    iput p2, p0, Ltv/danmaku/ijk/media/example/widget/media/MeasureHelper;->mVideoHeight:I

    .line 55
    return-void
.end method
