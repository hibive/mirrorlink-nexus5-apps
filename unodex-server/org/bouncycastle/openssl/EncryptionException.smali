.class public Lorg/bouncycastle/openssl/EncryptionException;
.super Lorg/bouncycastle/openssl/PEMException;
.source "Unknown"


# instance fields
.field private cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/bouncycastle/openssl/EncryptionException;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/openssl/EncryptionException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method