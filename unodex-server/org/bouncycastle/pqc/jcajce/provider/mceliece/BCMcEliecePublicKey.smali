.class public Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;
.implements Ljava/security/PublicKey;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private McElieceParams:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;

.field private g:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

.field private n:I

.field private oid:Ljava/lang/String;

.field private t:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->oid:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->n:I

    iput p3, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->t:I

    iput-object p4, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->g:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;)V
    .registers 6

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->getOIDString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->getN()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->getT()I

    move-result v2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->getG()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;-><init>(Ljava/lang/String;IILorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;)V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->McElieceParams:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/jcajce/spec/McEliecePublicKeySpec;)V
    .registers 6

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePublicKeySpec;->getOIDString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePublicKeySpec;->getN()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePublicKeySpec;->getT()I

    move-result v2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/spec/McEliecePublicKeySpec;->getG()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;-><init>(Ljava/lang/String;IILorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;

    if-eqz v1, :cond_e

    check-cast p1, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;

    iget v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->n:I

    iget v2, p1, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->n:I

    if-eq v1, v2, :cond_f

    :cond_d
    :goto_d
    return v0

    :cond_e
    return v0

    :cond_f
    iget v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->t:I

    iget v2, p1, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->t:I

    if-ne v1, v2, :cond_d

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->g:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iget-object v2, p1, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->g:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x1

    goto :goto_d
.end method

.method protected getAlgParams()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "McEliece"

    return-object v0
.end method

.method public getEncoded()[B
    .registers 6

    new-instance v0, Lorg/bouncycastle/pqc/asn1/McEliecePublicKey;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->oid:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->n:I

    iget v3, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->t:I

    iget-object v4, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->g:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/pqc/asn1/McEliecePublicKey;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;IILorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;)V

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->getOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :try_start_1d
    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded()[B
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_25} :catch_27

    move-result-object v0

    return-object v0

    :catch_27
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getG()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->g:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    return-object v0
.end method

.method public getK()I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->g:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->getNumRows()I

    move-result v0

    return v0
.end method

.method public getMcElieceParameters()Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->McElieceParams:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;

    return-object v0
.end method

.method public getN()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->n:I

    return v0
.end method

.method protected getOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "1.3.6.1.4.1.8301.3.1.3.4.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getOIDString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->oid:Ljava/lang/String;

    return-object v0
.end method

.method public getT()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->t:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->n:I

    iget v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->t:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->g:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "McEliecePublicKey:\n"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " length of the code         : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " error correction capability: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " generator matrix           : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->g:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
