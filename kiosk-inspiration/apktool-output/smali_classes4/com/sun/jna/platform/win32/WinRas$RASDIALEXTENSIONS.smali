.class public Lcom/sun/jna/platform/win32/WinRas$RASDIALEXTENSIONS;
.super Lcom/sun/jna/Structure;
.source "WinRas.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dwSize",
        "dwfOptions",
        "hwndParent",
        "reserved",
        "reserved1",
        "RasEapInfo",
        "fSkipPppAuth",
        "RasDevSpecificInfo"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinRas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RASDIALEXTENSIONS"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinRas$RASDIALEXTENSIONS$ByReference;
    }
.end annotation


# instance fields
.field public RasDevSpecificInfo:Lcom/sun/jna/platform/win32/WinRas$RASDEVSPECIFICINFO;

.field public RasEapInfo:Lcom/sun/jna/platform/win32/WinRas$RASEAPINFO;

.field public dwSize:I

.field public dwfOptions:I

.field public fSkipPppAuth:Lcom/sun/jna/platform/win32/WinDef$BOOL;

.field public hwndParent:Lcom/sun/jna/platform/win32/WinDef$HWND;

.field public reserved:Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;

.field public reserved1:Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 183
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 184
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinRas$RASDIALEXTENSIONS;->size()I

    move-result v0

    iput v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASDIALEXTENSIONS;->dwSize:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 188
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 189
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinRas$RASDIALEXTENSIONS;->read()V

    return-void
.end method
