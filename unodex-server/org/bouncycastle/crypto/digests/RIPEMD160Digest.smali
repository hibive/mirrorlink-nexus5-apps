.class public Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;
.super Lorg/bouncycastle/crypto/digests/GeneralDigest;
.source "Unknown"


# static fields
.field private static final DIGEST_LENGTH:I = 0x14


# instance fields
.field private H0:I

.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private X:[I

.field private xOff:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->reset()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lorg/bouncycastle/crypto/digests/GeneralDigest;)V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->copyIn(Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;)V

    return-void
.end method

.method private RL(II)I
    .registers 5

    shl-int v0, p1, p2

    rsub-int/lit8 v1, p2, 0x20

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private copyIn(Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lorg/bouncycastle/crypto/digests/GeneralDigest;)V

    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H0:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H0:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H1:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H1:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H2:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H2:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H3:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H3:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H4:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H4:I

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->xOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->xOff:I

    return-void
.end method

.method private f1(III)I
    .registers 5

    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method

.method private f2(III)I
    .registers 6

    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private f3(III)I
    .registers 5

    xor-int/lit8 v0, p2, -0x1

    or-int/2addr v0, p1

    xor-int/2addr v0, p3

    return v0
.end method

.method private f4(III)I
    .registers 6

    and-int v0, p1, p3

    xor-int/lit8 v1, p3, -0x1

    and-int/2addr v1, p2

    or-int/2addr v0, v1

    return v0
.end method

.method private f5(III)I
    .registers 5

    xor-int/lit8 v0, p3, -0x1

    or-int/2addr v0, p2

    xor-int/2addr v0, p1

    return v0
.end method

