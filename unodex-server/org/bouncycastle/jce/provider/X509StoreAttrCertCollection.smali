.class public Lorg/bouncycastle/jce/provider/X509StoreAttrCertCollection;
.super Lorg/bouncycastle/x509/X509StoreSpi;
.source "Unknown"


# instance fields
.field private _store:Lorg/bouncycastle/util/CollectionStore;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/bouncycastle/x509/X509StoreSpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGetMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509StoreAttrCertCollection;->_store:Lorg/bouncycastle/util/CollectionStore;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/util/CollectionStore;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public engineInit(Lorg/bouncycastle/x509/X509StoreParameters;)V
    .registers 4

    instance-of v0, p1, Lorg/bouncycastle/x509/X509CollectionStoreParameters;

    if-eqz v0, :cond_12

    new-instance v0, Lorg/bouncycastle/util/CollectionStore;

    check-cast p1, Lorg/bouncycastle/x509/X509CollectionStoreParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509CollectionStoreParameters;->getCollection()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/X509StoreAttrCertCollection;->_store:Lorg/bouncycastle/util/CollectionStore;

    return-void

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
