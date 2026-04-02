.class public Lcom/sun/jna/platform/win32/WinGDI$DIBSECTION;
.super Lcom/sun/jna/Structure;
.source "WinGDI.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dsBm",
        "dsBmih",
        "dsBitfields",
        "dshSection",
        "dsOffset"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinGDI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DIBSECTION"
.end annotation


# instance fields
.field public dsBitfields:[I

.field public dsBm:Lcom/sun/jna/platform/win32/WinGDI$BITMAP;

.field public dsBmih:Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFOHEADER;

.field public dsOffset:I

.field public dshSection:Lcom/sun/jna/platform/win32/WinNT$HANDLE;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 170
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/4 v0, 0x3

    .line 173
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinGDI$DIBSECTION;->dsBitfields:[I

    return-void
.end method
