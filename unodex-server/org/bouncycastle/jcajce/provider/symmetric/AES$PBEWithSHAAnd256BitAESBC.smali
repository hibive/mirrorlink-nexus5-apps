.class public Lorg/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHAAnd256BitAESBC;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithSHAAnd256BitAESBC"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 9

    const/4 v3, 0x1

    const-string/jumbo v1, "PBEWithSHA1And256BitAES-CBC-BC"

    const/4 v4, 0x2

    const/16 v6, 0x100

    const/16 v7, 0x80

    const/4 v2, 0x0

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZIIII)V

    return-void
.end method