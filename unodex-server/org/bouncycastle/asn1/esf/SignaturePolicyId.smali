.class public Lorg/bouncycastle/asn1/esf/SignaturePolicyId;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "Unknown"


# instance fields
.field private sigPolicyHash:Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;

.field private sigPolicyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private sigPolicyQualifiers:Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;)V
    .registers 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object p2, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyHash:Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;

    iput-object p3, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyQualifiers:Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5

    const/4 v2, 0x3

    const/4 v1, 0x2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ne v0, v1, :cond_28

    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyHash:Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-eq v0, v2, :cond_4c

    :goto_27
    return-void

    :cond_28
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-eq v0, v2, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad sequence size: "

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

    :cond_4c
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyQualifiers:Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;

    goto :goto_27
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/SignaturePolicyId;
    .registers 3

    const/4 v1, 0x0

    instance-of v0, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;

    if-nez v0, :cond_8

    if-nez p0, :cond_b

    return-object v1

    :cond_8
    check-cast p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;

    return-object p0

    :cond_b
    new-instance v0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method


# virtual methods
.method public getSigPolicyHash()Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyHash:Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;

    return-object v0
.end method

.method public getSigPolicyId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSigPolicyQualifiers()Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyQualifiers:Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyHash:Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyQualifiers:Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;

    if-nez v1, :cond_19

    :goto_13
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1

    :cond_19
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyQualifiers:Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_13
.end method
