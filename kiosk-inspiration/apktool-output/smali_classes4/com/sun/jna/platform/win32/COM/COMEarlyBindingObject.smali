.class public Lcom/sun/jna/platform/win32/COM/COMEarlyBindingObject;
.super Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;
.source "COMEarlyBindingObject.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/COM/IDispatch;


# direct methods
.method public constructor <init>(Lcom/sun/jna/platform/win32/Guid$CLSID;ZI)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;-><init>(Lcom/sun/jna/platform/win32/Guid$CLSID;ZI)V

    return-void
.end method


# virtual methods
.method public AddRef()I
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/COMEarlyBindingObject;->getIDispatch()Lcom/sun/jna/platform/win32/COM/IDispatch;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/COM/IDispatch;->AddRef()I

    move-result v0

    return v0
.end method

.method public GetIDsOfNames(Lcom/sun/jna/platform/win32/Guid$REFIID;[Lcom/sun/jna/WString;ILcom/sun/jna/platform/win32/WinDef$LCID;Lcom/sun/jna/platform/win32/OaIdl$DISPIDByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 6

    .line 97
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/COMEarlyBindingObject;->getIDispatch()Lcom/sun/jna/platform/win32/COM/IDispatch;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/COM/IDispatch;->GetIDsOfNames(Lcom/sun/jna/platform/win32/Guid$REFIID;[Lcom/sun/jna/WString;ILcom/sun/jna/platform/win32/WinDef$LCID;Lcom/sun/jna/platform/win32/OaIdl$DISPIDByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    return-object p1
.end method

.method public GetTypeInfo(Lcom/sun/jna/platform/win32/WinDef$UINT;Lcom/sun/jna/platform/win32/WinDef$LCID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/COMEarlyBindingObject;->getIDispatch()Lcom/sun/jna/platform/win32/COM/IDispatch;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/sun/jna/platform/win32/COM/IDispatch;->GetTypeInfo(Lcom/sun/jna/platform/win32/WinDef$UINT;Lcom/sun/jna/platform/win32/WinDef$LCID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    return-object p1
.end method

.method public GetTypeInfoCount(Lcom/sun/jna/platform/win32/WinDef$UINTByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/COMEarlyBindingObject;->getIDispatch()Lcom/sun/jna/platform/win32/COM/IDispatch;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/COM/IDispatch;->GetTypeInfoCount(Lcom/sun/jna/platform/win32/WinDef$UINTByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    return-object p1
.end method

.method public Invoke(Lcom/sun/jna/platform/win32/OaIdl$DISPID;Lcom/sun/jna/platform/win32/Guid$REFIID;Lcom/sun/jna/platform/win32/WinDef$LCID;Lcom/sun/jna/platform/win32/WinDef$WORD;Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS$ByReference;Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO$ByReference;Lcom/sun/jna/ptr/IntByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 9

    .line 106
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/COMEarlyBindingObject;->getIDispatch()Lcom/sun/jna/platform/win32/COM/IDispatch;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/sun/jna/platform/win32/COM/IDispatch;->Invoke(Lcom/sun/jna/platform/win32/OaIdl$DISPID;Lcom/sun/jna/platform/win32/Guid$REFIID;Lcom/sun/jna/platform/win32/WinDef$LCID;Lcom/sun/jna/platform/win32/WinDef$WORD;Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS$ByReference;Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO$ByReference;Lcom/sun/jna/ptr/IntByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    return-object p1
.end method

.method public QueryInterface(Lcom/sun/jna/platform/win32/Guid$REFIID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/COMEarlyBindingObject;->getIDispatch()Lcom/sun/jna/platform/win32/COM/IDispatch;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sun/jna/platform/win32/COM/IDispatch;->QueryInterface(Lcom/sun/jna/platform/win32/Guid$REFIID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    return-object p1
.end method

.method public Release()I
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/COMEarlyBindingObject;->getIDispatch()Lcom/sun/jna/platform/win32/COM/IDispatch;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/COM/IDispatch;->Release()I

    move-result v0

    return v0
.end method

.method protected getStringProperty(Lcom/sun/jna/platform/win32/OaIdl$DISPID;)Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;-><init>()V

    const/4 v1, 0x2

    .line 59
    invoke-virtual {p0, v1, v0, p1}, Lcom/sun/jna/platform/win32/COM/COMEarlyBindingObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/OaIdl$DISPID;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    .line 61
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected setProperty(Lcom/sun/jna/platform/win32/OaIdl$DISPID;Z)V
    .locals 2

    .line 65
    new-instance v0, Lcom/sun/jna/platform/win32/Variant$VARIANT;

    invoke-direct {v0, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>(Z)V

    const/4 p2, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1, p1, v0}, Lcom/sun/jna/platform/win32/COM/COMEarlyBindingObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/OaIdl$DISPID;Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-void
.end method
