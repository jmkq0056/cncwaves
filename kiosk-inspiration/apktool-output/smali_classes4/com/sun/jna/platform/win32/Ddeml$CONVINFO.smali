.class public Lcom/sun/jna/platform/win32/Ddeml$CONVINFO;
.super Lcom/sun/jna/Structure;
.source "Ddeml.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "cb",
        "hUser",
        "hConvPartner",
        "hszSvcPartner",
        "hszServiceReq",
        "hszTopic",
        "hszItem",
        "wFmt",
        "wType",
        "wStatus",
        "wConvst",
        "wLastError",
        "hConvList",
        "ConvCtxt",
        "hwnd",
        "hwndPartner"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Ddeml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CONVINFO"
.end annotation


# instance fields
.field public ConvCtxt:Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;

.field public cb:I

.field public hConvList:Lcom/sun/jna/platform/win32/Ddeml$HCONVLIST;

.field public hConvPartner:Lcom/sun/jna/platform/win32/Ddeml$HCONV;

.field public hUser:Lcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;

.field public hszItem:Lcom/sun/jna/platform/win32/Ddeml$HSZ;

.field public hszServiceReq:Lcom/sun/jna/platform/win32/Ddeml$HSZ;

.field public hszSvcPartner:Lcom/sun/jna/platform/win32/Ddeml$HSZ;

.field public hszTopic:Lcom/sun/jna/platform/win32/Ddeml$HSZ;

.field public hwnd:Lcom/sun/jna/platform/win32/WinDef$HWND;

.field public hwndPartner:Lcom/sun/jna/platform/win32/WinDef$HWND;

.field public wConvst:I

.field public wFmt:I

.field public wLastError:I

.field public wStatus:I

.field public wType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 1

    .line 185
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Ddeml$CONVINFO;->size()I

    move-result v0

    iput v0, p0, Lcom/sun/jna/platform/win32/Ddeml$CONVINFO;->cb:I

    .line 186
    invoke-super {p0}, Lcom/sun/jna/Structure;->write()V

    return-void
.end method
