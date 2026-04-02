.class public interface abstract Lcom/sun/jna/platform/win32/Shell32;
.super Ljava/lang/Object;
.source "Shell32.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/ShellAPI;
.implements Lcom/sun/jna/win32/StdCallLibrary;


# static fields
.field public static final INSTANCE:Lcom/sun/jna/platform/win32/Shell32;

.field public static final SEE_MASK_FLAG_NO_UI:I = 0x400

.field public static final SEE_MASK_NOCLOSEPROCESS:I = 0x40

.field public static final SHERB_NOCONFIRMATION:I = 0x1

.field public static final SHERB_NOPROGRESSUI:I = 0x2

.field public static final SHERB_NOSOUND:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    const-class v0, Lcom/sun/jna/platform/win32/Shell32;

    sget-object v1, Lcom/sun/jna/win32/W32APIOptions;->DEFAULT_OPTIONS:Ljava/util/Map;

    const-string v2, "shell32"

    invoke-static {v2, v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/Shell32;

    sput-object v0, Lcom/sun/jna/platform/win32/Shell32;->INSTANCE:Lcom/sun/jna/platform/win32/Shell32;

    return-void
.end method


# virtual methods
.method public abstract ExtractIconEx(Ljava/lang/String;I[Lcom/sun/jna/platform/win32/WinDef$HICON;[Lcom/sun/jna/platform/win32/WinDef$HICON;I)I
.end method

.method public abstract GetCurrentProcessExplicitAppUserModelID(Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract SHAppBarMessage(Lcom/sun/jna/platform/win32/WinDef$DWORD;Lcom/sun/jna/platform/win32/ShellAPI$APPBARDATA;)Lcom/sun/jna/platform/win32/WinDef$UINT_PTR;
.end method

.method public abstract SHEmptyRecycleBin(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Ljava/lang/String;I)I
.end method

.method public abstract SHFileOperation(Lcom/sun/jna/platform/win32/ShellAPI$SHFILEOPSTRUCT;)I
.end method

.method public abstract SHGetDesktopFolder(Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract SHGetFolderPath(Lcom/sun/jna/platform/win32/WinDef$HWND;ILcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinDef$DWORD;[C)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract SHGetKnownFolderPath(Lcom/sun/jna/platform/win32/Guid$GUID;ILcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract SHGetSpecialFolderLocation(Lcom/sun/jna/platform/win32/WinDef$HWND;ILcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract SHGetSpecialFolderPath(Lcom/sun/jna/platform/win32/WinDef$HWND;[CIZ)Z
.end method

.method public abstract SetCurrentProcessExplicitAppUserModelID(Lcom/sun/jna/WString;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract ShellExecute(Lcom/sun/jna/platform/win32/WinDef$HWND;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/sun/jna/platform/win32/WinDef$INT_PTR;
.end method

.method public abstract ShellExecuteEx(Lcom/sun/jna/platform/win32/ShellAPI$SHELLEXECUTEINFO;)Z
.end method
