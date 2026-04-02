.class public Lcom/sun/jna/platform/win32/WinGDI$ICONINFO;
.super Lcom/sun/jna/Structure;
.source "WinGDI.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "fIcon",
        "xHotspot",
        "yHotspot",
        "hbmMask",
        "hbmColor"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinGDI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICONINFO"
.end annotation


# instance fields
.field public fIcon:Z

.field public hbmColor:Lcom/sun/jna/platform/win32/WinDef$HBITMAP;

.field public hbmMask:Lcom/sun/jna/platform/win32/WinDef$HBITMAP;

.field public xHotspot:I

.field public yHotspot:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
