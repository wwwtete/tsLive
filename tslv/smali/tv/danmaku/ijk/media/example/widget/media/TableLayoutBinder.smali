.class public Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;
.super Ljava/lang/Object;
.source "TableLayoutBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field public mTableLayout:Landroid/widget/TableLayout;

.field public mTableView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const v0, 0x7f04003a

    invoke-direct {p0, p1, v0}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;-><init>(Landroid/content/Context;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResourceId"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->mContext:Landroid/content/Context;

    .line 40
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->mTableView:Landroid/view/ViewGroup;

    .line 41
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->mTableView:Landroid/view/ViewGroup;

    const v1, 0x7f0e008f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->mTableLayout:Landroid/widget/TableLayout;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/TableLayout;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tableLayout"    # Landroid/widget/TableLayout;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->mTableView:Landroid/view/ViewGroup;

    .line 47
    iput-object p2, p0, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->mTableLayout:Landroid/widget/TableLayout;

    .line 48
    return-void
.end method


# virtual methods
.method public appendRow(ILjava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 4
    .param p1, "layoutId"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->mTableLayout:Landroid/widget/TableLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 76
    .local v0, "rowView":Landroid/view/ViewGroup;
    invoke-virtual {p0, v0, p2, p3}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->setNameValueText(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->mTableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v1, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 79
    return-object v0
.end method

.method public appendRow1(ILjava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "nameId"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow1(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public appendRow1(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 51
    const v0, 0x7f04003b

    invoke-virtual {p0, v0, p1, p2}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow(ILjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public appendRow2(ILjava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "nameId"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public appendRow2(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 59
    const v0, 0x7f04003c

    invoke-virtual {p0, v0, p1, p2}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow(ILjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public appendSection(I)Landroid/view/View;
    .locals 1
    .param p1, "nameId"    # I

    .prologue
    .line 71
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendSection(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public appendSection(Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    const v0, 0x7f04003d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow(ILjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public buildAlertDialogBuilder()Landroid/support/v7/app/AlertDialog$Builder;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    .local v0, "dlgBuilder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->buildLayout()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 111
    return-object v0
.end method

.method public buildLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->mTableView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public obtainViewHolder(Landroid/view/View;)Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder$ViewHolder;
    .locals 2
    .param p1, "rowView"    # Landroid/view/View;

    .prologue
    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder$ViewHolder;

    .line 84
    .local v0, "viewHolder":Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder$ViewHolder;
    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder$ViewHolder;

    .end local v0    # "viewHolder":Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder$ViewHolder;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder$ViewHolder;-><init>(Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder$1;)V

    .line 86
    .restart local v0    # "viewHolder":Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder$ViewHolder;
    const v1, 0x7f0e0090

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder$ViewHolder;->mNameTextView:Landroid/widget/TextView;

    .line 87
    const v1, 0x7f0e0091

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder$ViewHolder;->mValueTextView:Landroid/widget/TextView;

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 90
    :cond_0
    return-object v0
.end method

.method public setNameValueText(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "rowView"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->obtainViewHolder(Landroid/view/View;)Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder$ViewHolder;

    move-result-object v0

    .line 95
    .local v0, "viewHolder":Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder$ViewHolder;
    invoke-virtual {v0, p2}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder$ViewHolder;->setName(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, p3}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder$ViewHolder;->setValue(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public setValueText(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "rowView"    # Landroid/view/View;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->obtainViewHolder(Landroid/view/View;)Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder$ViewHolder;

    move-result-object v0

    .line 101
    .local v0, "viewHolder":Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder$ViewHolder;
    invoke-virtual {v0, p2}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder$ViewHolder;->setValue(Ljava/lang/String;)V

    .line 102
    return-void
.end method
