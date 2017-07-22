.class Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal;
.super Ljava/lang/Object;
.source "ShellResolver_Internal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParamsProxyToResponder;,
        Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParamsForwardToCallback;,
        Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameResponseParams;,
        Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$ShellResolverResolveMojoNameParams;,
        Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$Stub;,
        Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<",
            "Lorg/chromium/mojom/shell/mojom/ShellResolver;",
            "Lorg/chromium/mojom/shell/mojom/ShellResolver$Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private static final RESOLVE_MOJO_NAME_ORDINAL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$1;

    invoke-direct {v0}, Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/mojom/shell/mojom/ShellResolver_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    return-void
.end method
