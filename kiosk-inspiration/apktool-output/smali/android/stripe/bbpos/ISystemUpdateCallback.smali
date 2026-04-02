.class public interface abstract Landroid/stripe/bbpos/ISystemUpdateCallback;
.super Ljava/lang/Object;
.source "ISystemUpdateCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/stripe/bbpos/ISystemUpdateCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onPayloadApplicationComplete(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStatusUpdate(IF)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
