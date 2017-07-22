.class Lorg/chromium/mojom/shell/mojom/Shell_Internal;
.super Ljava/lang/Object;
.source "Shell_Internal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/shell/mojom/Shell_Internal$ShellAddInstanceListenerParams;,
        Lorg/chromium/mojom/shell/mojom/Shell_Internal$Stub;,
        Lorg/chromium/mojom/shell/mojom/Shell_Internal$Proxy;
    }
.end annotation


# static fields
.field private static final ADD_INSTANCE_LISTENER_ORDINAL:I

.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<",
            "Lorg/chromium/mojom/shell/mojom/Shell;",
            "Lorg/chromium/mojom/shell/mojom/Shell$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lorg/chromium/mojom/shell/mojom/Shell_Internal$1;

    invoke-direct {v0}, Lorg/chromium/mojom/shell/mojom/Shell_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/mojom/shell/mojom/Shell_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
