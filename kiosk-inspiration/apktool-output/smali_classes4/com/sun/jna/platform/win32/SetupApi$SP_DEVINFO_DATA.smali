.class public Lcom/sun/jna/platform/win32/SetupApi$SP_DEVINFO_DATA;
.super Lcom/sun/jna/Structure;
.source "SetupApi.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "cbSize",
        "InterfaceClassGuid",
        "DevInst",
        "Reserved"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/SetupApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SP_DEVINFO_DATA"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/SetupApi$SP_DEVINFO_DATA$ByReference;
    }
.end annotation


# instance fields
.field public DevInst:I

.field public InterfaceClassGuid:Lcom/sun/jna/platform/win32/Guid$GUID;

.field public Reserved:Lcom/sun/jna/Pointer;

.field public cbSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 472
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 473
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/SetupApi$SP_DEVINFO_DATA;->size()I

    move-result v0

    iput v0, p0, Lcom/sun/jna/platform/win32/SetupApi$SP_DEVINFO_DATA;->cbSize:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 477
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 478
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/SetupApi$SP_DEVINFO_DATA;->read()V

    return-void
.end method
