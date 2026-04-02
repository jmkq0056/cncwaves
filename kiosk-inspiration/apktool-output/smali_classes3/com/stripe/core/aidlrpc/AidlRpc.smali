.class public interface abstract Lcom/stripe/core/aidlrpc/AidlRpc;
.super Ljava/lang/Object;
.source "AidlRpc.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/aidlrpc/AidlRpc$Stub;,
        Lcom/stripe/core/aidlrpc/AidlRpc$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.stripe.core.aidlrpc.AidlRpc"


# virtual methods
.method public abstract clearUpdateListener(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract makeRequest([BLcom/stripe/core/aidlrpc/AidlRpcListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setUpdateListener(Ljava/lang/String;Lcom/stripe/core/aidlrpc/AidlRpcUpdateListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
