.class public Lorg/bouncycastle/jcajce/provider/symmetric/SEED$GMAC;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/SEED;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GMAC"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 4

    new-instance v0, Lorg/bouncycastle/crypto/macs/GMac;

    new-instance v1, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;

    new-instance v2, Lorg/bouncycastle/crypto/engines/SEEDEngine;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/engines/SEEDEngine;-><init>()V

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/macs/GMac;-><init>(Lorg/bouncycastle/crypto/modes/GCMBlockCipher;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/bouncycastle/crypto/Mac;)V

    return-void
.end method