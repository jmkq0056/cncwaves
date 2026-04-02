.class public Lcom/sun/jna/platform/win32/WinRas$RASCONN;
.super Lcom/sun/jna/Structure;
.source "WinRas.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dwSize",
        "hrasconn",
        "szEntryName",
        "szDeviceType",
        "szDeviceName",
        "szPhonebook",
        "dwSubEntry",
        "guidEntry",
        "dwFlags",
        "luid",
        "guidCorrelationId"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinRas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RASCONN"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinRas$RASCONN$ByReference;
    }
.end annotation


# instance fields
.field public dwFlags:I

.field public dwSize:I

.field public dwSubEntry:I

.field public guidCorrelationId:Lcom/sun/jna/platform/win32/Guid$GUID;

.field public guidEntry:Lcom/sun/jna/platform/win32/Guid$GUID;

.field public hrasconn:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

.field public luid:Lcom/sun/jna/platform/win32/WinNT$LUID;

.field public szDeviceName:[C

.field public szDeviceType:[C

.field public szEntryName:[C

.field public szPhonebook:[C


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 315
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0x101

    .line 342
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASCONN;->szEntryName:[C

    const/16 v0, 0x11

    .line 348
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASCONN;->szDeviceType:[C

    const/16 v0, 0x81

    .line 353
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASCONN;->szDeviceName:[C

    const/16 v0, 0x104

    .line 358
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASCONN;->szPhonebook:[C

    .line 316
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinRas$RASCONN;->size()I

    move-result v0

    iput v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASCONN;->dwSize:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 320
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    const/16 p1, 0x101

    .line 342
    new-array p1, p1, [C

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinRas$RASCONN;->szEntryName:[C

    const/16 p1, 0x11

    .line 348
    new-array p1, p1, [C

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinRas$RASCONN;->szDeviceType:[C

    const/16 p1, 0x81

    .line 353
    new-array p1, p1, [C

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinRas$RASCONN;->szDeviceName:[C

    const/16 p1, 0x104

    .line 358
    new-array p1, p1, [C

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinRas$RASCONN;->szPhonebook:[C

    .line 321
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinRas$RASCONN;->read()V

    return-void
.end method
