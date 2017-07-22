.class Lorg/chromium/mojom/shell/mojom/Connector_Internal;
.super Ljava/lang/Object;
.source "Connector_Internal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorCloneParams;,
        Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParamsProxyToResponder;,
        Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParamsForwardToCallback;,
        Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectResponseParams;,
        Lorg/chromium/mojom/shell/mojom/Connector_Internal$ConnectorConnectParams;,
        Lorg/chromium/mojom/shell/mojom/Connector_Internal$Stub;,
        Lorg/chromium/mojom/shell/mojom/Connector_Internal$Proxy;
    }
.end annotation


# static fields
.field private static final CLONE_ORDINAL:I = 0x1

.field private static final CONNECT_ORDINAL:I

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
    .line 20
    new-instance v0, Lorg/chromium/mojom/shell/mojom/Connector_Internal$1;

    invoke-direct {v0}, Lorg/chromium/mojom/shell/mojom/Connector_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/mojom/shell/mojom/Connector_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 770
    return-void
.end method
