.class public Lorg/bouncycastle/cms/CMSAttributeTableGenerationException;
.super Lorg/bouncycastle/cms/CMSRuntimeException;
.source "Unknown"


# instance fields
.field e:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/CMSRuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/CMSRuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/bouncycastle/cms/CMSAttributeTableGenerationException;->e:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAttributeTableGenerationException;->e:Ljava/lang/Exception;

    return-object v0
.end method

.method public getUnderlyingException()Ljava/lang/Exception;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAttributeTableGenerationException;->e:Ljava/lang/Exception;

    return-object v0
.end method
