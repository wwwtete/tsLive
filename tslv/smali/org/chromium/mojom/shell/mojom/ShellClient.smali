.class public interface abstract Lorg/chromium/mojom/shell/mojom/ShellClient;
.super Ljava/lang/Object;
.source "ShellClient.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/shell/mojom/ShellClient$InitializeResponse;,
        Lorg/chromium/mojom/shell/mojom/ShellClient$Proxy;
    }
.end annotation


# static fields
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
    .line 25
    sget-object v0, Lorg/chromium/mojom/shell/mojom/ShellClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/mojom/shell/mojom/ShellClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract acceptConnection(Lorg/chromium/mojom/shell/mojom/Identity;ILorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojom/shell/mojom/InterfaceProvider;Lorg/chromium/mojom/shell/mojom/CapabilityRequest;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojom/shell/mojom/Identity;",
            "I",
            "Lorg/chromium/mojo/bindings/InterfaceRequest",
            "<",
            "Lorg/chromium/mojom/shell/mojom/InterfaceProvider;",
            ">;",
            "Lorg/chromium/mojom/shell/mojom/InterfaceProvider;",
            "Lorg/chromium/mojom/shell/mojom/CapabilityRequest;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract initialize(Lorg/chromium/mojom/shell/mojom/Identity;ILorg/chromium/mojom/shell/mojom/ShellClient$InitializeResponse;)V
.end method
