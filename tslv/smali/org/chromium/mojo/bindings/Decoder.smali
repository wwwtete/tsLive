.class public Lorg/chromium/mojo/bindings/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojo/bindings/Decoder$Validator;
    }
.end annotation


# instance fields
.field private final mBaseOffset:I

.field private final mMessage:Lorg/chromium/mojo/bindings/Message;

.field private final mValidator:Lorg/chromium/mojo/bindings/Decoder$Validator;


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/bindings/Message;)V
    .locals 4
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 105
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder$Validator;

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->getHandles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v3, v1}, Lorg/chromium/mojo/bindings/Decoder$Validator;-><init>(JI)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/Decoder$Validator;I)V

    .line 106
    return-void
.end method

.method private constructor <init>(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/Decoder$Validator;I)V
    .locals 2
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;
    .param p2, "validator"    # Lorg/chromium/mojo/bindings/Decoder$Validator;
    .param p3, "baseOffset"    # I

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    .line 110
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 111
    iput p3, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    .line 112
    iput-object p2, p0, Lorg/chromium/mojo/bindings/Decoder;->mValidator:Lorg/chromium/mojo/bindings/Decoder$Validator;

    .line 113
    return-void
.end method

.method private getDecoderAtPosition(I)Lorg/chromium/mojo/bindings/Decoder;
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 688
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    iget-object v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    iget-object v2, p0, Lorg/chromium/mojo/bindings/Decoder;->mValidator:Lorg/chromium/mojo/bindings/Decoder$Validator;

    invoke-direct {v0, v1, v2, p1}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/Decoder$Validator;I)V

    return-object v0
.end method

.method private readDataHeaderAtOffset(IZ)Lorg/chromium/mojo/bindings/DataHeader;
    .locals 4
    .param p1, "offset"    # I
    .param p2, "isUnion"    # Z

    .prologue
    .line 158
    add-int/lit8 v2, p1, 0x0

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v1

    .line 159
    .local v1, "size":I
    add-int/lit8 v2, p1, 0x4

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    .line 160
    .local v0, "elementsOrVersion":I
    if-gez v1, :cond_0

    .line 161
    new-instance v2, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v3, "Negative size. Unsigned integers are not valid for java."

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 164
    :cond_0
    if-gez v0, :cond_2

    if-eqz p2, :cond_1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 165
    :cond_1
    new-instance v2, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v3, "Negative elements or version. Unsigned integers are not valid for java."

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 169
    :cond_2
    new-instance v2, Lorg/chromium/mojo/bindings/DataHeader;

    invoke-direct {v2, v1, v0}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    return-object v2
.end method

.method private readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/DataHeader;
    .locals 9
    .param p1, "elementSize"    # J
    .param p3, "expectedLength"    # I

    .prologue
    .line 712
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeader()Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    .line 713
    .local v0, "dataHeader":Lorg/chromium/mojo/bindings/DataHeader;
    iget v1, v0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    int-to-long v2, v1

    const-wide/16 v4, 0x8

    iget v1, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    int-to-long v6, v1

    mul-long/2addr v6, p1

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 715
    new-instance v1, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v2, "Array header is incorrect."

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 717
    :cond_0
    const/4 v1, -0x1

    if-eq p3, v1, :cond_1

    iget v1, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-eq v1, p3, :cond_1

    .line 719
    new-instance v1, Lorg/chromium/mojo/bindings/DeserializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect array length. Expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 722
    :cond_1
    return-object v0
.end method

.method private readDataHeaderForBooleanArray(I)Lorg/chromium/mojo/bindings/DataHeader;
    .locals 4
    .param p1, "expectedLength"    # I

    .prologue
    .line 696
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeader()Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    .line 697
    .local v0, "dataHeader":Lorg/chromium/mojo/bindings/DataHeader;
    iget v1, v0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x8

    if-ge v1, v2, :cond_0

    .line 698
    new-instance v1, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v2, "Array header is incorrect."

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 700
    :cond_0
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    iget v1, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-eq v1, p1, :cond_1

    .line 702
    new-instance v1, Lorg/chromium/mojo/bindings/DeserializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect array length. Expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 705
    :cond_1
    return-object v0
