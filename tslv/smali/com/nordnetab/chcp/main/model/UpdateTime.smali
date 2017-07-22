.class public final enum Lcom/nordnetab/chcp/main/model/UpdateTime;
.super Ljava/lang/Enum;
.source "UpdateTime.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nordnetab/chcp/main/model/UpdateTime;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nordnetab/chcp/main/model/UpdateTime;

.field public static final enum NOW:Lcom/nordnetab/chcp/main/model/UpdateTime;

.field public static final enum ON_RESUME:Lcom/nordnetab/chcp/main/model/UpdateTime;

.field public static final enum ON_START:Lcom/nordnetab/chcp/main/model/UpdateTime;

.field public static final enum UNDEFINED:Lcom/nordnetab/chcp/main/model/UpdateTime;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/nordnetab/chcp/main/model/UpdateTime;

    const-string v1, "UNDEFINED"

    const-string v2, ""

    invoke-direct {v0, v1, v3, v2}, Lcom/nordnetab/chcp/main/model/UpdateTime;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nordnetab/chcp/main/model/UpdateTime;->UNDEFINED:Lcom/nordnetab/chcp/main/model/UpdateTime;

    .line 17
    new-instance v0, Lcom/nordnetab/chcp/main/model/UpdateTime;

    const-string v1, "ON_START"

    const-string v2, "start"

    invoke-direct {v0, v1, v4, v2}, Lcom/nordnetab/chcp/main/model/UpdateTime;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nordnetab/chcp/main/model/UpdateTime;->ON_START:Lcom/nordnetab/chcp/main/model/UpdateTime;

    .line 22
    new-instance v0, Lcom/nordnetab/chcp/main/model/UpdateTime;

    const-string v1, "ON_RESUME"

    const-string v2, "resume"

    invoke-direct {v0, v1, v5, v2}, Lcom/nordnetab/chcp/main/model/UpdateTime;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nordnetab/chcp/main/model/UpdateTime;->ON_RESUME:Lcom/nordnetab/chcp/main/model/UpdateTime;

    .line 27
    new-instance v0, Lcom/nordnetab/chcp/main/model/UpdateTime;

    const-string v1, "NOW"

    const-string v2, "now"

    invoke-direct {v0, v1, v6, v2}, Lcom/nordnetab/chcp/main/model/UpdateTime;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/nordnetab/chcp/main/model/UpdateTime;->NOW:Lcom/nordnetab/chcp/main/model/UpdateTime;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nordnetab/chcp/main/model/UpdateTime;

    sget-object v1, Lcom/nordnetab/chcp/main/model/UpdateTime;->UNDEFINED:Lcom/nordnetab/chcp/main/model/UpdateTime;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nordnetab/chcp/main/model/UpdateTime;->ON_START:Lcom/nordnetab/chcp/main/model/UpdateTime;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nordnetab/chcp/main/model/UpdateTime;->ON_RESUME:Lcom/nordnetab/chcp/main/model/UpdateTime;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nordnetab/chcp/main/model/UpdateTime;->NOW:Lcom/nordnetab/chcp/main/model/UpdateTime;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nordnetab/chcp/main/model/UpdateTime;->$VALUES:[Lcom/nordnetab/chcp/main/model/UpdateTime;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lcom/nordnetab/chcp/main/model/UpdateTime;->value:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/nordnetab/chcp/main/model/UpdateTime;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 42
    const-string v0, "start"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lcom/nordnetab/chcp/main/model/UpdateTime;->ON_START:Lcom/nordnetab/chcp/main/model/UpdateTime;

    .line 50
    :goto_0
    return-object v0

    .line 44
    :cond_0
    const-string v0, "resume"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    sget-object v0, Lcom/nordnetab/chcp/main/model/UpdateTime;->ON_RESUME:Lcom/nordnetab/chcp/main/model/UpdateTime;

    goto :goto_0

    .line 46
    :cond_1
    const-string v0, "now"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    sget-object v0, Lcom/nordnetab/chcp/main/model/UpdateTime;->NOW:Lcom/nordnetab/chcp/main/model/UpdateTime;

    goto :goto_0

    .line 50
    :cond_2
    sget-object v0, Lcom/nordnetab/chcp/main/model/UpdateTime;->UNDEFINED:Lcom/nordnetab/chcp/main/model/UpdateTime;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nordnetab/chcp/main/model/UpdateTime;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/nordnetab/chcp/main/model/UpdateTime;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nordnetab/chcp/main/model/UpdateTime;

    return-object v0
.end method

.method public static values()[Lcom/nordnetab/chcp/main/model/UpdateTime;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/nordnetab/chcp/main/model/UpdateTime;->$VALUES:[Lcom/nordnetab/chcp/main/model/UpdateTime;

    invoke-virtual {v0}, [Lcom/nordnetab/chcp/main/model/UpdateTime;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nordnetab/chcp/main/model/UpdateTime;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nordnetab/chcp/main/model/UpdateTime;->value:Ljava/lang/String;

    return-object v0
.end method
