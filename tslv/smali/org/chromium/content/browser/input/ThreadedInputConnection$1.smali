.class final Lorg/chromium/content/browser/input/ThreadedInputConnection$1;
.super Lorg/chromium/content/browser/input/TextInputState;
.source "ThreadedInputConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/input/ThreadedInputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Lorg/chromium/content/browser/input/Range;Lorg/chromium/content/browser/input/Range;ZZ)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # Lorg/chromium/content/browser/input/Range;
    .param p3, "x2"    # Lorg/chromium/content/browser/input/Range;
    .param p4, "x3"    # Z
    .param p5, "x4"    # Z

    .prologue
    .line 45
    invoke-direct/range {p0 .. p5}, Lorg/chromium/content/browser/input/TextInputState;-><init>(Ljava/lang/CharSequence;Lorg/chromium/content/browser/input/Range;Lorg/chromium/content/browser/input/Range;ZZ)V

    return-void
.end method


# virtual methods
.method public shouldUnblock()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method
