.class public Lcom/sun/jna/platform/win32/WinBase$DCB;
.super Lcom/sun/jna/Structure;
.source "WinBase.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "DCBlength",
        "BaudRate",
        "controllBits",
        "wReserved",
        "XonLim",
        "XoffLim",
        "ByteSize",
        "Parity",
        "StopBits",
        "XonChar",
        "XoffChar",
        "ErrorChar",
        "EofChar",
        "EvtChar",
        "wReserved1"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DCB"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;
    }
.end annotation


# instance fields
.field public BaudRate:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public ByteSize:Lcom/sun/jna/platform/win32/WinDef$BYTE;

.field public DCBlength:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public EofChar:C

.field public ErrorChar:C

.field public EvtChar:C

.field public Parity:Lcom/sun/jna/platform/win32/WinDef$BYTE;

.field public StopBits:Lcom/sun/jna/platform/win32/WinDef$BYTE;

.field public XoffChar:C

.field public XoffLim:Lcom/sun/jna/platform/win32/WinDef$WORD;

.field public XonChar:C

.field public XonLim:Lcom/sun/jna/platform/win32/WinDef$WORD;

.field public controllBits:Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;

.field public wReserved:Lcom/sun/jna/platform/win32/WinDef$WORD;

.field public wReserved1:Lcom/sun/jna/platform/win32/WinDef$WORD;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 2237
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 2238
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinBase$DCB;->DCBlength:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    return-void
.end method
