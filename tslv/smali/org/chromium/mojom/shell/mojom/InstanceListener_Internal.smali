.class Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal;
.super Ljava/lang/Object;
.source "InstanceListener_Internal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerInstancePidAvailableParams;,
        Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerInstanceDestroyedParams;,
        Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerInstanceCreatedParams;,
        Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$InstanceListenerSetExistingInstancesParams;,
        Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$Stub;,
        Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$Proxy;
    }
.end annotation


# static fields
.field private static final INSTANCE_CREATED_ORDINAL:I = 0x1

.field private static final INSTANCE_DESTROYED_ORDINAL:I = 0x2

.field private static final INSTANCE_PID_AVAILABLE_ORDINAL:I = 0x3

.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<",
            "Lorg/chromium/mojom/shell/mojom/InstanceListener;",
            "Lorg/chromium/mojom/shell/mojom/InstanceListener$Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private static final SET_EXISTING_INSTANCES_ORDINAL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$1;

    invoke-direct {v0}, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    return-void
.end method
