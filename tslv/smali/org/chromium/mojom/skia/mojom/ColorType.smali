.class public final Lorg/chromium/mojom/skia/mojom/ColorType;
.super Ljava/lang/Object;
.source "ColorType.java"


# static fields
.field public static final ALPHA_8:I = 0x1

.field public static final ARGB_4444:I = 0x3

.field public static final BGRA_8888:I = 0x5

.field public static final GRAY_8:I = 0x7

.field public static final INDEX_8:I = 0x6

.field private static final IS_EXTENSIBLE:Z = false

.field public static final RGBA_8888:I = 0x4

.field public static final RGB_565:I = 0x2

.field public static final UNKNOWN:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isKnownValue(I)Z
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 40
    packed-switch p0, :pswitch_data_0

    .line 51
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 49
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static validate(I)V
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 55
    invoke-static {p0}, Lorg/chromium/mojom/skia/mojom/ColorType;->isKnownValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    return-void

    .line 58
    :cond_0
    new-instance v0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v1, "Invalid enum value."

    invoke-direct {v0, v1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
