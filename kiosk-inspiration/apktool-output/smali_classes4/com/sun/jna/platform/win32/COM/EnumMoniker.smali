.class public Lcom/sun/jna/platform/win32/COM/EnumMoniker;
.super Lcom/sun/jna/platform/win32/COM/Unknown;
.source "EnumMoniker.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/COM/IEnumMoniker;


# direct methods
.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/COM/Unknown;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method


# virtual methods
.method public Clone(Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 2

    .line 78
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/EnumMoniker;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-class v0, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/4 v1, 0x6

    .line 77
    invoke-virtual {p0, v1, p1, v0}, Lcom/sun/jna/platform/win32/COM/EnumMoniker;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method public Next(Lcom/sun/jna/platform/win32/WinDef$ULONG;Lcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/platform/win32/WinDef$ULONGByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/EnumMoniker;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/4 p3, 0x3

    invoke-virtual {p0, p3, p1, p2}, Lcom/sun/jna/platform/win32/COM/EnumMoniker;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method public Reset()Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 3

    .line 67
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/EnumMoniker;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/4 v2, 0x5

    invoke-virtual {p0, v2, v0, v1}, Lcom/sun/jna/platform/win32/COM/EnumMoniker;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object v0
.end method

.method public Skip(Lcom/sun/jna/platform/win32/WinDef$ULONG;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 2

    .line 57
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/EnumMoniker;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-class v0, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p1, v0}, Lcom/sun/jna/platform/win32/COM/EnumMoniker;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method
