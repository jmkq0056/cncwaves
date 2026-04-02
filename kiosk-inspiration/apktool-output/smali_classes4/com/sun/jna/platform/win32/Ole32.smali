.class public interface abstract Lcom/sun/jna/platform/win32/Ole32;
.super Ljava/lang/Object;
.source "Ole32.java"

# interfaces
.implements Lcom/sun/jna/win32/StdCallLibrary;


# static fields
.field public static final COINIT_APARTMENTTHREADED:I = 0x2

.field public static final COINIT_DISABLE_OLE1DDE:I = 0x4

.field public static final COINIT_MULTITHREADED:I = 0x0

.field public static final COINIT_SPEED_OVER_MEMORY:I = 0x8

.field public static final EOAC_NONE:I = 0x0

.field public static final INSTANCE:Lcom/sun/jna/platform/win32/Ole32;

.field public static final RPC_C_AUTHN_LEVEL_CALL:I = 0x3

.field public static final RPC_C_AUTHN_LEVEL_DEFAULT:I = 0x0

.field public static final RPC_C_AUTHN_WINNT:I = 0xa

.field public static final RPC_C_AUTHZ_NONE:I = 0x0

.field public static final RPC_C_IMP_LEVEL_IMPERSONATE:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    const-class v0, Lcom/sun/jna/platform/win32/Ole32;

    sget-object v1, Lcom/sun/jna/win32/W32APIOptions;->DEFAULT_OPTIONS:Ljava/util/Map;

    const-string v2, "Ole32"

    invoke-static {v2, v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/Ole32;

    sput-object v0, Lcom/sun/jna/platform/win32/Ole32;->INSTANCE:Lcom/sun/jna/platform/win32/Ole32;

    return-void
.end method


# virtual methods
.method public abstract CLSIDFromProgID(Ljava/lang/String;Lcom/sun/jna/platform/win32/Guid$CLSID$ByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract CLSIDFromString(Ljava/lang/String;Lcom/sun/jna/platform/win32/Guid$CLSID$ByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract CoCreateGuid(Lcom/sun/jna/platform/win32/Guid$GUID;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract CoCreateInstance(Lcom/sun/jna/platform/win32/Guid$GUID;Lcom/sun/jna/Pointer;ILcom/sun/jna/platform/win32/Guid$GUID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract CoGetMalloc(Lcom/sun/jna/platform/win32/WinDef$DWORD;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract CoInitialize(Lcom/sun/jna/platform/win32/WinDef$LPVOID;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract CoInitializeEx(Lcom/sun/jna/Pointer;I)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract CoInitializeSecurity(Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;ILcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;IILcom/sun/jna/Pointer;ILcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract CoIsHandlerConnected(Lcom/sun/jna/Pointer;)Z
.end method

.method public abstract CoSetProxyBlanket(Lcom/sun/jna/platform/win32/COM/Unknown;IILcom/sun/jna/platform/win32/WTypes$LPOLESTR;IILcom/sun/jna/Pointer;I)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract CoTaskMemAlloc(J)Lcom/sun/jna/Pointer;
.end method

.method public abstract CoTaskMemFree(Lcom/sun/jna/Pointer;)V
.end method

.method public abstract CoTaskMemRealloc(Lcom/sun/jna/Pointer;J)Lcom/sun/jna/Pointer;
.end method

.method public abstract CoUninitialize()V
.end method

.method public abstract CreateBindCtx(Lcom/sun/jna/platform/win32/WinDef$DWORD;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract GetRunningObjectTable(Lcom/sun/jna/platform/win32/WinDef$DWORD;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract IIDFromString(Ljava/lang/String;Lcom/sun/jna/platform/win32/Guid$GUID;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract OleFlushClipboard()Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract OleInitialize(Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract OleRun(Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract OleUninitialize()V
.end method

.method public abstract StringFromGUID2(Lcom/sun/jna/platform/win32/Guid$GUID;[CI)I
.end method
