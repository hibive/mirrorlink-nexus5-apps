.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecCVCDSA224;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ecCVCDSA224"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 5

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA224Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA224Digest;-><init>()V

    new-instance v1, Lorg/bouncycastle/crypto/signers/ECDSASigner;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/signers/ECDSASigner;-><init>()V

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi$CVCDSAEncoder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi$CVCDSAEncoder;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi$1;)V

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi;-><init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/DSA;Lorg/bouncycastle/jcajce/provider/asymmetric/util/DSAEncoder;)V

    return-void
.end method
