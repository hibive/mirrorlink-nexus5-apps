.class public Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi$McEliecePointcheval512;
.super Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "McEliecePointcheval512"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePointchevalCipherSpi;-><init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePointchevalCipher;)V

    return-void
.end method
