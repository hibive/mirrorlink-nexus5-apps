.class public Lorg/bouncycastle/pqc/jcajce/spec/GMSSKeySpec;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private gmssParameterSet:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSKeySpec;->gmssParameterSet:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/GMSSKeySpec;->gmssParameterSet:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    return-object v0
.end method
