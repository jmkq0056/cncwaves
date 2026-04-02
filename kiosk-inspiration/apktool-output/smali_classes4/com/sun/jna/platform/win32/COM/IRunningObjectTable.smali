.class public interface abstract Lcom/sun/jna/platform/win32/COM/IRunningObjectTable;
.super Ljava/lang/Object;
.source "IRunningObjectTable.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/COM/IUnknown;


# static fields
.field public static final IID:Lcom/sun/jna/platform/win32/Guid$IID;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lcom/sun/jna/platform/win32/Guid$IID;

    const-string v1, "{00000010-0000-0000-C000-000000000046}"

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Guid$IID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/jna/platform/win32/COM/IRunningObjectTable;->IID:Lcom/sun/jna/platform/win32/Guid$IID;

    return-void
.end method


# virtual methods
.method public abstract EnumRunning(Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract GetObject(Lcom/sun/jna/Pointer;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract GetTimeOfLastChange(Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinBase$FILETIME$ByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract IsRunning(Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract NoteChangeTime(Lcom/sun/jna/platform/win32/WinDef$DWORD;Lcom/sun/jna/platform/win32/WinBase$FILETIME;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract Register(Lcom/sun/jna/platform/win32/WinDef$DWORD;Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract Revoke(Lcom/sun/jna/platform/win32/WinDef$DWORD;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method
