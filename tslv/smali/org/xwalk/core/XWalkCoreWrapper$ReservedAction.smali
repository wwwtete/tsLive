.class Lorg/xwalk/core/XWalkCoreWrapper$ReservedAction;
.super Ljava/lang/Object;
.source "XWalkCoreWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xwalk/core/XWalkCoreWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReservedAction"
.end annotation


# instance fields
.field mArguments:[Ljava/lang/Object;

.field mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field mMethod:Lorg/xwalk/core/ReflectMethod;

.field mObject:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/xwalk/core/XWalkCoreWrapper$ReservedAction;->mClass:Ljava/lang/Class;

    .line 51
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/xwalk/core/XWalkCoreWrapper$ReservedAction;->mObject:Ljava/lang/Object;

    .line 47
    return-void
.end method

.method constructor <init>(Lorg/xwalk/core/ReflectMethod;)V
    .locals 2
    .param p1, "method"    # Lorg/xwalk/core/ReflectMethod;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/xwalk/core/XWalkCoreWrapper$ReservedAction;->mMethod:Lorg/xwalk/core/ReflectMethod;

    .line 55
    invoke-virtual {p1}, Lorg/xwalk/core/ReflectMethod;->getArguments()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p1}, Lorg/xwalk/core/ReflectMethod;->getArguments()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xwalk/core/ReflectMethod;->getArguments()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/XWalkCoreWrapper$ReservedAction;->mArguments:[Ljava/lang/Object;

    .line 58
    :cond_0
    return-void
.end method
