.class public final enum Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;
.super Ljava/lang/Enum;
.source "XWalkHitTestResultInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xwalk/core/internal/XWalkHitTestResultInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;",
        ">;"
    }
.end annotation

.annotation build Lorg/xwalk/core/internal/XWalkAPI;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

.field public static final enum ANCHOR_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

.field public static final enum EDIT_TEXT_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

.field public static final enum EMAIL_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

.field public static final enum GEO_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

.field public static final enum IMAGE_ANCHOR_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

.field public static final enum IMAGE_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

.field public static final enum PHONE_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

.field public static final enum SRC_ANCHOR_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

.field public static final enum SRC_IMAGE_ANCHOR_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

.field public static final enum UNKNOWN_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    const-string v1, "UNKNOWN_TYPE"

    invoke-direct {v0, v1, v3}, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;->UNKNOWN_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    .line 31
    new-instance v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    const-string v1, "ANCHOR_TYPE"

    invoke-direct {v0, v1, v4}, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;->ANCHOR_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    .line 32
    new-instance v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    const-string v1, "PHONE_TYPE"

    invoke-direct {v0, v1, v5}, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;->PHONE_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    .line 33
    new-instance v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    const-string v1, "GEO_TYPE"

    invoke-direct {v0, v1, v6}, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;->GEO_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    .line 34
    new-instance v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    const-string v1, "EMAIL_TYPE"

    invoke-direct {v0, v1, v7}, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;->EMAIL_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    .line 35
    new-instance v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    const-string v1, "IMAGE_TYPE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;->IMAGE_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    .line 36
    new-instance v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    const-string v1, "IMAGE_ANCHOR_TYPE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;->IMAGE_ANCHOR_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    .line 37
    new-instance v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    const-string v1, "SRC_ANCHOR_TYPE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;->SRC_ANCHOR_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    .line 38
    new-instance v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    const-string v1, "SRC_IMAGE_ANCHOR_TYPE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;->SRC_IMAGE_ANCHOR_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    .line 39
    new-instance v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    const-string v1, "EDIT_TEXT_TYPE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;->EDIT_TEXT_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    .line 28
    const/16 v0, 0xa

    new-array v0, v0, [Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    sget-object v1, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;->UNKNOWN_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    aput-object v1, v0, v3

    sget-object v1, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;->ANCHOR_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    aput-object v1, v0, v4

    sget-object v1, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;->PHONE_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    aput-object v1, v0, v5

    sget-object v1, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;->GEO_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    aput-object v1, v0, v6

    sget-object v1, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;->EMAIL_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;->IMAGE_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;->IMAGE_ANCHOR_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;->SRC_ANCHOR_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;->SRC_IMAGE_ANCHOR_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;->EDIT_TEXT_TYPE:Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    aput-object v2, v0, v1

    sput-object v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;->$VALUES:[Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    return-object v0
.end method

.method public static values()[Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;->$VALUES:[Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    invoke-virtual {v0}, [Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xwalk/core/internal/XWalkHitTestResultInternal$type;

    return-object v0
.end method
