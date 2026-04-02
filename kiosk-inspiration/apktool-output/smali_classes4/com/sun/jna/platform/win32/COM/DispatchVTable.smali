.class public Lcom/sun/jna/platform/win32/COM/DispatchVTable;
.super Lcom/sun/jna/Structure;
.source "DispatchVTable.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "QueryInterfaceCallback",
        "AddRefCallback",
        "ReleaseCallback",
        "GetTypeInfoCountCallback",
        "GetTypeInfoCallback",
        "GetIDsOfNamesCallback",
        "InvokeCallback"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/COM/DispatchVTable$InvokeCallback;,
        Lcom/sun/jna/platform/win32/COM/DispatchVTable$GetIDsOfNamesCallback;,
        Lcom/sun/jna/platform/win32/COM/DispatchVTable$GetTypeInfoCallback;,
        Lcom/sun/jna/platform/win32/COM/DispatchVTable$GetTypeInfoCountCallback;,
        Lcom/sun/jna/platform/win32/COM/DispatchVTable$ReleaseCallback;,
        Lcom/sun/jna/platform/win32/COM/DispatchVTable$AddRefCallback;,
        Lcom/sun/jna/platform/win32/COM/DispatchVTable$QueryInterfaceCallback;,
        Lcom/sun/jna/platform/win32/COM/DispatchVTable$ByReference;
    }
.end annotation


# instance fields
.field public AddRefCallback:Lcom/sun/jna/platform/win32/COM/DispatchVTable$AddRefCallback;

.field public GetIDsOfNamesCallback:Lcom/sun/jna/platform/win32/COM/DispatchVTable$GetIDsOfNamesCallback;

.field public GetTypeInfoCallback:Lcom/sun/jna/platform/win32/COM/DispatchVTable$GetTypeInfoCallback;

.field public GetTypeInfoCountCallback:Lcom/sun/jna/platform/win32/COM/DispatchVTable$GetTypeInfoCountCallback;

.field public InvokeCallback:Lcom/sun/jna/platform/win32/COM/DispatchVTable$InvokeCallback;

.field public QueryInterfaceCallback:Lcom/sun/jna/platform/win32/COM/DispatchVTable$QueryInterfaceCallback;

.field public ReleaseCallback:Lcom/sun/jna/platform/win32/COM/DispatchVTable$ReleaseCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
