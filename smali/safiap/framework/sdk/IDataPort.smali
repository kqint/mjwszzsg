.class public interface abstract Lsafiap/framework/sdk/IDataPort;
.super Ljava/lang/Object;
.source "IDataPort.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsafiap/framework/sdk/IDataPort$Stub;
    }
.end annotation


# virtual methods
.method public abstract getDataLength(Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract putData(Ljava/lang/String;[BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract readData(Ljava/lang/String;[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
