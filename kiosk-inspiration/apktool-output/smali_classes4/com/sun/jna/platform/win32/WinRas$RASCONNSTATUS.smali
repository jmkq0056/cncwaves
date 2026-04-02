.class public Lcom/sun/jna/platform/win32/WinRas$RASCONNSTATUS;
.super Lcom/sun/jna/Structure;
.source "WinRas.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dwSize",
        "rasconnstate",
        "dwError",
        "szDeviceType",
        "szDeviceName",
        "szPhoneNumber",
        "localEndPoint",
        "remoteEndPoint",
        "rasconnsubstate"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinRas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RASCONNSTATUS"
.end annotation


# instance fields
.field public dwError:I

.field public dwSize:I

.field public localEndPoint:Lcom/sun/jna/platform/win32/WinRas$RASTUNNELENDPOINT;

.field public rasconnstate:I

.field public rasconnsubstate:I

.field public remoteEndPoint:Lcom/sun/jna/platform/win32/WinRas$RASTUNNELENDPOINT;

.field public szDeviceName:[C

.field public szDeviceType:[C

.field public szPhoneNumber:[C


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 621
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0x11

    .line 648
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASCONNSTATUS;->szDeviceType:[C

    const/16 v0, 0x81

    .line 654
    new-array v1, v0, [C

    iput-object v1, p0, Lcom/sun/jna/platform/win32/WinRas$RASCONNSTATUS;->szDeviceName:[C

    .line 658
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASCONNSTATUS;->szPhoneNumber:[C

    .line 622
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinRas$RASCONNSTATUS;->size()I

    move-result v0

    iput v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASCONNSTATUS;->dwSize:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 1

    .line 626
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    const/16 p1, 0x11

    .line 648
    new-array p1, p1, [C

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinRas$RASCONNSTATUS;->szDeviceType:[C

    const/16 p1, 0x81

    .line 654
    new-array v0, p1, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASCONNSTATUS;->szDeviceName:[C

    .line 658
    new-array p1, p1, [C

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinRas$RASCONNSTATUS;->szPhoneNumber:[C

    .line 627
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinRas$RASCONNSTATUS;->read()V

    return-void
.end method
