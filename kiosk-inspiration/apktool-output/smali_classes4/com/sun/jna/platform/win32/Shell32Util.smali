.class public abstract Lcom/sun/jna/platform/win32/Shell32Util;
.super Ljava/lang/Object;
.source "Shell32Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFolderPath(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 68
    sget-object v1, Lcom/sun/jna/platform/win32/ShlObj;->SHGFP_TYPE_CURRENT:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    invoke-static {v0, p0, v1}, Lcom/sun/jna/platform/win32/Shell32Util;->getFolderPath(Lcom/sun/jna/platform/win32/WinDef$HWND;ILcom/sun/jna/platform/win32/WinDef$DWORD;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFolderPath(Lcom/sun/jna/platform/win32/WinDef$HWND;ILcom/sun/jna/platform/win32/WinDef$DWORD;)Ljava/lang/String;
    .locals 7

    const/16 v0, 0x104

    .line 51
    new-array v6, v0, [C

    .line 52
    sget-object v1, Lcom/sun/jna/platform/win32/Shell32;->INSTANCE:Lcom/sun/jna/platform/win32/Shell32;

    const/4 v4, 0x0

    move-object v2, p0

    move v3, p1

    move-object v5, p2

    invoke-interface/range {v1 .. v6}, Lcom/sun/jna/platform/win32/Shell32;->SHGetFolderPath(Lcom/sun/jna/platform/win32/WinDef$HWND;ILcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinDef$DWORD;[C)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p0

    .line 54
    sget-object p1, Lcom/sun/jna/platform/win32/W32Errors;->S_OK:Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    invoke-static {v6}, Lcom/sun/jna/Native;->toString([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 55
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    throw p1
.end method

.method public static getKnownFolderPath(Lcom/sun/jna/platform/win32/Guid$GUID;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/Win32Exception;
        }
    .end annotation

    .line 83
    sget-object v0, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;->NONE:Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/ShlObj$KNOWN_FOLDER_FLAG;->getFlag()I

    move-result v0

    .line 84
    new-instance v1, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v1}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    const/4 v2, 0x0

    .line 86
    sget-object v3, Lcom/sun/jna/platform/win32/Shell32;->INSTANCE:Lcom/sun/jna/platform/win32/Shell32;

    invoke-interface {v3, p0, v0, v2, v1}, Lcom/sun/jna/platform/win32/Shell32;->SHGetKnownFolderPath(Lcom/sun/jna/platform/win32/Guid$GUID;ILcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p0

    .line 88
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/sun/jna/platform/win32/W32Errors;->SUCCEEDED(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v1}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object p0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sun/jna/Pointer;->getWideString(J)Ljava/lang/String;

    move-result-object p0

    .line 94
    sget-object v0, Lcom/sun/jna/platform/win32/Ole32;->INSTANCE:Lcom/sun/jna/platform/win32/Ole32;

    invoke-virtual {v1}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/Ole32;->CoTaskMemFree(Lcom/sun/jna/Pointer;)V

    return-object p0

    .line 90
    :cond_0
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v0, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    throw v0
.end method

.method public static final getSpecialFolderPath(IZ)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x104

    .line 110
    new-array v0, v0, [C

    .line 111
    sget-object v1, Lcom/sun/jna/platform/win32/Shell32;->INSTANCE:Lcom/sun/jna/platform/win32/Shell32;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0, p0, p1}, Lcom/sun/jna/platform/win32/Shell32;->SHGetSpecialFolderPath(Lcom/sun/jna/platform/win32/WinDef$HWND;[CIZ)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 113
    invoke-static {v0}, Lcom/sun/jna/Native;->toString([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 112
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object p1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method
