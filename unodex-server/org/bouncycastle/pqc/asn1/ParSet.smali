.class public Lorg/bouncycastle/pqc/asn1/ParSet;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "Unknown"


# static fields
.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private h:[I

.field private k:[I

.field private t:I

.field private w:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/asn1/ParSet;->ZERO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(I[I[I[I)V
    .registers 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/asn1/ParSet;->t:I

    iput-object p2, p0, Lorg/bouncycastle/pqc/asn1/ParSet;->h:[I

    iput-object p3, p0, Lorg/bouncycastle/pqc/asn1/ParSet;->w:[I

    iput-object p4, p0, Lorg/bouncycastle/pqc/asn1/ParSet;->k:[I

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 8

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_41

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/asn1/ParSet;->checkBigIntegerInIntRangeAndPositive(Ljava/math/BigInteger;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/asn1/ParSet;->t:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    iget v5, p0, Lorg/bouncycastle/pqc/asn1/ParSet;->t:I

    if-eq v4, v5, :cond_5f

    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid size of sequences"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sie of seqOfParams = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5f
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    iget v5, p0, Lorg/bouncycastle/pqc/asn1/ParSet;->t:I

    if-ne v4, v5, :cond_38

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    iget v5, p0, Lorg/bouncycastle/pqc/asn1/ParSet;->t:I

    if-ne v4, v5, :cond_38

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    new-array v4, v4, [I

    iput-object v4, p0, Lorg/bouncycastle/pqc/asn1/ParSet;->h:[I

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    new-array v4, v4, [I

    iput-object v4, p0, Lorg/bouncycastle/pqc/asn1/ParSet;->w:[I

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    new-array v4, v4, [I

    iput-object v4, p0, Lorg/bouncycastle/pqc/asn1/ParSet;->k:[I

    move v4, v3

    :goto_88
    iget v3, p0, Lorg/bouncycastle/pqc/asn1/ParSet;->t:I

    if-lt v4, v3, :cond_8d

    return-void

    :cond_8d
    iget-object v5, p0, Lorg/bouncycastle/pqc/asn1/ParSet;->h:[I

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/asn1/ParSet;->checkBigIntegerInIntRangeAndPositive(Ljava/math/BigInteger;)I

    move-result v3

    aput v3, v5, v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/asn1/ParSet;->w:[I

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/asn1/ParSet;->checkBigIntegerInIntRangeAndPositive(Ljava/math/BigInteger;)I

    move-result v3

    aput v3, v5, v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/asn1/ParSet;->k:[I

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/asn1/ParSet;->checkBigIntegerInIntRangeAndPositive(Ljava/math/BigInteger;)I

    move-result v3

    aput v3, v5, v4

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_88
.end method

.method private static checkBigIntegerInIntRangeAndPositive(Ljava/math/BigInteger;)I
    .registers 4

    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_2b

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BigInteger not in Range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    sget-object v0, Lorg/bouncycastle/pqc/asn1/ParSet;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_d

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/ParSet;
    .registers 3

    const/4 v1, 0x0

    instance-of v0, p0, Lorg/bouncycastle/pqc/asn1/ParSet;

    if-nez v0, :cond_8

    if-nez p0, :cond_b

    return-object v1

    :cond_8
    check-cast p0, Lorg/bouncycastle/pqc/asn1/ParSet;

    return-object p0

    :cond_b
    new-instance v0, Lorg/bouncycastle/pqc/asn1/ParSet;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/asn1/ParSet;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method


# virtual methods
.method public getH()[I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/ParSet;->h:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getK()[I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/ParSet;->k:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getT()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/pqc/asn1/ParSet;->t:I

    return v0
.end method

.method public getW()[I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/ParSet;->w:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 9

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v0, 0x0

    :goto_10
    iget-object v4, p0, Lorg/bouncycastle/pqc/asn1/ParSet;->h:[I

    array-length v4, v4

    if-lt v0, v4, :cond_43

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v4, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v5, p0, Lorg/bouncycastle/pqc/asn1/ParSet;->t:I

    int-to-long v6, v5

    invoke-direct {v4, v6, v7}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1

    :cond_43
    new-instance v4, Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v5, p0, Lorg/bouncycastle/pqc/asn1/ParSet;->h:[I

    aget v5, v5, v0

    int-to-long v6, v5

    invoke-direct {v4, v6, v7}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v4, Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v5, p0, Lorg/bouncycastle/pqc/asn1/ParSet;->w:[I

    aget v5, v5, v0

    int-to-long v6, v5

    invoke-direct {v4, v6, v7}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v4, Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v5, p0, Lorg/bouncycastle/pqc/asn1/ParSet;->k:[I

    aget v5, v5, v0

    int-to-long v6, v5

    invoke-direct {v4, v6, v7}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method
