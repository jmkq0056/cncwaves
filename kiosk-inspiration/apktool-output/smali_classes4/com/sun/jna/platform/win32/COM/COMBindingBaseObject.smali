.class public Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;
.super Lcom/sun/jna/platform/win32/COM/COMInvoker;
.source "COMBindingBaseObject.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final LOCALE_SYSTEM_DEFAULT:Lcom/sun/jna/platform/win32/WinDef$LCID;

.field public static final LOCALE_USER_DEFAULT:Lcom/sun/jna/platform/win32/WinDef$LCID;


# instance fields
.field private iDispatch:Lcom/sun/jna/platform/win32/COM/IDispatch;

.field private iUnknown:Lcom/sun/jna/platform/win32/COM/IUnknown;

.field private pDispatch:Lcom/sun/jna/ptr/PointerByReference;

.field private pUnknown:Lcom/sun/jna/ptr/PointerByReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    .line 58
    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetUserDefaultLCID()Lcom/sun/jna/platform/win32/WinDef$LCID;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->LOCALE_USER_DEFAULT:Lcom/sun/jna/platform/win32/WinDef$LCID;

    .line 61
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    .line 62
    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetSystemDefaultLCID()Lcom/sun/jna/platform/win32/WinDef$LCID;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->LOCALE_SYSTEM_DEFAULT:Lcom/sun/jna/platform/win32/WinDef$LCID;

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/COM/IDispatch;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/COM/COMInvoker;-><init>()V

    .line 71
    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->pDispatch:Lcom/sun/jna/ptr/PointerByReference;

    .line 74
    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->pUnknown:Lcom/sun/jna/ptr/PointerByReference;

    .line 78
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->iDispatch:Lcom/sun/jna/platform/win32/COM/IDispatch;

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/Guid$CLSID;Z)V
    .locals 1

    const/16 v0, 0x15

    .line 82
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;-><init>(Lcom/sun/jna/platform/win32/Guid$CLSID;ZI)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/Guid$CLSID;ZI)V
    .locals 1

    .line 86
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/COM/COMInvoker;-><init>()V

    .line 71
    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->pDispatch:Lcom/sun/jna/ptr/PointerByReference;

    .line 74
    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->pUnknown:Lcom/sun/jna/ptr/PointerByReference;

    .line 89
    invoke-direct {p0, p2, p1, p3}, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->init(ZLcom/sun/jna/platform/win32/Guid$GUID;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/COM/COMException;
        }
    .end annotation

    const/16 v0, 0x15

    .line 106
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;-><init>(Ljava/lang/String;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/COM/COMException;
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/COM/COMInvoker;-><init>()V

    .line 71
    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->pDispatch:Lcom/sun/jna/ptr/PointerByReference;

    .line 74
    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->pUnknown:Lcom/sun/jna/ptr/PointerByReference;

    .line 96
    new-instance v0, Lcom/sun/jna/platform/win32/Guid$CLSID$ByReference;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/Guid$CLSID$ByReference;-><init>()V

    .line 97
    sget-object v1, Lcom/sun/jna/platform/win32/Ole32;->INSTANCE:Lcom/sun/jna/platform/win32/Ole32;

    invoke-interface {v1, p1, v0}, Lcom/sun/jna/platform/win32/Ole32;->CLSIDFromProgID(Ljava/lang/String;Lcom/sun/jna/platform/win32/Guid$CLSID$ByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 99
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 101
    invoke-direct {p0, p2, v0, p3}, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->init(ZLcom/sun/jna/platform/win32/Guid$GUID;I)V

    return-void
.end method

.method private init(ZLcom/sun/jna/platform/win32/Guid$GUID;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/COM/COMException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 112
    sget-object p1, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->pUnknown:Lcom/sun/jna/ptr/PointerByReference;

    invoke-interface {p1, p2, v0, v1}, Lcom/sun/jna/platform/win32/OleAuto;->GetActiveObject(Lcom/sun/jna/platform/win32/Guid$GUID;Lcom/sun/jna/platform/win32/WinDef$PVOID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 114
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->SUCCEEDED(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 115
    new-instance p1, Lcom/sun/jna/platform/win32/COM/Unknown;

    iget-object p2, p0, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->pUnknown:Lcom/sun/jna/ptr/PointerByReference;

    invoke-virtual {p2}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sun/jna/platform/win32/COM/Unknown;-><init>(Lcom/sun/jna/Pointer;)V

    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->iUnknown:Lcom/sun/jna/platform/win32/COM/IUnknown;

    .line 116
    new-instance p2, Lcom/sun/jna/platform/win32/Guid$REFIID;

    sget-object p3, Lcom/sun/jna/platform/win32/COM/IDispatch;->IID_IDISPATCH:Lcom/sun/jna/platform/win32/Guid$IID;

    invoke-direct {p2, p3}, Lcom/sun/jna/platform/win32/Guid$REFIID;-><init>(Lcom/sun/jna/platform/win32/Guid$IID;)V

    iget-object p3, p0, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->pDispatch:Lcom/sun/jna/ptr/PointerByReference;

    invoke-interface {p1, p2, p3}, Lcom/sun/jna/platform/win32/COM/IUnknown;->QueryInterface(Lcom/sun/jna/platform/win32/Guid$REFIID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    goto :goto_0

    .line 119
    :cond_0
    sget-object v0, Lcom/sun/jna/platform/win32/Ole32;->INSTANCE:Lcom/sun/jna/platform/win32/Ole32;

    sget-object v4, Lcom/sun/jna/platform/win32/COM/IDispatch;->IID_IDISPATCH:Lcom/sun/jna/platform/win32/Guid$IID;

    iget-object v5, p0, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->pDispatch:Lcom/sun/jna/ptr/PointerByReference;

    const/4 v2, 0x0

    move-object v1, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/Ole32;->CoCreateInstance(Lcom/sun/jna/platform/win32/Guid$GUID;Lcom/sun/jna/Pointer;ILcom/sun/jna/platform/win32/Guid$GUID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object v1, p2

    move v3, p3

    .line 123
    sget-object v0, Lcom/sun/jna/platform/win32/Ole32;->INSTANCE:Lcom/sun/jna/platform/win32/Ole32;

    sget-object v4, Lcom/sun/jna/platform/win32/COM/IDispatch;->IID_IDISPATCH:Lcom/sun/jna/platform/win32/Guid$IID;

    iget-object v5, p0, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->pDispatch:Lcom/sun/jna/ptr/PointerByReference;

    const/4 v2, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/Ole32;->CoCreateInstance(Lcom/sun/jna/platform/win32/Guid$GUID;Lcom/sun/jna/Pointer;ILcom/sun/jna/platform/win32/Guid$GUID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 127
    :goto_0
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 129
    new-instance p1, Lcom/sun/jna/platform/win32/COM/Dispatch;

    iget-object p2, p0, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->pDispatch:Lcom/sun/jna/ptr/PointerByReference;

    invoke-virtual {p2}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sun/jna/platform/win32/COM/Dispatch;-><init>(Lcom/sun/jna/Pointer;)V

    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->iDispatch:Lcom/sun/jna/platform/win32/COM/IDispatch;

    return-void
.end method


# virtual methods
.method protected checkFailed(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 476
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    return-void
.end method

.method public getIDispatch()Lcom/sun/jna/platform/win32/COM/IDispatch;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->iDispatch:Lcom/sun/jna/platform/win32/COM/IDispatch;

    return-object v0
.end method

.method public getIDispatchPointer()Lcom/sun/jna/ptr/PointerByReference;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->pDispatch:Lcom/sun/jna/ptr/PointerByReference;

    return-object v0
.end method

.method public getIUnknown()Lcom/sun/jna/platform/win32/COM/IUnknown;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->iUnknown:Lcom/sun/jna/platform/win32/COM/IUnknown;

    return-object v0
.end method

.method public getIUnknownPointer()Lcom/sun/jna/ptr/PointerByReference;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->pUnknown:Lcom/sun/jna/ptr/PointerByReference;

    return-object v0
.end method

.method protected oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/COM/IDispatch;Lcom/sun/jna/platform/win32/OaIdl$DISPID;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/COM/COMException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    .line 464
    move-object v0, v5

    check-cast v0, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/COM/IDispatch;Lcom/sun/jna/platform/win32/OaIdl$DISPID;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    return-object p1
.end method

.method protected oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/COM/IDispatch;Lcom/sun/jna/platform/win32/OaIdl$DISPID;Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/COM/COMException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 443
    new-array v6, v0, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    const/4 v0, 0x0

    aput-object p5, v6, v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/COM/IDispatch;Lcom/sun/jna/platform/win32/OaIdl$DISPID;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    return-object p1
.end method

.method protected oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/COM/IDispatch;Lcom/sun/jna/platform/win32/OaIdl$DISPID;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/COM/COMException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p3, :cond_6

    .line 358
    new-instance v5, Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS$ByReference;

    invoke-direct {v5}, Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS$ByReference;-><init>()V

    .line 359
    new-instance v7, Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO$ByReference;

    invoke-direct {v7}, Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO$ByReference;-><init>()V

    .line 360
    new-instance v8, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v8}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 363
    array-length v1, p5

    if-lez v1, :cond_0

    .line 364
    array-length v1, p5

    .line 365
    new-array v2, v1, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    move v3, v0

    move v4, v1

    :goto_0
    if-ge v3, v1, :cond_1

    add-int/lit8 v4, v4, -0x1

    .line 369
    aget-object v6, p5, v4

    aput-object v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move v1, v0

    :cond_1
    const/4 p5, 0x4

    const/4 v3, 0x1

    if-ne p1, p5, :cond_2

    .line 375
    new-array p5, v3, [Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    sget-object v4, Lcom/sun/jna/platform/win32/OaIdl;->DISPID_PROPERTYPUT:Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    aput-object v4, p5, v0

    invoke-virtual {v5, p5}, Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS$ByReference;->setRgdispidNamedArgs([Lcom/sun/jna/platform/win32/OaIdl$DISPID;)V

    :cond_2
    if-lez v1, :cond_3

    .line 380
    invoke-virtual {v5, v2}, Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS$ByReference;->setArgs([Lcom/sun/jna/platform/win32/Variant$VARIANT;)V

    .line 383
    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS$ByReference;->write()V

    :cond_3
    if-eq p1, v3, :cond_4

    const/4 p5, 0x2

    if-ne p1, p5, :cond_5

    :cond_4
    const/4 p1, 0x3

    .line 418
    :cond_5
    new-instance v2, Lcom/sun/jna/platform/win32/Guid$REFIID;

    sget-object p5, Lcom/sun/jna/platform/win32/Guid;->IID_NULL:Lcom/sun/jna/platform/win32/Guid$IID;

    invoke-direct {v2, p5}, Lcom/sun/jna/platform/win32/Guid$REFIID;-><init>(Lcom/sun/jna/platform/win32/Guid$IID;)V

    sget-object v3, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->LOCALE_SYSTEM_DEFAULT:Lcom/sun/jna/platform/win32/WinDef$LCID;

    new-instance v4, Lcom/sun/jna/platform/win32/WinDef$WORD;

    int-to-long v0, p1

    invoke-direct {v4, v0, v1}, Lcom/sun/jna/platform/win32/WinDef$WORD;-><init>(J)V

    move-object v6, p2

    move-object v0, p3

    move-object v1, p4

    invoke-interface/range {v0 .. v8}, Lcom/sun/jna/platform/win32/COM/IDispatch;->Invoke(Lcom/sun/jna/platform/win32/OaIdl$DISPID;Lcom/sun/jna/platform/win32/Guid$REFIID;Lcom/sun/jna/platform/win32/WinDef$LCID;Lcom/sun/jna/platform/win32/WinDef$WORD;Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS$ByReference;Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO$ByReference;Lcom/sun/jna/ptr/IntByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 421
    invoke-static {p1, v7, v8}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO;Lcom/sun/jna/ptr/IntByReference;)V

    return-object p1

    .line 353
    :cond_6
    new-instance p1, Lcom/sun/jna/platform/win32/COM/COMException;

    const-string p2, "pDisp (IDispatch) parameter is null!"

    invoke-direct {p1, p2}, Lcom/sun/jna/platform/win32/COM/COMException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/COM/IDispatch;Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/COM/COMException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    .line 454
    move-object v0, v5

    check-cast v0, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/COM/IDispatch;Ljava/lang/String;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    return-object p1
.end method

.method protected oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/COM/IDispatch;Ljava/lang/String;Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/COM/COMException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 432
    new-array v6, v0, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    const/4 v0, 0x0

    aput-object p5, v6, v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/COM/IDispatch;Ljava/lang/String;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    return-object p1
.end method

.method protected oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/COM/IDispatch;Ljava/lang/String;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/COM/COMException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    .line 331
    new-array v3, v0, [Lcom/sun/jna/WString;

    new-instance v0, Lcom/sun/jna/WString;

    invoke-direct {v0, p4}, Lcom/sun/jna/WString;-><init>(Ljava/lang/String;)V

    const/4 p4, 0x0

    aput-object v0, v3, p4

    .line 332
    new-instance v6, Lcom/sun/jna/platform/win32/OaIdl$DISPIDByReference;

    invoke-direct {v6}, Lcom/sun/jna/platform/win32/OaIdl$DISPIDByReference;-><init>()V

    .line 335
    new-instance v2, Lcom/sun/jna/platform/win32/Guid$REFIID;

    sget-object p4, Lcom/sun/jna/platform/win32/Guid;->IID_NULL:Lcom/sun/jna/platform/win32/Guid$IID;

    invoke-direct {v2, p4}, Lcom/sun/jna/platform/win32/Guid$REFIID;-><init>(Lcom/sun/jna/platform/win32/Guid$IID;)V

    const/4 v4, 0x1

    sget-object v5, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->LOCALE_USER_DEFAULT:Lcom/sun/jna/platform/win32/WinDef$LCID;

    move-object v1, p3

    invoke-interface/range {v1 .. v6}, Lcom/sun/jna/platform/win32/COM/IDispatch;->GetIDsOfNames(Lcom/sun/jna/platform/win32/Guid$REFIID;[Lcom/sun/jna/WString;ILcom/sun/jna/platform/win32/WinDef$LCID;Lcom/sun/jna/platform/win32/OaIdl$DISPIDByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p3

    .line 338
    invoke-static {p3}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 341
    invoke-virtual {v6}, Lcom/sun/jna/platform/win32/OaIdl$DISPIDByReference;->getValue()Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    move-result-object v4

    move-object v0, p0

    move-object v2, p2

    move-object v5, p5

    move-object v3, v1

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/COM/IDispatch;Lcom/sun/jna/platform/win32/OaIdl$DISPID;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    return-object p1

    .line 328
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/COM/COMException;

    const-string p2, "pDisp (IDispatch) parameter is null!"

    invoke-direct {p1, p2}, Lcom/sun/jna/platform/win32/COM/COMException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/OaIdl$DISPID;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/COM/COMException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 317
    move-object v1, v0

    check-cast v1, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/OaIdl$DISPID;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    return-object p1
.end method

.method protected oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/OaIdl$DISPID;Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/COM/COMException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 292
    new-array v0, v0, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/OaIdl$DISPID;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    return-object p1
.end method

.method protected oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/OaIdl$DISPID;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/COM/COMException;
        }
    .end annotation

    .line 201
    new-instance v5, Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS$ByReference;

    invoke-direct {v5}, Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS$ByReference;-><init>()V

    .line 202
    new-instance v7, Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO$ByReference;

    invoke-direct {v7}, Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO$ByReference;-><init>()V

    .line 203
    new-instance v8, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v8}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 206
    array-length v1, p4

    if-lez v1, :cond_0

    .line 207
    array-length v1, p4

    .line 208
    new-array v2, v1, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    move v3, v0

    move v4, v1

    :goto_0
    if-ge v3, v1, :cond_1

    add-int/lit8 v4, v4, -0x1

    .line 212
    aget-object v6, p4, v4

    aput-object v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move v1, v0

    :cond_1
    const/4 p4, 0x4

    const/4 v3, 0x1

    if-ne p1, p4, :cond_2

    .line 218
    new-array p4, v3, [Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    sget-object v4, Lcom/sun/jna/platform/win32/OaIdl;->DISPID_PROPERTYPUT:Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    aput-object v4, p4, v0

    invoke-virtual {v5, p4}, Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS$ByReference;->setRgdispidNamedArgs([Lcom/sun/jna/platform/win32/OaIdl$DISPID;)V

    :cond_2
    if-lez v1, :cond_3

    .line 223
    invoke-virtual {v5, v2}, Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS$ByReference;->setArgs([Lcom/sun/jna/platform/win32/Variant$VARIANT;)V

    .line 226
    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS$ByReference;->write()V

    :cond_3
    if-eq p1, v3, :cond_4

    const/4 p4, 0x2

    if-ne p1, p4, :cond_5

    :cond_4
    const/4 p1, 0x3

    .line 261
    :cond_5
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->iDispatch:Lcom/sun/jna/platform/win32/COM/IDispatch;

    new-instance v2, Lcom/sun/jna/platform/win32/Guid$REFIID;

    sget-object p4, Lcom/sun/jna/platform/win32/Guid;->IID_NULL:Lcom/sun/jna/platform/win32/Guid$IID;

    invoke-direct {v2, p4}, Lcom/sun/jna/platform/win32/Guid$REFIID;-><init>(Lcom/sun/jna/platform/win32/Guid$IID;)V

    sget-object v3, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->LOCALE_SYSTEM_DEFAULT:Lcom/sun/jna/platform/win32/WinDef$LCID;

    new-instance v4, Lcom/sun/jna/platform/win32/WinDef$WORD;

    int-to-long v9, p1

    invoke-direct {v4, v9, v10}, Lcom/sun/jna/platform/win32/WinDef$WORD;-><init>(J)V

    move-object v6, p2

    move-object v1, p3

    invoke-interface/range {v0 .. v8}, Lcom/sun/jna/platform/win32/COM/IDispatch;->Invoke(Lcom/sun/jna/platform/win32/OaIdl$DISPID;Lcom/sun/jna/platform/win32/Guid$REFIID;Lcom/sun/jna/platform/win32/WinDef$LCID;Lcom/sun/jna/platform/win32/WinDef$WORD;Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS$ByReference;Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO$ByReference;Lcom/sun/jna/ptr/IntByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 264
    invoke-static {p1, v7, v8}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO;Lcom/sun/jna/ptr/IntByReference;)V

    return-object p1
.end method

.method protected oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/COM/COMException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 311
    move-object v1, v0

    check-cast v1, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Ljava/lang/String;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    return-object p1
.end method

.method protected oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Ljava/lang/String;Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/COM/COMException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 286
    new-array v0, v0, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Ljava/lang/String;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    return-object p1
.end method

.method protected oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Ljava/lang/String;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/COM/COMException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 181
    new-array v3, v0, [Lcom/sun/jna/WString;

    new-instance v0, Lcom/sun/jna/WString;

    invoke-direct {v0, p3}, Lcom/sun/jna/WString;-><init>(Ljava/lang/String;)V

    const/4 p3, 0x0

    aput-object v0, v3, p3

    .line 182
    new-instance v6, Lcom/sun/jna/platform/win32/OaIdl$DISPIDByReference;

    invoke-direct {v6}, Lcom/sun/jna/platform/win32/OaIdl$DISPIDByReference;-><init>()V

    .line 185
    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->iDispatch:Lcom/sun/jna/platform/win32/COM/IDispatch;

    new-instance v2, Lcom/sun/jna/platform/win32/Guid$REFIID;

    sget-object p3, Lcom/sun/jna/platform/win32/Guid;->IID_NULL:Lcom/sun/jna/platform/win32/Guid$IID;

    invoke-direct {v2, p3}, Lcom/sun/jna/platform/win32/Guid$REFIID;-><init>(Lcom/sun/jna/platform/win32/Guid$IID;)V

    const/4 v4, 0x1

    sget-object v5, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->LOCALE_USER_DEFAULT:Lcom/sun/jna/platform/win32/WinDef$LCID;

    invoke-interface/range {v1 .. v6}, Lcom/sun/jna/platform/win32/COM/IDispatch;->GetIDsOfNames(Lcom/sun/jna/platform/win32/Guid$REFIID;[Lcom/sun/jna/WString;ILcom/sun/jna/platform/win32/WinDef$LCID;Lcom/sun/jna/platform/win32/OaIdl$DISPIDByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p3

    .line 188
    invoke-static {p3}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 190
    iget-object v3, p0, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->iDispatch:Lcom/sun/jna/platform/win32/COM/IDispatch;

    .line 191
    invoke-virtual {v6}, Lcom/sun/jna/platform/win32/OaIdl$DISPIDByReference;->getValue()Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    move-result-object v4

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->oleMethod(ILcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/COM/IDispatch;Lcom/sun/jna/platform/win32/OaIdl$DISPID;[Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    return-object p1
.end method

.method public release()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/COMBindingBaseObject;->iDispatch:Lcom/sun/jna/platform/win32/COM/IDispatch;

    if-eqz v0, :cond_0

    .line 173
    invoke-interface {v0}, Lcom/sun/jna/platform/win32/COM/IDispatch;->Release()I

    :cond_0
    return-void
.end method
