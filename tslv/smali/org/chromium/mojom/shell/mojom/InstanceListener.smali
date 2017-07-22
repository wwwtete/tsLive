.class public interface abstract Lorg/chromium/mojom/shell/mojom/InstanceListener;
.super Ljava/lang/Object;
.source "InstanceListener.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/shell/mojom/InstanceListener$Proxy;
    }
.end annotation


# static fields
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/chromium/mojom/shell/mojom/InstanceListener_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/mojom/shell/mojom/InstanceListener;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract instanceCreated(Lorg/chromium/mojom/shell/mojom/InstanceInfo;)V
.end method

.method public abstract instanceDestroyed(I)V
.end method

.method public abstract instancePidAvailable(II)V
.end method

.method public abstract setExistingInstances([Lorg/chromium/mojom/shell/mojom/InstanceInfo;)V
.end method
