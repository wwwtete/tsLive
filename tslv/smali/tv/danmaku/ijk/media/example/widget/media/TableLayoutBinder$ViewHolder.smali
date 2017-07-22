.class Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder$ViewHolder;
.super Ljava/lang/Object;
.source "TableLayoutBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public mNameTextView:Landroid/widget/TextView;

.field public mValueTextView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder$1;)V
    .locals 0
    .param p1, "x0"    # Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder$1;

    .prologue
    .line 114
    invoke-direct {p0}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder$ViewHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder$ViewHolder;->mNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder$ViewHolder;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder$ViewHolder;->mValueTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder$ViewHolder;->mValueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :cond_0
    return-void
.end method
