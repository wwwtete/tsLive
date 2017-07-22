.class Lorg/chromium/mojom/shell/mojom/ShellClientFactory_Internal;
.super Ljava/lang/Object;
.source "ShellClientFactory_Internal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/shell/mojom/ShellClientFactory_Internal$ShellClientFactoryCreateShellClientParams;,
        Lorg/chromium/mojom/shell/mojom/ShellClientFactory_Internal$Stub;,
        Lorg/chromium/mojom/shell/mojom/ShellClientFactory_Internal$Proxy;
    }
.end annotation


# static fields
.field private static final CREATE_SHELL_CLIENT_ORDINAL:I

.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<",
            "Lorg/chromium/mojom/shell/mojom/ShellClientFactory;",
            "Lorg/chromium/mojom/shell/mojom/ShellClientFactory$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lorg/chromium/mojom/shell/mojom/ShellClientFactory_Internal$1;

    invoke-direct {v0}, Lorg/chromium/mojom/shell/mojom/ShellClientFactory_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/mojom/shell/mojom/ShellClientFactory_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    return-void
.end method
