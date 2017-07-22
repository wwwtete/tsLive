.class public Lcom/nordnetab/chcp/main/utils/MD5;
.super Ljava/lang/Object;
.source "MD5.java"


# instance fields
.field private digest:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lcom/nordnetab/chcp/main/utils/MD5;->digest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public calculateHash()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 49
    iget-object v3, p0, Lcom/nordnetab/chcp/main/utils/MD5;->digest:Ljava/security/MessageDigest;

    if-nez v3, :cond_0

    .line 50
    const-string v3, ""

    .line 58
    :goto_0
    return-object v3

    .line 53
    :cond_0
    iget-object v3, p0, Lcom/nordnetab/chcp/main/utils/MD5;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 54
    .local v1, "md5sum":[B
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v4, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 55
    .local v0, "bigInt":Ljava/math/BigInteger;
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "output":Ljava/lang/String;
    const-string v3, "%32s"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    const/16 v5, 0x30

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public write([BI)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "length"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nordnetab/chcp/main/utils/MD5;->digest:Ljava/security/MessageDigest;

    if-nez v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/nordnetab/chcp/main/utils/MD5;->digest:Ljava/security/MessageDigest;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0
.end method
