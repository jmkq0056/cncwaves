.class public interface abstract Lcom/stripe/core/aidlrpc/AidlRpcUpdateListener;
.super Ljava/lang/Object;
.source "AidlRpcUpdateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/aidlrpc/AidlRpcUpdateListener$Stub;,
        Lcom/stripe/core/aidlrpc/AidlRpcUpdateListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.stripe.core.aidlrpc.AidlRpcUpdateListener"


# virtual methods
.method public abstract onUpdate([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
