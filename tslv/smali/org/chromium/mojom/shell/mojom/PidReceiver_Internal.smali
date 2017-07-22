.class Lorg/chromium/mojom/shell/mojom/PidReceiver_Internal;
.super Ljava/lang/Object;
.source "PidReceiver_Internal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/shell/mojom/PidReceiver_Internal$PidReceiverSetPidParams;,
        Lorg/chromium/mojom/shell/mojom/PidReceiver_Internal$Stub;,
        Lorg/chromium/mojom/shell/mojom/PidReceiver_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<",
            "Lorg/chromium/mojom/shell/mojom/PidReceiver;",
            "Lorg/chromium/mojom/shell/mojom/PidReceiver$Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private static final SET_PID_ORDINAL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lorg/chromium/mojom/shell/mojom/PidReceiver_Internal$1;

    invoke-direct {v0}, Lorg/chromium/mojom/shell/mojom/PidReceiver_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/mojom/shell/mojom/PidReceiver_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    return-void
.end method
