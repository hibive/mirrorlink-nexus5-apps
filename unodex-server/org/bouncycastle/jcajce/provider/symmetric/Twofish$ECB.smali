.class public Lorg/bouncycastle/jcajce/provider/symmetric/Twofish$ECB;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/Twofish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECB"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Lorg/bouncycastle/jcajce/provider/symmetric/Twofish$ECB$1;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/symmetric/Twofish$ECB$1;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lorg/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;)V

    return-void
.end method