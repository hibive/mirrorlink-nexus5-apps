.class public Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "Unknown"


# instance fields
.field private type:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private value:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;->type:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object p2, p0, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;->type:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;
    .registers 3

    const/4 v1, 0x0

    instance-of v0, p0, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;

    if-nez v0, :cond_8

    if-nez p0, :cond_b

    return-object v1

    :cond_8
    check-cast p0, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;

    return-object p0

    :cond_b
    new-instance v0, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method


# virtual methods
.method public getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;->type:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getValue()Lorg/bouncycastle/asn1/ASN1Encodable;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;->type:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
