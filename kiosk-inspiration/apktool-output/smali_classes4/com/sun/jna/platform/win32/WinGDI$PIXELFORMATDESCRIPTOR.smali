.class public Lcom/sun/jna/platform/win32/WinGDI$PIXELFORMATDESCRIPTOR;
.super Lcom/sun/jna/Structure;
.source "WinGDI.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "nSize",
        "nVersion",
        "dwFlags",
        "iPixelType",
        "cColorBits",
        "cRedBits",
        "cRedShift",
        "cGreenBits",
        "cGreenShift",
        "cBlueBits",
        "cBlueShift",
        "cAlphaBits",
        "cAlphaShift",
        "cAccumBits",
        "cAccumRedBits",
        "cAccumGreenBits",
        "cAccumBlueBits",
        "cAccumAlphaBits",
        "cDepthBits",
        "cStencilBits",
        "cAuxBuffers",
        "iLayerType",
        "bReserved",
        "dwLayerMask",
        "dwVisibleMask",
        "dwDamageMask"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinGDI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PIXELFORMATDESCRIPTOR"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinGDI$PIXELFORMATDESCRIPTOR$ByReference;
    }
.end annotation


# instance fields
.field public bReserved:B

.field public cAccumAlphaBits:B

.field public cAccumBits:B

.field public cAccumBlueBits:B

.field public cAccumGreenBits:B

.field public cAccumRedBits:B

.field public cAlphaBits:B

.field public cAlphaShift:B

.field public cAuxBuffers:B

.field public cBlueBits:B

.field public cBlueShift:B

.field public cColorBits:B

.field public cDepthBits:B

.field public cGreenBits:B

.field public cGreenShift:B

.field public cRedBits:B

.field public cRedShift:B

.field public cStencilBits:B

.field public dwDamageMask:I

.field public dwFlags:I

.field public dwLayerMask:I

.field public dwVisibleMask:I

.field public iLayerType:B

.field public iPixelType:B

.field public nSize:S

.field public nVersion:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 189
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 190
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinGDI$PIXELFORMATDESCRIPTOR;->size()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sun/jna/platform/win32/WinGDI$PIXELFORMATDESCRIPTOR;->nSize:S

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 195
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinGDI$PIXELFORMATDESCRIPTOR;->read()V

    return-void
.end method
