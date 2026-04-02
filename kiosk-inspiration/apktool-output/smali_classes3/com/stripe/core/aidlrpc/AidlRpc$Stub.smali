.class public abstract Lcom/stripe/core/aidlrpc/AidlRpc$Stub;
.super Landroid/os/Binder;
.source "AidlRpc.java"

# interfaces
.implements Lcom/stripe/core/aidlrpc/AidlRpc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/aidlrpc/AidlRpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/aidlrpc/AidlRpc$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_clearUpdateListener:I = 0x3

.field static final TRANSACTION_makeRequest:I = 0x1

.field static final TRANSACTION_setUpdateListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "com.stripe.core.aidlrpc.AidlRpc"

    invoke-virtual {p0, p0, v0}, Lcom/stripe/core/aidlrpc/AidlRpc$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/stripe/core/aidlrpc/AidlRpc;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_0
    const-string v0, "com.stripe.core.aidlrpc.AidlRpc"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56
    instance-of v1, v0, Lcom/stripe/core/aidlrpc/AidlRpc;

    if-eqz v1, :cond_1

    .line 57
    check-cast v0, Lcom/stripe/core/aidlrpc/AidlRpc;

    return-object v0

    .line 59
    :cond_1
    new-instance v0, Lcom/stripe/core/aidlrpc/AidlRpc$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/stripe/core/aidlrpc/AidlRpc$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    const-string v0, "com.stripe.core.aidlrpc.AidlRpc"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 69
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 104
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-virtual {p0, p1}, Lcom/stripe/core/aidlrpc/AidlRpc$Stub;->clearUpdateListener(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/stripe/core/aidlrpc/AidlRpcUpdateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/stripe/core/aidlrpc/AidlRpcUpdateListener;

    move-result-object p2

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/stripe/core/aidlrpc/AidlRpc$Stub;->setUpdateListener(Ljava/lang/String;Lcom/stripe/core/aidlrpc/AidlRpcUpdateListener;)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 84
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/stripe/core/aidlrpc/AidlRpcListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/stripe/core/aidlrpc/AidlRpcListener;

    move-result-object p2

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/stripe/core/aidlrpc/AidlRpc$Stub;->makeRequest([BLcom/stripe/core/aidlrpc/AidlRpcListener;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    return v1

    .line 75
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
