.class public interface abstract Lcom/stripe/core/aidlrpc/AidlRpcListener;
.super Ljava/lang/Object;
.source "AidlRpcListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/aidlrpc/AidlRpcListener$Stub;,
        Lcom/stripe/core/aidlrpc/AidlRpcListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.stripe.core.aidlrpc.AidlRpcListener"


# virtual methods
.method public abstract onComplete([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
