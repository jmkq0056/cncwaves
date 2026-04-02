.class public Lcom/sun/jna/platform/win32/COM/TypeLib;
.super Lcom/sun/jna/platform/win32/COM/Unknown;
.source "TypeLib.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/COM/ITypeLib;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/COM/TypeLib$ByReference;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/COM/Unknown;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/COM/Unknown;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method


# virtual methods
.method public FindName(Lcom/sun/jna/platform/win32/WTypes$LPOLESTR;Lcom/sun/jna/platform/win32/WinDef$ULONG;[Lcom/sun/jna/Pointer;[Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;Lcom/sun/jna/platform/win32/WinDef$USHORTByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 6

    .line 234
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/TypeLib;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/16 p3, 0xb

    .line 233
    invoke-virtual {p0, p3, p1, p2}, Lcom/sun/jna/platform/win32/COM/TypeLib;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method public GetDocumentation(ILcom/sun/jna/platform/win32/WTypes$BSTRByReference;Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 6

    .line 185
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/TypeLib;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/16 p3, 0x9

    .line 184
    invoke-virtual {p0, p3, p1, p2}, Lcom/sun/jna/platform/win32/COM/TypeLib;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method public GetLibAttr(Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 2

    .line 145
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/TypeLib;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-class v0, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/4 v1, 0x7

    .line 144
    invoke-virtual {p0, v1, p1, v0}, Lcom/sun/jna/platform/win32/COM/TypeLib;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method public GetTypeComp(Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 2

    .line 159
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/TypeLib;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-class v0, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/16 v1, 0x8

    .line 158
    invoke-virtual {p0, v1, p1, v0}, Lcom/sun/jna/platform/win32/COM/TypeLib;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method public GetTypeInfo(Lcom/sun/jna/platform/win32/WinDef$UINT;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/TypeLib;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/4 v0, 0x4

    .line 93
    invoke-virtual {p0, v0, p1, p2}, Lcom/sun/jna/platform/win32/COM/TypeLib;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method public GetTypeInfoCount()Lcom/sun/jna/platform/win32/WinDef$UINT;
    .locals 3

    .line 77
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/TypeLib;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/sun/jna/platform/win32/WinDef$UINT;

    const/4 v2, 0x3

    .line 76
    invoke-virtual {p0, v2, v0, v1}, Lcom/sun/jna/platform/win32/COM/TypeLib;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/WinDef$UINT;

    return-object v0
.end method

.method public GetTypeInfoOfGuid(Lcom/sun/jna/platform/win32/Guid$GUID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 1

    .line 130
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/TypeLib;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1, p2}, Lcom/sun/jna/platform/win32/COM/TypeLib;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method public GetTypeInfoType(Lcom/sun/jna/platform/win32/WinDef$UINT;Lcom/sun/jna/platform/win32/OaIdl$TYPEKIND$ByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/TypeLib;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/4 v0, 0x5

    .line 111
    invoke-virtual {p0, v0, p1, p2}, Lcom/sun/jna/platform/win32/COM/TypeLib;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method public IsName(Lcom/sun/jna/platform/win32/WTypes$LPOLESTR;Lcom/sun/jna/platform/win32/WinDef$ULONG;Lcom/sun/jna/platform/win32/WinDef$BOOLByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 1

    .line 207
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/TypeLib;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/16 p3, 0xa

    invoke-virtual {p0, p3, p1, p2}, Lcom/sun/jna/platform/win32/COM/TypeLib;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method public ReleaseTLibAttr(Lcom/sun/jna/platform/win32/OaIdl$TLIBATTR;)V
    .locals 2

    .line 245
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/TypeLib;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    .line 246
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/OaIdl$TLIBATTR;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-class v0, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/16 v1, 0xc

    .line 245
    invoke-virtual {p0, v1, p1, v0}, Lcom/sun/jna/platform/win32/COM/TypeLib;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method