.end method

.method private validateBufferSize(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "size"    # I

    .prologue
    .line 726
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 727
    new-instance v0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v1, "Buffer is smaller than expected."

    invoke-direct {v0, v1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 729
    :cond_0
    return-void
.end method


# virtual methods
.method public decoderForSerializedUnion()Lorg/chromium/mojo/bindings/Decoder;
    .locals 6

    .prologue
    .line 150
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mValidator:Lorg/chromium/mojo/bindings/Decoder$Validator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x10

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/chromium/mojo/bindings/Decoder$Validator;->claimMemory(JJ)V

    .line 151
    return-object p0
.end method

.method public readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;
    .locals 7
    .param p1, "versionArray"    # [Lorg/chromium/mojo/bindings/DataHeader;

    .prologue
    .line 173
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeader()Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 174
    .local v1, "header":Lorg/chromium/mojo/bindings/DataHeader;
    array-length v5, p1

    add-int/lit8 v3, v5, -0x1

    .line 175
    .local v3, "maxVersionIndex":I
    iget v5, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    aget-object v6, p1, v3

    iget v6, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-gt v5, v6, :cond_3

    .line 176
    const/4 v4, 0x0

    .line 177
    .local v4, "referenceHeader":Lorg/chromium/mojo/bindings/DataHeader;
    move v2, v3

    .local v2, "index":I
    :goto_0
    if-ltz v2, :cond_0

    .line 178
    aget-object v0, p1, v2

    .line 179
    .local v0, "dataHeader":Lorg/chromium/mojo/bindings/DataHeader;
    iget v5, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    iget v6, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-lt v5, v6, :cond_2

    .line 180
    move-object v4, v0

    .line 184
    .end local v0    # "dataHeader":Lorg/chromium/mojo/bindings/DataHeader;
    :cond_0
    if-eqz v4, :cond_1

    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    iget v6, v1, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    if-eq v5, v6, :cond_4

    .line 185
    :cond_1
    new-instance v5, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v6, "Header doesn\'t correspond to any known version."

    invoke-direct {v5, v6}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 177
    .restart local v0    # "dataHeader":Lorg/chromium/mojo/bindings/DataHeader;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 189
    .end local v0    # "dataHeader":Lorg/chromium/mojo/bindings/DataHeader;
    .end local v2    # "index":I
    .end local v4    # "referenceHeader":Lorg/chromium/mojo/bindings/DataHeader;
    :cond_3
    iget v5, v1, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    aget-object v6, p1, v3

    iget v6, v6, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    if-ge v5, v6, :cond_4

    .line 190
    new-instance v5, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v6, "Message newer than the last known version cannot be shorter than required by the last known version."

    invoke-direct {v5, v6}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 194
    :cond_4
    return-object v1
.end method

.method public readAssociatedInterfaceRequestNotSupported(IZ)Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "nullable"    # Z

    .prologue
    .line 509
    const/4 v0, 0x0

    return-object v0
.end method

.method public readAssociatedServiceInterfaceNotSupported(IZ)Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "nullable"    # Z

    .prologue
    .line 501
    const/4 v0, 0x0

    return-object v0
.end method

.method public readBoolean(II)Z
    .locals 3
    .param p1, "offset"    # I
    .param p2, "bit"    # I

    .prologue
    const/4 v0, 0x1

    .line 240
    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->validateBufferSize(II)V

    .line 241
    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readByte(I)B

    move-result v1

    shl-int v2, v0, p2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readBooleans(III)[Z
    .locals 10
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    const/4 v8, 0x1

    .line 308
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v7

    invoke-virtual {p0, p1, v7}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    .line 309
    .local v2, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v2, :cond_1

    .line 310
    const/4 v5, 0x0

    .line 325
    :cond_0
    return-object v5

    .line 312
    :cond_1
    invoke-direct {v2, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForBooleanArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    .line 313
    .local v6, "si":Lorg/chromium/mojo/bindings/DataHeader;
    iget v7, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    add-int/lit8 v7, v7, 0x7

    div-int/lit8 v7, v7, 0x8

    new-array v1, v7, [B

    .line 314
    .local v1, "bytes":[B
    iget-object v7, v2, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v7}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v7

    iget v9, v2, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 v9, v9, 0x8

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 315
    iget-object v7, v2, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v7}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 316
    iget v7, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v7, [Z

    .line 317
    .local v5, "result":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v1

    if-ge v3, v7, :cond_0

    .line 318
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    const/16 v7, 0x8

    if-ge v4, v7, :cond_4

    .line 319
    mul-int/lit8 v7, v3, 0x8

    add-int v0, v7, v4

    .line 320
    .local v0, "booleanIndex":I
    array-length v7, v5

    if-ge v0, v7, :cond_2

    .line 321
    aget-byte v7, v1, v3

    shl-int v9, v8, v4

    and-int/2addr v7, v9

    if-eqz v7, :cond_3

    move v7, v8

    :goto_2
    aput-boolean v7, v5, v0

    .line 318
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 321
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 317
    .end local v0    # "booleanIndex":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public readByte(I)B
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 232
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->validateBufferSize(II)V

    .line 233
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method public readBytes(III)[B
    .locals 6
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 332
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v3

    invoke-virtual {p0, p1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 333
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_0

    .line 334
    const/4 v1, 0x0

    .line 340
    :goto_0
    return-object v1

    .line 336
    :cond_0
    const-wide/16 v4, 0x1

    invoke-direct {v0, v4, v5, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v2

    .line 337
    .local v2, "si":Lorg/chromium/mojo/bindings/DataHeader;
    iget v3, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v1, v3, [B

    .line 338
    .local v1, "result":[B
    iget-object v3, v0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v4, v0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 339
    iget-object v3, v0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public readConsumerHandle(IZ)Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "nullable"    # Z

    .prologue
    .line 445
    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readUntypedHandle(IZ)Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/mojo/system/UntypedHandle;->toDataPipeConsumerHandle()Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    move-result-object v0

    return-object v0
.end method

.method public readConsumerHandles(III)[Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;
    .locals 6
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 566
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v4

    invoke-virtual {p0, p1, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 567
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_1

    .line 568
    const/4 v2, 0x0

    .line 577
    :cond_0
    return-object v2

    .line 570
    :cond_1
    const-wide/16 v4, 0x4

    invoke-direct {v0, v4, v5, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v3

    .line 571
    .local v3, "si":Lorg/chromium/mojo/bindings/DataHeader;
    iget v4, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v2, v4, [Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    .line 572
    .local v2, "result":[Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 573
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x8

    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isElementNullable(I)Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readConsumerHandle(IZ)Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    move-result-object v4

    aput-object v4, v2, v1

    .line 572
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public readDataHeader()Lorg/chromium/mojo/bindings/DataHeader;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 120
    iget-object v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mValidator:Lorg/chromium/mojo/bindings/Decoder$Validator;

    iget v2, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    int-to-long v2, v2

    iget v4, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 v4, v4, 0x8

    int-to-long v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/chromium/mojo/bindings/Decoder$Validator;->claimMemory(JJ)V

    .line 121
    invoke-direct {p0, v6, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderAtOffset(IZ)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    .line 123
    .local v0, "result":Lorg/chromium/mojo/bindings/DataHeader;
    iget-object v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mValidator:Lorg/chromium/mojo/bindings/Decoder$Validator;

    iget v2, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    iget v4, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    iget v5, v0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    add-int/2addr v4, v5

    int-to-long v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/chromium/mojo/bindings/Decoder$Validator;->claimMemory(JJ)V

    .line 124
    return-object v0
.end method

.method public readDataHeaderForMap()V
    .locals 3

    .prologue
    .line 217
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeader()Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    .line 218
    .local v0, "si":Lorg/chromium/mojo/bindings/DataHeader;
    iget v1, v0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    sget-object v2, Lorg/chromium/mojo/bindings/BindingsHelper;->MAP_STRUCT_HEADER:Lorg/chromium/mojo/bindings/DataHeader;

    iget v2, v2, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    if-eq v1, v2, :cond_0

    .line 219
    new-instance v1, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v2, "Incorrect header for map. The size is incorrect."

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 222
    :cond_0
    iget v1, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    sget-object v2, Lorg/chromium/mojo/bindings/BindingsHelper;->MAP_STRUCT_HEADER:Lorg/chromium/mojo/bindings/DataHeader;

    iget v2, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-eq v1, v2, :cond_1

    .line 223
    new-instance v1, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v2, "Incorrect header for map. The version is incorrect."

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :cond_1
    return-void
.end method

.method public readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;
    .locals 2
    .param p1, "expectedLength"    # I

    .prologue
    .line 202
    const-wide/16 v0, 0x8

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    return-object v0
.end method

.method public readDataHeaderForUnion(I)Lorg/chromium/mojo/bindings/DataHeader;
    .locals 4
    .param p1, "offset"    # I

    .prologue
    .line 131
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderAtOffset(IZ)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    .line 132
    .local v0, "result":Lorg/chromium/mojo/bindings/DataHeader;
    iget v1, v0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    if-nez v1, :cond_0

    .line 133
    iget v1, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-eqz v1, :cond_1

    .line 134
    new-instance v1, Lorg/chromium/mojo/bindings/DeserializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected version tag for a null union. Expecting 0, found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_0
    iget v1, v0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_1

    .line 139
    new-instance v1, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v2, "Unexpected size of an union. The size must be 0 for a null union, or 16 for a non-null union."

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_1
    return-object v0
.end method

.method public readDataHeaderForUnionArray(I)Lorg/chromium/mojo/bindings/DataHeader;
    .locals 2
    .param p1, "expectedLength"    # I

    .prologue
    .line 210
    const-wide/16 v0, 0x10

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    return-object v0
.end method

.method public readDouble(I)D
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 280
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->validateBufferSize(II)V

    .line 281
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public readDoubles(III)[D
    .locals 6
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 407
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v3

    invoke-virtual {p0, p1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 408
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_0

    .line 409
    const/4 v1, 0x0

    .line 415
    :goto_0
    return-object v1

    .line 411
    :cond_0
    const-wide/16 v4, 0x8

    invoke-direct {v0, v4, v5, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v2

    .line 412
    .local v2, "si":Lorg/chromium/mojo/bindings/DataHeader;
    iget v3, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v1, v3, [D

    .line 413
    .local v1, "result":[D
    iget-object v3, v0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v4, v0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 414
    iget-object v3, v0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/DoubleBuffer;->get([D)Ljava/nio/DoubleBuffer;

    goto :goto_0
.end method

.method public readFloat(I)F
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 264
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->validateBufferSize(II)V

    .line 265
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public readFloats(III)[F
    .locals 6
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 377
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v3

    invoke-virtual {p0, p1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 378
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_0

    .line 379
    const/4 v1, 0x0

    .line 385
    :goto_0
    return-object v1

    .line 381
    :cond_0
    const-wide/16 v4, 0x4

    invoke-direct {v0, v4, v5, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v2

    .line 382
    .local v2, "si":Lorg/chromium/mojo/bindings/DataHeader;
    iget v3, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v1, v3, [F

    .line 383
    .local v1, "result":[F
    iget-object v3, v0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v4, v0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 384
    iget-object v3, v0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    goto :goto_0
.end method

.method public readHandle(IZ)Lorg/chromium/mojo/system/Handle;
    .locals 3
    .param p1, "offset"    # I
    .param p2, "nullable"    # Z

    .prologue
    .line 422
    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    .line 423
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 424
    if-nez p2, :cond_0

    .line 425
    new-instance v1, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v2, "Trying to decode an invalid handle for a non-nullable type."

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 428
    :cond_0
    sget-object v1, Lorg/chromium/mojo/system/InvalidHandle;->INSTANCE:Lorg/chromium/mojo/system/InvalidHandle;

    .line 431
    :goto_0
    return-object v1

    .line 430
    :cond_1
    iget-object v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mValidator:Lorg/chromium/mojo/bindings/Decoder$Validator;

    invoke-virtual {v1, v0}, Lorg/chromium/mojo/bindings/Decoder$Validator;->claimHandle(I)V

    .line 431
    iget-object v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Message;->getHandles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/mojo/system/Handle;

    goto :goto_0
.end method

.method public readHandles(III)[Lorg/chromium/mojo/system/Handle;
    .locals 6
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 528
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v4

    invoke-virtual {p0, p1, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 529
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_1

    .line 530
    const/4 v2, 0x0

    .line 539
    :cond_0
    return-object v2

    .line 532
    :cond_1
    const-wide/16 v4, 0x4

    invoke-direct {v0, v4, v5, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v3

    .line 533
    .local v3, "si":Lorg/chromium/mojo/bindings/DataHeader;
    iget v4, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v2, v4, [Lorg/chromium/mojo/system/Handle;

    .line 534
    .local v2, "result":[Lorg/chromium/mojo/system/Handle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 535
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x8

    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isElementNullable(I)Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readHandle(IZ)Lorg/chromium/mojo/system/Handle;

    move-result-object v4

    aput-object v4, v2, v1

    .line 534
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public readInt(I)I
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 256
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->validateBufferSize(II)V

    .line 257
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "nullable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Lorg/chromium/mojo/bindings/Interface;",
            ">(IZ)",
            "Lorg/chromium/mojo/bindings/InterfaceRequest",
            "<TI;>;"
        }
    .end annotation

    .prologue
    .line 489
    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readMessagePipeHandle(IZ)Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object v0

    .line 490
    .local v0, "handle":Lorg/chromium/mojo/system/MessagePipeHandle;
    if-nez v0, :cond_0

    .line 491
    const/4 v1, 0x0

    .line 493
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-direct {v1, v0}, Lorg/chromium/mojo/bindings/InterfaceRequest;-><init>(Lorg/chromium/mojo/system/MessagePipeHandle;)V

    goto :goto_0
.end method

.method public readInterfaceRequests(III)[Lorg/chromium/mojo/bindings/InterfaceRequest;
    .locals 6
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Lorg/chromium/mojo/bindings/Interface;",
            ">(III)[",
            "Lorg/chromium/mojo/bindings/InterfaceRequest",
            "<TI;>;"
        }
    .end annotation

    .prologue
    .line 669
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v4

    invoke-virtual {p0, p1, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 670
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_1

    .line 671
    const/4 v2, 0x0

    .line 681
    :cond_0
    return-object v2

    .line 673
    :cond_1
    const-wide/16 v4, 0x4

    invoke-direct {v0, v4, v5, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v3

    .line 675
    .local v3, "si":Lorg/chromium/mojo/bindings/DataHeader;
    iget v4, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v2, v4, [Lorg/chromium/mojo/bindings/InterfaceRequest;

    .line 676
    .local v2, "result":[Lorg/chromium/mojo/bindings/InterfaceRequest;, "[Lorg/chromium/mojo/bindings/InterfaceRequest<TI;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 677
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x8

    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isElementNullable(I)Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v4

    aput-object v4, v2, v1

    .line 676
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public readInts(III)[I
    .locals 6
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 362
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v3

    invoke-virtual {p0, p1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 363
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_0

    .line 364
    const/4 v1, 0x0

    .line 370
    :goto_0
    return-object v1

    .line 366
    :cond_0
    const-wide/16 v4, 0x4

    invoke-direct {v0, v4, v5, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v2

    .line 367
    .local v2, "si":Lorg/chromium/mojo/bindings/DataHeader;
    iget v3, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v1, v3, [I

    .line 368
    .local v1, "result":[I
    iget-object v3, v0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v4, v0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 369
    iget-object v3, v0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    goto :goto_0
.end method

.method public readLong(I)J
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 272
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->validateBufferSize(II)V

    .line 273
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public readLongs(III)[J
    .locals 6
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 392
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v3

    invoke-virtual {p0, p1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 393
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_0

    .line 394
    const/4 v1, 0x0

    .line 400
    :goto_0
    return-object v1

    .line 396
    :cond_0
    const-wide/16 v4, 0x8

    invoke-direct {v0, v4, v5, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v2

    .line 397
    .local v2, "si":Lorg/chromium/mojo/bindings/DataHeader;
    iget v3, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v1, v3, [J

    .line 398
    .local v1, "result":[J
    iget-object v3, v0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v4, v0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 399
    iget-object v3, v0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    goto :goto_0
.end method

.method public readMessagePipeHandle(IZ)Lorg/chromium/mojo/system/MessagePipeHandle;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "nullable"    # Z

    .prologue
    .line 459
    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readUntypedHandle(IZ)Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/mojo/system/UntypedHandle;->toMessagePipeHandle()Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object v0

    return-object v0
.end method

.method public readMessagePipeHandles(III)[Lorg/chromium/mojo/system/MessagePipeHandle;
    .locals 6
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 605
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v4

    invoke-virtual {p0, p1, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 606
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_1

    .line 607
    const/4 v2, 0x0

    .line 616
    :cond_0
    return-object v2

    .line 609
    :cond_1
    const-wide/16 v4, 0x4

    invoke-direct {v0, v4, v5, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v3

    .line 610
    .local v3, "si":Lorg/chromium/mojo/bindings/DataHeader;
    iget v4, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v2, v4, [Lorg/chromium/mojo/system/MessagePipeHandle;

    .line 611
    .local v2, "result":[Lorg/chromium/mojo/system/MessagePipeHandle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 612
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x8

    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isElementNullable(I)Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readMessagePipeHandle(IZ)Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object v4

    aput-object v4, v2, v1

    .line 611
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;
    .locals 6
    .param p1, "offset"    # I
    .param p2, "nullable"    # Z

    .prologue
    .line 289
    iget v4, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int v0, v4, p1

    .line 290
    .local v0, "basePosition":I
    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v2

    .line 291
    .local v2, "pointerOffset":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 292
    if-nez p2, :cond_0

    .line 293
    new-instance v4, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v5, "Trying to decode null pointer for a non-nullable type."

    invoke-direct {v4, v5}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 296
    :cond_0
    const/4 v4, 0x0

    .line 300
    :goto_0
    return-object v4

    .line 298
    :cond_1
    int-to-long v4, v0

    add-long/2addr v4, v2

    long-to-int v1, v4

    .line 300
    .local v1, "newPosition":I
    invoke-direct {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->getDecoderAtPosition(I)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    goto :goto_0
.end method

.method public readProducerHandle(IZ)Lorg/chromium/mojo/system/DataPipe$ProducerHandle;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "nullable"    # Z

    .prologue
    .line 452
    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readUntypedHandle(IZ)Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/mojo/system/UntypedHandle;->toDataPipeProducerHandle()Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    move-result-object v0

    return-object v0
.end method

.method public readProducerHandles(III)[Lorg/chromium/mojo/system/DataPipe$ProducerHandle;
    .locals 6
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 585
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v4

    invoke-virtual {p0, p1, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 586
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_1

    .line 587
    const/4 v2, 0x0

    .line 596
    :cond_0
    return-object v2

    .line 589
    :cond_1
    const-wide/16 v4, 0x4

    invoke-direct {v0, v4, v5, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v3

    .line 590
    .local v3, "si":Lorg/chromium/mojo/bindings/DataHeader;
    iget v4, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v2, v4, [Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    .line 591
    .local v2, "result":[Lorg/chromium/mojo/system/DataPipe$ProducerHandle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 592
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x8

    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isElementNullable(I)Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readProducerHandle(IZ)Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    move-result-object v4

    aput-object v4, v2, v1

    .line 591
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;
    .locals 3
    .param p1, "offset"    # I
    .param p2, "nullable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lorg/chromium/mojo/bindings/Interface$Proxy;",
            ">(IZ",
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<*TP;>;)TP;"
        }
    .end annotation

    .prologue
    .line 476
    .local p3, "manager":Lorg/chromium/mojo/bindings/Interface$Manager;, "Lorg/chromium/mojo/bindings/Interface$Manager<*TP;>;"
    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readMessagePipeHandle(IZ)Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object v0

    .line 477
    .local v0, "handle":Lorg/chromium/mojo/system/MessagePipeHandle;
    invoke-interface {v0}, Lorg/chromium/mojo/system/MessagePipeHandle;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 478
    const/4 v2, 0x0

    .line 481
    :goto_0
    return-object v2

    .line 480
    :cond_0
    add-int/lit8 v2, p1, 0x4

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v1

    .line 481
    .local v1, "version":I
    invoke-virtual {p3, v0, v1}, Lorg/chromium/mojo/bindings/Interface$Manager;->attachProxy(Lorg/chromium/mojo/system/MessagePipeHandle;I)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v2

    goto :goto_0
.end method

.method public readServiceInterfaces(IIILorg/chromium/mojo/bindings/Interface$Manager;)[Lorg/chromium/mojo/bindings/Interface;
    .locals 8
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lorg/chromium/mojo/bindings/Interface;",
            "P::",
            "Lorg/chromium/mojo/bindings/Interface$Proxy;",
            ">(III",
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<TS;TP;>;)[TS;"
        }
    .end annotation

    .prologue
    .line 645
    .local p4, "manager":Lorg/chromium/mojo/bindings/Interface$Manager;, "Lorg/chromium/mojo/bindings/Interface$Manager<TS;TP;>;"
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v5

    invoke-virtual {p0, p1, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 646
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_1

    .line 647
    const/4 v2, 0x0

    .line 661
    :cond_0
    return-object v2

    .line 649
    :cond_1
    const-wide/16 v6, 0x8

    invoke-direct {v0, v6, v7, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v3

    .line 651
    .local v3, "si":Lorg/chromium/mojo/bindings/DataHeader;
    iget v5, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-virtual {p4, v5}, Lorg/chromium/mojo/bindings/Interface$Manager;->buildArray(I)[Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    .line 652
    .local v2, "result":[Lorg/chromium/mojo/bindings/Interface;, "[TS;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_0

    .line 656
    mul-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x8

    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isElementNullable(I)Z

    move-result v6

    invoke-virtual {v0, v5, v6, p4}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v4

    .line 659
    .local v4, "value":Lorg/chromium/mojo/bindings/Interface;, "TS;"
    aput-object v4, v2, v1

    .line 652
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public readSharedBufferHandle(IZ)Lorg/chromium/mojo/system/SharedBufferHandle;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "nullable"    # Z

    .prologue
    .line 466
    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readUntypedHandle(IZ)Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/mojo/system/UntypedHandle;->toSharedBufferHandle()Lorg/chromium/mojo/system/SharedBufferHandle;

    move-result-object v0

    return-object v0
.end method

.method public readSharedBufferHandles(III)[Lorg/chromium/mojo/system/SharedBufferHandle;
    .locals 6
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 625
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v4

    invoke-virtual {p0, p1, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 626
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_1

    .line 627
    const/4 v2, 0x0

    .line 636
    :cond_0
    return-object v2

    .line 629
    :cond_1
    const-wide/16 v4, 0x4

    invoke-direct {v0, v4, v5, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v3

    .line 630
    .local v3, "si":Lorg/chromium/mojo/bindings/DataHeader;
    iget v4, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v2, v4, [Lorg/chromium/mojo/system/SharedBufferHandle;

    .line 631
    .local v2, "result":[Lorg/chromium/mojo/system/SharedBufferHandle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 632
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x8

    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isElementNullable(I)Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readSharedBufferHandle(IZ)Lorg/chromium/mojo/system/SharedBufferHandle;

    move-result-object v4

    aput-object v4, v2, v1

    .line 631
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public readShort(I)S
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 248
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->validateBufferSize(II)V

    .line 249
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    return v0
.end method

.method public readShorts(III)[S
    .locals 6
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 347
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v3

    invoke-virtual {p0, p1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 348
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_0

    .line 349
    const/4 v1, 0x0

    .line 355
    :goto_0
    return-object v1

    .line 351
    :cond_0
    const-wide/16 v4, 0x2

    invoke-direct {v0, v4, v5, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v2

    .line 352
    .local v2, "si":Lorg/chromium/mojo/bindings/DataHeader;
    iget v3, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v1, v3, [S

    .line 353
    .local v1, "result":[S
    iget-object v3, v0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v4, v0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 354
    iget-object v3, v0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    goto :goto_0
.end method

.method public readString(IZ)Ljava/lang/String;
    .locals 4
    .param p1, "offset"    # I
    .param p2, "nullable"    # Z

    .prologue
    .line 516
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 517
    .local v0, "arrayNullability":I
    :goto_0
    const/4 v2, -0x1

    invoke-virtual {p0, p1, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBytes(III)[B

    move-result-object v1

    .line 518
    .local v1, "bytes":[B
    if-nez v1, :cond_1

    .line 519
    const/4 v2, 0x0

    .line 521
    :goto_1
    return-object v2

    .line 516
    .end local v0    # "arrayNullability":I
    .end local v1    # "bytes":[B
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 521
    .restart local v0    # "arrayNullability":I
    .restart local v1    # "bytes":[B
    :cond_1
    new-instance v2, Ljava/lang/String;

    const-string v3, "utf8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_1
.end method

.method public readUntypedHandle(IZ)Lorg/chromium/mojo/system/UntypedHandle;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "nullable"    # Z

    .prologue
    .line 438
    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readHandle(IZ)Lorg/chromium/mojo/system/Handle;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/mojo/system/Handle;->toUntypedHandle()Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object v0

    return-object v0
.end method

.method public readUntypedHandles(III)[Lorg/chromium/mojo/system/UntypedHandle;
    .locals 6
    .param p1, "offset"    # I
    .param p2, "arrayNullability"    # I
    .param p3, "expectedLength"    # I

    .prologue
    .line 547
    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v4

    invoke-virtual {p0, p1, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 548
    .local v0, "d":Lorg/chromium/mojo/bindings/Decoder;
    if-nez v0, :cond_1

    .line 549
    const/4 v2, 0x0

    .line 558
    :cond_0
    return-object v2

    .line 551
    :cond_1
    const-wide/16 v4, 0x4

    invoke-direct {v0, v4, v5, p3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JI)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v3

    .line 552
    .local v3, "si":Lorg/chromium/mojo/bindings/DataHeader;
    iget v4, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v2, v4, [Lorg/chromium/mojo/system/UntypedHandle;

    .line 553
    .local v2, "result":[Lorg/chromium/mojo/system/UntypedHandle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 554
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x8

    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isElementNullable(I)Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readUntypedHandle(IZ)Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object v4

    aput-object v4, v2, v1

    .line 553
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
