.class public Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/jce/provider/BrokenPBE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher$BrokePBEWithMD5AndDES;,
        Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher$BrokePBEWithSHA1AndDES;,
        Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher$BrokePBEWithSHAAndDES2Key;,
        Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher$BrokePBEWithSHAAndDES3Key;,
        Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher$OldPBEWithSHAAndDES3Key;,
        Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher$OldPBEWithSHAAndTwofish;
    }
.end annotation


# instance fields
.field private availableSpecs:[Ljava/lang/Class;

.field private cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

.field private engineParams:Ljava/security/AlgorithmParameters;

.field private ivLength:I

.field private ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

.field private pbeHash:I

.field private pbeIvSize:I

.field private pbeKeySize:I

.field private pbeType:I


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .registers 8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v1, v0, v3

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v1, v0, v4

    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-class v2, Ljavax/crypto/spec/RC5ParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    iput v5, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeType:I

    iput v4, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeHash:I

    iput v3, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    new-instance v0, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;IIII)V
    .registers 12

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v1, v0, v3

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v1, v0, v4

    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-class v2, Ljavax/crypto/spec/RC5ParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    iput v5, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeType:I

    iput v4, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeHash:I

    iput v3, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    new-instance v0, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    iput p2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeType:I

    iput p3, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeHash:I

    iput p4, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeKeySize:I

    iput p5, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeIvSize:I

    return-void
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_d

    :goto_3
    :try_start_3
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    add-int v2, p5, v0

    invoke-virtual {v1, p4, v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I
    :try_end_a
    .catch Lorg/bouncycastle/crypto/DataLengthException; {:try_start_3 .. :try_end_a} :catch_19
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_3 .. :try_end_a} :catch_24

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_d
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v0

    goto :goto_3

    :catch_19
    move-exception v0

    new-instance v1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_24
    move-exception v0

    new-instance v1, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineDoFinal([BII)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p0, p3}, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineGetOutputSize(I)I

    move-result v0

    new-array v4, v0, [B

    if-nez p3, :cond_17

    move v0, v5

    :goto_a
    :try_start_a
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v1, v4, v0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I
    :try_end_f
    .catch Lorg/bouncycastle/crypto/DataLengthException; {:try_start_a .. :try_end_f} :catch_21
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_a .. :try_end_f} :catch_2c

    move-result v1

    add-int/2addr v0, v1

    new-array v1, v0, [B

    invoke-static {v4, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_17
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v0

    goto :goto_a

    :catch_21
    move-exception v0

    new-instance v1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2c
    move-exception v0

    new-instance v1, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineGetBlockSize()I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method protected engineGetIV()[B
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    goto :goto_5
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .registers 3

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method protected engineGetOutputSize(I)I
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v0

    return v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 5

    const/16 v3, 0x2f

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    if-eqz v0, :cond_a

    :cond_7
    :goto_7
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    return-object v0

    :cond_a
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_3e

    :goto_1e
    :try_start_1e
    const-string/jumbo v1, "BC"

    invoke-static {v0, v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_32} :catch_33

    goto :goto_7

    :catch_33
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3e
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p3, :cond_a

    move-object v0, v1

    :cond_4
    iput-object p3, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void

    :cond_a
    const/4 v0, 0x0

    :goto_b
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    array-length v2, v2

    if-ne v0, v2, :cond_31

    move-object v0, v1

    :goto_11
    if-nez v0, :cond_4

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "can\'t handle parameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    :try_start_31
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    aget-object v2, v2, v0

    invoke-virtual {p3, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_38} :catch_3a

    move-result-object v0

    goto :goto_11

    :catch_3a
    move-exception v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    check-cast v0, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    instance-of v0, p2, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-nez v0, :cond_1d

    if-eqz p3, :cond_52

    instance-of v0, p3, Ljavax/crypto/spec/IvParameterSpec;

    if-nez v0, :cond_5c

    instance-of v0, p3, Ljavax/crypto/spec/RC2ParameterSpec;

    if-nez v0, :cond_84

    instance-of v0, p3, Ljavax/crypto/spec/RC5ParameterSpec;

    if-nez v0, :cond_b1

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "unknown parameter type."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeType:I

    iget v3, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeHash:I

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeKeySize:I

    iget v6, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeIvSize:I

    move-object v1, p3

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/jce/provider/BrokenPBE$Util;->makePBEParameters(Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;IILjava/lang/String;II)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    iget v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeIvSize:I

    if-nez v0, :cond_4c

    :goto_3b
    move-object v0, v1

    iget v1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    if-nez v1, :cond_f1

    :cond_40
    :goto_40
    packed-switch p1, :pswitch_data_12e

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "eeek!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_4b
    return-void

    :cond_4c
    move-object v0, v1

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    goto :goto_3b

    :cond_52
    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    goto :goto_3b

    :cond_5c
    iget v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    if-nez v0, :cond_6a

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    goto :goto_3b

    :cond_6a
    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    check-cast p3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p3}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    move-object v0, v1

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    goto :goto_3b

    :cond_84
    move-object v0, p3

    check-cast v0, Ljavax/crypto/spec/RC2ParameterSpec;

    new-instance v2, Lorg/bouncycastle/crypto/params/RC2Parameters;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    check-cast p3, Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-virtual {p3}, Ljavax/crypto/spec/RC2ParameterSpec;->getEffectiveKeyBits()I

    move-result v3

    invoke-direct {v2, v1, v3}, Lorg/bouncycastle/crypto/params/RC2Parameters;-><init>([BI)V

    invoke-virtual {v0}, Ljavax/crypto/spec/RC2ParameterSpec;->getIV()[B

    move-result-object v1

    if-nez v1, :cond_9e

    :cond_9c
    move-object v1, v2

    goto :goto_3b

    :cond_9e
    iget v1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    if-eqz v1, :cond_9c

    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Ljavax/crypto/spec/RC2ParameterSpec;->getIV()[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    move-object v0, v1

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    goto :goto_3b

    :cond_b1
    move-object v0, p3

    check-cast v0, Ljavax/crypto/spec/RC5ParameterSpec;

    new-instance v2, Lorg/bouncycastle/crypto/params/RC5Parameters;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    check-cast p3, Ljavax/crypto/spec/RC5ParameterSpec;

    invoke-virtual {p3}, Ljavax/crypto/spec/RC5ParameterSpec;->getRounds()I

    move-result v3

    invoke-direct {v2, v1, v3}, Lorg/bouncycastle/crypto/params/RC5Parameters;-><init>([BI)V

    invoke-virtual {v0}, Ljavax/crypto/spec/RC5ParameterSpec;->getWordSize()I

    move-result v1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_d4

    invoke-virtual {v0}, Ljavax/crypto/spec/RC5ParameterSpec;->getIV()[B

    move-result-object v1

    if-nez v1, :cond_dd

    :cond_d1
    move-object v1, v2

    goto/16 :goto_3b

    :cond_d4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "can only accept RC5 word size 32 (at the moment...)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_dd
    iget v1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    if-eqz v1, :cond_d1

    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Ljavax/crypto/spec/RC5ParameterSpec;->getIV()[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    move-object v0, v1

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    goto/16 :goto_3b

    :cond_f1
    instance-of v1, v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-nez v1, :cond_40

    if-eqz p4, :cond_10d

    :goto_f7
    if-ne p1, v8, :cond_113

    :cond_f9
    iget v1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    new-array v2, v1, [B

    invoke-virtual {p4, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    move-object v0, v1

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivParam:Lorg/bouncycastle/crypto/params/ParametersWithIV;

    move-object v0, v1

    goto/16 :goto_40

    :cond_10d
    new-instance p4, Ljava/security/SecureRandom;

    invoke-direct {p4}, Ljava/security/SecureRandom;-><init>()V

    goto :goto_f7

    :cond_113
    const/4 v1, 0x3

    if-eq p1, v1, :cond_f9

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "no IV set when one expected"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_11f
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v1, v8, v0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto/16 :goto_4b

    :pswitch_126
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v1, v7, v0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto/16 :goto_4b

    nop

    :pswitch_data_12e
    .packed-switch 0x1
        :pswitch_11f
        :pswitch_126
        :pswitch_11f
        :pswitch_126
    .end packed-switch
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x3

    const/4 v2, 0x0

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ECB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    const-string/jumbo v1, "CBC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    const-string/jumbo v1, "OFB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_71

    const-string/jumbo v1, "CFB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "can\'t support mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    iput v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    new-instance v0, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    :goto_51
    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    :goto_53
    return-void

    :cond_54
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    new-instance v0, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    goto :goto_51

    :cond_71
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_9c

    new-instance v0, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getBlockSize()I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    goto :goto_51

    :cond_9c
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    new-instance v2, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    :goto_b4
    iput-object v1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    goto :goto_53

    :cond_b7
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_e3

    new-instance v0, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getBlockSize()I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    goto/16 :goto_51

    :cond_e3
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    new-instance v2, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    goto :goto_b4
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NOPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string/jumbo v1, "PKCS5PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    :cond_16
    new-instance v0, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    :goto_21
    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    return-void

    :cond_24
    new-instance v0, Lorg/bouncycastle/crypto/BufferedBlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    goto :goto_21

    :cond_30
    const-string/jumbo v1, "PKCS7PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string/jumbo v1, "ISO10126PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string/jumbo v1, "WITHCTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Padding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " unknown."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6c
    new-instance v0, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/CTSBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    goto :goto_21
.end method

.method protected engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineDoFinal([BII)[B
    :try_end_5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_5} :catch_30
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_5} :catch_3b

    move-result-object v0

    const/4 v1, 0x3

    if-eq p3, v1, :cond_46

    :try_start_9
    const-string/jumbo v1, "BC"

    invoke-static {p2, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;
    :try_end_f
    .catch Ljava/security/NoSuchProviderException; {:try_start_9 .. :try_end_f} :catch_60
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_f} :catch_7f
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_9 .. :try_end_f} :catch_9e

    move-result-object v1

    const/4 v2, 0x1

    if-eq p3, v2, :cond_4c

    const/4 v2, 0x2

    if-eq p3, v2, :cond_56

    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown key type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_30
    move-exception v0

    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_3b
    move-exception v0

    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_46
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, v0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1

    :cond_4c
    :try_start_4c
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0

    :cond_56
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_5e
    .catch Ljava/security/NoSuchProviderException; {:try_start_4c .. :try_end_5e} :catch_60
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4c .. :try_end_5e} :catch_7f
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_4c .. :try_end_5e} :catch_9e

    move-result-object v0

    return-object v0

    :catch_60
    move-exception v0

    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown key type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_7f
    move-exception v0

    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown key type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_9e
    move-exception v0

    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown key type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineUpdate([BII[BI)I
    .registers 12

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v0

    return v0
.end method

.method protected engineUpdate([BII)[B
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0, p3}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUpdateOutputSize(I)I

    move-result v0

    if-gtz v0, :cond_13

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    return-object v4

    :cond_13
    new-array v4, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    return-object v4
.end method

.method protected engineWrap(Ljava/security/Key;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    :try_start_7
    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineDoFinal([BII)[B
    :try_end_b
    .catch Ljavax/crypto/BadPaddingException; {:try_start_7 .. :try_end_b} :catch_16

    move-result-object v0

    return-object v0

    :cond_d
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "Cannot wrap key, null encoding."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_16
    move-exception v0

    new-instance v1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
