.class public Lorg/bouncycastle/jcajce/provider/digest/RIPEMD160$PBEWithHmac;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/digest/RIPEMD160;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithHmac"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x2

    new-instance v0, Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v1, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    const/16 v1, 0xa0

    invoke-direct {p0, v0, v2, v2, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/bouncycastle/crypto/Mac;III)V

    return-void
.end method
