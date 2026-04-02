.class public Lcom/sun/jna/platform/win32/COM/TypeLibUtil;
.super Ljava/lang/Object;
.source "TypeLibUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/COM/TypeLibUtil$FindName;,
        Lcom/sun/jna/platform/win32/COM/TypeLibUtil$IsName;,
        Lcom/sun/jna/platform/win32/COM/TypeLibUtil$TypeLibDoc;
    }
.end annotation


# static fields
.field public static final OLEAUTO:Lcom/sun/jna/platform/win32/OleAuto;


# instance fields
.field private docString:Ljava/lang/String;

.field private helpContext:I

.field private helpFile:Ljava/lang/String;

.field private lcid:Lcom/sun/jna/platform/win32/WinDef$LCID;

.field private name:Ljava/lang/String;

.field private typelib:Lcom/sun/jna/platform/win32/COM/ITypeLib;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    sget-object v0, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    sput-object v0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->OLEAUTO:Lcom/sun/jna/platform/win32/OleAuto;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetUserDefaultLCID()Lcom/sun/jna/platform/win32/WinDef$LCID;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->lcid:Lcom/sun/jna/platform/win32/WinDef$LCID;

    .line 106
    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 107
    sget-object v1, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {v1, p1, v0}, Lcom/sun/jna/platform/win32/OleAuto;->LoadTypeLib(Ljava/lang/String;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 108
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 111
    new-instance p1, Lcom/sun/jna/platform/win32/COM/TypeLib;

    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sun/jna/platform/win32/COM/TypeLib;-><init>(Lcom/sun/jna/Pointer;)V

    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->typelib:Lcom/sun/jna/platform/win32/COM/ITypeLib;

    .line 113
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->initTypeLibInfo()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 7

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetUserDefaultLCID()Lcom/sun/jna/platform/win32/WinDef$LCID;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->lcid:Lcom/sun/jna/platform/win32/WinDef$LCID;

    .line 87
    new-instance v2, Lcom/sun/jna/platform/win32/Guid$CLSID$ByReference;

    invoke-direct {v2}, Lcom/sun/jna/platform/win32/Guid$CLSID$ByReference;-><init>()V

    .line 89
    sget-object v0, Lcom/sun/jna/platform/win32/Ole32;->INSTANCE:Lcom/sun/jna/platform/win32/Ole32;

    invoke-interface {v0, p1, v2}, Lcom/sun/jna/platform/win32/Ole32;->CLSIDFromString(Ljava/lang/String;Lcom/sun/jna/platform/win32/Guid$CLSID$ByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 90
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 93
    new-instance v6, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v6}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 94
    sget-object v1, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    iget-object v5, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->lcid:Lcom/sun/jna/platform/win32/WinDef$LCID;

    move v3, p2

    move v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/sun/jna/platform/win32/OleAuto;->LoadRegTypeLib(Lcom/sun/jna/platform/win32/Guid$GUID;IILcom/sun/jna/platform/win32/WinDef$LCID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 96
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 99
    new-instance p1, Lcom/sun/jna/platform/win32/COM/TypeLib;

    invoke-virtual {v6}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sun/jna/platform/win32/COM/TypeLib;-><init>(Lcom/sun/jna/Pointer;)V

    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->typelib:Lcom/sun/jna/platform/win32/COM/ITypeLib;

    .line 101
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->initTypeLibInfo()V

    return-void
.end method

.method private initTypeLibInfo()V
    .locals 2

    const/4 v0, -0x1

    .line 120
    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->getDocumentation(I)Lcom/sun/jna/platform/win32/COM/TypeLibUtil$TypeLibDoc;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$TypeLibDoc;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->name:Ljava/lang/String;

    .line 122
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$TypeLibDoc;->getDocString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->docString:Ljava/lang/String;

    .line 123
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$TypeLibDoc;->getHelpContext()I

    move-result v1

    iput v1, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->helpContext:I

    .line 124
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$TypeLibDoc;->getHelpFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->helpFile:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public FindName(Ljava/lang/String;IS)Lcom/sun/jna/platform/win32/COM/TypeLibUtil$FindName;
    .locals 7

    .line 384
    sget-object v0, Lcom/sun/jna/platform/win32/Ole32;->INSTANCE:Lcom/sun/jna/platform/win32/Ole32;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sget v3, Lcom/sun/jna/Native;->WCHAR_SIZE:I

    int-to-long v3, v3

    mul-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lcom/sun/jna/platform/win32/Ole32;->CoTaskMemAlloc(J)Lcom/sun/jna/Pointer;

    move-result-object v0

    .line 385
    new-instance v2, Lcom/sun/jna/platform/win32/WTypes$LPOLESTR;

    invoke-direct {v2, v0}, Lcom/sun/jna/platform/win32/WTypes$LPOLESTR;-><init>(Lcom/sun/jna/Pointer;)V

    .line 386
    invoke-virtual {v2, p1}, Lcom/sun/jna/platform/win32/WTypes$LPOLESTR;->setValue(Ljava/lang/String;)V

    .line 388
    new-instance v3, Lcom/sun/jna/platform/win32/WinDef$ULONG;

    int-to-long p1, p2

    invoke-direct {v3, p1, p2}, Lcom/sun/jna/platform/win32/WinDef$ULONG;-><init>(J)V

    .line 389
    new-instance v6, Lcom/sun/jna/platform/win32/WinDef$USHORTByReference;

    invoke-direct {v6, p3}, Lcom/sun/jna/platform/win32/WinDef$USHORTByReference;-><init>(S)V

    .line 391
    new-array v4, p3, [Lcom/sun/jna/Pointer;

    .line 392
    new-array v5, p3, [Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;

    .line 393
    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->typelib:Lcom/sun/jna/platform/win32/COM/ITypeLib;

    invoke-interface/range {v1 .. v6}, Lcom/sun/jna/platform/win32/COM/ITypeLib;->FindName(Lcom/sun/jna/platform/win32/WTypes$LPOLESTR;Lcom/sun/jna/platform/win32/WinDef$ULONG;[Lcom/sun/jna/Pointer;[Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;Lcom/sun/jna/platform/win32/WinDef$USHORTByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 395
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 397
    new-instance p1, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$FindName;

    invoke-virtual {v2}, Lcom/sun/jna/platform/win32/WTypes$LPOLESTR;->getValue()Ljava/lang/String;

    move-result-object p2

    .line 398
    invoke-virtual {v6}, Lcom/sun/jna/platform/win32/WinDef$USHORTByReference;->getValue()Lcom/sun/jna/platform/win32/WinDef$USHORT;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sun/jna/platform/win32/WinDef$USHORT;->shortValue()S

    move-result p3

    invoke-direct {p1, p2, v4, v5, p3}, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$FindName;-><init>(Ljava/lang/String;[Lcom/sun/jna/Pointer;[Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;S)V

    .line 400
    sget-object p2, Lcom/sun/jna/platform/win32/Ole32;->INSTANCE:Lcom/sun/jna/platform/win32/Ole32;

    invoke-interface {p2, v0}, Lcom/sun/jna/platform/win32/Ole32;->CoTaskMemFree(Lcom/sun/jna/Pointer;)V

    return-object p1
.end method

.method public GetTypeComp()Lcom/sun/jna/platform/win32/COM/TypeComp;
    .locals 2

    .line 194
    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 195
    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->typelib:Lcom/sun/jna/platform/win32/COM/ITypeLib;

    invoke-interface {v1, v0}, Lcom/sun/jna/platform/win32/COM/ITypeLib;->GetTypeComp(Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v1

    .line 196
    invoke-static {v1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 198
    new-instance v1, Lcom/sun/jna/platform/win32/COM/TypeComp;

    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/jna/platform/win32/COM/TypeComp;-><init>(Lcom/sun/jna/Pointer;)V

    return-object v1
.end method

.method public IsName(Ljava/lang/String;I)Lcom/sun/jna/platform/win32/COM/TypeLibUtil$IsName;
    .locals 3

    .line 316
    new-instance v0, Lcom/sun/jna/platform/win32/WTypes$LPOLESTR;

    invoke-direct {v0, p1}, Lcom/sun/jna/platform/win32/WTypes$LPOLESTR;-><init>(Ljava/lang/String;)V

    .line 317
    new-instance p1, Lcom/sun/jna/platform/win32/WinDef$ULONG;

    int-to-long v1, p2

    invoke-direct {p1, v1, v2}, Lcom/sun/jna/platform/win32/WinDef$ULONG;-><init>(J)V

    .line 318
    new-instance p2, Lcom/sun/jna/platform/win32/WinDef$BOOLByReference;

    invoke-direct {p2}, Lcom/sun/jna/platform/win32/WinDef$BOOLByReference;-><init>()V

    .line 320
    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->typelib:Lcom/sun/jna/platform/win32/COM/ITypeLib;

    invoke-interface {v1, v0, p1, p2}, Lcom/sun/jna/platform/win32/COM/ITypeLib;->IsName(Lcom/sun/jna/platform/win32/WTypes$LPOLESTR;Lcom/sun/jna/platform/win32/WinDef$ULONG;Lcom/sun/jna/platform/win32/WinDef$BOOLByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 321
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 323
    new-instance p1, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$IsName;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WTypes$LPOLESTR;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/jna/platform/win32/WinDef$BOOLByReference;->getValue()Lcom/sun/jna/platform/win32/WinDef$BOOL;

    move-result-object p2

    .line 324
    invoke-virtual {p2}, Lcom/sun/jna/platform/win32/WinDef$BOOL;->booleanValue()Z

    move-result p2

    invoke-direct {p1, v0, p2}, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$IsName;-><init>(Ljava/lang/String;Z)V

    return-object p1
.end method

.method public ReleaseTLibAttr(Lcom/sun/jna/platform/win32/OaIdl$TLIBATTR;)V
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->typelib:Lcom/sun/jna/platform/win32/COM/ITypeLib;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/COM/ITypeLib;->ReleaseTLibAttr(Lcom/sun/jna/platform/win32/OaIdl$TLIBATTR;)V

    return-void
.end method

.method public getDocString()Ljava/lang/String;
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->docString:Ljava/lang/String;

    return-object v0
.end method

.method public getDocumentation(I)Lcom/sun/jna/platform/win32/COM/TypeLibUtil$TypeLibDoc;
    .locals 7

    .line 209
    new-instance v2, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;

    invoke-direct {v2}, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;-><init>()V

    .line 210
    new-instance v3, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;

    invoke-direct {v3}, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;-><init>()V

    .line 211
    new-instance v4, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;

    invoke-direct {v4}, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;-><init>()V

    .line 212
    new-instance v5, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;

    invoke-direct {v5}, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;-><init>()V

    .line 214
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->typelib:Lcom/sun/jna/platform/win32/COM/ITypeLib;

    move v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/COM/ITypeLib;->GetDocumentation(ILcom/sun/jna/platform/win32/WTypes$BSTRByReference;Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 216
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 218
    new-instance p1, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$TypeLibDoc;

    invoke-virtual {v2}, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;->getString()Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-virtual {v3}, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;->getValue()Lcom/sun/jna/platform/win32/WinDef$DWORD;

    move-result-object v4

    .line 220
    invoke-virtual {v4}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v4

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p1, v0, v1, v4, v6}, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$TypeLibDoc;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 222
    sget-object v0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->OLEAUTO:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-virtual {v2}, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;->getValue()Lcom/sun/jna/platform/win32/WTypes$BSTR;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/OleAuto;->SysFreeString(Lcom/sun/jna/platform/win32/WTypes$BSTR;)V

    .line 223
    invoke-virtual {v3}, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;->getValue()Lcom/sun/jna/platform/win32/WTypes$BSTR;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/OleAuto;->SysFreeString(Lcom/sun/jna/platform/win32/WTypes$BSTR;)V

    .line 224
    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;->getValue()Lcom/sun/jna/platform/win32/WTypes$BSTR;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/OleAuto;->SysFreeString(Lcom/sun/jna/platform/win32/WTypes$BSTR;)V

    return-object p1
.end method

.method public getHelpContext()I
    .locals 1

    .line 538
    iget v0, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->helpContext:I

    return v0
.end method

.method public getHelpFile()Ljava/lang/String;
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->helpFile:Ljava/lang/String;

    return-object v0
.end method

.method public getLcid()Lcom/sun/jna/platform/win32/WinDef$LCID;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->lcid:Lcom/sun/jna/platform/win32/WinDef$LCID;

    return-object v0
.end method

.method public getLibAttr()Lcom/sun/jna/platform/win32/OaIdl$TLIBATTR;
    .locals 2

    .line 181
    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 182
    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->typelib:Lcom/sun/jna/platform/win32/COM/ITypeLib;

    invoke-interface {v1, v0}, Lcom/sun/jna/platform/win32/COM/ITypeLib;->GetLibAttr(Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v1

    .line 183
    invoke-static {v1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 185
    new-instance v1, Lcom/sun/jna/platform/win32/OaIdl$TLIBATTR;

    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/jna/platform/win32/OaIdl$TLIBATTR;-><init>(Lcom/sun/jna/Pointer;)V

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeInfo(I)Lcom/sun/jna/platform/win32/COM/ITypeInfo;
    .locals 5

    .line 158
    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 159
    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->typelib:Lcom/sun/jna/platform/win32/COM/ITypeLib;

    new-instance v2, Lcom/sun/jna/platform/win32/WinDef$UINT;

    int-to-long v3, p1

    invoke-direct {v2, v3, v4}, Lcom/sun/jna/platform/win32/WinDef$UINT;-><init>(J)V

    invoke-interface {v1, v2, v0}, Lcom/sun/jna/platform/win32/COM/ITypeLib;->GetTypeInfo(Lcom/sun/jna/platform/win32/WinDef$UINT;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 160
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 161
    new-instance p1, Lcom/sun/jna/platform/win32/COM/TypeInfo;

    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sun/jna/platform/win32/COM/TypeInfo;-><init>(Lcom/sun/jna/Pointer;)V

    return-object p1
.end method

.method public getTypeInfoCount()I
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->typelib:Lcom/sun/jna/platform/win32/COM/ITypeLib;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/COM/ITypeLib;->GetTypeInfoCount()Lcom/sun/jna/platform/win32/WinDef$UINT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$UINT;->intValue()I

    move-result v0

    return v0
.end method

.method public getTypeInfoType(I)Lcom/sun/jna/platform/win32/OaIdl$TYPEKIND;
    .locals 5

    .line 144
    new-instance v0, Lcom/sun/jna/platform/win32/OaIdl$TYPEKIND$ByReference;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/OaIdl$TYPEKIND$ByReference;-><init>()V

    .line 145
    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->typelib:Lcom/sun/jna/platform/win32/COM/ITypeLib;

    new-instance v2, Lcom/sun/jna/platform/win32/WinDef$UINT;

    int-to-long v3, p1

    invoke-direct {v2, v3, v4}, Lcom/sun/jna/platform/win32/WinDef$UINT;-><init>(J)V

    invoke-interface {v1, v2, v0}, Lcom/sun/jna/platform/win32/COM/ITypeLib;->GetTypeInfoType(Lcom/sun/jna/platform/win32/WinDef$UINT;Lcom/sun/jna/platform/win32/OaIdl$TYPEKIND$ByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 146
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    return-object v0
.end method

.method public getTypeInfoUtil(I)Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;
    .locals 1

    .line 172
    new-instance v0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->getTypeInfo(I)Lcom/sun/jna/platform/win32/COM/ITypeInfo;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;-><init>(Lcom/sun/jna/platform/win32/COM/ITypeInfo;)V

    return-object v0
.end method

.method public getTypelib()Lcom/sun/jna/platform/win32/COM/ITypeLib;
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil;->typelib:Lcom/sun/jna/platform/win32/COM/ITypeLib;

    return-object v0
.end method
