.class public Lcom/sun/jna/platform/win32/COM/TypeInfo;
.super Lcom/sun/jna/platform/win32/COM/Unknown;
.source "TypeInfo.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/COM/ITypeInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/COM/TypeInfo$ByReference;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/COM/Unknown;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/COM/Unknown;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method


# virtual methods
.method public AddressOfMember(Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 1

    .line 349
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/TypeInfo;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/16 p3, 0xf

    .line 348
    invoke-virtual {p0, p3, p1, p2}, Lcom/sun/jna/platform/win32/COM/TypeInfo;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method public CreateInstance(Lcom/sun/jna/platform/win32/COM/IUnknown;Lcom/sun/jna/platform/win32/Guid$REFIID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 1

    .line 370
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/TypeInfo;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/16 p3, 0x10

    .line 369
    invoke-virtual {p0, p3, p1, p2}, Lcom/sun/jna/platform/win32/COM/TypeInfo;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method public GetContainingTypeLib(Lcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/platform/win32/WinDef$UINTByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 1

    .line 406
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/TypeInfo;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/16 v0, 0x12

    .line 405
    invoke-virtual {p0, v0, p1, p2}, Lcom/sun/jna/platform/win32/COM/TypeInfo;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method public GetDllEntry(Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;Lcom/sun/jna/platform/win32/WinDef$WORDByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 6

    .line 310
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/TypeInfo;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/16 p3, 0xd

    .line 309
    invoke-virtual {p0, p3, p1, p2}, Lcom/sun/jna/platform/win32/COM/TypeInfo;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method public GetDocumentation(Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 6

    .line 282
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/TypeInfo;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/16 p3, 0xc

    .line 281
    invoke-virtual {p0, p3, p1, p2}, Lcom/sun/jna/platform/win32/COM/TypeInfo;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method public GetFuncDesc(Lcom/sun/jna/platform/win32/WinDef$UINT;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/TypeInfo;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/4 v0, 0x5

    .line 121
    invoke-virtual {p0, v0, p1, p2}, Lcom/sun/jna/platform/win32/COM/TypeInfo;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method public GetIDsOfNames([Lcom/sun/jna/platform/win32/WTypes$LPOLESTR;Lcom/sun/jna/platform/win32/WinDef$UINT;[Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 1

    .line 221
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/TypeInfo;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/16 p3, 0xa

    .line 220
    invoke-virtual {p0, p3, p1, p2}, Lcom/sun/jna/platform/win32/COM/TypeInfo;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method public GetImplTypeFlags(Lcom/sun/jna/platform/win32/WinDef$UINT;Lcom/sun/jna/ptr/IntByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 1

    .line 200
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/TypeInfo;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/16 v0, 0x9

    .line 199
    invoke-virtual {p0, v0, p1, p2}, Lcom/sun/jna/platform/win32/COM/TypeInfo;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method public GetMops(Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 1

    .line 388
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/TypeInfo;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/16 v0, 0x11

    .line 387
    invoke-virtual {p0, v0, p1, p2}, Lcom/sun/jna/platform/win32/COM/TypeInfo;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method public GetNames(Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;[Lcom/sun/jna/platform/win32/WTypes$BSTR;Lcom/sun/jna/platform/win32/WinDef$UINT;Lcom/sun/jna/platform/win32/WinDef$UINTByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 1

    .line 164
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/TypeInfo;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0, p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/4 p3, 0x7

    .line 163
    invoke-virtual {p0, p3, p1, p2}, Lcom/sun/jna/platform/win32/COM/TypeInfo;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method public GetRefTypeInfo(Lcom/sun/jna/platform/win32/OaIdl$HREFTYPE;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 1

    .line 328
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/TypeInfo;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/16 v0, 0xe

    .line 327
    invoke-virtual {p0, v0, p1, p2}, Lcom/sun/jna/platform/win32/COM/TypeInfo;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method public GetRefTypeOfImplType(Lcom/sun/jna/platform/win32/WinDef$UINT;Lcom/sun/jna/platform/win32/OaIdl$HREFTYPEByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 1

    .line 182
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/TypeInfo;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/16 v0, 0x8

    .line 181
    invoke-virtual {p0, v0, p1, p2}, Lcom/sun/jna/platform/win32/COM/TypeInfo;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method public GetTypeAttr(Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 2

    .line 91
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/TypeInfo;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-class v0, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/4 v1, 0x3

    .line 90
    invoke-virtual {p0, v1, p1, v0}, Lcom/sun/jna/platform/win32/COM/TypeInfo;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method public GetTypeComp(Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/TypeInfo;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-class v0, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/4 v1, 0x4

    .line 104
    invoke-virtual {p0, v1, p1, v0}, Lcom/sun/jna/platform/win32/COM/TypeInfo;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method public GetVarDesc(Lcom/sun/jna/platform/win32/WinDef$UINT;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 1

    .line 140
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/TypeInfo;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/4 v0, 0x6

    .line 139
    invoke-virtual {p0, v0, p1, p2}, Lcom/sun/jna/platform/win32/COM/TypeInfo;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method public Invoke(Lcom/sun/jna/platform/win32/WinDef$PVOID;Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;Lcom/sun/jna/platform/win32/WinDef$WORD;Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS$ByReference;Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO$ByReference;Lcom/sun/jna/platform/win32/WinDef$UINTByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 8

    .line 254
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/TypeInfo;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/16 p3, 0xb

    .line 253
    invoke-virtual {p0, p3, p1, p2}, Lcom/sun/jna/platform/win32/COM/TypeInfo;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method public ReleaseFuncDesc(Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;)V
    .locals 1

    .line 429
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/TypeInfo;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x14

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/platform/win32/COM/TypeInfo;->_invokeNativeVoid(I[Ljava/lang/Object;)V

    return-void
.end method

.method public ReleaseTypeAttr(Lcom/sun/jna/platform/win32/OaIdl$TYPEATTR;)V
    .locals 1

    .line 418
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/TypeInfo;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x13

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/platform/win32/COM/TypeInfo;->_invokeNativeVoid(I[Ljava/lang/Object;)V

    return-void
.end method

.method public ReleaseVarDesc(Lcom/sun/jna/platform/win32/OaIdl$VARDESC;)V
    .locals 1

    .line 440
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/TypeInfo;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x15

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/platform/win32/COM/TypeInfo;->_invokeNativeVoid(I[Ljava/lang/Object;)V

    return-void
.end method
