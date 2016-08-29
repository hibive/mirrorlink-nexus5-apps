.class public Lorg/bouncycastle/asn1/x500/RDN;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "Unknown"


# instance fields
.field private values:Lorg/bouncycastle/asn1/ASN1Set;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .registers 6

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, p2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSet;

    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v1, p0, Lorg/bouncycastle/asn1/x500/RDN;->values:Lorg/bouncycastle/asn1/ASN1Set;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Set;)V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/RDN;->values:Lorg/bouncycastle/asn1/ASN1Set;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x500/RDN;->values:Lorg/bouncycastle/asn1/ASN1Set;

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERSet;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x500/RDN;->values:Lorg/bouncycastle/asn1/ASN1Set;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/RDN;
    .registers 3

    const/4 v1, 0x0

    instance-of v0, p0, Lorg/bouncycastle/asn1/x500/RDN;

    if-nez v0, :cond_8

    if-nez p0, :cond_b

    return-object v1

    :cond_8
    check-cast p0, Lorg/bouncycastle/asn1/x500/RDN;

    return-object p0

    :cond_b
    new-instance v0, Lorg/bouncycastle/asn1/x500/RDN;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x500/RDN;-><init>(Lorg/bouncycastle/asn1/ASN1Set;)V

    return-object v0
.end method


# virtual methods
.method public getFirst()Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/RDN;->values:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/RDN;->values:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    return-object v0

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypesAndValues()[Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/RDN;->values:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    new-array v1, v0, [Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    const/4 v0, 0x0

    :goto_9
    array-length v2, v1

    if-ne v0, v2, :cond_d

    return-object v1

    :cond_d
    iget-object v2, p0, Lorg/bouncycastle/asn1/x500/RDN;->values:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public isMultiValued()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/bouncycastle/asn1/x500/RDN;->values:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v1

    if-gt v1, v0, :cond_a

    const/4 v0, 0x0

    :cond_a
    return v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/RDN;->values:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/RDN;->values:Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method