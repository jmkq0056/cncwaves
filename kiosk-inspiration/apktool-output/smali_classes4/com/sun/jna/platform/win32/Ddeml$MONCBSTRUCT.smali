.class public Lcom/sun/jna/platform/win32/Ddeml$MONCBSTRUCT;
.super Lcom/sun/jna/Structure;
.source "Ddeml.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "cb",
        "dwTime",
        "hTask",
        "dwRet",
        "wType",
        "wFmt",
        "hConv",
        "hsz1",
        "hsz2",
        "hData",
        "dwData1",
        "dwData2",
        "cc",
        "cbData",
        "Data"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Ddeml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MONCBSTRUCT"
.end annotation


# instance fields
.field public Data:[B

.field public cb:I

.field public cbData:I

.field public cc:Lcom/sun/jna/platform/win32/Ddeml$CONVCONTEXT;

.field public dwData1:Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;

.field public dwData2:Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;

.field public dwRet:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public dwTime:I

.field public hConv:Lcom/sun/jna/platform/win32/Ddeml$HCONV;

.field public hData:Lcom/sun/jna/platform/win32/Ddeml$HDDEDATA;

.field public hTask:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

.field public hsz1:Lcom/sun/jna/platform/win32/Ddeml$HSZ;

.field public hsz2:Lcom/sun/jna/platform/win32/Ddeml$HSZ;

.field public wFmt:I

.field public wType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 199
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0x20

    .line 265
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Ddeml$MONCBSTRUCT;->Data:[B

    return-void
.end method
