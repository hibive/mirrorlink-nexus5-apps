.class public Lorg/bouncycastle/crypto/params/NaccacheSternKeyGenerationParameters;
.super Lorg/bouncycastle/crypto/KeyGenerationParameters;
.source "Unknown"


# instance fields
.field private certainty:I

.field private cntSmallPrimes:I

.field private debug:Z


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;III)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/params/NaccacheSternKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;IIIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;IIIZ)V
    .registers 8

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/params/NaccacheSternKeyGenerationParameters;->debug:Z

    iput p3, p0, Lorg/bouncycastle/crypto/params/NaccacheSternKeyGenerationParameters;->certainty:I

    rem-int/lit8 v0, p4, 0x2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    const/16 v0, 0x1e

    if-lt p4, v0, :cond_1f

    iput p4, p0, Lorg/bouncycastle/crypto/params/NaccacheSternKeyGenerationParameters;->cntSmallPrimes:I

    iput-boolean p5, p0, Lorg/bouncycastle/crypto/params/NaccacheSternKeyGenerationParameters;->debug:Z

    return-void

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "cntSmallPrimes must be a multiple of 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "cntSmallPrimes must be >= 30 for security reasons"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCertainty()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/params/NaccacheSternKeyGenerationParameters;->certainty:I

    return v0
.end method

.method public getCntSmallPrimes()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/crypto/params/NaccacheSternKeyGenerationParameters;->cntSmallPrimes:I

    return v0
.end method

.method public isDebug()Z
    .registers 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/params/NaccacheSternKeyGenerationParameters;->debug:Z

    return v0
.end method
