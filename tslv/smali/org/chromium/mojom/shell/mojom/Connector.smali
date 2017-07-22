.class public interface abstract Lorg/chromium/mojom/shell/mojom/Connector;
.super Ljava/lang/Object;
.source "Connector.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/shell/mojom/Connector$ConnectResponse;,
        Lorg/chromium/mojom/shell/mojom/Connector$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<",
            "Lorg/chromium/mojom/shell/mojom/Connector;",
            "Lorg/chromium/mojom/shell/mojom/Connector$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/chromium/mojom/shell/mojom/Connector_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/mojom/shell/mojom/Connector;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract clone(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest",
            "<",
            "Lorg/chromium/mojom/shell/mojom/Connector;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract connect(Lorg/chromium/mojom/shell/mojom/Identity;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojom/shell/mojom/InterfaceProvider;Lorg/chromium/mojom/shell/mojom/ClientProcessConnection;Lorg/chromium/mojom/shell/mojom/Connector$ConnectResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojom/shell/mojom/Identity;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest",
            "<",
            "Lorg/chromium/mojom/shell/mojom/InterfaceProvider;",
            ">;",
            "Lorg/chromium/mojom/shell/mojom/InterfaceProvider;",
            "Lorg/chromium/mojom/shell/mojom/ClientProcessConnection;",
            "Lorg/chromium/mojom/shell/mojom/Connector$ConnectResponse;",
            ")V"
        }
    .end annotation
.end method
