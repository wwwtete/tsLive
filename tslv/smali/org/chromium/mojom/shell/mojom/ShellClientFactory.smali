.class public interface abstract Lorg/chromium/mojom/shell/mojom/ShellClientFactory;
.super Ljava/lang/Object;
.source "ShellClientFactory.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/shell/mojom/ShellClientFactory$Proxy;
    }
.end annotation


# static fields
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
    .line 25
    sget-object v0, Lorg/chromium/mojom/shell/mojom/ShellClientFactory_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/mojom/shell/mojom/ShellClientFactory;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract createShellClient(Lorg/chromium/mojo/bindings/InterfaceRequest;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest",
            "<",
            "Lorg/chromium/mojom/shell/mojom/ShellClient;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
