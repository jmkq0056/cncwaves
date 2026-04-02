.class public interface abstract Lcom/sun/jna/platform/win32/COM/IShellFolder;
.super Ljava/lang/Object;
.source "IShellFolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/COM/IShellFolder$Converter;
    }
.end annotation


# static fields
.field public static final IID_ISHELLFOLDER:Lcom/sun/jna/platform/win32/Guid$IID;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Lcom/sun/jna/platform/win32/Guid$IID;

    const-string v1, "{000214E6-0000-0000-C000-000000000046}"

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Guid$IID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/jna/platform/win32/COM/IShellFolder;->IID_ISHELLFOLDER:Lcom/sun/jna/platform/win32/Guid$IID;

    return-void
.end method


# virtual methods
.method public abstract AddRef()I
.end method

.method public abstract BindToObject(Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/Guid$REFIID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract BindToStorage(Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/Guid$REFIID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract CompareIDs(Lcom/sun/jna/platform/win32/WinDef$LPARAM;Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract CreateViewObject(Lcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/platform/win32/Guid$REFIID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract EnumObjects(Lcom/sun/jna/platform/win32/WinDef$HWND;ILcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract GetAttributesOf(ILcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract GetDisplayNameOf(Lcom/sun/jna/Pointer;ILcom/sun/jna/platform/win32/ShTypes$STRRET;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract GetUIObjectOf(Lcom/sun/jna/platform/win32/WinDef$HWND;ILcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/Guid$REFIID;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract ParseDisplayName(Lcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/Pointer;Ljava/lang/String;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/ptr/IntByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract QueryInterface(Lcom/sun/jna/platform/win32/Guid$REFIID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract Release()I
.end method

.method public abstract SetNameOf(Lcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/Pointer;Ljava/lang/String;ILcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method
