.class public final enum Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;
.super Ljava/lang/Enum;
.source "XWalkUIClientInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xwalk/core/internal/XWalkUIClientInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConsoleMessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;",
        ">;"
    }
.end annotation

.annotation build Lorg/xwalk/core/internal/XWalkAPI;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

.field public static final enum DEBUG:Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

.field public static final enum ERROR:Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

.field public static final enum INFO:Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

.field public static final enum LOG:Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

.field public static final enum WARNING:Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 307
    new-instance v0, Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v2}, Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;->DEBUG:Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    .line 308
    new-instance v0, Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v3}, Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;->ERROR:Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    .line 309
    new-instance v0, Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    const-string v1, "LOG"

    invoke-direct {v0, v1, v4}, Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;->LOG:Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    .line 310
    new-instance v0, Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v5}, Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;->INFO:Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    .line 311
    new-instance v0, Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v6}, Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;->WARNING:Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    .line 305
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    sget-object v1, Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;->DEBUG:Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;->ERROR:Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;->LOG:Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;->INFO:Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;->WARNING:Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    aput-object v1, v0, v6

    sput-object v0, Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;->$VALUES:[Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 306
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 305
    const-class v0, Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    return-object v0
.end method

.method public static values()[Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;
    .locals 1

    .prologue
    .line 305
    sget-object v0, Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;->$VALUES:[Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    invoke-virtual {v0}, [Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xwalk/core/internal/XWalkUIClientInternal$ConsoleMessageType;

    return-object v0
.end method
