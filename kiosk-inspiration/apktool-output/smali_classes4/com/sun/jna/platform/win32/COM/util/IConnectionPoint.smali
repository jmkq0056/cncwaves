.class public interface abstract Lcom/sun/jna/platform/win32/COM/util/IConnectionPoint;
.super Ljava/lang/Object;
.source "IConnectionPoint.java"


# annotations
.annotation runtime Lcom/sun/jna/platform/win32/COM/util/annotation/ComInterface;
    iid = "{B196B284-BAB4-101A-B69C-00AA00341D07}"
.end annotation


# virtual methods
.method public abstract advise(Ljava/lang/Class;Lcom/sun/jna/platform/win32/COM/util/IComEventCallbackListener;)Lcom/sun/jna/platform/win32/COM/util/IComEventCallbackCookie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/sun/jna/platform/win32/COM/util/IComEventCallbackListener;",
            ")",
            "Lcom/sun/jna/platform/win32/COM/util/IComEventCallbackCookie;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/COM/COMException;
        }
    .end annotation
.end method

.method public abstract unadvise(Ljava/lang/Class;Lcom/sun/jna/platform/win32/COM/util/IComEventCallbackCookie;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/sun/jna/platform/win32/COM/util/IComEventCallbackCookie;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/COM/COMException;
        }
    .end annotation
.end method
