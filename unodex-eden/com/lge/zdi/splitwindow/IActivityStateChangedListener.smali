.class public interface abstract Lcom/lge/zdi/splitwindow/IActivityStateChangedListener;
.super Ljava/lang/Object;
.source "IActivityStateChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/zdi/splitwindow/IActivityStateChangedListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onActivityStateChanged(ZLjava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
