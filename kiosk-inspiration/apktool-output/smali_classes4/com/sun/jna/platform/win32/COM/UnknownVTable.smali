.class public Lcom/sun/jna/platform/win32/COM/UnknownVTable;
.super Lcom/sun/jna/Structure;
.source "UnknownVTable.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "QueryInterfaceCallback",
        "AddRefCallback",
        "ReleaseCallback"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/COM/UnknownVTable$ReleaseCallback;,
        Lcom/sun/jna/platform/win32/COM/UnknownVTable$AddRefCallback;,
        Lcom/sun/jna/platform/win32/COM/UnknownVTable$QueryInterfaceCallback;,
        Lcom/sun/jna/platform/win32/COM/UnknownVTable$ByReference;
    }
.end annotation


# instance fields
.field public AddRefCallback:Lcom/sun/jna/platform/win32/COM/UnknownVTable$AddRefCallback;

.field public QueryInterfaceCallback:Lcom/sun/jna/platform/win32/COM/UnknownVTable$QueryInterfaceCallback;

.field public ReleaseCallback:Lcom/sun/jna/platform/win32/COM/UnknownVTable$ReleaseCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
