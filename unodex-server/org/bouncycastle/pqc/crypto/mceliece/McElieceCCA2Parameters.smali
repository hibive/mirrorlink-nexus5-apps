.class public Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;
.super Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;
.source "Unknown"


# instance fields
.field public digest:Lorg/bouncycastle/crypto/Digest;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;->digest:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;-><init>(II)V

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;->digest:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;->digest:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method


# virtual methods
.method public getDigest()Lorg/bouncycastle/crypto/Digest;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;->digest:Lorg/bouncycastle/crypto/Digest;

    return-object v0
.end method