.class public Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private A1:[[S

.field private A1inv:[[S

.field private A2:[[S

.field private A2inv:[[S

.field private b1:[S

.field private b2:[S

.field private initialized:Z

.field private layers:[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

.field private numOfLayers:I

.field private pub_quadratic:[[S

.field private pub_scalar:[S

.field private pub_singular:[[S

.field private rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;

.field private sr:Ljava/security/SecureRandom;

.field private vi:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->initialized:Z

    return-void
.end method

.method private compactPublicKey([[[S)V
    .registers 12

    const/4 v3, 0x0

    array-length v5, p1

    aget-object v0, p1, v3

    array-length v6, v0

    add-int/lit8 v0, v6, 0x1

    mul-int/2addr v0, v6

    div-int/lit8 v0, v0, 0x2

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v5, v2, v3

    const/4 v4, 0x1

    aput v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_quadratic:[[S

    move v4, v3

    :goto_1d
    if-lt v4, v5, :cond_20

    return-void

    :cond_20
    move v1, v3

    move v0, v3

    :goto_22
    if-lt v1, v6, :cond_28

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1d

    :cond_28
    move v2, v0

    move v0, v1

    :goto_2a
    if-lt v0, v6, :cond_30

    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_22

    :cond_30
    if-eq v0, v1, :cond_4e

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_quadratic:[[S

    aget-object v7, v7, v4

    aget-object v8, p1, v4

    aget-object v8, v8, v1

    aget-short v8, v8, v0

    aget-object v9, p1, v4

    aget-object v9, v9, v0

    aget-short v9, v9, v1

    invoke-static {v8, v9}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v8

    :goto_46
    int-to-short v8, v8

    aput-short v8, v7, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_4e
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_quadratic:[[S

    aget-object v7, v7, v4

    aget-object v8, p1, v4

    aget-object v8, v8, v1

    aget-short v8, v8, v0

    goto :goto_46
.end method

.method private computePublicKey()V
    .registers 23

    new-instance v8, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;

    invoke-direct {v8}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-int v9, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v10, v2, v3

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x3

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v9, v3, v4

    const/4 v4, 0x1

    aput v10, v3, v4

    const/4 v4, 0x2

    aput v10, v3, v4

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[[S

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v9, v4, v5

    const/4 v5, 0x1

    aput v10, v4, v5

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[S

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    new-array v3, v9, [S

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_scalar:[S

    const/4 v4, 0x0

    new-array v3, v10, [S

    const/4 v3, 0x0

    :goto_5b
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->layers:[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    array-length v5, v5

    if-lt v3, v5, :cond_9b

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v9, v4, v5

    const/4 v5, 0x1

    aput v10, v4, v5

    const/4 v5, 0x2

    aput v10, v4, v5

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[[S

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v9, v5, v6

    const/4 v6, 0x1

    aput v10, v5, v6

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[S

    new-array v7, v9, [S

    const/4 v5, 0x0

    move v6, v5

    :goto_8b
    if-lt v6, v9, :cond_34f

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_scalar:[S

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->compactPublicKey([[[S)V

    return-void

    :cond_9b
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->layers:[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->getCoeffAlpha()[[[S

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->layers:[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->getCoeffBeta()[[[S

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->layers:[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->getCoeffGamma()[[S

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->layers:[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;->getCoeffEta()[S

    move-result-object v14

    const/4 v5, 0x0

    aget-object v5, v11, v5

    array-length v15, v5

    const/4 v5, 0x0

    aget-object v5, v12, v5

    array-length v0, v5

    move/from16 v16, v0

    const/4 v5, 0x0

    move v7, v5

    :goto_cf
    if-lt v7, v15, :cond_d5

    add-int/2addr v4, v15

    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    :cond_d5
    const/4 v5, 0x0

    move v6, v5

    :goto_d7
    if-lt v6, v15, :cond_105

    const/4 v5, 0x0

    move v6, v5

    :goto_db
    move/from16 v0, v16

    if-lt v6, v0, :cond_1ff

    const/4 v5, 0x0

    :goto_e0
    add-int v6, v16, v15

    if-lt v5, v6, :cond_2f4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_scalar:[S

    add-int v6, v4, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_scalar:[S

    move-object/from16 v17, v0

    add-int v18, v4, v7

    aget-short v17, v17, v18

    aget-short v18, v14, v7

    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v17

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    aput-short v17, v5, v6

    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_cf

    :cond_105
    const/4 v5, 0x0

    :goto_106
    move/from16 v0, v16

    if-lt v5, v0, :cond_10e

    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_d7

    :cond_10e
    aget-object v17, v11, v7

    aget-object v17, v17, v6

    aget-short v17, v17, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A2:[[S

    move-object/from16 v18, v0

    add-int v19, v6, v16

    aget-object v18, v18, v19

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->multVect(S[S)[S

    move-result-object v17

    add-int v18, v4, v7

    add-int v19, v4, v7

    aget-object v19, v2, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A2:[[S

    move-object/from16 v20, v0

    aget-object v20, v20, v5

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->multVects([S[S)[[S

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->addSquareMatrix([[S[[S)[[S

    move-result-object v19

    aput-object v19, v2, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->b2:[S

    move-object/from16 v18, v0

    aget-short v18, v18, v5

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->multVect(S[S)[S

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    move-object/from16 v18, v0

    add-int v19, v4, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    move-object/from16 v20, v0

    add-int v21, v4, v7

    aget-object v20, v20, v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->addVect([S[S)[S

    move-result-object v17

    aput-object v17, v18, v19

    aget-object v17, v11, v7

    aget-object v17, v17, v6

    aget-short v17, v17, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A2:[[S

    move-object/from16 v18, v0

    aget-object v18, v18, v5

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->multVect(S[S)[S

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->b2:[S

    move-object/from16 v18, v0

    add-int v19, v6, v16

    aget-short v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->multVect(S[S)[S

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    move-object/from16 v18, v0

    add-int v19, v4, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    move-object/from16 v20, v0

    add-int v21, v4, v7

    aget-object v20, v20, v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->addVect([S[S)[S

    move-result-object v17

    aput-object v17, v18, v19

    aget-object v17, v11, v7

    aget-object v17, v17, v6

    aget-short v17, v17, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->b2:[S

    move-object/from16 v18, v0

    add-int v19, v6, v16

    aget-short v18, v18, v19

    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_scalar:[S

    move-object/from16 v18, v0

    add-int v19, v4, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_scalar:[S

    move-object/from16 v20, v0

    add-int v21, v4, v7

    aget-short v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->b2:[S

    move-object/from16 v21, v0

    aget-short v21, v21, v5

    move/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v17

    move/from16 v0, v20

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v17

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    aput-short v17, v18, v19

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_106

    :cond_1ff
    const/4 v5, 0x0

    :goto_200
    move/from16 v0, v16

    if-lt v5, v0, :cond_209

    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto/16 :goto_db

    :cond_209
    aget-object v17, v12, v7

    aget-object v17, v17, v6

    aget-short v17, v17, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A2:[[S

    move-object/from16 v18, v0

    aget-object v18, v18, v6

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->multVect(S[S)[S

    move-result-object v17

    add-int v18, v4, v7

    add-int v19, v4, v7

    aget-object v19, v2, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A2:[[S

    move-object/from16 v20, v0

    aget-object v20, v20, v5

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->multVects([S[S)[[S

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->addSquareMatrix([[S[[S)[[S

    move-result-object v19

    aput-object v19, v2, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->b2:[S

    move-object/from16 v18, v0

    aget-short v18, v18, v5

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->multVect(S[S)[S

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    move-object/from16 v18, v0

    add-int v19, v4, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    move-object/from16 v20, v0

    add-int v21, v4, v7

    aget-object v20, v20, v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->addVect([S[S)[S

    move-result-object v17

    aput-object v17, v18, v19

    aget-object v17, v12, v7

    aget-object v17, v17, v6

    aget-short v17, v17, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A2:[[S

    move-object/from16 v18, v0

    aget-object v18, v18, v5

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->multVect(S[S)[S

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->b2:[S

    move-object/from16 v18, v0

    aget-short v18, v18, v6

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->multVect(S[S)[S

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    move-object/from16 v18, v0

    add-int v19, v4, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    move-object/from16 v20, v0

    add-int v21, v4, v7

    aget-object v20, v20, v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->addVect([S[S)[S

    move-result-object v17

    aput-object v17, v18, v19

    aget-object v17, v12, v7

    aget-object v17, v17, v6

    aget-short v17, v17, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->b2:[S

    move-object/from16 v18, v0

    aget-short v18, v18, v6

    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_scalar:[S

    move-object/from16 v18, v0

    add-int v19, v4, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_scalar:[S

    move-object/from16 v20, v0

    add-int v21, v4, v7

    aget-short v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->b2:[S

    move-object/from16 v21, v0

    aget-short v21, v21, v5

    move/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v17

    move/from16 v0, v20

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v17

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    aput-short v17, v18, v19

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_200

    :cond_2f4
    aget-object v6, v13, v7

    aget-short v6, v6, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A2:[[S

    move-object/from16 v17, v0

    aget-object v17, v17, v5

    move-object/from16 v0, v17

    invoke-virtual {v8, v6, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->multVect(S[S)[S

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    move-object/from16 v17, v0

    add-int v18, v4, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    move-object/from16 v19, v0

    add-int v20, v4, v7

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v8, v6, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->addVect([S[S)[S

    move-result-object v6

    aput-object v6, v17, v18

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_scalar:[S

    add-int v17, v4, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_scalar:[S

    move-object/from16 v18, v0

    add-int v19, v4, v7

    aget-short v18, v18, v19

    aget-object v19, v13, v7

    aget-short v19, v19, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->b2:[S

    move-object/from16 v20, v0

    aget-short v20, v20, v5

    invoke-static/range {v19 .. v20}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v19

    invoke-static/range {v18 .. v19}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v18

    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v18, v0

    aput-short v18, v6, v17

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_e0

    :cond_34f
    const/4 v5, 0x0

    :goto_350
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A1:[[S

    array-length v10, v10

    if-lt v5, v10, :cond_36b

    aget-short v5, v7, v6

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->b1:[S

    aget-short v10, v10, v6

    invoke-static {v5, v10}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v5

    int-to-short v5, v5

    aput-short v5, v7, v6

    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto/16 :goto_8b

    :cond_36b
    aget-object v10, v3, v6

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A1:[[S

    aget-object v11, v11, v6

    aget-short v11, v11, v5

    aget-object v12, v2, v5

    invoke-virtual {v8, v11, v12}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->multMatrix(S[[S)[[S

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->addSquareMatrix([[S[[S)[[S

    move-result-object v10

    aput-object v10, v3, v6

    aget-object v10, v4, v6

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A1:[[S

    aget-object v11, v11, v6

    aget-short v11, v11, v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    aget-object v12, v12, v5

    invoke-virtual {v8, v11, v12}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->multVect(S[S)[S

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->addVect([S[S)[S

    move-result-object v10

    aput-object v10, v4, v6

    aget-short v10, v7, v6

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A1:[[S

    aget-object v11, v11, v6

    aget-short v11, v11, v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_scalar:[S

    aget-short v12, v12, v5

    invoke-static {v11, v12}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v11

    invoke-static {v10, v11}, Lorg/bouncycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v10

    int-to-short v10, v10

    aput-short v10, v7, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_350
.end method

.method private generateF()V
    .registers 7

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->numOfLayers:I

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->layers:[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    const/4 v0, 0x0

    :goto_7
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->numOfLayers:I

    if-lt v0, v1, :cond_c

    return-void

    :cond_c
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->layers:[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    aget v3, v3, v0

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->sr:Ljava/security/SecureRandom;

    invoke-direct {v2, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/Layer;-><init>(IILjava/security/SecureRandom;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method private generateL1()V
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v0, v0, v3

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    aget v3, v3, v2

    sub-int v3, v0, v3

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v3, v4, v2

    const/4 v5, 0x1

    aput v3, v4, v5

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A1:[[S

    move-object v0, v1

    check-cast v0, [[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A1inv:[[S

    new-instance v4, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;

    invoke-direct {v4}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;-><init>()V

    :goto_2d
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A1inv:[[S

    if-eqz v0, :cond_39

    new-array v0, v3, [S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->b1:[S

    move v0, v2

    :goto_36
    if-lt v0, v3, :cond_5f

    return-void

    :cond_39
    move v1, v2

    :goto_3a
    if-lt v1, v3, :cond_45

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A1:[[S

    invoke-virtual {v4, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->inverse([[S)[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A1inv:[[S

    goto :goto_2d

    :cond_45
    move v0, v2

    :goto_46
    if-lt v0, v3, :cond_4c

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3a

    :cond_4c
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A1:[[S

    aget-object v5, v5, v1

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->sr:Ljava/security/SecureRandom;

    invoke-virtual {v6}, Ljava/security/SecureRandom;->nextInt()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    int-to-short v6, v6

    aput-short v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    :cond_5f
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->b1:[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->sr:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    int-to-short v2, v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_36
.end method

.method private generateL2()V
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v3, v0, v3

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v3, v4, v2

    const/4 v5, 0x1

    aput v3, v4, v5

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A2:[[S

    move-object v0, v1

    check-cast v0, [[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A2inv:[[S

    new-instance v4, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;

    invoke-direct {v4}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;-><init>()V

    :goto_27
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A2inv:[[S

    if-eqz v0, :cond_33

    new-array v0, v3, [S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->b2:[S

    move v0, v2

    :goto_30
    if-lt v0, v3, :cond_59

    return-void

    :cond_33
    move v1, v2

    :goto_34
    if-lt v1, v3, :cond_3f

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A2:[[S

    invoke-virtual {v4, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/util/ComputeInField;->inverse([[S)[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A2inv:[[S

    goto :goto_27

    :cond_3f
    move v0, v2

    :goto_40
    if-lt v0, v3, :cond_46

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_34

    :cond_46
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A2:[[S

    aget-object v5, v5, v1

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->sr:Ljava/security/SecureRandom;

    invoke-virtual {v6}, Ljava/security/SecureRandom;->nextInt()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    int-to-short v6, v6

    aput-short v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_59
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->b2:[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->sr:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    int-to-short v2, v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_30
.end method

.method private initializeDefault()V
    .registers 4

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;-><init>()V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    return-void
.end method

.method private keygen()V
    .registers 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->generateL1()V

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->generateL2()V

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->generateF()V

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->computePublicKey()V

    return-void
.end method


# virtual methods
.method public genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .registers 9

    const/4 v7, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->initialized:Z

    if-eqz v0, :cond_38

    :goto_5
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->keygen()V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A1inv:[[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->b1:[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A2inv:[[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->b2:[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->layers:[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;-><init>([[S[S[[S[S[I[Lorg/bouncycastle/pqc/crypto/rainbow/Layer;)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    aget v3, v3, v7

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_quadratic:[[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_scalar:[S

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;-><init>(I[[S[[S[S)V

    new-instance v2, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v2

    :cond_38
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->initializeDefault()V

    goto :goto_5
.end method

.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .registers 2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    return-void
.end method

.method public initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .registers 3

    check-cast p1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->sr:Ljava/security/SecureRandom;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getVi()[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getNumOfLayers()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->numOfLayers:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->initialized:Z

    return-void
.end method
