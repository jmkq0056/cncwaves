.class public Lcom/sun/jna/platform/win32/COM/ConnectionPoint;
.super Lcom/sun/jna/platform/win32/COM/Unknown;
.source "ConnectionPoint.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/COM/IConnectionPoint;


# direct methods
.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/COM/Unknown;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method


# virtual methods
.method public Advise(Lcom/sun/jna/platform/win32/COM/IUnknownCallback;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/ConnectionPoint;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-interface {p1}, Lcom/sun/jna/platform/win32/COM/IUnknownCallback;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, p2}, Lcom/sun/jna/platform/win32/COM/ConnectionPoint;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method EnumConnections()V
    .locals 0

    return-void
.end method

.method public GetConnectionInterface(Lcom/sun/jna/platform/win32/Guid$IID;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 2

    .line 41
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/ConnectionPoint;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-class v0, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/4 v1, 0x3

    invoke-virtual {p0, v1, p1, v0}, Lcom/sun/jna/platform/win32/COM/ConnectionPoint;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method GetConnectionPointContainer()V
    .locals 0

    return-void
.end method

.method public Unadvise(Lcom/sun/jna/platform/win32/WinDef$DWORD;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 2

    .line 61
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/ConnectionPoint;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-class v0, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/4 v1, 0x6

    invoke-virtual {p0, v1, p1, v0}, Lcom/sun/jna/platform/win32/COM/ConnectionPoint;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method
