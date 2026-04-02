.class public Lcom/sun/jna/platform/win32/COM/UnknownListener;
.super Lcom/sun/jna/Structure;
.source "UnknownListener.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "vtbl"
    }
.end annotation


# instance fields
.field public vtbl:Lcom/sun/jna/platform/win32/COM/UnknownVTable$ByReference;


# direct methods
.method public constructor <init>(Lcom/sun/jna/platform/win32/COM/IUnknownCallback;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 38
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/UnknownListener;->constructVTable()Lcom/sun/jna/platform/win32/COM/UnknownVTable$ByReference;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/jna/platform/win32/COM/UnknownListener;->vtbl:Lcom/sun/jna/platform/win32/COM/UnknownVTable$ByReference;

    .line 39
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/COM/UnknownListener;->initVTable(Lcom/sun/jna/platform/win32/COM/IUnknownCallback;)V

    .line 40
    invoke-super {p0}, Lcom/sun/jna/Structure;->write()V

    return-void
.end method


# virtual methods
.method protected constructVTable()Lcom/sun/jna/platform/win32/COM/UnknownVTable$ByReference;
    .locals 1

    .line 44
    new-instance v0, Lcom/sun/jna/platform/win32/COM/UnknownVTable$ByReference;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/COM/UnknownVTable$ByReference;-><init>()V

    return-object v0
.end method

.method protected initVTable(Lcom/sun/jna/platform/win32/COM/IUnknownCallback;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/UnknownListener;->vtbl:Lcom/sun/jna/platform/win32/COM/UnknownVTable$ByReference;

    new-instance v1, Lcom/sun/jna/platform/win32/COM/UnknownListener$1;

    invoke-direct {v1, p0, p1}, Lcom/sun/jna/platform/win32/COM/UnknownListener$1;-><init>(Lcom/sun/jna/platform/win32/COM/UnknownListener;Lcom/sun/jna/platform/win32/COM/IUnknownCallback;)V

    iput-object v1, v0, Lcom/sun/jna/platform/win32/COM/UnknownVTable$ByReference;->QueryInterfaceCallback:Lcom/sun/jna/platform/win32/COM/UnknownVTable$QueryInterfaceCallback;

    .line 54
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/UnknownListener;->vtbl:Lcom/sun/jna/platform/win32/COM/UnknownVTable$ByReference;

    new-instance v1, Lcom/sun/jna/platform/win32/COM/UnknownListener$2;

    invoke-direct {v1, p0, p1}, Lcom/sun/jna/platform/win32/COM/UnknownListener$2;-><init>(Lcom/sun/jna/platform/win32/COM/UnknownListener;Lcom/sun/jna/platform/win32/COM/IUnknownCallback;)V

    iput-object v1, v0, Lcom/sun/jna/platform/win32/COM/UnknownVTable$ByReference;->AddRefCallback:Lcom/sun/jna/platform/win32/COM/UnknownVTable$AddRefCallback;

    .line 60
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/UnknownListener;->vtbl:Lcom/sun/jna/platform/win32/COM/UnknownVTable$ByReference;

    new-instance v1, Lcom/sun/jna/platform/win32/COM/UnknownListener$3;

    invoke-direct {v1, p0, p1}, Lcom/sun/jna/platform/win32/COM/UnknownListener$3;-><init>(Lcom/sun/jna/platform/win32/COM/UnknownListener;Lcom/sun/jna/platform/win32/COM/IUnknownCallback;)V

    iput-object v1, v0, Lcom/sun/jna/platform/win32/COM/UnknownVTable$ByReference;->ReleaseCallback:Lcom/sun/jna/platform/win32/COM/UnknownVTable$ReleaseCallback;

    return-void
.end method
