.class public Lcom/sun/jna/platform/win32/WinGDI$BITMAP;
.super Lcom/sun/jna/Structure;
.source "WinGDI.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "bmType",
        "bmWidth",
        "bmHeight",
        "bmWidthBytes",
        "bmPlanes",
        "bmBitsPixel",
        "bmBits"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinGDI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BITMAP"
.end annotation


# instance fields
.field public bmBits:Lcom/sun/jna/Pointer;

.field public bmBitsPixel:S

.field public bmHeight:Lcom/sun/jna/NativeLong;

.field public bmPlanes:S

.field public bmType:Lcom/sun/jna/NativeLong;

.field public bmWidth:Lcom/sun/jna/NativeLong;

.field public bmWidthBytes:Lcom/sun/jna/NativeLong;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
