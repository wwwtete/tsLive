.class public final Lorg/chromium/components/web_contents_delegate_android/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/web_contents_delegate_android/R;
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

    .line 253
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/chromium/components/web_contents_delegate_android/R$styleable;->ButtonCompat:[I

    .line 267
    sput v2, Lorg/chromium/components/web_contents_delegate_android/R$styleable;->ButtonCompat_buttonColor:I

    .line 281
    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$styleable;->ButtonCompat_buttonRaised:I

    .line 292
    new-array v0, v1, [I

    const v1, 0x2010004

    aput v1, v0, v2

    sput-object v0, Lorg/chromium/components/web_contents_delegate_android/R$styleable;->TextViewWithLeading:[I

    .line 307
    sput v2, Lorg/chromium/components/web_contents_delegate_android/R$styleable;->TextViewWithLeading_leading:I

    return-void

    .line 253
    :array_0
    .array-data 4
        0x2010002
        0x2010003
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method