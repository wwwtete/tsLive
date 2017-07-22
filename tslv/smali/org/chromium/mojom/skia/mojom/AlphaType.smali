.class public final Lorg/chromium/mojom/skia/mojom/AlphaType;
.super Ljava/lang/Object;
.source "AlphaType.java"


# static fields
.field public static final ALPHA_TYPE_OPAQUE:I = 0x1

.field private static final IS_EXTENSIBLE:Z = false

.field public static final PREMUL:I = 0x2

.field public static final UNKNOWN:I = 0x0

.field public static final UNPREMUL:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isKnownValue(I)Z
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 32
    packed-switch p0, :pswitch_data_0

    .line 39
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 37
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    .line 43
    invoke-static {p0}, Lorg/chromium/mojom/skia/mojom/AlphaType;->isKnownValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    return-void

    .line 46
    :cond_0
    new-instance v0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v1, "Invalid enum value."

    invoke-direct {v0, v1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
