.class public Lcom/sun/jna/platform/win32/WinGDI$RGBQUAD;
.super Lcom/sun/jna/Structure;
.source "WinGDI.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "rgbBlue",
        "rgbGreen",
        "rgbRed",
        "rgbReserved"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinGDI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RGBQUAD"
.end annotation


# instance fields
.field public rgbBlue:B

.field public rgbGreen:B

.field public rgbRed:B

.field public rgbReserved:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 129
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/4 v0, 0x0

    .line 133
    iput-byte v0, p0, Lcom/sun/jna/platform/win32/WinGDI$RGBQUAD;->rgbReserved:B

    return-void
.end method
