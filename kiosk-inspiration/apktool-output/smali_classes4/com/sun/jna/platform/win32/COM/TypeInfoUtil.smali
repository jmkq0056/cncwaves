.class public Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;
.super Ljava/lang/Object;
.source "TypeInfoUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$ContainingTypeLib;,
        Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$DllEntry;,
        Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;,
        Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$Invoke;
    }
.end annotation


# static fields
.field public static final OLEAUTO:Lcom/sun/jna/platform/win32/OleAuto;


# instance fields
.field private typeInfo:Lcom/sun/jna/platform/win32/COM/ITypeInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    sget-object v0, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    sput-object v0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->OLEAUTO:Lcom/sun/jna/platform/win32/OleAuto;

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/COM/ITypeInfo;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->typeInfo:Lcom/sun/jna/platform/win32/COM/ITypeInfo;

    return-void
.end method


# virtual methods
.method public AddressOfMember(Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;)Lcom/sun/jna/ptr/PointerByReference;
    .locals 2

    .line 541
    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 542
    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->typeInfo:Lcom/sun/jna/platform/win32/COM/ITypeInfo;

    invoke-interface {v1, p1, p2, v0}, Lcom/sun/jna/platform/win32/COM/ITypeInfo;->AddressOfMember(Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 543
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    return-object v0
.end method

.method public CreateInstance(Lcom/sun/jna/platform/win32/COM/IUnknown;Lcom/sun/jna/platform/win32/Guid$REFIID;)Lcom/sun/jna/ptr/PointerByReference;
    .locals 2

    .line 558
    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 559
    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->typeInfo:Lcom/sun/jna/platform/win32/COM/ITypeInfo;

    invoke-interface {v1, p1, p2, v0}, Lcom/sun/jna/platform/win32/COM/ITypeInfo;->CreateInstance(Lcom/sun/jna/platform/win32/COM/IUnknown;Lcom/sun/jna/platform/win32/Guid$REFIID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 560
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    return-object v0
.end method

.method public GetContainingTypeLib()Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$ContainingTypeLib;
    .locals 4

    .line 588
    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 589
    new-instance v1, Lcom/sun/jna/platform/win32/WinDef$UINTByReference;

    invoke-direct {v1}, Lcom/sun/jna/platform/win32/WinDef$UINTByReference;-><init>()V

    .line 591
    iget-object v2, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->typeInfo:Lcom/sun/jna/platform/win32/COM/ITypeInfo;

    invoke-interface {v2, v0, v1}, Lcom/sun/jna/platform/win32/COM/ITypeInfo;->GetContainingTypeLib(Lcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/platform/win32/WinDef$UINTByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v2

    .line 592
    invoke-static {v2}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 594
    new-instance v2, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$ContainingTypeLib;

    new-instance v3, Lcom/sun/jna/platform/win32/COM/TypeLib;

    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/sun/jna/platform/win32/COM/TypeLib;-><init>(Lcom/sun/jna/Pointer;)V

    .line 595
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinDef$UINTByReference;->getValue()Lcom/sun/jna/platform/win32/WinDef$UINT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$UINT;->intValue()I

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$ContainingTypeLib;-><init>(Lcom/sun/jna/platform/win32/COM/ITypeLib;I)V

    return-object v2
.end method

.method public GetDllEntry(Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;)Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$DllEntry;
    .locals 6

    .line 411
    new-instance v3, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;

    invoke-direct {v3}, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;-><init>()V

    .line 412
    new-instance v4, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;

    invoke-direct {v4}, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;-><init>()V

    .line 413
    new-instance v5, Lcom/sun/jna/platform/win32/WinDef$WORDByReference;

    invoke-direct {v5}, Lcom/sun/jna/platform/win32/WinDef$WORDByReference;-><init>()V

    .line 415
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->typeInfo:Lcom/sun/jna/platform/win32/COM/ITypeInfo;

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/COM/ITypeInfo;->GetDllEntry(Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;Lcom/sun/jna/platform/win32/WinDef$WORDByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 417
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 419
    sget-object p1, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->OLEAUTO:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-virtual {v3}, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;->getValue()Lcom/sun/jna/platform/win32/WTypes$BSTR;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sun/jna/platform/win32/OleAuto;->SysFreeString(Lcom/sun/jna/platform/win32/WTypes$BSTR;)V

    .line 420
    invoke-virtual {v4}, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;->getValue()Lcom/sun/jna/platform/win32/WTypes$BSTR;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sun/jna/platform/win32/OleAuto;->SysFreeString(Lcom/sun/jna/platform/win32/WTypes$BSTR;)V

    .line 422
    new-instance p1, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$DllEntry;

    invoke-virtual {v3}, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;->getString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4}, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;->getString()Ljava/lang/String;

    move-result-object v0

    .line 423
    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinDef$WORDByReference;->getValue()Lcom/sun/jna/platform/win32/WinDef$WORD;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinDef$WORD;->intValue()I

    move-result v1

    invoke-direct {p1, p2, v0, v1}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$DllEntry;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p1
.end method

.method public GetMops(Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;)Ljava/lang/String;
    .locals 2

    .line 574
    new-instance v0, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;-><init>()V

    .line 575
    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->typeInfo:Lcom/sun/jna/platform/win32/COM/ITypeInfo;

    invoke-interface {v1, p1, v0}, Lcom/sun/jna/platform/win32/COM/ITypeInfo;->GetMops(Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 576
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 578
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;->getString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public Invoke(Lcom/sun/jna/platform/win32/WinDef$PVOID;Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;Lcom/sun/jna/platform/win32/WinDef$WORD;Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS$ByReference;)Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$Invoke;
    .locals 8

    .line 224
    new-instance v5, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;

    invoke-direct {v5}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;-><init>()V

    .line 225
    new-instance v6, Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO$ByReference;

    invoke-direct {v6}, Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO$ByReference;-><init>()V

    .line 226
    new-instance v7, Lcom/sun/jna/platform/win32/WinDef$UINTByReference;

    invoke-direct {v7}, Lcom/sun/jna/platform/win32/WinDef$UINTByReference;-><init>()V

    .line 228
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->typeInfo:Lcom/sun/jna/platform/win32/COM/ITypeInfo;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v7}, Lcom/sun/jna/platform/win32/COM/ITypeInfo;->Invoke(Lcom/sun/jna/platform/win32/WinDef$PVOID;Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;Lcom/sun/jna/platform/win32/WinDef$WORD;Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS$ByReference;Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO$ByReference;Lcom/sun/jna/platform/win32/WinDef$UINTByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 230
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 232
    new-instance p1, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$Invoke;

    invoke-virtual {v7}, Lcom/sun/jna/platform/win32/WinDef$UINTByReference;->getValue()Lcom/sun/jna/platform/win32/WinDef$UINT;

    move-result-object p2

    .line 233
    invoke-virtual {p2}, Lcom/sun/jna/platform/win32/WinDef$UINT;->intValue()I

    move-result p2

    invoke-direct {p1, v5, v6, p2}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$Invoke;-><init>(Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO$ByReference;I)V

    return-object p1
.end method

.method public ReleaseFuncDesc(Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;)V
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->typeInfo:Lcom/sun/jna/platform/win32/COM/ITypeInfo;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/COM/ITypeInfo;->ReleaseFuncDesc(Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;)V

    return-void
.end method

.method public ReleaseTypeAttr(Lcom/sun/jna/platform/win32/OaIdl$TYPEATTR;)V
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->typeInfo:Lcom/sun/jna/platform/win32/COM/ITypeInfo;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/COM/ITypeInfo;->ReleaseTypeAttr(Lcom/sun/jna/platform/win32/OaIdl$TYPEATTR;)V

    return-void
.end method

.method public ReleaseVarDesc(Lcom/sun/jna/platform/win32/OaIdl$VARDESC;)V
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->typeInfo:Lcom/sun/jna/platform/win32/COM/ITypeInfo;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/COM/ITypeInfo;->ReleaseVarDesc(Lcom/sun/jna/platform/win32/OaIdl$VARDESC;)V

    return-void
.end method

.method public getDocumentation(Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;)Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;
    .locals 7

    .line 305
    new-instance v2, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;

    invoke-direct {v2}, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;-><init>()V

    .line 306
    new-instance v3, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;

    invoke-direct {v3}, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;-><init>()V

    .line 307
    new-instance v4, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;

    invoke-direct {v4}, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;-><init>()V

    .line 308
    new-instance v5, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;

    invoke-direct {v5}, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;-><init>()V

    .line 310
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->typeInfo:Lcom/sun/jna/platform/win32/COM/ITypeInfo;

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/COM/ITypeInfo;->GetDocumentation(Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 312
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 314
    new-instance p1, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;

    invoke-virtual {v2}, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;->getString()Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-virtual {v3}, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;->getValue()Lcom/sun/jna/platform/win32/WinDef$DWORD;

    move-result-object v4

    .line 316
    invoke-virtual {v4}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v4

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p1, v0, v1, v4, v6}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 318
    sget-object v0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->OLEAUTO:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-virtual {v2}, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;->getValue()Lcom/sun/jna/platform/win32/WTypes$BSTR;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/OleAuto;->SysFreeString(Lcom/sun/jna/platform/win32/WTypes$BSTR;)V

    .line 319
    invoke-virtual {v3}, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;->getValue()Lcom/sun/jna/platform/win32/WTypes$BSTR;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/OleAuto;->SysFreeString(Lcom/sun/jna/platform/win32/WTypes$BSTR;)V

    .line 320
    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;->getValue()Lcom/sun/jna/platform/win32/WTypes$BSTR;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/OleAuto;->SysFreeString(Lcom/sun/jna/platform/win32/WTypes$BSTR;)V

    return-object p1
.end method

.method public getFuncDesc(I)Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;
    .locals 5

    .line 109
    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 110
    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->typeInfo:Lcom/sun/jna/platform/win32/COM/ITypeInfo;

    new-instance v2, Lcom/sun/jna/platform/win32/WinDef$UINT;

    int-to-long v3, p1

    invoke-direct {v2, v3, v4}, Lcom/sun/jna/platform/win32/WinDef$UINT;-><init>(J)V

    invoke-interface {v1, v2, v0}, Lcom/sun/jna/platform/win32/COM/ITypeInfo;->GetFuncDesc(Lcom/sun/jna/platform/win32/WinDef$UINT;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 111
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 113
    new-instance p1, Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;

    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;-><init>(Lcom/sun/jna/Pointer;)V

    return-object p1
.end method

.method public getIDsOfNames([Lcom/sun/jna/platform/win32/WTypes$LPOLESTR;I)[Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;
    .locals 5

    .line 200
    new-array v0, p2, [Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;

    .line 201
    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->typeInfo:Lcom/sun/jna/platform/win32/COM/ITypeInfo;

    new-instance v2, Lcom/sun/jna/platform/win32/WinDef$UINT;

    int-to-long v3, p2

    invoke-direct {v2, v3, v4}, Lcom/sun/jna/platform/win32/WinDef$UINT;-><init>(J)V

    invoke-interface {v1, p1, v2, v0}, Lcom/sun/jna/platform/win32/COM/ITypeInfo;->GetIDsOfNames([Lcom/sun/jna/platform/win32/WTypes$LPOLESTR;Lcom/sun/jna/platform/win32/WinDef$UINT;[Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 203
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    return-object v0
.end method

.method public getImplTypeFlags(I)I
    .locals 5

    .line 182
    new-instance v0, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 183
    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->typeInfo:Lcom/sun/jna/platform/win32/COM/ITypeInfo;

    new-instance v2, Lcom/sun/jna/platform/win32/WinDef$UINT;

    int-to-long v3, p1

    invoke-direct {v2, v3, v4}, Lcom/sun/jna/platform/win32/WinDef$UINT;-><init>(J)V

    invoke-interface {v1, v2, v0}, Lcom/sun/jna/platform/win32/COM/ITypeInfo;->GetImplTypeFlags(Lcom/sun/jna/platform/win32/WinDef$UINT;Lcom/sun/jna/ptr/IntByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 185
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 187
    invoke-virtual {v0}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p1

    return p1
.end method

.method public getNames(Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;I)[Ljava/lang/String;
    .locals 6

    .line 141
    new-array v0, p2, [Lcom/sun/jna/platform/win32/WTypes$BSTR;

    .line 142
    new-instance v1, Lcom/sun/jna/platform/win32/WinDef$UINTByReference;

    invoke-direct {v1}, Lcom/sun/jna/platform/win32/WinDef$UINTByReference;-><init>()V

    .line 143
    iget-object v2, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->typeInfo:Lcom/sun/jna/platform/win32/COM/ITypeInfo;

    new-instance v3, Lcom/sun/jna/platform/win32/WinDef$UINT;

    int-to-long v4, p2

    invoke-direct {v3, v4, v5}, Lcom/sun/jna/platform/win32/WinDef$UINT;-><init>(J)V

    invoke-interface {v2, p1, v0, v3, v1}, Lcom/sun/jna/platform/win32/COM/ITypeInfo;->GetNames(Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;[Lcom/sun/jna/platform/win32/WTypes$BSTR;Lcom/sun/jna/platform/win32/WinDef$UINT;Lcom/sun/jna/platform/win32/WinDef$UINTByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 145
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 147
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinDef$UINTByReference;->getValue()Lcom/sun/jna/platform/win32/WinDef$UINT;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WinDef$UINT;->intValue()I

    move-result p1

    .line 148
    new-array p2, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 151
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/sun/jna/platform/win32/WTypes$BSTR;->getValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    .line 152
    sget-object v2, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->OLEAUTO:Lcom/sun/jna/platform/win32/OleAuto;

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Lcom/sun/jna/platform/win32/OleAuto;->SysFreeString(Lcom/sun/jna/platform/win32/WTypes$BSTR;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public getRefTypeInfo(Lcom/sun/jna/platform/win32/OaIdl$HREFTYPE;)Lcom/sun/jna/platform/win32/COM/ITypeInfo;
    .locals 2

    .line 524
    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 525
    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->typeInfo:Lcom/sun/jna/platform/win32/COM/ITypeInfo;

    invoke-interface {v1, p1, v0}, Lcom/sun/jna/platform/win32/COM/ITypeInfo;->GetRefTypeInfo(Lcom/sun/jna/platform/win32/OaIdl$HREFTYPE;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 526
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 528
    new-instance p1, Lcom/sun/jna/platform/win32/COM/TypeInfo;

    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sun/jna/platform/win32/COM/TypeInfo;-><init>(Lcom/sun/jna/Pointer;)V

    return-object p1
.end method

.method public getRefTypeOfImplType(I)Lcom/sun/jna/platform/win32/OaIdl$HREFTYPE;
    .locals 5

    .line 166
    new-instance v0, Lcom/sun/jna/platform/win32/OaIdl$HREFTYPEByReference;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/OaIdl$HREFTYPEByReference;-><init>()V

    .line 167
    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->typeInfo:Lcom/sun/jna/platform/win32/COM/ITypeInfo;

    new-instance v2, Lcom/sun/jna/platform/win32/WinDef$UINT;

    int-to-long v3, p1

    invoke-direct {v2, v3, v4}, Lcom/sun/jna/platform/win32/WinDef$UINT;-><init>(J)V

    invoke-interface {v1, v2, v0}, Lcom/sun/jna/platform/win32/COM/ITypeInfo;->GetRefTypeOfImplType(Lcom/sun/jna/platform/win32/WinDef$UINT;Lcom/sun/jna/platform/win32/OaIdl$HREFTYPEByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 169
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 171
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/OaIdl$HREFTYPEByReference;->getValue()Lcom/sun/jna/platform/win32/OaIdl$HREFTYPE;

    move-result-object p1

    return-object p1
.end method

.method public getTypeAttr()Lcom/sun/jna/platform/win32/OaIdl$TYPEATTR;
    .locals 2

    .line 81
    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 82
    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->typeInfo:Lcom/sun/jna/platform/win32/COM/ITypeInfo;

    invoke-interface {v1, v0}, Lcom/sun/jna/platform/win32/COM/ITypeInfo;->GetTypeAttr(Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v1

    .line 83
    invoke-static {v1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 85
    new-instance v1, Lcom/sun/jna/platform/win32/OaIdl$TYPEATTR;

    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/jna/platform/win32/OaIdl$TYPEATTR;-><init>(Lcom/sun/jna/Pointer;)V

    return-object v1
.end method

.method public getTypeComp()Lcom/sun/jna/platform/win32/COM/TypeComp;
    .locals 2

    .line 94
    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 95
    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->typeInfo:Lcom/sun/jna/platform/win32/COM/ITypeInfo;

    invoke-interface {v1, v0}, Lcom/sun/jna/platform/win32/COM/ITypeInfo;->GetTypeComp(Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v1

    .line 96
    invoke-static {v1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 98
    new-instance v1, Lcom/sun/jna/platform/win32/COM/TypeComp;

    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/jna/platform/win32/COM/TypeComp;-><init>(Lcom/sun/jna/Pointer;)V

    return-object v1
.end method

.method public getVarDesc(I)Lcom/sun/jna/platform/win32/OaIdl$VARDESC;
    .locals 5

    .line 124
    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 125
    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->typeInfo:Lcom/sun/jna/platform/win32/COM/ITypeInfo;

    new-instance v2, Lcom/sun/jna/platform/win32/WinDef$UINT;

    int-to-long v3, p1

    invoke-direct {v2, v3, v4}, Lcom/sun/jna/platform/win32/WinDef$UINT;-><init>(J)V

    invoke-interface {v1, v2, v0}, Lcom/sun/jna/platform/win32/COM/ITypeInfo;->GetVarDesc(Lcom/sun/jna/platform/win32/WinDef$UINT;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 126
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 128
    new-instance p1, Lcom/sun/jna/platform/win32/OaIdl$VARDESC;

    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sun/jna/platform/win32/OaIdl$VARDESC;-><init>(Lcom/sun/jna/Pointer;)V

    return-object p1
.end method
