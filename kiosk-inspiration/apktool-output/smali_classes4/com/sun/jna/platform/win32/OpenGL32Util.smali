.class public abstract Lcom/sun/jna/platform/win32/OpenGL32Util;
.super Ljava/lang/Object;
.source "OpenGL32Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countGpusNV()I
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 54
    const-string v0, "Message"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v10}, Lcom/sun/jna/platform/win32/User32Util;->createWindow(Ljava/lang/String;Ljava/lang/String;IIIIILcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/platform/win32/WinDef$HMENU;Lcom/sun/jna/platform/win32/WinDef$HINSTANCE;Lcom/sun/jna/platform/win32/WinDef$LPVOID;)Lcom/sun/jna/platform/win32/WinDef$HWND;

    move-result-object v0

    .line 55
    sget-object v1, Lcom/sun/jna/platform/win32/User32;->INSTANCE:Lcom/sun/jna/platform/win32/User32;

    invoke-interface {v1, v0}, Lcom/sun/jna/platform/win32/User32;->GetDC(Lcom/sun/jna/platform/win32/WinDef$HWND;)Lcom/sun/jna/platform/win32/WinDef$HDC;

    move-result-object v1

    .line 58
    new-instance v2, Lcom/sun/jna/platform/win32/WinGDI$PIXELFORMATDESCRIPTOR$ByReference;

    invoke-direct {v2}, Lcom/sun/jna/platform/win32/WinGDI$PIXELFORMATDESCRIPTOR$ByReference;-><init>()V

    const/4 v3, 0x1

    .line 59
    iput-short v3, v2, Lcom/sun/jna/platform/win32/WinGDI$PIXELFORMATDESCRIPTOR$ByReference;->nVersion:S

    const/16 v3, 0x25

    .line 60
    iput v3, v2, Lcom/sun/jna/platform/win32/WinGDI$PIXELFORMATDESCRIPTOR$ByReference;->dwFlags:I

    const/4 v3, 0x0

    .line 61
    iput-byte v3, v2, Lcom/sun/jna/platform/win32/WinGDI$PIXELFORMATDESCRIPTOR$ByReference;->iPixelType:B

    const/16 v4, 0x18

    .line 62
    iput-byte v4, v2, Lcom/sun/jna/platform/win32/WinGDI$PIXELFORMATDESCRIPTOR$ByReference;->cColorBits:B

    const/16 v4, 0x10

    .line 63
    iput-byte v4, v2, Lcom/sun/jna/platform/win32/WinGDI$PIXELFORMATDESCRIPTOR$ByReference;->cDepthBits:B

    .line 64
    iput-byte v3, v2, Lcom/sun/jna/platform/win32/WinGDI$PIXELFORMATDESCRIPTOR$ByReference;->iLayerType:B

    .line 65
    sget-object v5, Lcom/sun/jna/platform/win32/GDI32;->INSTANCE:Lcom/sun/jna/platform/win32/GDI32;

    sget-object v6, Lcom/sun/jna/platform/win32/GDI32;->INSTANCE:Lcom/sun/jna/platform/win32/GDI32;

    invoke-interface {v6, v1, v2}, Lcom/sun/jna/platform/win32/GDI32;->ChoosePixelFormat(Lcom/sun/jna/platform/win32/WinDef$HDC;Lcom/sun/jna/platform/win32/WinGDI$PIXELFORMATDESCRIPTOR$ByReference;)I

    move-result v6

    invoke-interface {v5, v1, v6, v2}, Lcom/sun/jna/platform/win32/GDI32;->SetPixelFormat(Lcom/sun/jna/platform/win32/WinDef$HDC;ILcom/sun/jna/platform/win32/WinGDI$PIXELFORMATDESCRIPTOR$ByReference;)Z

    .line 68
    sget-object v2, Lcom/sun/jna/platform/win32/OpenGL32;->INSTANCE:Lcom/sun/jna/platform/win32/OpenGL32;

    invoke-interface {v2, v1}, Lcom/sun/jna/platform/win32/OpenGL32;->wglCreateContext(Lcom/sun/jna/platform/win32/WinDef$HDC;)Lcom/sun/jna/platform/win32/WinDef$HGLRC;

    move-result-object v2

    .line 69
    sget-object v5, Lcom/sun/jna/platform/win32/OpenGL32;->INSTANCE:Lcom/sun/jna/platform/win32/OpenGL32;

    invoke-interface {v5, v1, v2}, Lcom/sun/jna/platform/win32/OpenGL32;->wglMakeCurrent(Lcom/sun/jna/platform/win32/WinDef$HDC;Lcom/sun/jna/platform/win32/WinDef$HGLRC;)Z

    .line 70
    sget-object v5, Lcom/sun/jna/platform/win32/OpenGL32;->INSTANCE:Lcom/sun/jna/platform/win32/OpenGL32;

    const-string v6, "wglEnumGpusNV"

    invoke-interface {v5, v6}, Lcom/sun/jna/platform/win32/OpenGL32;->wglGetProcAddress(Ljava/lang/String;)Lcom/sun/jna/Pointer;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    .line 71
    :cond_0
    invoke-static {v5}, Lcom/sun/jna/Function;->getFunction(Lcom/sun/jna/Pointer;)Lcom/sun/jna/Function;

    move-result-object v5

    .line 72
    :goto_0
    sget-object v6, Lcom/sun/jna/platform/win32/OpenGL32;->INSTANCE:Lcom/sun/jna/platform/win32/OpenGL32;

    invoke-interface {v6, v2}, Lcom/sun/jna/platform/win32/OpenGL32;->wglDeleteContext(Lcom/sun/jna/platform/win32/WinDef$HGLRC;)Z

    .line 75
    sget-object v2, Lcom/sun/jna/platform/win32/User32;->INSTANCE:Lcom/sun/jna/platform/win32/User32;

    invoke-interface {v2, v0, v1}, Lcom/sun/jna/platform/win32/User32;->ReleaseDC(Lcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/platform/win32/WinDef$HDC;)I

    .line 76
    invoke-static {v0}, Lcom/sun/jna/platform/win32/User32Util;->destroyWindow(Lcom/sun/jna/platform/win32/WinDef$HWND;)V

    if-nez v5, :cond_1

    return v3

    .line 82
    :cond_1
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$HGLRCByReference;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/WinDef$HGLRCByReference;-><init>()V

    move v1, v3

    :goto_1
    if-ge v1, v4, :cond_3

    .line 84
    const-class v2, Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6, v0}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lcom/sun/jna/Function;->invoke(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 85
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v3
.end method

.method public static wglGetProcAddress(Ljava/lang/String;)Lcom/sun/jna/Function;
    .locals 1

    .line 44
    sget-object p0, Lcom/sun/jna/platform/win32/OpenGL32;->INSTANCE:Lcom/sun/jna/platform/win32/OpenGL32;

    const-string v0, "wglEnumGpusNV"

    invoke-interface {p0, v0}, Lcom/sun/jna/platform/win32/OpenGL32;->wglGetProcAddress(Ljava/lang/String;)Lcom/sun/jna/Pointer;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 45
    :cond_0
    invoke-static {p0}, Lcom/sun/jna/Function;->getFunction(Lcom/sun/jna/Pointer;)Lcom/sun/jna/Function;

    move-result-object p0

    return-object p0
.end method
