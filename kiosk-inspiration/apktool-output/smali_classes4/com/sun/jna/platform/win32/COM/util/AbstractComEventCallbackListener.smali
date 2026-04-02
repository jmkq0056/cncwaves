.class public abstract Lcom/sun/jna/platform/win32/COM/util/AbstractComEventCallbackListener;
.super Ljava/lang/Object;
.source "AbstractComEventCallbackListener.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/COM/util/IComEventCallbackListener;


# instance fields
.field dispatchCallback:Lcom/sun/jna/platform/win32/COM/IDispatchCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/sun/jna/platform/win32/COM/util/AbstractComEventCallbackListener;->dispatchCallback:Lcom/sun/jna/platform/win32/COM/IDispatchCallback;

    return-void
.end method


# virtual methods
.method public setDispatchCallbackListener(Lcom/sun/jna/platform/win32/COM/IDispatchCallback;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/util/AbstractComEventCallbackListener;->dispatchCallback:Lcom/sun/jna/platform/win32/COM/IDispatchCallback;

    return-void
.end method
