.class public Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFOHEADER;
.super Lcom/sun/jna/Structure;
.source "WinGDI.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "biSize",
        "biWidth",
        "biHeight",
        "biPlanes",
        "biBitCount",
        "biCompression",
        "biSizeImage",
        "biXPelsPerMeter",
        "biYPelsPerMeter",
        "biClrUsed",
        "biClrImportant"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinGDI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BITMAPINFOHEADER"
.end annotation


# instance fields
.field public biBitCount:S

.field public biClrImportant:I

.field public biClrUsed:I

.field public biCompression:I

.field public biHeight:I

.field public biPlanes:S

.field public biSize:I

.field public biSizeImage:I

.field public biWidth:I

.field public biXPelsPerMeter:I

.field public biYPelsPerMeter:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 114
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 115
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFOHEADER;->size()I

    move-result v0

    iput v0, p0, Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFOHEADER;->biSize:I

    return-void
.end method
