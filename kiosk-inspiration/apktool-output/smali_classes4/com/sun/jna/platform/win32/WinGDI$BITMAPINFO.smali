.class public Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFO;
.super Lcom/sun/jna/Structure;
.source "WinGDI.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "bmiHeader",
        "bmiColors"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinGDI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BITMAPINFO"
.end annotation


# instance fields
.field public bmiColors:[Lcom/sun/jna/platform/win32/WinGDI$RGBQUAD;

.field public bmiHeader:Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFOHEADER;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 142
    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFO;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 144
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 139
    new-instance v0, Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFOHEADER;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFOHEADER;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFO;->bmiHeader:Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFOHEADER;

    const/4 v0, 0x1

    .line 140
    new-array v0, v0, [Lcom/sun/jna/platform/win32/WinGDI$RGBQUAD;

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFO;->bmiColors:[Lcom/sun/jna/platform/win32/WinGDI$RGBQUAD;

    .line 145
    new-array p1, p1, [Lcom/sun/jna/platform/win32/WinGDI$RGBQUAD;

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFO;->bmiColors:[Lcom/sun/jna/platform/win32/WinGDI$RGBQUAD;

    return-void
.end method
