.class public Lorg/bouncycastle/cms/jcajce/JceKEKEnvelopedRecipient;
.super Lorg/bouncycastle/cms/jcajce/JceKEKRecipient;
.source "Unknown"


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/jcajce/JceKEKRecipient;-><init>(Ljavax/crypto/SecretKey;)V

    return-void
.end method


# virtual methods
.method public getRecipientOperator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/cms/RecipientOperator;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/cms/jcajce/JceKEKEnvelopedRecipient;->extractSecretKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/security/Key;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceKEKEnvelopedRecipient;->contentHelper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual {v1, v0, p2}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createContentCipher(Ljava/security/Key;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/cms/RecipientOperator;

    new-instance v2, Lorg/bouncycastle/cms/jcajce/JceKEKEnvelopedRecipient$1;

    invoke-direct {v2, p0, p2, v0}, Lorg/bouncycastle/cms/jcajce/JceKEKEnvelopedRecipient$1;-><init>(Lorg/bouncycastle/cms/jcajce/JceKEKEnvelopedRecipient;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljavax/crypto/Cipher;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/cms/RecipientOperator;-><init>(Lorg/bouncycastle/operator/InputDecryptor;)V

    return-object v1
.end method
