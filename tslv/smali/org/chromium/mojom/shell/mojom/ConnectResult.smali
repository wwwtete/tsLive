.class public final Lorg/chromium/mojom/shell/mojom/ConnectResult;
.super Ljava/lang/Object;
.source "ConnectResult.java"


# static fields
.field public static final ACCESS_DENIED:I = 0x2

.field public static final INVALID_ARGUMENT:I = 0x1

.field private static final IS_EXTENSIBLE:Z

.field public static final SUCCEEDED:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isKnownValue(I)Z
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 30
    packed-switch p0, :pswitch_data_0

    .line 36
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 34
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static validate(I)V
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 40
    invoke-static {p0}, Lorg/chromium/mojom/shell/mojom/ConnectResult;->isKnownValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    return-void

    .line 43
    :cond_0
    new-instance v0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v1, "Invalid enum value."

    invoke-direct {v0, v1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
