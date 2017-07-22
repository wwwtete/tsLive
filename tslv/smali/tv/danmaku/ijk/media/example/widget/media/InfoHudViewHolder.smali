.class public Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;
.super Ljava/lang/Object;
.source "InfoHudViewHolder.java"


# static fields
.field private static final MSG_UPDATE_HUD:I = 0x1


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLoadCost:J

.field private mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

.field private mRowMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSeekCost:J

.field private mTableLayoutBinder:Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TableLayout;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tableLayout"    # Landroid/widget/TableLayout;

    .prologue
    const-wide/16 v2, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mRowMap:Landroid/util/SparseArray;

    .line 21
    iput-wide v2, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mLoadCost:J

    .line 22
    iput-wide v2, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mSeekCost:J

    .line 102
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;-><init>(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mHandler:Landroid/os/Handler;

    .line 25
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;

    invoke-direct {v0, p1, p2}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;-><init>(Landroid/content/Context;Landroid/widget/TableLayout;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mTableLayoutBinder:Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;

    .line 26
    return-void
.end method

.method static synthetic access$000(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    .prologue
    .line 17
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    return-object v0
.end method

.method static synthetic access$100(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->setRowValue(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(J)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # J

    .prologue
    .line 17
    invoke-static {p0, p1}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->formatedDurationMilli(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(J)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # J

    .prologue
    .line 17
    invoke-static {p0, p1}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->formatedSize(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)J
    .locals 2
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    .prologue
    .line 17
    iget-wide v0, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mLoadCost:J

    return-wide v0
.end method

.method static synthetic access$500(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)J
    .locals 2
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    .prologue
    .line 17
    iget-wide v0, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mSeekCost:J

    return-wide v0
.end method

.method static synthetic access$600(JJ)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .prologue
    .line 17
    invoke-static {p0, p1, p2, p3}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->formatedSpeed(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;

    .prologue
    .line 17
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private appendRow(I)V
    .locals 3
    .param p1, "nameId"    # I

    .prologue
    .line 33
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mTableLayoutBinder:Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, "rowView":Landroid/view/View;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mRowMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    return-void
.end method

.method private appendSection(I)V
    .locals 1
    .param p1, "nameId"    # I

    .prologue
    .line 29
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mTableLayoutBinder:Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendSection(I)Landroid/view/View;

    .line 30
    return-void
.end method

.method private static formatedDurationMilli(J)Ljava/lang/String;
    .locals 6
    .param p0, "duration"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 57
    const-wide/16 v0, 0x3e8

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 58
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.2f sec"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-float v3, p0

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d msec"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static formatedSize(J)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x447a0000    # 1000.0f

    .line 92
    const-wide/32 v0, 0x186a0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 93
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.2f MB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-float v3, p0

    div-float/2addr v3, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    .line 94
    :cond_0
    const-wide/16 v0, 0x64

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    .line 95
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.1f KB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-float v3, p0

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d B"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static formatedSpeed(JJ)Ljava/lang/String;
    .locals 10
    .param p0, "bytes"    # J
    .param p2, "elapsed_milli"    # J

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x447a0000    # 1000.0f

    .line 65
    cmp-long v1, p2, v8

    if-gtz v1, :cond_0

    .line 66
    const-string v1, "0 B/s"

    .line 79
    :goto_0
    return-object v1

    .line 69
    :cond_0
    cmp-long v1, p0, v8

    if-gtz v1, :cond_1

    .line 70
    const-string v1, "0 B/s"

    goto :goto_0

    .line 73
    :cond_1
    long-to-float v1, p0

    mul-float/2addr v1, v5

    long-to-float v2, p2

    div-float v0, v1, v2

    .line 74
    .local v0, "bytes_per_sec":F
    const v1, 0x49742400    # 1000000.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    .line 75
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.2f MB/s"

    new-array v3, v3, [Ljava/lang/Object;

    div-float v4, v0, v5

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 76
    :cond_2
    cmpl-float v1, v0, v5

    if-ltz v1, :cond_3

    .line 77
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.1f KB/s"

    new-array v3, v3, [Ljava/lang/Object;

    div-float v4, v0, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 79
    :cond_3
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d B/s"

    new-array v3, v3, [Ljava/lang/Object;

    float-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setRowValue(ILjava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mRowMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 39
    .local v0, "rowView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 40
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mTableLayoutBinder:Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;

    invoke-virtual {v1, p1, p2}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 41
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mRowMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mTableLayoutBinder:Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;

    invoke-virtual {v1, v0, p2}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->setValueText(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public setMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .prologue
    const/4 v1, 0x1

    .line 48
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 49
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public updateLoadCost(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 84
    iput-wide p1, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mLoadCost:J

    .line 85
    return-void
.end method

.method public updateSeekCost(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 88
    iput-wide p1, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mSeekCost:J

    .line 89
    return-void
.end method
