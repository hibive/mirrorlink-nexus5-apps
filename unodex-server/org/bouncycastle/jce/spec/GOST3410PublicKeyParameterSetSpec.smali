.class public Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private a:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;

.field private q:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->p:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->q:Ljava/math/BigInteger;

    iput-object p3, p0, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->a:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    if-nez v1, :cond_6

    return v0

    :cond_6
    check-cast p1, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    iget-object v1, p0, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->a:Ljava/math/BigInteger;

    iget-object v2, p1, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->a:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    :cond_12
    :goto_12
    return v0

    :cond_13
    iget-object v1, p0, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->p:Ljava/math/BigInteger;

    iget-object v2, p1, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->p:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->q:Ljava/math/BigInteger;

    iget-object v2, p1, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->q:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    goto :goto_12
.end method

.method public getA()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->a:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->a:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->p:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->q:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