.method private unpackWord(I[BI)V
    .registers 6

    int-to-byte v0, p1

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .registers 2

    new-instance v0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;-><init>(Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .registers 5

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->finish()V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H0:I

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->unpackWord(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H1:I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->unpackWord(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H2:I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->unpackWord(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H3:I

    add-int/lit8 v1, p2, 0xc

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->unpackWord(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H4:I

    add-int/lit8 v1, p2, 0x10

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->unpackWord(I[BI)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->reset()V

    const/16 v0, 0x14

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "RIPEMD160"

    return-object v0
.end method

.method public getDigestSize()I
    .registers 2

    const/16 v0, 0x14

    return v0
.end method

.method protected processBlock()V
    .registers 13

    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H0:I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H1:I

    iget v2, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H2:I

    iget v3, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H3:I

    iget v4, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H4:I

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/2addr v5, v6

    const/16 v6, 0xb

    invoke-direct {p0, v5, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v4

    const/16 v6, 0xa

    invoke-direct {p0, v2, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    invoke-direct {p0, v5, v1, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v7

    add-int/2addr v7, v4

    iget-object v8, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    add-int/2addr v7, v8

    const/16 v8, 0xe

    invoke-direct {p0, v7, v8}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    add-int/2addr v7, v3

    const/16 v8, 0xa

    invoke-direct {p0, v1, v8}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    invoke-direct {p0, v7, v5, v8}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v9

    add-int/2addr v9, v3

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    add-int/2addr v9, v10

    const/16 v10, 0xf

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    add-int/2addr v9, v6

    const/16 v10, 0xa

    invoke-direct {p0, v5, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    invoke-direct {p0, v9, v7, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v10

    add-int/2addr v6, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    add-int/2addr v6, v10

    const/16 v10, 0xc

    invoke-direct {p0, v6, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v8

    const/16 v10, 0xa

    invoke-direct {p0, v7, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    invoke-direct {p0, v6, v9, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x4

    aget v10, v10, v11

    add-int/2addr v8, v10

    const/4 v10, 0x5

    invoke-direct {p0, v8, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v5

    const/16 v10, 0xa

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    invoke-direct {p0, v8, v6, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v10

    add-int/2addr v5, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x5

    aget v10, v10, v11

    add-int/2addr v5, v10

    const/16 v10, 0x8

    invoke-direct {p0, v5, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v7

    const/16 v10, 0xa

    invoke-direct {p0, v6, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    invoke-direct {p0, v5, v8, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v10

    add-int/2addr v7, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x6

    aget v10, v10, v11

    add-int/2addr v7, v10

    const/4 v10, 0x7

    invoke-direct {p0, v7, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    add-int/2addr v7, v9

    const/16 v10, 0xa

    invoke-direct {p0, v8, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    invoke-direct {p0, v7, v5, v8}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x7

    aget v10, v10, v11

    add-int/2addr v9, v10

    const/16 v10, 0x9

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    add-int/2addr v9, v6

    const/16 v10, 0xa

    invoke-direct {p0, v5, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    invoke-direct {p0, v9, v7, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v10

    add-int/2addr v6, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0x8

    aget v10, v10, v11

    add-int/2addr v6, v10

    const/16 v10, 0xb

    invoke-direct {p0, v6, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v8

    const/16 v10, 0xa

    invoke-direct {p0, v7, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    invoke-direct {p0, v6, v9, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0x9

    aget v10, v10, v11

    add-int/2addr v8, v10

    const/16 v10, 0xd

    invoke-direct {p0, v8, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v5

    const/16 v10, 0xa

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    invoke-direct {p0, v8, v6, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v10

    add-int/2addr v5, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xa

    aget v10, v10, v11

    add-int/2addr v5, v10

    const/16 v10, 0xe

    invoke-direct {p0, v5, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v7

    const/16 v10, 0xa

    invoke-direct {p0, v6, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    invoke-direct {p0, v5, v8, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v10

    add-int/2addr v7, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xb

    aget v10, v10, v11

    add-int/2addr v7, v10

    const/16 v10, 0xf

    invoke-direct {p0, v7, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    add-int/2addr v7, v9

    const/16 v10, 0xa

    invoke-direct {p0, v8, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    invoke-direct {p0, v7, v5, v8}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xc

    aget v10, v10, v11

    add-int/2addr v9, v10

    const/4 v10, 0x6

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    add-int/2addr v9, v6

    const/16 v10, 0xa

    invoke-direct {p0, v5, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    invoke-direct {p0, v9, v7, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v10

    add-int/2addr v6, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xd

    aget v10, v10, v11

    add-int/2addr v6, v10

    const/4 v10, 0x7

    invoke-direct {p0, v6, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v8

    const/16 v10, 0xa

    invoke-direct {p0, v7, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    invoke-direct {p0, v6, v9, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xe

    aget v10, v10, v11

    add-int/2addr v8, v10

    const/16 v10, 0x9

    invoke-direct {p0, v8, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v5

    const/16 v10, 0xa

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    invoke-direct {p0, v8, v6, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v10

    add-int/2addr v5, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xf

    aget v10, v10, v11

    add-int/2addr v5, v10

    const/16 v10, 0x8

    invoke-direct {p0, v5, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v7

    const/16 v10, 0xa

    invoke-direct {p0, v6, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v10

    add-int/2addr v0, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x5

    aget v10, v10, v11

    add-int/2addr v0, v10

    const v10, 0x50a28be6

    add-int/2addr v0, v10

    const/16 v10, 0x8

    invoke-direct {p0, v0, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    add-int/2addr v0, v4

    const/16 v10, 0xa

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v10

    add-int/2addr v4, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xe

    aget v10, v10, v11

    add-int/2addr v4, v10

    const v10, 0x50a28be6

    add-int/2addr v4, v10

    const/16 v10, 0x9

    invoke-direct {p0, v4, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    add-int/2addr v4, v3

    const/16 v10, 0xa

    invoke-direct {p0, v1, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    invoke-direct {p0, v4, v0, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v10

    add-int/2addr v3, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x7

    aget v10, v10, v11

    add-int/2addr v3, v10

    const v10, 0x50a28be6

    add-int/2addr v3, v10

    const/16 v10, 0x9

    invoke-direct {p0, v3, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    add-int/2addr v3, v2

    const/16 v10, 0xa

    invoke-direct {p0, v0, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v10

    add-int/2addr v2, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    add-int/2addr v2, v10

    const v10, 0x50a28be6

    add-int/2addr v2, v10

    const/16 v10, 0xb

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    add-int/2addr v2, v1

    const/16 v10, 0xa

    invoke-direct {p0, v4, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0x9

    aget v10, v10, v11

    add-int/2addr v1, v10

    const v10, 0x50a28be6

    add-int/2addr v1, v10

    const/16 v10, 0xd

    invoke-direct {p0, v1, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v10, 0xa

    invoke-direct {p0, v3, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v10

    add-int/2addr v0, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    add-int/2addr v0, v10

    const v10, 0x50a28be6

    add-int/2addr v0, v10

    const/16 v10, 0xf

    invoke-direct {p0, v0, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    add-int/2addr v0, v4

    const/16 v10, 0xa

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v10

    add-int/2addr v4, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xb

    aget v10, v10, v11

    add-int/2addr v4, v10

    const v10, 0x50a28be6

    add-int/2addr v4, v10

    const/16 v10, 0xf

    invoke-direct {p0, v4, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    add-int/2addr v4, v3

    const/16 v10, 0xa

    invoke-direct {p0, v1, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    invoke-direct {p0, v4, v0, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v10

    add-int/2addr v3, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x4

    aget v10, v10, v11

    add-int/2addr v3, v10

    const v10, 0x50a28be6

    add-int/2addr v3, v10

    const/4 v10, 0x5

    invoke-direct {p0, v3, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    add-int/2addr v3, v2

    const/16 v10, 0xa

    invoke-direct {p0, v0, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v10

    add-int/2addr v2, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xd

    aget v10, v10, v11

    add-int/2addr v2, v10

    const v10, 0x50a28be6

    add-int/2addr v2, v10

    const/4 v10, 0x7

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    add-int/2addr v2, v1

    const/16 v10, 0xa

    invoke-direct {p0, v4, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x6

    aget v10, v10, v11

    add-int/2addr v1, v10

    const v10, 0x50a28be6

    add-int/2addr v1, v10

    const/4 v10, 0x7

    invoke-direct {p0, v1, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v10, 0xa

    invoke-direct {p0, v3, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v10

    add-int/2addr v0, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xf

    aget v10, v10, v11

    add-int/2addr v0, v10

    const v10, 0x50a28be6

    add-int/2addr v0, v10

    const/16 v10, 0x8

    invoke-direct {p0, v0, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    add-int/2addr v0, v4

    const/16 v10, 0xa

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v10

    add-int/2addr v4, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0x8

    aget v10, v10, v11

    add-int/2addr v4, v10

    const v10, 0x50a28be6

    add-int/2addr v4, v10

    const/16 v10, 0xb

    invoke-direct {p0, v4, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    add-int/2addr v4, v3

    const/16 v10, 0xa

    invoke-direct {p0, v1, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    invoke-direct {p0, v4, v0, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v10

    add-int/2addr v3, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    add-int/2addr v3, v10

    const v10, 0x50a28be6

    add-int/2addr v3, v10

    const/16 v10, 0xe

    invoke-direct {p0, v3, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    add-int/2addr v3, v2

    const/16 v10, 0xa

    invoke-direct {p0, v0, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v10

    add-int/2addr v2, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xa

    aget v10, v10, v11

    add-int/2addr v2, v10

    const v10, 0x50a28be6

    add-int/2addr v2, v10

    const/16 v10, 0xe

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    add-int/2addr v2, v1

    const/16 v10, 0xa

    invoke-direct {p0, v4, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    add-int/2addr v1, v10

    const v10, 0x50a28be6

    add-int/2addr v1, v10

    const/16 v10, 0xc

    invoke-direct {p0, v1, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v10, 0xa

    invoke-direct {p0, v3, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v10

    add-int/2addr v0, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xc

    aget v10, v10, v11

    add-int/2addr v0, v10

    const v10, 0x50a28be6

    add-int/2addr v0, v10

    const/4 v10, 0x6

    invoke-direct {p0, v0, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    add-int/2addr v0, v4

    const/16 v10, 0xa

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    invoke-direct {p0, v5, v8, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v10

    add-int/2addr v7, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x7

    aget v10, v10, v11

    add-int/2addr v7, v10

    const v10, 0x5a827999

    add-int/2addr v7, v10

    const/4 v10, 0x7

    invoke-direct {p0, v7, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    add-int/2addr v7, v9

    const/16 v10, 0xa

    invoke-direct {p0, v8, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    invoke-direct {p0, v7, v5, v8}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x4

    aget v10, v10, v11

    add-int/2addr v9, v10

    const v10, 0x5a827999

    add-int/2addr v9, v10

    const/4 v10, 0x6

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    add-int/2addr v9, v6

    const/16 v10, 0xa

    invoke-direct {p0, v5, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    invoke-direct {p0, v9, v7, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v10

    add-int/2addr v6, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xd

    aget v10, v10, v11

    add-int/2addr v6, v10

    const v10, 0x5a827999

    add-int/2addr v6, v10

    const/16 v10, 0x8

    invoke-direct {p0, v6, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v8

    const/16 v10, 0xa

    invoke-direct {p0, v7, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    invoke-direct {p0, v6, v9, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    add-int/2addr v8, v10

    const v10, 0x5a827999

    add-int/2addr v8, v10

    const/16 v10, 0xd

    invoke-direct {p0, v8, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v5

    const/16 v10, 0xa

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    invoke-direct {p0, v8, v6, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v10

    add-int/2addr v5, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xa

    aget v10, v10, v11

    add-int/2addr v5, v10

    const v10, 0x5a827999

    add-int/2addr v5, v10

    const/16 v10, 0xb

    invoke-direct {p0, v5, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v7

    const/16 v10, 0xa

    invoke-direct {p0, v6, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    invoke-direct {p0, v5, v8, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v10

    add-int/2addr v7, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x6

    aget v10, v10, v11

    add-int/2addr v7, v10

    const v10, 0x5a827999

    add-int/2addr v7, v10

    const/16 v10, 0x9

    invoke-direct {p0, v7, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    add-int/2addr v7, v9

    const/16 v10, 0xa

    invoke-direct {p0, v8, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    invoke-direct {p0, v7, v5, v8}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xf

    aget v10, v10, v11

    add-int/2addr v9, v10

    const v10, 0x5a827999

    add-int/2addr v9, v10

    const/4 v10, 0x7

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    add-int/2addr v9, v6

    const/16 v10, 0xa

    invoke-direct {p0, v5, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    invoke-direct {p0, v9, v7, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v10

    add-int/2addr v6, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    add-int/2addr v6, v10

    const v10, 0x5a827999

    add-int/2addr v6, v10

    const/16 v10, 0xf

    invoke-direct {p0, v6, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v8

    const/16 v10, 0xa

    invoke-direct {p0, v7, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    invoke-direct {p0, v6, v9, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xc

    aget v10, v10, v11

    add-int/2addr v8, v10

    const v10, 0x5a827999

    add-int/2addr v8, v10

    const/4 v10, 0x7

    invoke-direct {p0, v8, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v5

    const/16 v10, 0xa

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    invoke-direct {p0, v8, v6, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v10

    add-int/2addr v5, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    add-int/2addr v5, v10

    const v10, 0x5a827999

    add-int/2addr v5, v10

    const/16 v10, 0xc

    invoke-direct {p0, v5, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v7

    const/16 v10, 0xa

    invoke-direct {p0, v6, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    invoke-direct {p0, v5, v8, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v10

    add-int/2addr v7, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0x9

    aget v10, v10, v11

    add-int/2addr v7, v10

    const v10, 0x5a827999

    add-int/2addr v7, v10

    const/16 v10, 0xf

    invoke-direct {p0, v7, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    add-int/2addr v7, v9

    const/16 v10, 0xa

    invoke-direct {p0, v8, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    invoke-direct {p0, v7, v5, v8}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x5

    aget v10, v10, v11

    add-int/2addr v9, v10

    const v10, 0x5a827999

    add-int/2addr v9, v10

    const/16 v10, 0x9

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    add-int/2addr v9, v6

    const/16 v10, 0xa

    invoke-direct {p0, v5, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    invoke-direct {p0, v9, v7, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v10

    add-int/2addr v6, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    add-int/2addr v6, v10

    const v10, 0x5a827999

    add-int/2addr v6, v10

    const/16 v10, 0xb

    invoke-direct {p0, v6, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v8

    const/16 v10, 0xa

    invoke-direct {p0, v7, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    invoke-direct {p0, v6, v9, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xe

    aget v10, v10, v11

    add-int/2addr v8, v10

    const v10, 0x5a827999

    add-int/2addr v8, v10

    const/4 v10, 0x7

    invoke-direct {p0, v8, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v5

    const/16 v10, 0xa

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    invoke-direct {p0, v8, v6, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v10

    add-int/2addr v5, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xb

    aget v10, v10, v11

    add-int/2addr v5, v10

    const v10, 0x5a827999

    add-int/2addr v5, v10

    const/16 v10, 0xd

    invoke-direct {p0, v5, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v7

    const/16 v10, 0xa

    invoke-direct {p0, v6, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    invoke-direct {p0, v5, v8, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v10

    add-int/2addr v7, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0x8

    aget v10, v10, v11

    add-int/2addr v7, v10

    const v10, 0x5a827999

    add-int/2addr v7, v10

    const/16 v10, 0xc

    invoke-direct {p0, v7, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    add-int/2addr v7, v9

    const/16 v10, 0xa

    invoke-direct {p0, v8, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v10

    add-int/2addr v4, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x6

    aget v10, v10, v11

    add-int/2addr v4, v10

    const v10, 0x5c4dd124

    add-int/2addr v4, v10

    const/16 v10, 0x9

    invoke-direct {p0, v4, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    add-int/2addr v4, v3

    const/16 v10, 0xa

    invoke-direct {p0, v1, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    invoke-direct {p0, v4, v0, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v10

    add-int/2addr v3, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xb

    aget v10, v10, v11

    add-int/2addr v3, v10

    const v10, 0x5c4dd124

    add-int/2addr v3, v10

    const/16 v10, 0xd

    invoke-direct {p0, v3, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    add-int/2addr v3, v2

    const/16 v10, 0xa

    invoke-direct {p0, v0, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v10

    add-int/2addr v2, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    add-int/2addr v2, v10

    const v10, 0x5c4dd124

    add-int/2addr v2, v10

    const/16 v10, 0xf

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    add-int/2addr v2, v1

    const/16 v10, 0xa

    invoke-direct {p0, v4, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x7

    aget v10, v10, v11

    add-int/2addr v1, v10

    const v10, 0x5c4dd124

    add-int/2addr v1, v10

    const/4 v10, 0x7

    invoke-direct {p0, v1, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v10, 0xa

    invoke-direct {p0, v3, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v10

    add-int/2addr v0, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    add-int/2addr v0, v10

    const v10, 0x5c4dd124

    add-int/2addr v0, v10

    const/16 v10, 0xc

    invoke-direct {p0, v0, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    add-int/2addr v0, v4

    const/16 v10, 0xa

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v10

    add-int/2addr v4, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xd

    aget v10, v10, v11

    add-int/2addr v4, v10

    const v10, 0x5c4dd124

    add-int/2addr v4, v10

    const/16 v10, 0x8

    invoke-direct {p0, v4, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    add-int/2addr v4, v3

    const/16 v10, 0xa

    invoke-direct {p0, v1, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    invoke-direct {p0, v4, v0, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v10

    add-int/2addr v3, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x5

    aget v10, v10, v11

    add-int/2addr v3, v10

    const v10, 0x5c4dd124

    add-int/2addr v3, v10

    const/16 v10, 0x9

    invoke-direct {p0, v3, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    add-int/2addr v3, v2

    const/16 v10, 0xa

    invoke-direct {p0, v0, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v10

    add-int/2addr v2, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xa

    aget v10, v10, v11

    add-int/2addr v2, v10

    const v10, 0x5c4dd124

    add-int/2addr v2, v10

    const/16 v10, 0xb

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    add-int/2addr v2, v1

    const/16 v10, 0xa

    invoke-direct {p0, v4, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xe

    aget v10, v10, v11

    add-int/2addr v1, v10

    const v10, 0x5c4dd124

    add-int/2addr v1, v10

    const/4 v10, 0x7

    invoke-direct {p0, v1, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v10, 0xa

    invoke-direct {p0, v3, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v10

    add-int/2addr v0, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xf

    aget v10, v10, v11

    add-int/2addr v0, v10

    const v10, 0x5c4dd124

    add-int/2addr v0, v10

    const/4 v10, 0x7

    invoke-direct {p0, v0, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    add-int/2addr v0, v4

    const/16 v10, 0xa

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v10

    add-int/2addr v4, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0x8

    aget v10, v10, v11

    add-int/2addr v4, v10

    const v10, 0x5c4dd124

    add-int/2addr v4, v10

    const/16 v10, 0xc

    invoke-direct {p0, v4, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    add-int/2addr v4, v3

    const/16 v10, 0xa

    invoke-direct {p0, v1, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    invoke-direct {p0, v4, v0, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v10

    add-int/2addr v3, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xc

    aget v10, v10, v11

    add-int/2addr v3, v10

    const v10, 0x5c4dd124

    add-int/2addr v3, v10

    const/4 v10, 0x7

    invoke-direct {p0, v3, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    add-int/2addr v3, v2

    const/16 v10, 0xa

    invoke-direct {p0, v0, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v10

    add-int/2addr v2, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x4

    aget v10, v10, v11

    add-int/2addr v2, v10

    const v10, 0x5c4dd124

    add-int/2addr v2, v10

    const/4 v10, 0x6

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    add-int/2addr v2, v1

    const/16 v10, 0xa

    invoke-direct {p0, v4, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0x9

    aget v10, v10, v11

    add-int/2addr v1, v10

    const v10, 0x5c4dd124

    add-int/2addr v1, v10

    const/16 v10, 0xf

    invoke-direct {p0, v1, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v10, 0xa

    invoke-direct {p0, v3, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v10

    add-int/2addr v0, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    add-int/2addr v0, v10

    const v10, 0x5c4dd124

    add-int/2addr v0, v10

    const/16 v10, 0xd

    invoke-direct {p0, v0, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    add-int/2addr v0, v4

    const/16 v10, 0xa

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v10

    add-int/2addr v4, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    add-int/2addr v4, v10

    const v10, 0x5c4dd124

    add-int/2addr v4, v10

    const/16 v10, 0xb

    invoke-direct {p0, v4, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    add-int/2addr v4, v3

    const/16 v10, 0xa

    invoke-direct {p0, v1, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    invoke-direct {p0, v7, v5, v8}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    add-int/2addr v9, v10

    const v10, 0x6ed9eba1

    add-int/2addr v9, v10

    const/16 v10, 0xb

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    add-int/2addr v9, v6

    const/16 v10, 0xa

    invoke-direct {p0, v5, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    invoke-direct {p0, v9, v7, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v10

    add-int/2addr v6, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xa

    aget v10, v10, v11

    add-int/2addr v6, v10

    const v10, 0x6ed9eba1

    add-int/2addr v6, v10

    const/16 v10, 0xd

    invoke-direct {p0, v6, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v8

    const/16 v10, 0xa

    invoke-direct {p0, v7, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    invoke-direct {p0, v6, v9, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xe

    aget v10, v10, v11

    add-int/2addr v8, v10

    const v10, 0x6ed9eba1

    add-int/2addr v8, v10

    const/4 v10, 0x6

    invoke-direct {p0, v8, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v5

    const/16 v10, 0xa

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    invoke-direct {p0, v8, v6, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v10

    add-int/2addr v5, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x4

    aget v10, v10, v11

    add-int/2addr v5, v10

    const v10, 0x6ed9eba1

    add-int/2addr v5, v10

    const/4 v10, 0x7

    invoke-direct {p0, v5, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v7

    const/16 v10, 0xa

    invoke-direct {p0, v6, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    invoke-direct {p0, v5, v8, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v10

    add-int/2addr v7, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0x9

    aget v10, v10, v11

    add-int/2addr v7, v10

    const v10, 0x6ed9eba1

    add-int/2addr v7, v10

    const/16 v10, 0xe

    invoke-direct {p0, v7, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    add-int/2addr v7, v9

    const/16 v10, 0xa

    invoke-direct {p0, v8, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    invoke-direct {p0, v7, v5, v8}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xf

    aget v10, v10, v11

    add-int/2addr v9, v10

    const v10, 0x6ed9eba1

    add-int/2addr v9, v10

    const/16 v10, 0x9

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    add-int/2addr v9, v6

    const/16 v10, 0xa

    invoke-direct {p0, v5, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    invoke-direct {p0, v9, v7, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v10

    add-int/2addr v6, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0x8

    aget v10, v10, v11

    add-int/2addr v6, v10

    const v10, 0x6ed9eba1

    add-int/2addr v6, v10

    const/16 v10, 0xd

    invoke-direct {p0, v6, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v8

    const/16 v10, 0xa

    invoke-direct {p0, v7, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    invoke-direct {p0, v6, v9, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    add-int/2addr v8, v10

    const v10, 0x6ed9eba1

    add-int/2addr v8, v10

    const/16 v10, 0xf

    invoke-direct {p0, v8, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v5

    const/16 v10, 0xa

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    invoke-direct {p0, v8, v6, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v10

    add-int/2addr v5, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    add-int/2addr v5, v10

    const v10, 0x6ed9eba1

    add-int/2addr v5, v10

    const/16 v10, 0xe

    invoke-direct {p0, v5, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v7

    const/16 v10, 0xa

    invoke-direct {p0, v6, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    invoke-direct {p0, v5, v8, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v10

    add-int/2addr v7, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x7

    aget v10, v10, v11

    add-int/2addr v7, v10

    const v10, 0x6ed9eba1

    add-int/2addr v7, v10

    const/16 v10, 0x8

    invoke-direct {p0, v7, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    add-int/2addr v7, v9

    const/16 v10, 0xa

    invoke-direct {p0, v8, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    invoke-direct {p0, v7, v5, v8}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    add-int/2addr v9, v10

    const v10, 0x6ed9eba1

    add-int/2addr v9, v10

    const/16 v10, 0xd

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    add-int/2addr v9, v6

    const/16 v10, 0xa

    invoke-direct {p0, v5, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    invoke-direct {p0, v9, v7, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v10

    add-int/2addr v6, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x6

    aget v10, v10, v11

    add-int/2addr v6, v10

    const v10, 0x6ed9eba1

    add-int/2addr v6, v10

    const/4 v10, 0x6

    invoke-direct {p0, v6, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v8

    const/16 v10, 0xa

    invoke-direct {p0, v7, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    invoke-direct {p0, v6, v9, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xd

    aget v10, v10, v11

    add-int/2addr v8, v10

    const v10, 0x6ed9eba1

    add-int/2addr v8, v10

    const/4 v10, 0x5

    invoke-direct {p0, v8, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v5

    const/16 v10, 0xa

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    invoke-direct {p0, v8, v6, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v10

    add-int/2addr v5, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xb

    aget v10, v10, v11

    add-int/2addr v5, v10

    const v10, 0x6ed9eba1

    add-int/2addr v5, v10

    const/16 v10, 0xc

    invoke-direct {p0, v5, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v7

    const/16 v10, 0xa

    invoke-direct {p0, v6, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    invoke-direct {p0, v5, v8, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v10

    add-int/2addr v7, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x5

    aget v10, v10, v11

    add-int/2addr v7, v10

    const v10, 0x6ed9eba1

    add-int/2addr v7, v10

    const/4 v10, 0x7

    invoke-direct {p0, v7, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    add-int/2addr v7, v9

    const/16 v10, 0xa

    invoke-direct {p0, v8, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    invoke-direct {p0, v7, v5, v8}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xc

    aget v10, v10, v11

    add-int/2addr v9, v10

    const v10, 0x6ed9eba1

    add-int/2addr v9, v10

    const/4 v10, 0x5

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    add-int/2addr v9, v6

    const/16 v10, 0xa

    invoke-direct {p0, v5, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    invoke-direct {p0, v4, v0, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v10

    add-int/2addr v3, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xf

    aget v10, v10, v11

    add-int/2addr v3, v10

    const v10, 0x6d703ef3

    add-int/2addr v3, v10

    const/16 v10, 0x9

    invoke-direct {p0, v3, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    add-int/2addr v3, v2

    const/16 v10, 0xa

    invoke-direct {p0, v0, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v10

    add-int/2addr v2, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x5

    aget v10, v10, v11

    add-int/2addr v2, v10

    const v10, 0x6d703ef3

    add-int/2addr v2, v10

    const/4 v10, 0x7

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    add-int/2addr v2, v1

    const/16 v10, 0xa

    invoke-direct {p0, v4, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    add-int/2addr v1, v10

    const v10, 0x6d703ef3

    add-int/2addr v1, v10

    const/16 v10, 0xf

    invoke-direct {p0, v1, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v10, 0xa

    invoke-direct {p0, v3, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v10

    add-int/2addr v0, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    add-int/2addr v0, v10

    const v10, 0x6d703ef3

    add-int/2addr v0, v10

    const/16 v10, 0xb

    invoke-direct {p0, v0, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    add-int/2addr v0, v4

    const/16 v10, 0xa

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v10

    add-int/2addr v4, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x7

    aget v10, v10, v11

    add-int/2addr v4, v10

    const v10, 0x6d703ef3

    add-int/2addr v4, v10

    const/16 v10, 0x8

    invoke-direct {p0, v4, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    add-int/2addr v4, v3

    const/16 v10, 0xa

    invoke-direct {p0, v1, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    invoke-direct {p0, v4, v0, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v10

    add-int/2addr v3, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xe

    aget v10, v10, v11

    add-int/2addr v3, v10

    const v10, 0x6d703ef3

    add-int/2addr v3, v10

    const/4 v10, 0x6

    invoke-direct {p0, v3, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    add-int/2addr v3, v2

    const/16 v10, 0xa

    invoke-direct {p0, v0, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v10

    add-int/2addr v2, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x6

    aget v10, v10, v11

    add-int/2addr v2, v10

    const v10, 0x6d703ef3

    add-int/2addr v2, v10

    const/4 v10, 0x6

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    add-int/2addr v2, v1

    const/16 v10, 0xa

    invoke-direct {p0, v4, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0x9

    aget v10, v10, v11

    add-int/2addr v1, v10

    const v10, 0x6d703ef3

    add-int/2addr v1, v10

    const/16 v10, 0xe

    invoke-direct {p0, v1, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v10, 0xa

    invoke-direct {p0, v3, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v10

    add-int/2addr v0, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xb

    aget v10, v10, v11

    add-int/2addr v0, v10

    const v10, 0x6d703ef3

    add-int/2addr v0, v10

    const/16 v10, 0xc

    invoke-direct {p0, v0, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    add-int/2addr v0, v4

    const/16 v10, 0xa

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v10

    add-int/2addr v4, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0x8

    aget v10, v10, v11

    add-int/2addr v4, v10

    const v10, 0x6d703ef3

    add-int/2addr v4, v10

    const/16 v10, 0xd

    invoke-direct {p0, v4, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    add-int/2addr v4, v3

    const/16 v10, 0xa

    invoke-direct {p0, v1, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    invoke-direct {p0, v4, v0, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v10

    add-int/2addr v3, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xc

    aget v10, v10, v11

    add-int/2addr v3, v10

    const v10, 0x6d703ef3

    add-int/2addr v3, v10

    const/4 v10, 0x5

    invoke-direct {p0, v3, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    add-int/2addr v3, v2

    const/16 v10, 0xa

    invoke-direct {p0, v0, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v10

    add-int/2addr v2, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    add-int/2addr v2, v10

    const v10, 0x6d703ef3

    add-int/2addr v2, v10

    const/16 v10, 0xe

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    add-int/2addr v2, v1

    const/16 v10, 0xa

    invoke-direct {p0, v4, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xa

    aget v10, v10, v11

    add-int/2addr v1, v10

    const v10, 0x6d703ef3

    add-int/2addr v1, v10

    const/16 v10, 0xd

    invoke-direct {p0, v1, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v10, 0xa

    invoke-direct {p0, v3, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v10

    add-int/2addr v0, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    add-int/2addr v0, v10

    const v10, 0x6d703ef3

    add-int/2addr v0, v10

    const/16 v10, 0xd

    invoke-direct {p0, v0, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    add-int/2addr v0, v4

    const/16 v10, 0xa

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v10

    add-int/2addr v4, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x4

    aget v10, v10, v11

    add-int/2addr v4, v10

    const v10, 0x6d703ef3

    add-int/2addr v4, v10

    const/4 v10, 0x7

    invoke-direct {p0, v4, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    add-int/2addr v4, v3

    const/16 v10, 0xa

    invoke-direct {p0, v1, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    invoke-direct {p0, v4, v0, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v10

    add-int/2addr v3, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xd

    aget v10, v10, v11

    add-int/2addr v3, v10

    const v10, 0x6d703ef3

    add-int/2addr v3, v10

    const/4 v10, 0x5

    invoke-direct {p0, v3, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    add-int/2addr v3, v2

    const/16 v10, 0xa

    invoke-direct {p0, v0, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    invoke-direct {p0, v9, v7, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v10

    add-int/2addr v6, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    add-int/2addr v6, v10

    const v10, -0x70e44324

    add-int/2addr v6, v10

    const/16 v10, 0xb

    invoke-direct {p0, v6, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v8

    const/16 v10, 0xa

    invoke-direct {p0, v7, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    invoke-direct {p0, v6, v9, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0x9

    aget v10, v10, v11

    add-int/2addr v8, v10

    const v10, -0x70e44324

    add-int/2addr v8, v10

    const/16 v10, 0xc

    invoke-direct {p0, v8, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v5

    const/16 v10, 0xa

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    invoke-direct {p0, v8, v6, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v10

    add-int/2addr v5, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xb

    aget v10, v10, v11

    add-int/2addr v5, v10

    const v10, -0x70e44324

    add-int/2addr v5, v10

    const/16 v10, 0xe

    invoke-direct {p0, v5, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v7

    const/16 v10, 0xa

    invoke-direct {p0, v6, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    invoke-direct {p0, v5, v8, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v10

    add-int/2addr v7, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xa

    aget v10, v10, v11

    add-int/2addr v7, v10

    const v10, -0x70e44324

    add-int/2addr v7, v10

    const/16 v10, 0xf

    invoke-direct {p0, v7, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    add-int/2addr v7, v9

    const/16 v10, 0xa

    invoke-direct {p0, v8, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    invoke-direct {p0, v7, v5, v8}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    add-int/2addr v9, v10

    const v10, -0x70e44324

    add-int/2addr v9, v10

    const/16 v10, 0xe

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    add-int/2addr v9, v6

    const/16 v10, 0xa

    invoke-direct {p0, v5, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    invoke-direct {p0, v9, v7, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v10

    add-int/2addr v6, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0x8

    aget v10, v10, v11

    add-int/2addr v6, v10

    const v10, -0x70e44324

    add-int/2addr v6, v10

    const/16 v10, 0xf

    invoke-direct {p0, v6, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v8

    const/16 v10, 0xa

    invoke-direct {p0, v7, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    invoke-direct {p0, v6, v9, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xc

    aget v10, v10, v11

    add-int/2addr v8, v10

    const v10, -0x70e44324

    add-int/2addr v8, v10

    const/16 v10, 0x9

    invoke-direct {p0, v8, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v5

    const/16 v10, 0xa

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    invoke-direct {p0, v8, v6, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v10

    add-int/2addr v5, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x4

    aget v10, v10, v11

    add-int/2addr v5, v10

    const v10, -0x70e44324

    add-int/2addr v5, v10

    const/16 v10, 0x8

    invoke-direct {p0, v5, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v7

    const/16 v10, 0xa

    invoke-direct {p0, v6, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    invoke-direct {p0, v5, v8, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v10

    add-int/2addr v7, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xd

    aget v10, v10, v11

    add-int/2addr v7, v10

    const v10, -0x70e44324

    add-int/2addr v7, v10

    const/16 v10, 0x9

    invoke-direct {p0, v7, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    add-int/2addr v7, v9

    const/16 v10, 0xa

    invoke-direct {p0, v8, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    invoke-direct {p0, v7, v5, v8}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    add-int/2addr v9, v10

    const v10, -0x70e44324

    add-int/2addr v9, v10

    const/16 v10, 0xe

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    add-int/2addr v9, v6

    const/16 v10, 0xa

    invoke-direct {p0, v5, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    invoke-direct {p0, v9, v7, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v10

    add-int/2addr v6, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x7

    aget v10, v10, v11

    add-int/2addr v6, v10

    const v10, -0x70e44324

    add-int/2addr v6, v10

    const/4 v10, 0x5

    invoke-direct {p0, v6, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v8

    const/16 v10, 0xa

    invoke-direct {p0, v7, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    invoke-direct {p0, v6, v9, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xf

    aget v10, v10, v11

    add-int/2addr v8, v10

    const v10, -0x70e44324

    add-int/2addr v8, v10

    const/4 v10, 0x6

    invoke-direct {p0, v8, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v5

    const/16 v10, 0xa

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    invoke-direct {p0, v8, v6, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v10

    add-int/2addr v5, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xe

    aget v10, v10, v11

    add-int/2addr v5, v10

    const v10, -0x70e44324

    add-int/2addr v5, v10

    const/16 v10, 0x8

    invoke-direct {p0, v5, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v7

    const/16 v10, 0xa

    invoke-direct {p0, v6, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    invoke-direct {p0, v5, v8, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v10

    add-int/2addr v7, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x5

    aget v10, v10, v11

    add-int/2addr v7, v10

    const v10, -0x70e44324

    add-int/2addr v7, v10

    const/4 v10, 0x6

    invoke-direct {p0, v7, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    add-int/2addr v7, v9

    const/16 v10, 0xa

    invoke-direct {p0, v8, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    invoke-direct {p0, v7, v5, v8}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x6

    aget v10, v10, v11

    add-int/2addr v9, v10

    const v10, -0x70e44324

    add-int/2addr v9, v10

    const/4 v10, 0x5

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    add-int/2addr v9, v6

    const/16 v10, 0xa

    invoke-direct {p0, v5, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    invoke-direct {p0, v9, v7, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v10

    add-int/2addr v6, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    add-int/2addr v6, v10

    const v10, -0x70e44324

    add-int/2addr v6, v10

    const/16 v10, 0xc

    invoke-direct {p0, v6, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v8

    const/16 v10, 0xa

    invoke-direct {p0, v7, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    invoke-direct {p0, v3, v4, v0}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v10

    add-int/2addr v2, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0x8

    aget v10, v10, v11

    add-int/2addr v2, v10

    const v10, 0x7a6d76e9

    add-int/2addr v2, v10

    const/16 v10, 0xf

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    add-int/2addr v2, v1

    const/16 v10, 0xa

    invoke-direct {p0, v4, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x6

    aget v10, v10, v11

    add-int/2addr v1, v10

    const v10, 0x7a6d76e9

    add-int/2addr v1, v10

    const/4 v10, 0x5

    invoke-direct {p0, v1, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v10, 0xa

    invoke-direct {p0, v3, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v10

    add-int/2addr v0, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x4

    aget v10, v10, v11

    add-int/2addr v0, v10

    const v10, 0x7a6d76e9

    add-int/2addr v0, v10

    const/16 v10, 0x8

    invoke-direct {p0, v0, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    add-int/2addr v0, v4

    const/16 v10, 0xa

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v10

    add-int/2addr v4, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    add-int/2addr v4, v10

    const v10, 0x7a6d76e9

    add-int/2addr v4, v10

    const/16 v10, 0xb

    invoke-direct {p0, v4, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    add-int/2addr v4, v3

    const/16 v10, 0xa

    invoke-direct {p0, v1, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    invoke-direct {p0, v4, v0, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v10

    add-int/2addr v3, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    add-int/2addr v3, v10

    const v10, 0x7a6d76e9

    add-int/2addr v3, v10

    const/16 v10, 0xe

    invoke-direct {p0, v3, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    add-int/2addr v3, v2

    const/16 v10, 0xa

    invoke-direct {p0, v0, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v10

    add-int/2addr v2, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xb

    aget v10, v10, v11

    add-int/2addr v2, v10

    const v10, 0x7a6d76e9

    add-int/2addr v2, v10

    const/16 v10, 0xe

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    add-int/2addr v2, v1

    const/16 v10, 0xa

    invoke-direct {p0, v4, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xf

    aget v10, v10, v11

    add-int/2addr v1, v10

    const v10, 0x7a6d76e9

    add-int/2addr v1, v10

    const/4 v10, 0x6

    invoke-direct {p0, v1, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v10, 0xa

    invoke-direct {p0, v3, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v10

    add-int/2addr v0, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    add-int/2addr v0, v10

    const v10, 0x7a6d76e9

    add-int/2addr v0, v10

    const/16 v10, 0xe

    invoke-direct {p0, v0, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    add-int/2addr v0, v4

    const/16 v10, 0xa

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v10

    add-int/2addr v4, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x5

    aget v10, v10, v11

    add-int/2addr v4, v10

    const v10, 0x7a6d76e9

    add-int/2addr v4, v10

    const/4 v10, 0x6

    invoke-direct {p0, v4, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    add-int/2addr v4, v3

    const/16 v10, 0xa

    invoke-direct {p0, v1, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    invoke-direct {p0, v4, v0, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v10

    add-int/2addr v3, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xc

    aget v10, v10, v11

    add-int/2addr v3, v10

    const v10, 0x7a6d76e9

    add-int/2addr v3, v10

    const/16 v10, 0x9

    invoke-direct {p0, v3, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    add-int/2addr v3, v2

    const/16 v10, 0xa

    invoke-direct {p0, v0, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v10

    add-int/2addr v2, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    add-int/2addr v2, v10

    const v10, 0x7a6d76e9

    add-int/2addr v2, v10

    const/16 v10, 0xc

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    add-int/2addr v2, v1

    const/16 v10, 0xa

    invoke-direct {p0, v4, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xd

    aget v10, v10, v11

    add-int/2addr v1, v10

    const v10, 0x7a6d76e9

    add-int/2addr v1, v10

    const/16 v10, 0x9

    invoke-direct {p0, v1, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v10, 0xa

    invoke-direct {p0, v3, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v10

    add-int/2addr v0, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0x9

    aget v10, v10, v11

    add-int/2addr v0, v10

    const v10, 0x7a6d76e9

    add-int/2addr v0, v10

    const/16 v10, 0xc

    invoke-direct {p0, v0, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    add-int/2addr v0, v4

    const/16 v10, 0xa

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v10

    add-int/2addr v4, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x7

    aget v10, v10, v11

    add-int/2addr v4, v10

    const v10, 0x7a6d76e9

    add-int/2addr v4, v10

    const/4 v10, 0x5

    invoke-direct {p0, v4, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    add-int/2addr v4, v3

    const/16 v10, 0xa

    invoke-direct {p0, v1, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    invoke-direct {p0, v4, v0, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v10

    add-int/2addr v3, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xa

    aget v10, v10, v11

    add-int/2addr v3, v10

    const v10, 0x7a6d76e9

    add-int/2addr v3, v10

    const/16 v10, 0xf

    invoke-direct {p0, v3, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    add-int/2addr v3, v2

    const/16 v10, 0xa

    invoke-direct {p0, v0, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v10

    add-int/2addr v2, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xe

    aget v10, v10, v11

    add-int/2addr v2, v10

    const v10, 0x7a6d76e9

    add-int/2addr v2, v10

    const/16 v10, 0x8

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    add-int/2addr v2, v1

    const/16 v10, 0xa

    invoke-direct {p0, v4, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    invoke-direct {p0, v6, v9, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x4

    aget v10, v10, v11

    add-int/2addr v8, v10

    const v10, -0x56ac02b2

    add-int/2addr v8, v10

    const/16 v10, 0x9

    invoke-direct {p0, v8, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v5

    const/16 v10, 0xa

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    invoke-direct {p0, v8, v6, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v10

    add-int/2addr v5, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    add-int/2addr v5, v10

    const v10, -0x56ac02b2

    add-int/2addr v5, v10

    const/16 v10, 0xf

    invoke-direct {p0, v5, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v7

    const/16 v10, 0xa

    invoke-direct {p0, v6, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    invoke-direct {p0, v5, v8, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v10

    add-int/2addr v7, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x5

    aget v10, v10, v11

    add-int/2addr v7, v10

    const v10, -0x56ac02b2

    add-int/2addr v7, v10

    const/4 v10, 0x5

    invoke-direct {p0, v7, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    add-int/2addr v7, v9

    const/16 v10, 0xa

    invoke-direct {p0, v8, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    invoke-direct {p0, v7, v5, v8}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0x9

    aget v10, v10, v11

    add-int/2addr v9, v10

    const v10, -0x56ac02b2

    add-int/2addr v9, v10

    const/16 v10, 0xb

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    add-int/2addr v9, v6

    const/16 v10, 0xa

    invoke-direct {p0, v5, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    invoke-direct {p0, v9, v7, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v10

    add-int/2addr v6, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x7

    aget v10, v10, v11

    add-int/2addr v6, v10

    const v10, -0x56ac02b2

    add-int/2addr v6, v10

    const/4 v10, 0x6

    invoke-direct {p0, v6, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v8

    const/16 v10, 0xa

    invoke-direct {p0, v7, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    invoke-direct {p0, v6, v9, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xc

    aget v10, v10, v11

    add-int/2addr v8, v10

    const v10, -0x56ac02b2

    add-int/2addr v8, v10

    const/16 v10, 0x8

    invoke-direct {p0, v8, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v5

    const/16 v10, 0xa

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    invoke-direct {p0, v8, v6, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v10

    add-int/2addr v5, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    add-int/2addr v5, v10

    const v10, -0x56ac02b2

    add-int/2addr v5, v10

    const/16 v10, 0xd

    invoke-direct {p0, v5, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v7

    const/16 v10, 0xa

    invoke-direct {p0, v6, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    invoke-direct {p0, v5, v8, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v10

    add-int/2addr v7, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xa

    aget v10, v10, v11

    add-int/2addr v7, v10

    const v10, -0x56ac02b2

    add-int/2addr v7, v10

    const/16 v10, 0xc

    invoke-direct {p0, v7, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    add-int/2addr v7, v9

    const/16 v10, 0xa

    invoke-direct {p0, v8, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    invoke-direct {p0, v7, v5, v8}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xe

    aget v10, v10, v11

    add-int/2addr v9, v10

    const v10, -0x56ac02b2

    add-int/2addr v9, v10

    const/4 v10, 0x5

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    add-int/2addr v9, v6

    const/16 v10, 0xa

    invoke-direct {p0, v5, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    invoke-direct {p0, v9, v7, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v10

    add-int/2addr v6, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    add-int/2addr v6, v10

    const v10, -0x56ac02b2

    add-int/2addr v6, v10

    const/16 v10, 0xc

    invoke-direct {p0, v6, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v8

    const/16 v10, 0xa

    invoke-direct {p0, v7, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    invoke-direct {p0, v6, v9, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    add-int/2addr v8, v10

    const v10, -0x56ac02b2

    add-int/2addr v8, v10

    const/16 v10, 0xd

    invoke-direct {p0, v8, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v5

    const/16 v10, 0xa

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    invoke-direct {p0, v8, v6, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v10

    add-int/2addr v5, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0x8

    aget v10, v10, v11

    add-int/2addr v5, v10

    const v10, -0x56ac02b2

    add-int/2addr v5, v10

    const/16 v10, 0xe

    invoke-direct {p0, v5, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v7

    const/16 v10, 0xa

    invoke-direct {p0, v6, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    invoke-direct {p0, v5, v8, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v10

    add-int/2addr v7, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xb

    aget v10, v10, v11

    add-int/2addr v7, v10

    const v10, -0x56ac02b2

    add-int/2addr v7, v10

    const/16 v10, 0xb

    invoke-direct {p0, v7, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    add-int/2addr v7, v9

    const/16 v10, 0xa

    invoke-direct {p0, v8, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    invoke-direct {p0, v7, v5, v8}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x6

    aget v10, v10, v11

    add-int/2addr v9, v10

    const v10, -0x56ac02b2

    add-int/2addr v9, v10

    const/16 v10, 0x8

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    add-int/2addr v9, v6

    const/16 v10, 0xa

    invoke-direct {p0, v5, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    invoke-direct {p0, v9, v7, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v10

    add-int/2addr v6, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xf

    aget v10, v10, v11

    add-int/2addr v6, v10

    const v10, -0x56ac02b2

    add-int/2addr v6, v10

    const/4 v10, 0x5

    invoke-direct {p0, v6, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v8

    const/16 v10, 0xa

    invoke-direct {p0, v7, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    invoke-direct {p0, v6, v9, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xd

    aget v10, v10, v11

    add-int/2addr v8, v10

    const v10, -0x56ac02b2

    add-int/2addr v8, v10

    const/4 v10, 0x6

    invoke-direct {p0, v8, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v5

    const/16 v10, 0xa

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xc

    aget v10, v10, v11

    add-int/2addr v1, v10

    const/16 v10, 0x8

    invoke-direct {p0, v1, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v10, 0xa

    invoke-direct {p0, v3, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v10

    add-int/2addr v0, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xf

    aget v10, v10, v11

    add-int/2addr v0, v10

    const/4 v10, 0x5

    invoke-direct {p0, v0, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    add-int/2addr v0, v4

    const/16 v10, 0xa

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v10

    add-int/2addr v4, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xa

    aget v10, v10, v11

    add-int/2addr v4, v10

    const/16 v10, 0xc

    invoke-direct {p0, v4, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    add-int/2addr v4, v3

    const/16 v10, 0xa

    invoke-direct {p0, v1, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    invoke-direct {p0, v4, v0, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v10

    add-int/2addr v3, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x4

    aget v10, v10, v11

    add-int/2addr v3, v10

    const/16 v10, 0x9

    invoke-direct {p0, v3, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    add-int/2addr v3, v2

    const/16 v10, 0xa

    invoke-direct {p0, v0, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v10

    add-int/2addr v2, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    add-int/2addr v2, v10

    const/16 v10, 0xc

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    add-int/2addr v2, v1

    const/16 v10, 0xa

    invoke-direct {p0, v4, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x5

    aget v10, v10, v11

    add-int/2addr v1, v10

    const/4 v10, 0x5

    invoke-direct {p0, v1, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v10, 0xa

    invoke-direct {p0, v3, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v10

    add-int/2addr v0, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0x8

    aget v10, v10, v11

    add-int/2addr v0, v10

    const/16 v10, 0xe

    invoke-direct {p0, v0, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    add-int/2addr v0, v4

    const/16 v10, 0xa

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v10

    add-int/2addr v4, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x7

    aget v10, v10, v11

    add-int/2addr v4, v10

    const/4 v10, 0x6

    invoke-direct {p0, v4, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    add-int/2addr v4, v3

    const/16 v10, 0xa

    invoke-direct {p0, v1, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    invoke-direct {p0, v4, v0, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v10

    add-int/2addr v3, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x6

    aget v10, v10, v11

    add-int/2addr v3, v10

    const/16 v10, 0x8

    invoke-direct {p0, v3, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    add-int/2addr v3, v2

    const/16 v10, 0xa

    invoke-direct {p0, v0, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v10

    add-int/2addr v2, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    add-int/2addr v2, v10

    const/16 v10, 0xd

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    add-int/2addr v2, v1

    const/16 v10, 0xa

    invoke-direct {p0, v4, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xd

    aget v10, v10, v11

    add-int/2addr v1, v10

    const/4 v10, 0x6

    invoke-direct {p0, v1, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v10, 0xa

    invoke-direct {p0, v3, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v10

    add-int/2addr v0, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xe

    aget v10, v10, v11

    add-int/2addr v0, v10

    const/4 v10, 0x5

    invoke-direct {p0, v0, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    add-int/2addr v0, v4

    const/16 v10, 0xa

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v10

    add-int/2addr v4, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    add-int/2addr v4, v10

    const/16 v10, 0xf

    invoke-direct {p0, v4, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    add-int/2addr v4, v3

    const/16 v10, 0xa

    invoke-direct {p0, v1, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    invoke-direct {p0, v4, v0, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v10

    add-int/2addr v3, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    add-int/2addr v3, v10

    const/16 v10, 0xd

    invoke-direct {p0, v3, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    add-int/2addr v3, v2

    const/16 v10, 0xa

    invoke-direct {p0, v0, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    invoke-direct {p0, v3, v4, v0}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v10

    add-int/2addr v2, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0x9

    aget v10, v10, v11

    add-int/2addr v2, v10

    const/16 v10, 0xb

    invoke-direct {p0, v2, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    add-int/2addr v2, v1

    const/16 v10, 0xa

    invoke-direct {p0, v4, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v11, 0xb

    aget v10, v10, v11

    add-int/2addr v1, v10

    const/16 v10, 0xb

    invoke-direct {p0, v1, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v10, 0xa

    invoke-direct {p0, v3, v10}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    iget v10, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H1:I

    add-int/2addr v6, v10

    add-int/2addr v3, v6

    iget v6, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H2:I

    add-int/2addr v6, v9

    add-int/2addr v4, v6

    iput v4, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H1:I

    iget v4, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H3:I

    add-int/2addr v4, v7

    add-int/2addr v0, v4

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H2:I

    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H4:I

    add-int/2addr v0, v5

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H3:I

    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H0:I

    add-int/2addr v0, v8

    add-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H4:I

    iput v3, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H0:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->xOff:I

    const/4 v0, 0x0

    :goto_114c
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    array-length v1, v1

    if-ne v0, v1, :cond_1152

    return-void

    :cond_1152
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_114c
.end method

.method protected processLength(J)V
    .registers 8

    const/16 v4, 0xe

    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->xOff:I

    if-gt v0, v4, :cond_1a

    :goto_6
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v1, v2

    aput v1, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v1, 0xf

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aput v2, v0, v1

    return-void

    :cond_1a
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->processBlock()V

    goto :goto_6
.end method

.method protected processWord([BI)V
    .registers 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->xOff:I

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    aput v2, v0, v1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->xOff:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_30

    :goto_2f
    return-void

    :cond_30
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->processBlock()V

    goto :goto_2f
.end method

.method public reset()V
    .registers 4

    const/4 v1, 0x0

    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    const v0, 0x67452301

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H0:I

    const v0, -0x10325477

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H1:I

    const v0, -0x67452302

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H2:I

    const v0, 0x10325476

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H3:I

    const v0, -0x3c2d1e10

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->H4:I

    iput v1, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->xOff:I

    move v0, v1

    :goto_20
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    array-length v2, v2

    if-ne v0, v2, :cond_26

    return-void

    :cond_26
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->X:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_20
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .registers 2

    check-cast p1, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;->copyIn(Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;)V

    return-void
.end method
