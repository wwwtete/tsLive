.class public final Lorg/xwalk/core/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xwalk/core/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ButtonCompat:[I

.field public static final ButtonCompat_buttonColor:I = 0x0

.field public static final ButtonCompat_buttonRaised:I = 0x1

.field public static final TextViewWithLeading:[I

.field public static final TextViewWithLeading_leading:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 232
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/xwalk/core/R$styleable;->ButtonCompat:[I

    .line 235
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0100d4

    aput v2, v0, v1

    sput-object v0, Lorg/xwalk/core/R$styleable;->TextViewWithLeading:[I

    return-void

    .line 232
    :array_0
    .array-data 4
        0x7f0100a0
        0x7f0100a1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
