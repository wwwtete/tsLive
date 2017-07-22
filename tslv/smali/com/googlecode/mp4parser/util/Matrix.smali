.class public Lcom/googlecode/mp4parser/util/Matrix;
.super Ljava/lang/Object;
.source "Matrix.java"


# static fields
.field public static final ROTATE_0:Lcom/googlecode/mp4parser/util/Matrix;

.field public static final ROTATE_180:Lcom/googlecode/mp4parser/util/Matrix;

.field public static final ROTATE_270:Lcom/googlecode/mp4parser/util/Matrix;

.field public static final ROTATE_90:Lcom/googlecode/mp4parser/util/Matrix;


# instance fields
.field a:D

.field b:D

.field c:D

.field d:D

.field tx:D

.field ty:D

.field u:D

.field v:D

.field w:D


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .prologue
    .line 12
    new-instance v1, Lcom/googlecode/mp4parser/util/Matrix;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    invoke-direct/range {v1 .. v19}, Lcom/googlecode/mp4parser/util/Matrix;-><init>(DDDDDDDDD)V

    sput-object v1, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_0:Lcom/googlecode/mp4parser/util/Matrix;

    .line 13
    new-instance v1, Lcom/googlecode/mp4parser/util/Matrix;

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    invoke-direct/range {v1 .. v19}, Lcom/googlecode/mp4parser/util/Matrix;-><init>(DDDDDDDDD)V

    sput-object v1, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_90:Lcom/googlecode/mp4parser/util/Matrix;

    .line 14
    new-instance v1, Lcom/googlecode/mp4parser/util/Matrix;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    invoke-direct/range {v1 .. v19}, Lcom/googlecode/mp4parser/util/Matrix;-><init>(DDDDDDDDD)V

    sput-object v1, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_180:Lcom/googlecode/mp4parser/util/Matrix;

    .line 15
    new-instance v1, Lcom/googlecode/mp4parser/util/Matrix;

    const-wide/16 v2, 0x0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    invoke-direct/range {v1 .. v19}, Lcom/googlecode/mp4parser/util/Matrix;-><init>(DDDDDDDDD)V

    sput-object v1, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_270:Lcom/googlecode/mp4parser/util/Matrix;

    return-void
.end method

.method public constructor <init>(DDDDDDDDD)V
    .locals 3
    .param p1, "a"    # D
    .param p3, "b"    # D
    .param p5, "c"    # D
    .param p7, "d"    # D
    .param p9, "u"    # D
    .param p11, "v"    # D
    .param p13, "w"    # D
    .param p15, "tx"    # D
    .param p17, "ty"    # D

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide p9, p0, Lcom/googlecode/mp4parser/util/Matrix;->u:D

    .line 21
    iput-wide p11, p0, Lcom/googlecode/mp4parser/util/Matrix;->v:D

    .line 22
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/googlecode/mp4parser/util/Matrix;->w:D

    .line 23
    iput-wide p1, p0, Lcom/googlecode/mp4parser/util/Matrix;->a:D

    .line 24
    iput-wide p3, p0, Lcom/googlecode/mp4parser/util/Matrix;->b:D

    .line 25
    iput-wide p5, p0, Lcom/googlecode/mp4parser/util/Matrix;->c:D

    .line 26
    iput-wide p7, p0, Lcom/googlecode/mp4parser/util/Matrix;->d:D

    .line 27
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/googlecode/mp4parser/util/Matrix;->tx:D

    .line 28
    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/googlecode/mp4parser/util/Matrix;->ty:D

    .line 29
    return-void
.end method

