.class public LSevenZip/CRC;
.super Ljava/lang/Object;
.source "CRC.java"


# static fields
.field public static Table:[I


# instance fields
.field _value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x100

    .line 7
    new-array v3, v5, [I

    sput-object v3, LSevenZip/CRC;->Table:[I

    .line 11
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_2

    .line 13
    move v2, v0

    .line 14
    .local v2, "r":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const/16 v3, 0x8

    if-ge v1, v3, :cond_1

    .line 15
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_0

    .line 16
    ushr-int/lit8 v3, v2, 0x1

    const v4, -0x12477ce0

    xor-int v2, v3, v4

    .line 14
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 18
    :cond_0
    ushr-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 19
    :cond_1
    sget-object v3, LSevenZip/CRC;->Table:[I

    aput v2, v3, v0

    .line 11
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    .end local v1    # "j":I
    .end local v2    # "r":I
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, LSevenZip/CRC;->_value:I

    return-void
.end method


# virtual methods
.method public GetDigest()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, LSevenZip/CRC;->_value:I

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public Init()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, -0x1

    iput v0, p0, LSevenZip/CRC;->_value:I

    .line 28
    return-void
.end method

.method public Update([B)V
    .locals 5
    .param p1, "data"    # [B

    .prologue
    .line 38
    array-length v1, p1

    .line 39
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 40
    sget-object v2, LSevenZip/CRC;->Table:[I

    iget v3, p0, LSevenZip/CRC;->_value:I

    aget-byte v4, p1, v0

    xor-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    iget v3, p0, LSevenZip/CRC;->_value:I

    ushr-int/lit8 v3, v3, 0x8

    xor-int/2addr v2, v3

    iput v2, p0, LSevenZip/CRC;->_value:I

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method

.method public Update([BII)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I

    .prologue
    .line 32
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 33
    sget-object v1, LSevenZip/CRC;->Table:[I

    iget v2, p0, LSevenZip/CRC;->_value:I

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    aget v1, v1, v2

    iget v2, p0, LSevenZip/CRC;->_value:I

    ushr-int/lit8 v2, v2, 0x8

    xor-int/2addr v1, v2

    iput v1, p0, LSevenZip/CRC;->_value:I

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method public UpdateByte(I)V
    .locals 2
    .param p1, "b"    # I

    .prologue
    .line 45
    sget-object v0, LSevenZip/CRC;->Table:[I

    iget v1, p0, LSevenZip/CRC;->_value:I

    xor-int/2addr v1, p1

    and-int/lit16 v1, v1, 0xff

    aget v0, v0, v1

    iget v1, p0, LSevenZip/CRC;->_value:I

    ushr-int/lit8 v1, v1, 0x8

    xor-int/2addr v0, v1

    iput v0, p0, LSevenZip/CRC;->_value:I

    .line 46
    return-void
.end method
