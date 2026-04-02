.class public interface abstract Lcom/sun/jna/platform/win32/COM/ITypeLib;
.super Ljava/lang/Object;
.source "ITypeLib.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/COM/IUnknown;


# virtual methods
.method public abstract FindName(Lcom/sun/jna/platform/win32/WTypes$LPOLESTR;Lcom/sun/jna/platform/win32/WinDef$ULONG;[Lcom/sun/jna/Pointer;[Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;Lcom/sun/jna/platform/win32/WinDef$USHORTByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract GetDocumentation(ILcom/sun/jna/platform/win32/WTypes$BSTRByReference;Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract GetLibAttr(Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract GetTypeComp(Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract GetTypeInfo(Lcom/sun/jna/platform/win32/WinDef$UINT;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract GetTypeInfoCount()Lcom/sun/jna/platform/win32/WinDef$UINT;
.end method

.method public abstract GetTypeInfoOfGuid(Lcom/sun/jna/platform/win32/Guid$GUID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract GetTypeInfoType(Lcom/sun/jna/platform/win32/WinDef$UINT;Lcom/sun/jna/platform/win32/OaIdl$TYPEKIND$ByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract IsName(Lcom/sun/jna/platform/win32/WTypes$LPOLESTR;Lcom/sun/jna/platform/win32/WinDef$ULONG;Lcom/sun/jna/platform/win32/WinDef$BOOLByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract ReleaseTLibAttr(Lcom/sun/jna/platform/win32/OaIdl$TLIBATTR;)V
.end method
