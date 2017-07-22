.class public Lorg/chromium/mojo/bindings/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojo/bindings/Encoder$1;,
        Lorg/chromium/mojo/bindings/Encoder$EncoderState;
    }
.end annotation


# static fields
.field private static final INITIAL_BUFFER_SIZE:I = 0x400


# instance fields
.field private mBaseOffset:I

.field private final mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;


# direct methods
.method private constructor <init>(Lorg/chromium/mojo/bindings/Encoder$EncoderState;)V
    .locals 1
    .param p1, "bufferInformation"    # Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    .line 134
    iget v0, p1, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->dataEnd:I

    iput v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mBaseOffset:I

    .line 135
    return-void
.end method

.method public constructor <init>(Lorg/chromium/mojo/system/Core;I)V
    .locals 2
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;
    .param p2, "sizeHint"    # I

    .prologue
    .line 126
    new-instance v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/chromium/mojo/bindings/Encoder$EncoderState;-><init>(Lorg/chromium/mojo/system/Core;ILorg/chromium/mojo/bindings/Encoder$1;)V

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/Encoder;-><init>(Lorg/chromium/mojo/bindings/Encoder$EncoderState;)V

    .line 127
    return-void
.end method

.method private append([B)V
    .locals 2
    .param p1, "v"    # [B

    .prologue
    .line 546
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v0, v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/chromium/mojo/bindings/Encoder;->mBaseOffset:I

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 547
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v0, v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 548
    return-void
.end method

.method private append([D)V
    .locals 2
    .param p1, "v"    # [D

    .prologue
    .line 566
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v0, v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/chromium/mojo/bindings/Encoder;->mBaseOffset:I

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 567
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v0, v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/DoubleBuffer;->put([D)Ljava/nio/DoubleBuffer;

    .line 568
    return-void
.end method

.method private append([F)V
    .locals 2
    .param p1, "v"    # [F

    .prologue
    .line 561
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v0, v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/chromium/mojo/bindings/Encoder;->mBaseOffset:I

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 562
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v0, v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 563
    return-void
.end method

.method private append([I)V
    .locals 2
    .param p1, "v"    # [I

    .prologue
    .line 556
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v0, v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/chromium/mojo/bindings/Encoder;->mBaseOffset:I

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 557
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v0, v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 558
    return-void
.end method

.method private append([J)V
    .locals 2
    .param p1, "v"    # [J

    .prologue
    .line 571
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v0, v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/chromium/mojo/bindings/Encoder;->mBaseOffset:I

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 572
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v0, v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/LongBuffer;->put([J)Ljava/nio/LongBuffer;

    .line 573
    return-void
.end method

.method private append([S)V
    .locals 2
    .param p1, "v"    # [S

    .prologue
    .line 551
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v0, v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/chromium/mojo/bindings/Encoder;->mBaseOffset:I

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 552
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v0, v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 553
    return-void
.end method

.method private encodeByteArray([BII)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "length"    # I
    .param p3, "offset"    # I

    .prologue
    .line 542
    array-length v0, p1

    invoke-direct {p0, v0, p2, p3}, Lorg/chromium/mojo/bindings/Encoder;->encoderForArrayByTotalSize(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    invoke-direct {v0, p1}, Lorg/chromium/mojo/bindings/Encoder;->append([B)V

    .line 543
    return-void
.end method

.method private encodePointerToNextUnclaimedData(I)V
    .locals 4
    .param p1, "offset"    # I

    .prologue
    .line 523
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget v0, v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->dataEnd:I

    int-to-long v0, v0

    iget v2, p0, Lorg/chromium/mojo/bindings/Encoder;->mBaseOffset:I

    add-int/2addr v2, p1

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1, p1}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    .line 524
    return-void
.end method

.method private encoderForArray(IIII)Lorg/chromium/mojo/bindings/Encoder;
    .locals 2
    .param p1, "elementSizeInByte"    # I
    .param p2, "length"    # I
    .param p3, "offset"    # I
    .param p4, "expectedLength"    # I

    .prologue
    .line 528
    const/4 v0, -0x1

    if-eq p4, v0, :cond_0

    if-eq p4, p2, :cond_0

    .line 530
    new-instance v0, Lorg/chromium/mojo/bindings/SerializationException;

    const-string v1, "Trying to encode a fixed array of incorrect length."

    invoke-direct {v0, v1}, Lorg/chromium/mojo/bindings/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_0
    mul-int v0, p2, p1

    invoke-direct {p0, v0, p2, p3}, Lorg/chromium/mojo/bindings/Encoder;->encoderForArrayByTotalSize(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    return-object v0
.end method

.method private encoderForArrayByTotalSize(III)Lorg/chromium/mojo/bindings/Encoder;
    .locals 2
    .param p1, "byteSize"    # I
    .param p2, "length"    # I
    .param p3, "offset"    # I

    .prologue
    .line 536
    invoke-direct {p0, p3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerToNextUnclaimedData(I)V

    .line 537
    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    add-int/lit8 v1, p1, 0x8

    invoke-direct {v0, v1, p2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method claimMemory(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 519
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    invoke-static {p1}, Lorg/chromium/mojo/bindings/BindingsHelper;->align(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->claimMemory(I)V

    .line 520
    return-void
.end method

.method public encode(BI)V
    .locals 2
    .param p1, "v"    # B
    .param p2, "offset"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v0, v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/chromium/mojo/bindings/Encoder;->mBaseOffset:I

    add-int/2addr v1, p2

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 161
    return-void
.end method

.method public encode(DI)V
    .locals 3
    .param p1, "v"    # D
    .param p3, "offset"    # I

    .prologue
    .line 206
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v0, v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/chromium/mojo/bindings/Encoder;->mBaseOffset:I

    add-int/2addr v1, p3

    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(ID)Ljava/nio/ByteBuffer;

    .line 207
    return-void
.end method

.method public encode(FI)V
    .locals 2
    .param p1, "v"    # F
    .param p2, "offset"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v0, v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/chromium/mojo/bindings/Encoder;->mBaseOffset:I

    add-int/2addr v1, p2

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    .line 193
    return-void
.end method

.method public encode(II)V
    .locals 2
    .param p1, "v"    # I
    .param p2, "offset"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v0, v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/chromium/mojo/bindings/Encoder;->mBaseOffset:I

    add-int/2addr v1, p2

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 186
    return-void
.end method

.method public encode(JI)V
    .locals 3
    .param p1, "v"    # J
    .param p3, "offset"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v0, v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/chromium/mojo/bindings/Encoder;->mBaseOffset:I

    add-int/2addr v1, p3

    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 200
    return-void
.end method

.method public encode(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "v"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "nullable"    # Z

    .prologue
    .line 241
    if-nez p1, :cond_0

    .line 242
    invoke-virtual {p0, p2, p3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    .line 249
    :goto_0
    return-void

    .line 245
    :cond_0
    if-eqz p3, :cond_1

    const/4 v0, 0x1

    .line 247
    .local v0, "arrayNullability":I
    :goto_1
    const-string v1, "utf8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v1, p2, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode([BIII)V

    goto :goto_0

    .line 245
    .end local v0    # "arrayNullability":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public encode(Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;IZ)V
    .locals 0
    .param p1, "v"    # Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;
    .param p2, "offset"    # I
    .param p3, "nullable"    # Z

    .prologue
    .line 310
    return-void
.end method

.method public encode(Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;IZ)V
    .locals 0
    .param p1, "v"    # Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;
    .param p2, "offset"    # I
    .param p3, "nullable"    # Z

    .prologue
    .line 316
    return-void
.end method

.method public encode(Lorg/chromium/mojo/bindings/DataHeader;)V
    .locals 2
    .param p1, "s"    # Lorg/chromium/mojo/bindings/DataHeader;

    .prologue
    .line 151
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget v1, p1, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->align(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->claimMemory(I)V

    .line 152
    iget v0, p1, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 153
    iget v0, p1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 154
    return-void
.end method

.method public encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V
    .locals 4
    .param p2, "offset"    # I
    .param p3, "nullable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/chromium/mojo/bindings/Interface;",
            ">(TT;IZ",
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<TT;*>;)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, "v":Lorg/chromium/mojo/bindings/Interface;, "TT;"
    .local p4, "manager":Lorg/chromium/mojo/bindings/Interface$Manager;, "Lorg/chromium/mojo/bindings/Interface$Manager<TT;*>;"
    if-nez p1, :cond_0

    .line 269
    invoke-virtual {p0, p2, p3}, Lorg/chromium/mojo/bindings/Encoder;->encodeInvalidHandle(IZ)V

    .line 270
    const/4 v2, 0x0

    add-int/lit8 v3, p2, 0x4

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 289
    .end local p1    # "v":Lorg/chromium/mojo/bindings/Interface;, "TT;"
    :goto_0
    return-void

    .line 273
    .restart local p1    # "v":Lorg/chromium/mojo/bindings/Interface;, "TT;"
    :cond_0
    iget-object v2, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v2, v2, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->core:Lorg/chromium/mojo/system/Core;

    if-nez v2, :cond_1

    .line 274
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "The encoder has been created without a Core. It can\'t encode an interface."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 278
    :cond_1
    instance-of v2, p1, Lorg/chromium/mojo/bindings/Interface$Proxy;

    if-eqz v2, :cond_2

    .line 279
    check-cast p1, Lorg/chromium/mojo/bindings/Interface$Proxy;

    .end local p1    # "v":Lorg/chromium/mojo/bindings/Interface;, "TT;"
    invoke-interface {p1}, Lorg/chromium/mojo/bindings/Interface$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$Proxy$Handler;

    move-result-object v0

    .line 280
    .local v0, "handler":Lorg/chromium/mojo/bindings/Interface$Proxy$Handler;
    invoke-interface {v0}, Lorg/chromium/mojo/bindings/Interface$Proxy$Handler;->passHandle()Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/system/Handle;IZ)V

    .line 281
    invoke-interface {v0}, Lorg/chromium/mojo/bindings/Interface$Proxy$Handler;->getVersion()I

    move-result v2

    add-int/lit8 v3, p2, 0x4

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    goto :goto_0

    .line 284
    .end local v0    # "handler":Lorg/chromium/mojo/bindings/Interface$Proxy$Handler;
    .restart local p1    # "v":Lorg/chromium/mojo/bindings/Interface;, "TT;"
    :cond_2
    iget-object v2, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v2, v2, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->core:Lorg/chromium/mojo/system/Core;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/chromium/mojo/system/Core;->createMessagePipe(Lorg/chromium/mojo/system/MessagePipeHandle$CreateOptions;)Lorg/chromium/mojo/system/Pair;

    move-result-object v1

    .line 286
    .local v1, "handles":Lorg/chromium/mojo/system/Pair;, "Lorg/chromium/mojo/system/Pair<Lorg/chromium/mojo/system/MessagePipeHandle;Lorg/chromium/mojo/system/MessagePipeHandle;>;"
    iget-object v2, v1, Lorg/chromium/mojo/system/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lorg/chromium/mojo/system/MessagePipeHandle;

    invoke-virtual {p4, p1, v2}, Lorg/chromium/mojo/bindings/Interface$Manager;->bind(Lorg/chromium/mojo/bindings/Interface;Lorg/chromium/mojo/system/MessagePipeHandle;)V

    .line 287
    iget-object v2, v1, Lorg/chromium/mojo/system/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lorg/chromium/mojo/system/Handle;

    invoke-virtual {p0, v2, p2, p3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/system/Handle;IZ)V

    .line 288
    invoke-virtual {p4}, Lorg/chromium/mojo/bindings/Interface$Manager;->getVersion()I

    move-result v2

    add-int/lit8 v3, p2, 0x4

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    goto :goto_0
.end method

.method public encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V
    .locals 2
    .param p2, "offset"    # I
    .param p3, "nullable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Lorg/chromium/mojo/bindings/Interface;",
            ">(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest",
            "<TI;>;IZ)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p1, "v":Lorg/chromium/mojo/bindings/InterfaceRequest;, "Lorg/chromium/mojo/bindings/InterfaceRequest<TI;>;"
    if-nez p1, :cond_0

    .line 296
    invoke-virtual {p0, p2, p3}, Lorg/chromium/mojo/bindings/Encoder;->encodeInvalidHandle(IZ)V

    .line 304
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v0, v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->core:Lorg/chromium/mojo/system/Core;

    if-nez v0, :cond_1

    .line 300
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The encoder has been created without a Core. It can\'t encode an interface."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_1
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/InterfaceRequest;->passHandle()Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/system/Handle;IZ)V

    goto :goto_0
.end method

.method public encode(Lorg/chromium/mojo/bindings/Struct;IZ)V
    .locals 0
    .param p1, "v"    # Lorg/chromium/mojo/bindings/Struct;
    .param p2, "offset"    # I
    .param p3, "nullable"    # Z

    .prologue
    .line 213
    if-nez p1, :cond_0

    .line 214
    invoke-virtual {p0, p2, p3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-direct {p0, p2}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerToNextUnclaimedData(I)V

    .line 218
    invoke-virtual {p1, p0}, Lorg/chromium/mojo/bindings/Struct;->encode(Lorg/chromium/mojo/bindings/Encoder;)V

    goto :goto_0
.end method

.method public encode(Lorg/chromium/mojo/bindings/Union;IZ)V
    .locals 4
    .param p1, "v"    # Lorg/chromium/mojo/bindings/Union;
    .param p2, "offset"    # I
    .param p3, "nullable"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 225
    if-nez p1, :cond_0

    if-nez p3, :cond_0

    .line 226
    new-instance v0, Lorg/chromium/mojo/bindings/SerializationException;

    const-string v1, "Trying to encode a null pointer for a non-nullable type."

    invoke-direct {v0, v1}, Lorg/chromium/mojo/bindings/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    if-nez p1, :cond_1

    .line 230
    invoke-virtual {p0, v2, v3, p2}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    .line 231
    add-int/lit8 v0, p2, 0x8

    invoke-virtual {p0, v2, v3, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    .line 235
    :goto_0
    return-void

    .line 234
    :cond_1
    invoke-virtual {p1, p0, p2}, Lorg/chromium/mojo/bindings/Union;->encode(Lorg/chromium/mojo/bindings/Encoder;I)V

    goto :goto_0
.end method

.method public encode(Lorg/chromium/mojo/system/Handle;IZ)V
    .locals 1
    .param p1, "v"    # Lorg/chromium/mojo/system/Handle;
    .param p2, "offset"    # I
    .param p3, "nullable"    # Z

    .prologue
    .line 255
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/chromium/mojo/system/Handle;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    :cond_0
    invoke-virtual {p0, p2, p3}, Lorg/chromium/mojo/bindings/Encoder;->encodeInvalidHandle(IZ)V

    .line 261
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v0, v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->handles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 259
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v0, v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->handles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public encode(SI)V
    .locals 2
    .param p1, "v"    # S
    .param p2, "offset"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v0, v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/chromium/mojo/bindings/Encoder;->mBaseOffset:I

    add-int/2addr v1, p2

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 179
    return-void
.end method

.method public encode(ZII)V
    .locals 3
    .param p1, "v"    # Z
    .param p2, "offset"    # I
    .param p3, "bit"    # I

    .prologue
    .line 167
    if-eqz p1, :cond_0

    .line 168
    iget-object v1, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v1, v1, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/chromium/mojo/bindings/Encoder;->mBaseOffset:I

    add-int/2addr v2, p2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 169
    .local v0, "encodedValue":B
    const/4 v1, 0x1

    shl-int/2addr v1, p3

    int-to-byte v1, v1

    or-int/2addr v1, v0

    int-to-byte v0, v1

    .line 170
    iget-object v1, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v1, v1, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/chromium/mojo/bindings/Encoder;->mBaseOffset:I

    add-int/2addr v2, p2

    invoke-virtual {v1, v2, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 172
    .end local v0    # "encodedValue":B
    :cond_0
    return-void
.end method

.method public encode([BIII)V
    .locals 2
    .param p1, "v"    # [B
    .param p2, "offset"    # I
    .param p3, "arrayNullability"    # I
    .param p4, "expectedLength"    # I

    .prologue
    .line 360
    if-nez p1, :cond_0

    .line 361
    invoke-static {p3}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    .line 369
    :goto_0
    return-void

    .line 364
    :cond_0
    const/4 v0, -0x1

    if-eq p4, v0, :cond_1

    array-length v0, p1

    if-eq p4, v0, :cond_1

    .line 366
    new-instance v0, Lorg/chromium/mojo/bindings/SerializationException;

    const-string v1, "Trying to encode a fixed array of incorrect length."

    invoke-direct {v0, v1}, Lorg/chromium/mojo/bindings/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_1
    array-length v0, p1

    invoke-direct {p0, p1, v0, p2}, Lorg/chromium/mojo/bindings/Encoder;->encodeByteArray([BII)V

    goto :goto_0
.end method

.method public encode([DIII)V
    .locals 2
    .param p1, "v"    # [D
    .param p2, "offset"    # I
    .param p3, "arrayNullability"    # I
    .param p4, "expectedLength"    # I

    .prologue
    .line 419
    if-nez p1, :cond_0

    .line 420
    invoke-static {p3}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    .line 424
    :goto_0
    return-void

    .line 423
    :cond_0
    const/16 v0, 0x8

    array-length v1, p1

    invoke-direct {p0, v0, v1, p2, p4}, Lorg/chromium/mojo/bindings/Encoder;->encoderForArray(IIII)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    invoke-direct {v0, p1}, Lorg/chromium/mojo/bindings/Encoder;->append([D)V

    goto :goto_0
.end method

.method public encode([FIII)V
    .locals 2
    .param p1, "v"    # [F
    .param p2, "offset"    # I
    .param p3, "arrayNullability"    # I
    .param p4, "expectedLength"    # I

    .prologue
    .line 397
    if-nez p1, :cond_0

    .line 398
    invoke-static {p3}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    .line 402
    :goto_0
    return-void

    .line 401
    :cond_0
    const/4 v0, 0x4

    array-length v1, p1

    invoke-direct {p0, v0, v1, p2, p4}, Lorg/chromium/mojo/bindings/Encoder;->encoderForArray(IIII)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    invoke-direct {v0, p1}, Lorg/chromium/mojo/bindings/Encoder;->append([F)V

    goto :goto_0
.end method

.method public encode([IIII)V
    .locals 2
    .param p1, "v"    # [I
    .param p2, "offset"    # I
    .param p3, "arrayNullability"    # I
    .param p4, "expectedLength"    # I

    .prologue
    .line 386
    if-nez p1, :cond_0

    .line 387
    invoke-static {p3}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    .line 391
    :goto_0
    return-void

    .line 390
    :cond_0
    const/4 v0, 0x4

    array-length v1, p1

    invoke-direct {p0, v0, v1, p2, p4}, Lorg/chromium/mojo/bindings/Encoder;->encoderForArray(IIII)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    invoke-direct {v0, p1}, Lorg/chromium/mojo/bindings/Encoder;->append([I)V

    goto :goto_0
.end method

.method public encode([JIII)V
    .locals 2
    .param p1, "v"    # [J
    .param p2, "offset"    # I
    .param p3, "arrayNullability"    # I
    .param p4, "expectedLength"    # I

    .prologue
    .line 408
    if-nez p1, :cond_0

    .line 409
    invoke-static {p3}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    .line 413
    :goto_0
    return-void

    .line 412
    :cond_0
    const/16 v0, 0x8

    array-length v1, p1

    invoke-direct {p0, v0, v1, p2, p4}, Lorg/chromium/mojo/bindings/Encoder;->encoderForArray(IIII)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    invoke-direct {v0, p1}, Lorg/chromium/mojo/bindings/Encoder;->append([J)V

    goto :goto_0
.end method

.method public encode([Lorg/chromium/mojo/bindings/Interface;IIILorg/chromium/mojo/bindings/Interface$Manager;)V
    .locals 5
    .param p2, "offset"    # I
    .param p3, "arrayNullability"    # I
    .param p4, "expectedLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/chromium/mojo/bindings/Interface;",
            ">([TT;III",
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<TT;*>;)V"
        }
    .end annotation

    .prologue
    .line 447
    .local p1, "v":[Lorg/chromium/mojo/bindings/Interface;, "[TT;"
    .local p5, "manager":Lorg/chromium/mojo/bindings/Interface$Manager;, "Lorg/chromium/mojo/bindings/Interface$Manager<TT;*>;"
    if-nez p1, :cond_1

    .line 448
    invoke-static {p3}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v2

    invoke-virtual {p0, p2, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    .line 457
    :cond_0
    return-void

    .line 451
    :cond_1
    const/16 v2, 0x8

    array-length v3, p1

    invoke-direct {p0, v2, v3, p2, p4}, Lorg/chromium/mojo/bindings/Encoder;->encoderForArray(IIII)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 453
    .local v0, "e":Lorg/chromium/mojo/bindings/Encoder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 454
    aget-object v2, p1, v1

    mul-int/lit8 v3, v1, 0x8

    add-int/lit8 v3, v3, 0x8

    invoke-static {p3}, Lorg/chromium/mojo/bindings/BindingsHelper;->isElementNullable(I)Z

    move-result v4

    invoke-virtual {v0, v2, v3, v4, p5}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    .line 453
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public encode([Lorg/chromium/mojo/bindings/InterfaceRequest;III)V
    .locals 5
    .param p2, "offset"    # I
    .param p3, "arrayNullability"    # I
    .param p4, "expectedLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Lorg/chromium/mojo/bindings/Interface;",
            ">([",
            "Lorg/chromium/mojo/bindings/InterfaceRequest",
            "<TI;>;III)V"
        }
    .end annotation

    .prologue
    .line 480
    .local p1, "v":[Lorg/chromium/mojo/bindings/InterfaceRequest;, "[Lorg/chromium/mojo/bindings/InterfaceRequest<TI;>;"
    if-nez p1, :cond_1

    .line 481
    invoke-static {p3}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v2

    invoke-virtual {p0, p2, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    .line 490
    :cond_0
    return-void

    .line 484
    :cond_1
    const/4 v2, 0x4

    array-length v3, p1

    invoke-direct {p0, v2, v3, p2, p4}, Lorg/chromium/mojo/bindings/Encoder;->encoderForArray(IIII)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 486
    .local v0, "e":Lorg/chromium/mojo/bindings/Encoder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 487
    aget-object v2, p1, v1

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x8

    invoke-static {p3}, Lorg/chromium/mojo/bindings/BindingsHelper;->isElementNullable(I)Z

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V

    .line 486
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public encode([Lorg/chromium/mojo/system/Handle;III)V
    .locals 5
    .param p1, "v"    # [Lorg/chromium/mojo/system/Handle;
    .param p2, "offset"    # I
    .param p3, "arrayNullability"    # I
    .param p4, "expectedLength"    # I

    .prologue
    .line 430
    if-nez p1, :cond_1

    .line 431
    invoke-static {p3}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v2

    invoke-virtual {p0, p2, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    .line 440
    :cond_0
    return-void

    .line 434
    :cond_1
    const/4 v2, 0x4

    array-length v3, p1

    invoke-direct {p0, v2, v3, p2, p4}, Lorg/chromium/mojo/bindings/Encoder;->encoderForArray(IIII)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 436
    .local v0, "e":Lorg/chromium/mojo/bindings/Encoder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 437
    aget-object v2, p1, v1

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x8

    invoke-static {p3}, Lorg/chromium/mojo/bindings/BindingsHelper;->isElementNullable(I)Z

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/system/Handle;IZ)V

    .line 436
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public encode([SIII)V
    .locals 2
    .param p1, "v"    # [S
    .param p2, "offset"    # I
    .param p3, "arrayNullability"    # I
    .param p4, "expectedLength"    # I

    .prologue
    .line 375
    if-nez p1, :cond_0

    .line 376
    invoke-static {p3}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    .line 380
    :goto_0
    return-void

    .line 379
    :cond_0
    const/4 v0, 0x2

    array-length v1, p1

    invoke-direct {p0, v0, v1, p2, p4}, Lorg/chromium/mojo/bindings/Encoder;->encoderForArray(IIII)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    invoke-direct {v0, p1}, Lorg/chromium/mojo/bindings/Encoder;->append([S)V

    goto :goto_0
.end method

.method public encode([ZIII)V
    .locals 6
    .param p1, "v"    # [Z
    .param p2, "offset"    # I
    .param p3, "arrayNullability"    # I
    .param p4, "expectedLength"    # I

    .prologue
    .line 336
    if-nez p1, :cond_0

    .line 337
    invoke-static {p3}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v4

    invoke-virtual {p0, p2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    .line 354
    :goto_0
    return-void

    .line 340
    :cond_0
    const/4 v4, -0x1

    if-eq p4, v4, :cond_1

    array-length v4, p1

    if-eq p4, v4, :cond_1

    .line 342
    new-instance v4, Lorg/chromium/mojo/bindings/SerializationException;

    const-string v5, "Trying to encode a fixed array of incorrect length."

    invoke-direct {v4, v5}, Lorg/chromium/mojo/bindings/SerializationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 344
    :cond_1
    array-length v4, p1

    add-int/lit8 v4, v4, 0x7

    div-int/lit8 v4, v4, 0x8

    new-array v1, v4, [B

    .line 345
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_4

    .line 346
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    const/16 v4, 0x8

    if-ge v3, v4, :cond_3

    .line 347
    mul-int/lit8 v4, v2, 0x8

    add-int v0, v4, v3

    .line 348
    .local v0, "booleanIndex":I
    array-length v4, p1

    if-ge v0, v4, :cond_2

    aget-boolean v4, p1, v0

    if-eqz v4, :cond_2

    .line 349
    aget-byte v4, v1, v2

    const/4 v5, 0x1

    shl-int/2addr v5, v3

    int-to-byte v5, v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 346
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 345
    .end local v0    # "booleanIndex":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 353
    .end local v3    # "j":I
    :cond_4
    array-length v4, p1

    invoke-direct {p0, v1, v4, p2}, Lorg/chromium/mojo/bindings/Encoder;->encodeByteArray([BII)V

    goto :goto_0
.end method

.method public encodeInvalidHandle(IZ)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "nullable"    # Z

    .prologue
    .line 508
    if-nez p2, :cond_0

    .line 509
    new-instance v0, Lorg/chromium/mojo/bindings/SerializationException;

    const-string v1, "Trying to encode an invalid handle for a non-nullable type."

    invoke-direct {v0, v1}, Lorg/chromium/mojo/bindings/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_0
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v0, v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/chromium/mojo/bindings/Encoder;->mBaseOffset:I

    add-int/2addr v1, p1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 513
    return-void
.end method

.method public encodeNullPointer(IZ)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "nullable"    # Z

    .prologue
    .line 497
    if-nez p2, :cond_0

    .line 498
    new-instance v0, Lorg/chromium/mojo/bindings/SerializationException;

    const-string v1, "Trying to encode a null pointer for a non-nullable type."

    invoke-direct {v0, v1}, Lorg/chromium/mojo/bindings/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_0
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v0, v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/chromium/mojo/bindings/Encoder;->mBaseOffset:I

    add-int/2addr v1, p1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 502
    return-void
.end method

.method public encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;
    .locals 1
    .param p1, "length"    # I
    .param p2, "offset"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 322
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/chromium/mojo/bindings/Encoder;->encoderForArray(IIII)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    return-object v0
.end method

.method public encodeUnionArray(III)Lorg/chromium/mojo/bindings/Encoder;
    .locals 1
    .param p1, "length"    # I
    .param p2, "offset"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 329
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/chromium/mojo/bindings/Encoder;->encoderForArray(IIII)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    return-object v0
.end method

.method public encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 460
    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerToNextUnclaimedData(I)V

    .line 461
    sget-object v0, Lorg/chromium/mojo/bindings/BindingsHelper;->MAP_STRUCT_HEADER:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    return-object v0
.end method

.method public encoderForUnionPointer(I)Lorg/chromium/mojo/bindings/Encoder;
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 469
    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerToNextUnclaimedData(I)V

    .line 470
    new-instance v0, Lorg/chromium/mojo/bindings/Encoder;

    iget-object v1, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    invoke-direct {v0, v1}, Lorg/chromium/mojo/bindings/Encoder;-><init>(Lorg/chromium/mojo/bindings/Encoder$EncoderState;)V

    .line 471
    .local v0, "result":Lorg/chromium/mojo/bindings/Encoder;
    iget-object v1, v0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->claimMemory(I)V

    .line 472
    return-object v0
.end method

.method public getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;
    .locals 2
    .param p1, "dataHeader"    # Lorg/chromium/mojo/bindings/DataHeader;

    .prologue
    .line 141
    new-instance v0, Lorg/chromium/mojo/bindings/Encoder;

    iget-object v1, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    invoke-direct {v0, v1}, Lorg/chromium/mojo/bindings/Encoder;-><init>(Lorg/chromium/mojo/bindings/Encoder$EncoderState;)V

    .line 142
    .local v0, "result":Lorg/chromium/mojo/bindings/Encoder;
    invoke-virtual {v0, p1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/DataHeader;)V

    .line 143
    return-object v0
.end method

.method public getMessage()Lorg/chromium/mojo/bindings/Message;
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v0, v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 114
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v0, v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget v1, v1, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->dataEnd:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 115
    new-instance v0, Lorg/chromium/mojo/bindings/Message;

    iget-object v1, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v1, v1, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v2, v2, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->handles:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/Message;-><init>(Ljava/nio/ByteBuffer;Ljava/util/List;)V

    return-object v0
.end method
