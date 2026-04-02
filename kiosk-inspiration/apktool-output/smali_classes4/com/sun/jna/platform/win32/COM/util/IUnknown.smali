.class public interface abstract Lcom/sun/jna/platform/win32/COM/util/IUnknown;
.super Ljava/lang/Object;
.source "IUnknown.java"


# annotations
.annotation runtime Lcom/sun/jna/platform/win32/COM/util/annotation/ComInterface;
    iid = "{00000000-0000-0000-C000-000000000046}"
.end annotation


# virtual methods
.method public abstract queryInterface(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/COM/COMException;
        }
    .end annotation
.end method
