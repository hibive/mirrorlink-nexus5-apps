.class Lorg/bouncycastle/cms/jcajce/JceKeyTransEnvelopedRecipient$1;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/operator/InputDecryptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cms/jcajce/JceKeyTransEnvelopedRecipient;->getRecipientOperator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/cms/RecipientOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/cms/jcajce/JceKeyTransEnvelopedRecipient;

.field final synthetic val$contentEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field final synthetic val$dataCipher:Ljavax/crypto/Cipher;


# direct methods
.method constructor <init>(Lorg/bouncycastle/cms/jcajce/JceKeyTransEnvelopedRecipient;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljavax/crypto/Cipher;)V
    .registers 4

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransEnvelopedRecipient$1;->this$0:Lorg/bouncycastle/cms/jcajce/JceKeyTransEnvelopedRecipient;

    iput-object p2, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransEnvelopedRecipient$1;->val$contentEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p3, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransEnvelopedRecipient$1;->val$dataCipher:Ljavax/crypto/Cipher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransEnvelopedRecipient$1;->val$contentEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 4

    new-instance v0, Ljavax/crypto/CipherInputStream;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransEnvelopedRecipient$1;->val$dataCipher:Ljavax/crypto/Cipher;

    invoke-direct {v0, p1, v1}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v0
.end method