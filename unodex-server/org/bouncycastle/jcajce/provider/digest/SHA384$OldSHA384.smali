.class public Lorg/bouncycastle/jcajce/provider/digest/SHA384$OldSHA384;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/digest/SHA384;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OldSHA384"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lorg/bouncycastle/crypto/macs/OldHMac;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA384Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA384Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/macs/OldHMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/bouncycastle/crypto/Mac;)V

    return-void
.end method