.method public static fromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/util/Matrix;
    .locals 18
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 36
    .line 37
    invoke-static/range {p0 .. p0}, Lcom/coremedia/iso/IsoTypeReader;->readFixedPoint1616(Ljava/nio/ByteBuffer;)D

    move-result-wide v0

    .line 38
    invoke-static/range {p0 .. p0}, Lcom/coremedia/iso/IsoTypeReader;->readFixedPoint1616(Ljava/nio/ByteBuffer;)D

    move-result-wide v2

    .line 39
    invoke-static/range {p0 .. p0}, Lcom/coremedia/iso/IsoTypeReader;->readFixedPoint0230(Ljava/nio/ByteBuffer;)D

    move-result-wide v4

    .line 40
    invoke-static/range {p0 .. p0}, Lcom/coremedia/iso/IsoTypeReader;->readFixedPoint1616(Ljava/nio/ByteBuffer;)D

    move-result-wide v6

    .line 41
    invoke-static/range {p0 .. p0}, Lcom/coremedia/iso/IsoTypeReader;->readFixedPoint1616(Ljava/nio/ByteBuffer;)D

    move-result-wide v8

    .line 42
    invoke-static/range {p0 .. p0}, Lcom/coremedia/iso/IsoTypeReader;->readFixedPoint0230(Ljava/nio/ByteBuffer;)D

    move-result-wide v10

    .line 43
    invoke-static/range {p0 .. p0}, Lcom/coremedia/iso/IsoTypeReader;->readFixedPoint1616(Ljava/nio/ByteBuffer;)D

    move-result-wide v12

    .line 44
    invoke-static/range {p0 .. p0}, Lcom/coremedia/iso/IsoTypeReader;->readFixedPoint1616(Ljava/nio/ByteBuffer;)D

    move-result-wide v14

    .line 45
    invoke-static/range {p0 .. p0}, Lcom/coremedia/iso/IsoTypeReader;->readFixedPoint0230(Ljava/nio/ByteBuffer;)D

    move-result-wide v16

    .line 36
    invoke-static/range {v0 .. v17}, Lcom/googlecode/mp4parser/util/Matrix;->fromFileOrder(DDDDDDDDD)Lcom/googlecode/mp4parser/util/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public static fromFileOrder(DDDDDDDDD)Lcom/googlecode/mp4parser/util/Matrix;
    .locals 20
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "u"    # D
    .param p6, "c"    # D
    .param p8, "d"    # D
    .param p10, "v"    # D
    .param p12, "tx"    # D
    .param p14, "ty"    # D
    .param p16, "w"    # D

    .prologue
    .line 32
    new-instance v1, Lcom/googlecode/mp4parser/util/Matrix;

    move-wide/from16 v2, p0

    move-wide/from16 v4, p2

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p4

    move-wide/from16 v12, p10

    move-wide/from16 v14, p16

    move-wide/from16 v16, p12

    move-wide/from16 v18, p14

    invoke-direct/range {v1 .. v19}, Lcom/googlecode/mp4parser/util/Matrix;-><init>(DDDDDDDDD)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    if-ne p0, p1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v1

    .line 52
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 54
    check-cast v0, Lcom/googlecode/mp4parser/util/Matrix;

    .line 56
    .local v0, "matrix":Lcom/googlecode/mp4parser/util/Matrix;
    iget-wide v4, v0, Lcom/googlecode/mp4parser/util/Matrix;->a:D

    iget-wide v6, p0, Lcom/googlecode/mp4parser/util/Matrix;->a:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 57
    :cond_4
    iget-wide v4, v0, Lcom/googlecode/mp4parser/util/Matrix;->b:D

    iget-wide v6, p0, Lcom/googlecode/mp4parser/util/Matrix;->b:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 58
    :cond_5
    iget-wide v4, v0, Lcom/googlecode/mp4parser/util/Matrix;->c:D

    iget-wide v6, p0, Lcom/googlecode/mp4parser/util/Matrix;->c:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_6

    move v1, v2

    goto :goto_0

    .line 59
    :cond_6
    iget-wide v4, v0, Lcom/googlecode/mp4parser/util/Matrix;->d:D

    iget-wide v6, p0, Lcom/googlecode/mp4parser/util/Matrix;->d:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_7

    move v1, v2

    goto :goto_0

    .line 60
    :cond_7
    iget-wide v4, v0, Lcom/googlecode/mp4parser/util/Matrix;->tx:D

    iget-wide v6, p0, Lcom/googlecode/mp4parser/util/Matrix;->tx:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_8

    move v1, v2

    goto :goto_0

    .line 61
    :cond_8
    iget-wide v4, v0, Lcom/googlecode/mp4parser/util/Matrix;->ty:D

    iget-wide v6, p0, Lcom/googlecode/mp4parser/util/Matrix;->ty:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_9

    move v1, v2

    goto :goto_0

    .line 62
    :cond_9
    iget-wide v4, v0, Lcom/googlecode/mp4parser/util/Matrix;->u:D

    iget-wide v6, p0, Lcom/googlecode/mp4parser/util/Matrix;->u:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_a

    move v1, v2

    goto :goto_0

    .line 63
    :cond_a
    iget-wide v4, v0, Lcom/googlecode/mp4parser/util/Matrix;->v:D

    iget-wide v6, p0, Lcom/googlecode/mp4parser/util/Matrix;->v:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_b

    move v1, v2

    goto :goto_0

    .line 64
    :cond_b
    iget-wide v4, v0, Lcom/googlecode/mp4parser/util/Matrix;->w:D

    iget-wide v6, p0, Lcom/googlecode/mp4parser/util/Matrix;->w:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getContent(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/googlecode/mp4parser/util/Matrix;->a:D

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeFixedPoint1616(Ljava/nio/ByteBuffer;D)V

    .line 123
    iget-wide v0, p0, Lcom/googlecode/mp4parser/util/Matrix;->b:D

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeFixedPoint1616(Ljava/nio/ByteBuffer;D)V

    .line 124
    iget-wide v0, p0, Lcom/googlecode/mp4parser/util/Matrix;->u:D

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeFixedPoint0230(Ljava/nio/ByteBuffer;D)V

    .line 126
    iget-wide v0, p0, Lcom/googlecode/mp4parser/util/Matrix;->c:D

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeFixedPoint1616(Ljava/nio/ByteBuffer;D)V

    .line 127
    iget-wide v0, p0, Lcom/googlecode/mp4parser/util/Matrix;->d:D

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeFixedPoint1616(Ljava/nio/ByteBuffer;D)V

    .line 128
    iget-wide v0, p0, Lcom/googlecode/mp4parser/util/Matrix;->v:D

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeFixedPoint0230(Ljava/nio/ByteBuffer;D)V

    .line 130
    iget-wide v0, p0, Lcom/googlecode/mp4parser/util/Matrix;->tx:D

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeFixedPoint1616(Ljava/nio/ByteBuffer;D)V

    .line 131
    iget-wide v0, p0, Lcom/googlecode/mp4parser/util/Matrix;->ty:D

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeFixedPoint1616(Ljava/nio/ByteBuffer;D)V

    .line 132
    iget-wide v0, p0, Lcom/googlecode/mp4parser/util/Matrix;->w:D

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeFixedPoint0230(Ljava/nio/ByteBuffer;D)V

    .line 134
    return-void
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 73
    iget-wide v4, p0, Lcom/googlecode/mp4parser/util/Matrix;->u:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 74
    .local v2, "temp":J
    ushr-long v4, v2, v6

    xor-long/2addr v4, v2

    long-to-int v0, v4

    .line 75
    .local v0, "result":I
    iget-wide v4, p0, Lcom/googlecode/mp4parser/util/Matrix;->v:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 76
    mul-int/lit8 v1, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int v0, v1, v4

    .line 77
    iget-wide v4, p0, Lcom/googlecode/mp4parser/util/Matrix;->w:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 78
    mul-int/lit8 v1, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int v0, v1, v4

    .line 79
    iget-wide v4, p0, Lcom/googlecode/mp4parser/util/Matrix;->a:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 80
    mul-int/lit8 v1, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int v0, v1, v4

    .line 81
    iget-wide v4, p0, Lcom/googlecode/mp4parser/util/Matrix;->b:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 82
    mul-int/lit8 v1, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int v0, v1, v4

    .line 83
    iget-wide v4, p0, Lcom/googlecode/mp4parser/util/Matrix;->c:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 84
    mul-int/lit8 v1, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int v0, v1, v4

    .line 85
    iget-wide v4, p0, Lcom/googlecode/mp4parser/util/Matrix;->d:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 86
    mul-int/lit8 v1, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int v0, v1, v4

    .line 87
    iget-wide v4, p0, Lcom/googlecode/mp4parser/util/Matrix;->tx:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 88
    mul-int/lit8 v1, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int v0, v1, v4

    .line 89
    iget-wide v4, p0, Lcom/googlecode/mp4parser/util/Matrix;->ty:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 90
    mul-int/lit8 v1, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int v0, v1, v4

    .line 91
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 96
    sget-object v0, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_0:Lcom/googlecode/mp4parser/util/Matrix;

    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/util/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "Rotate 0\u00b0"

    .line 108
    :goto_0
    return-object v0

    .line 99
    :cond_0
    sget-object v0, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_90:Lcom/googlecode/mp4parser/util/Matrix;

    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/util/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    const-string v0, "Rotate 90\u00b0"

    goto :goto_0

    .line 102
    :cond_1
    sget-object v0, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_180:Lcom/googlecode/mp4parser/util/Matrix;

    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/util/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    const-string v0, "Rotate 180\u00b0"

    goto :goto_0

    .line 105
    :cond_2
    sget-object v0, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_270:Lcom/googlecode/mp4parser/util/Matrix;

    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/util/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    const-string v0, "Rotate 270\u00b0"

    goto :goto_0

    .line 108
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Matrix{u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/googlecode/mp4parser/util/Matrix;->u:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/googlecode/mp4parser/util/Matrix;->v:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/googlecode/mp4parser/util/Matrix;->w:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/googlecode/mp4parser/util/Matrix;->a:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/googlecode/mp4parser/util/Matrix;->b:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/googlecode/mp4parser/util/Matrix;->c:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/googlecode/mp4parser/util/Matrix;->d:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/googlecode/mp4parser/util/Matrix;->tx:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/googlecode/mp4parser/util/Matrix;->ty:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
