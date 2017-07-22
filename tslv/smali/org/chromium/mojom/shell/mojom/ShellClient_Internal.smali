.class Lorg/chromium/mojom/shell/mojom/ShellClient_Internal;
.super Ljava/lang/Object;
.source "ShellClient_Internal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientAcceptConnectionParams;,
        Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParamsProxyToResponder;,
        Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParamsForwardToCallback;,
        Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientInitializeResponseParams;,
        Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$ShellClientInitializeParams;,
        Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$Stub;,
        Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$Proxy;
    }
.end annotation


# static fields
.field private static final ACCEPT_CONNECTION_ORDINAL:I = 0x1

.field private static final INITIALIZE_ORDINAL:I

.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<",
            "Lorg/chromium/mojom/shell/mojom/ShellClient;",
            "Lorg/chromium/mojom/shell/mojom/ShellClient$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$1;

    invoke-direct {v0}, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    return-void
.end method
