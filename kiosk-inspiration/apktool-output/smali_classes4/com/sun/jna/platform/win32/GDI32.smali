.class public interface abstract Lcom/sun/jna/platform/win32/GDI32;
.super Ljava/lang/Object;
.source "GDI32.java"

# interfaces
.implements Lcom/sun/jna/win32/StdCallLibrary;


# static fields
.field public static final INSTANCE:Lcom/sun/jna/platform/win32/GDI32;

.field public static final SRCCOPY:I = 0xcc0020


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 53
    const-class v0, Lcom/sun/jna/platform/win32/GDI32;

    sget-object v1, Lcom/sun/jna/win32/W32APIOptions;->DEFAULT_OPTIONS:Ljava/util/Map;

    const-string v2, "gdi32"

    invoke-static {v2, v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/GDI32;

    sput-object v0, Lcom/sun/jna/platform/win32/GDI32;->INSTANCE:Lcom/sun/jna/platform/win32/GDI32;

    return-void
.end method


# virtual methods
.method public abstract BitBlt(Lcom/sun/jna/platform/win32/WinDef$HDC;IIIILcom/sun/jna/platform/win32/WinDef$HDC;III)Z
.end method

.method public abstract ChoosePixelFormat(Lcom/sun/jna/platform/win32/WinDef$HDC;Lcom/sun/jna/platform/win32/WinGDI$PIXELFORMATDESCRIPTOR$ByReference;)I
.end method

.method public abstract CombineRgn(Lcom/sun/jna/platform/win32/WinDef$HRGN;Lcom/sun/jna/platform/win32/WinDef$HRGN;Lcom/sun/jna/platform/win32/WinDef$HRGN;I)I
.end method

.method public abstract CreateCompatibleBitmap(Lcom/sun/jna/platform/win32/WinDef$HDC;II)Lcom/sun/jna/platform/win32/WinDef$HBITMAP;
.end method

.method public abstract CreateCompatibleDC(Lcom/sun/jna/platform/win32/WinDef$HDC;)Lcom/sun/jna/platform/win32/WinDef$HDC;
.end method

.method public abstract CreateDIBSection(Lcom/sun/jna/platform/win32/WinDef$HDC;Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFO;ILcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/Pointer;I)Lcom/sun/jna/platform/win32/WinDef$HBITMAP;
.end method

.method public abstract CreateDIBitmap(Lcom/sun/jna/platform/win32/WinDef$HDC;Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFOHEADER;ILcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFO;I)Lcom/sun/jna/platform/win32/WinDef$HBITMAP;
.end method

.method public abstract CreatePolyPolygonRgn([Lcom/sun/jna/platform/win32/WinDef$POINT;[III)Lcom/sun/jna/platform/win32/WinDef$HRGN;
.end method

.method public abstract CreateRectRgn(IIII)Lcom/sun/jna/platform/win32/WinDef$HRGN;
.end method

.method public abstract CreateRoundRectRgn(IIIIII)Lcom/sun/jna/platform/win32/WinDef$HRGN;
.end method

.method public abstract DeleteDC(Lcom/sun/jna/platform/win32/WinDef$HDC;)Z
.end method

.method public abstract DeleteObject(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z
.end method

.method public abstract ExtCreateRegion(Lcom/sun/jna/Pointer;ILcom/sun/jna/platform/win32/WinGDI$RGNDATA;)Lcom/sun/jna/platform/win32/WinDef$HRGN;
.end method

.method public abstract GetDIBits(Lcom/sun/jna/platform/win32/WinDef$HDC;Lcom/sun/jna/platform/win32/WinDef$HBITMAP;IILcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinGDI$BITMAPINFO;I)I
.end method

.method public abstract GetDeviceCaps(Lcom/sun/jna/platform/win32/WinDef$HDC;I)I
.end method

.method public abstract GetObject(Lcom/sun/jna/platform/win32/WinNT$HANDLE;ILcom/sun/jna/Pointer;)I
.end method

.method public abstract SelectObject(Lcom/sun/jna/platform/win32/WinDef$HDC;Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;
.end method

.method public abstract SetPixel(Lcom/sun/jna/platform/win32/WinDef$HDC;III)I
.end method

.method public abstract SetPixelFormat(Lcom/sun/jna/platform/win32/WinDef$HDC;ILcom/sun/jna/platform/win32/WinGDI$PIXELFORMATDESCRIPTOR$ByReference;)Z
.end method

.method public abstract SetRectRgn(Lcom/sun/jna/platform/win32/WinDef$HRGN;IIII)Z
.end method
