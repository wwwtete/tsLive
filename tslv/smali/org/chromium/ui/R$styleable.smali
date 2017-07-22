.class public final Lorg/chromium/ui/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ButtonCompat:[I

.field public static ButtonCompat_buttonColor:I

.field public static ButtonCompat_buttonRaised:I

.field public static final TextViewWithLeading:[I

.field public static TextViewWithLeading_leading:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 197
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/chromium/ui/R$styleable;->ButtonCompat:[I

    .line 211
    sput v2, Lorg/chromium/ui/R$styleable;->ButtonCompat_buttonColor:I

    .line 225
    sput v1, Lorg/chromium/ui/R$styleable;->ButtonCompat_buttonRaised:I

    .line 236
    new-array v0, v1, [I

    const v1, 0x2010002

    aput v1, v0, v2

    sput-object v0, Lorg/chromium/ui/R$styleable;->TextViewWithLeading:[I

    .line 251
    sput v2, Lorg/chromium/ui/R$styleable;->TextViewWithLeading_leading:I

    return-void

    .line 197
    :array_0
    .array-data 4
        0x2010000
        0x2010001
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
