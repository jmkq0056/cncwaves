.class public Lcom/sun/jna/platform/win32/COM/DispatchListener;
.super Lcom/sun/jna/Structure;
.source "DispatchListener.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "vtbl"
    }
.end annotation


# instance fields
.field public vtbl:Lcom/sun/jna/platform/win32/COM/DispatchVTable$ByReference;


# direct methods
.method public constructor <init>(Lcom/sun/jna/platform/win32/COM/IDispatchCallback;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 49
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/DispatchListener;->constructVTable()Lcom/sun/jna/platform/win32/COM/DispatchVTable$ByReference;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/jna/platform/win32/COM/DispatchListener;->vtbl:Lcom/sun/jna/platform/win32/COM/DispatchVTable$ByReference;

    .line 50
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/COM/DispatchListener;->initVTable(Lcom/sun/jna/platform/win32/COM/IDispatchCallback;)V

    .line 51
    invoke-super {p0}, Lcom/sun/jna/Structure;->write()V

    return-void
.end method


# virtual methods
.method protected constructVTable()Lcom/sun/jna/platform/win32/COM/DispatchVTable$ByReference;
    .locals 1

    .line 57
    new-instance v0, Lcom/sun/jna/platform/win32/COM/DispatchVTable$ByReference;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/COM/DispatchVTable$ByReference;-><init>()V

    return-object v0
.end method

.method protected initVTable(Lcom/sun/jna/platform/win32/COM/IDispatchCallback;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/DispatchListener;->vtbl:Lcom/sun/jna/platform/win32/COM/DispatchVTable$ByReference;

    new-instance v1, Lcom/sun/jna/platform/win32/COM/DispatchListener$1;

    invoke-direct {v1, p0, p1}, Lcom/sun/jna/platform/win32/COM/DispatchListener$1;-><init>(Lcom/sun/jna/platform/win32/COM/DispatchListener;Lcom/sun/jna/platform/win32/COM/IDispatchCallback;)V

    iput-object v1, v0, Lcom/sun/jna/platform/win32/COM/DispatchVTable$ByReference;->QueryInterfaceCallback:Lcom/sun/jna/platform/win32/COM/DispatchVTable$QueryInterfaceCallback;

    .line 67
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/DispatchListener;->vtbl:Lcom/sun/jna/platform/win32/COM/DispatchVTable$ByReference;

    new-instance v1, Lcom/sun/jna/platform/win32/COM/DispatchListener$2;

    invoke-direct {v1, p0, p1}, Lcom/sun/jna/platform/win32/COM/DispatchListener$2;-><init>(Lcom/sun/jna/platform/win32/COM/DispatchListener;Lcom/sun/jna/platform/win32/COM/IDispatchCallback;)V

    iput-object v1, v0, Lcom/sun/jna/platform/win32/COM/DispatchVTable$ByReference;->AddRefCallback:Lcom/sun/jna/platform/win32/COM/DispatchVTable$AddRefCallback;

    .line 73
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/DispatchListener;->vtbl:Lcom/sun/jna/platform/win32/COM/DispatchVTable$ByReference;

    new-instance v1, Lcom/sun/jna/platform/win32/COM/DispatchListener$3;

    invoke-direct {v1, p0, p1}, Lcom/sun/jna/platform/win32/COM/DispatchListener$3;-><init>(Lcom/sun/jna/platform/win32/COM/DispatchListener;Lcom/sun/jna/platform/win32/COM/IDispatchCallback;)V

    iput-object v1, v0, Lcom/sun/jna/platform/win32/COM/DispatchVTable$ByReference;->ReleaseCallback:Lcom/sun/jna/platform/win32/COM/DispatchVTable$ReleaseCallback;

    .line 79
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/DispatchListener;->vtbl:Lcom/sun/jna/platform/win32/COM/DispatchVTable$ByReference;

    new-instance v1, Lcom/sun/jna/platform/win32/COM/DispatchListener$4;

    invoke-direct {v1, p0, p1}, Lcom/sun/jna/platform/win32/COM/DispatchListener$4;-><init>(Lcom/sun/jna/platform/win32/COM/DispatchListener;Lcom/sun/jna/platform/win32/COM/IDispatchCallback;)V

    iput-object v1, v0, Lcom/sun/jna/platform/win32/COM/DispatchVTable$ByReference;->GetTypeInfoCountCallback:Lcom/sun/jna/platform/win32/COM/DispatchVTable$GetTypeInfoCountCallback;

    .line 85
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/DispatchListener;->vtbl:Lcom/sun/jna/platform/win32/COM/DispatchVTable$ByReference;

    new-instance v1, Lcom/sun/jna/platform/win32/COM/DispatchListener$5;

    invoke-direct {v1, p0, p1}, Lcom/sun/jna/platform/win32/COM/DispatchListener$5;-><init>(Lcom/sun/jna/platform/win32/COM/DispatchListener;Lcom/sun/jna/platform/win32/COM/IDispatchCallback;)V

    iput-object v1, v0, Lcom/sun/jna/platform/win32/COM/DispatchVTable$ByReference;->GetTypeInfoCallback:Lcom/sun/jna/platform/win32/COM/DispatchVTable$GetTypeInfoCallback;

    .line 91
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/DispatchListener;->vtbl:Lcom/sun/jna/platform/win32/COM/DispatchVTable$ByReference;

    new-instance v1, Lcom/sun/jna/platform/win32/COM/DispatchListener$6;

    invoke-direct {v1, p0, p1}, Lcom/sun/jna/platform/win32/COM/DispatchListener$6;-><init>(Lcom/sun/jna/platform/win32/COM/DispatchListener;Lcom/sun/jna/platform/win32/COM/IDispatchCallback;)V

    iput-object v1, v0, Lcom/sun/jna/platform/win32/COM/DispatchVTable$ByReference;->GetIDsOfNamesCallback:Lcom/sun/jna/platform/win32/COM/DispatchVTable$GetIDsOfNamesCallback;

    .line 98
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/DispatchListener;->vtbl:Lcom/sun/jna/platform/win32/COM/DispatchVTable$ByReference;

    new-instance v1, Lcom/sun/jna/platform/win32/COM/DispatchListener$7;

    invoke-direct {v1, p0, p1}, Lcom/sun/jna/platform/win32/COM/DispatchListener$7;-><init>(Lcom/sun/jna/platform/win32/COM/DispatchListener;Lcom/sun/jna/platform/win32/COM/IDispatchCallback;)V

    iput-object v1, v0, Lcom/sun/jna/platform/win32/COM/DispatchVTable$ByReference;->InvokeCallback:Lcom/sun/jna/platform/win32/COM/DispatchVTable$InvokeCallback;

    return-void
.end method
