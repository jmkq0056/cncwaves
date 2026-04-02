.class public interface abstract Lcom/sun/jna/platform/win32/WinGDI;
.super Ljava/lang/Object;
.source "WinGDI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinGDI$PIXELFORMATDESCRIPTOR;,
        Lcom/sun/jna/platform/win32/WinGDI$DIBSECTION;,
        Lcom/sun/jna/platform/win32/WinGDI$BITMAP;,
        Lcom/sun/jna/platform/win32/WinGDI$ICONINFO;,
        Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFO;,
        Lcom/sun/jna/platform/win32/WinGDI$RGBQUAD;,
        Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFOHEADER;,
        Lcom/sun/jna/platform/win32/WinGDI$RGNDATA;,
        Lcom/sun/jna/platform/win32/WinGDI$RGNDATAHEADER;
    }
.end annotation


# static fields
.field public static final ALTERNATE:I = 0x1

.field public static final BI_BITFIELDS:I = 0x3

.field public static final BI_JPEG:I = 0x4

.field public static final BI_PNG:I = 0x5

.field public static final BI_RGB:I = 0x0

.field public static final BI_RLE4:I = 0x2

.field public static final BI_RLE8:I = 0x1

.field public static final COMPLEXREGION:I = 0x3

.field public static final DIB_PAL_COLORS:I = 0x1

.field public static final DIB_RGB_COLORS:I = 0x0

.field public static final ERROR:I = 0x0

.field public static final HGDI_ERROR:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

.field public static final NULLREGION:I = 0x1

.field public static final PFD_DOUBLEBUFFER:I = 0x1

.field public static final PFD_DRAW_TO_BITMAP:I = 0x8

.field public static final PFD_DRAW_TO_WINDOW:I = 0x4

.field public static final PFD_GENERIC_ACCELERATED:I = 0x1000

.field public static final PFD_GENERIC_FORMAT:I = 0x40

.field public static final PFD_MAIN_PLANE:I = 0x0

.field public static final PFD_NEED_PALETTE:I = 0x80

.field public static final PFD_NEED_SYSTEM_PALETTE:I = 0x100

.field public static final PFD_OVERLAY_PLANE:I = 0x1

.field public static final PFD_STEREO:I = 0x2

.field public static final PFD_SUPPORT_DIRECTDRAW:I = 0x2000

.field public static final PFD_SUPPORT_GDI:I = 0x10

.field public static final PFD_SUPPORT_OPENGL:I = 0x20

.field public static final PFD_SWAP_COPY:I = 0x400

.field public static final PFD_SWAP_EXCHANGE:I = 0x200

.field public static final PFD_SWAP_LAYER_BUFFERS:I = 0x800

.field public static final PFD_TYPE_COLORINDEX:I = 0x1

.field public static final PFD_TYPE_RGBA:I = 0x0

.field public static final PFD_UNDERLAY_PLANE:I = -0x1

.field public static final RDH_RECTANGLES:I = 0x1

.field public static final RGN_AND:I = 0x1

.field public static final RGN_COPY:I = 0x5

.field public static final RGN_DIFF:I = 0x4

.field public static final RGN_OR:I = 0x2

.field public static final RGN_XOR:I = 0x3

.field public static final SIMPLEREGION:I = 0x2

.field public static final WINDING:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    new-instance v0, Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    const/4 v1, -0x1

    invoke-static {v1}, Lcom/sun/jna/Pointer;->createConstant(I)Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/WinNT$HANDLE;-><init>(Lcom/sun/jna/Pointer;)V

    sput-object v0, Lcom/sun/jna/platform/win32/WinGDI;->HGDI_ERROR:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    return-void
.end method
